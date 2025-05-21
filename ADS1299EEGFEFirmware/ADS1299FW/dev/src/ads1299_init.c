/**
 * ADS1299 EEG Frontend Initialization
 * 
 * This file contains functions to initialize and configure the ADS1299 chip
 * for EEG data acquisition.
 */

#include "spi.h"
#include "csl_irq.h"
#include "BlockQueue.h"

// ADS1299 Register Addresses
#define ADS1299_REG_CONFIG1    0x01
#define ADS1299_REG_CONFIG2    0x02
#define ADS1299_REG_CONFIG3    0x03
#define ADS1299_REG_LOFF       0x04
#define ADS1299_REG_CH1SET     0x05
#define ADS1299_REG_CH2SET     0x06
#define ADS1299_REG_CH3SET     0x07
#define ADS1299_REG_CH4SET     0x08
#define ADS1299_REG_CH5SET     0x09
#define ADS1299_REG_CH6SET     0x0A
#define ADS1299_REG_CH7SET     0x0B
#define ADS1299_REG_CH8SET     0x0C
#define ADS1299_REG_BIAS_SENSP 0x0D
#define ADS1299_REG_BIAS_SENSN 0x0E
#define ADS1299_REG_LOFF_SENSP 0x0F
#define ADS1299_REG_LOFF_SENSN 0x10
#define ADS1299_REG_LOFF_FLIP  0x11
#define ADS1299_REG_LOFF_STATP 0x12
#define ADS1299_REG_LOFF_STATN 0x13
#define ADS1299_REG_GPIO       0x14
#define ADS1299_REG_MISC1      0x15
#define ADS1299_REG_MISC2      0x16
#define ADS1299_REG_CONFIG4    0x17

// ADS1299 Commands
#define ADS1299_CMD_WAKEUP     0x02
#define ADS1299_CMD_STANDBY    0x04
#define ADS1299_CMD_RESET      0x06
#define ADS1299_CMD_START      0x08
#define ADS1299_CMD_STOP       0x0A
#define ADS1299_CMD_RDATAC     0x10
#define ADS1299_CMD_SDATAC     0x11
#define ADS1299_CMD_RDATA      0x12
#define ADS1299_CMD_RREG       0x20
#define ADS1299_CMD_WREG       0x40

// External queue for EEG data
extern BlockQueue eeg_queue;

/**
 * Write to ADS1299 register
 * 
 * @param reg_addr Register address
 * @param reg_value Value to write
 */
void ads1299_write_reg(u8 reg_addr, u8 reg_value)
{
    spi_cs_low();
    spi_shift8(ADS1299_CMD_WREG | reg_addr); // Write 1 register starting at reg_addr
    spi_shift8(0x00);                        // Number of registers to write minus 1
    spi_shift8(reg_value);                   // Write the register value
    spi_cs_high();
}

/**
 * Read from ADS1299 register
 * 
 * @param reg_addr Register address
 * @return Register value
 */
u8 ads1299_read_reg(u8 reg_addr)
{
    u8 reg_value;
    
    spi_cs_low();
    spi_shift8(ADS1299_CMD_RREG | reg_addr); // Read 1 register starting at reg_addr
    spi_shift8(0x00);                        // Number of registers to read minus 1
    reg_value = spi_shift8(0x00);            // Read the register value
    spi_cs_high();
    
    return reg_value;
}

/**
 * Send command to ADS1299
 * 
 * @param cmd Command byte
 */
void ads1299_send_cmd(u8 cmd)
{
    spi_cs_low();
    spi_shift8(cmd);
    spi_cs_high();
}

/**
 * ADS1299 interrupt service routine
 * Called when DRDY pin goes low
 */
void ads1299_isr(void)
{
    static u8 raw[33]; // Status byte + 8 channels * 3 bytes per channel
    long count = 33/4; // Convert to long count for BlockQueue
    long* dest;
    
    spi_cs_low();
    spi_read_burst(raw, 33); // Read full packet
    spi_cs_high();
    
    // Write to the queue using BlockQueue API
    dest = eeg_queue.startWrite(count);
    if (dest && count > 0) {
        // Copy data to queue - need to handle byte to long conversion
        int i;
        for (i = 0; i < count; i++) {
            dest[i] = *((long*)&raw[i*4]);
        }
        eeg_queue.finishWrite();
    }
    
    // Clear the interrupt
    IRQ_clear(IRQ_EVT_INT0);
}

/**
 * Initialize ADS1299 for EEG acquisition
 * 
 * @param sample_rate Sample rate setting (0-6)
 * @param gain_setting Gain setting (1-7)
 * @return 1 if successful, 0 if failed
 */
int ads1299_init(u8 sample_rate, u8 gain_setting)
{
    u8 config1, config2, config3, ch_setting;
    int i;
    
    // Initialize SPI interface
    spi_init();
    
    // Reset the ADS1299
    ads1299_send_cmd(ADS1299_CMD_RESET);
    
    // Delay for reset to complete (at least 18 tCLK cycles)
    for(i=0; i<1000; i++);
    
    // Send SDATAC command to stop continuous data mode
    ads1299_send_cmd(ADS1299_CMD_SDATAC);
    
    // Configure sample rate (bits 0-2 of CONFIG1)
    // 0=16kSPS, 1=8kSPS, 2=4kSPS, 3=2kSPS, 4=1kSPS, 5=500SPS, 6=250SPS
    config1 = sample_rate & 0x07;
    ads1299_write_reg(ADS1299_REG_CONFIG1, config1);
    
    // Configure CONFIG2 (test signal frequency and reference)
    // Default: internal reference buffer enabled
    config2 = 0x10;
    ads1299_write_reg(ADS1299_REG_CONFIG2, config2);
    
    // Configure CONFIG3 (bias and SRB1)
    // Default: bias buffer enabled, bias connected to SRB1
    config3 = 0xE0;
    ads1299_write_reg(ADS1299_REG_CONFIG3, config3);
    
    // Configure all channels with the same gain setting
    // Bits 4-6 control the gain: 1=x1, 2=x2, 3=x4, 4=x6, 5=x8, 6=x12, 7=x24
    ch_setting = (gain_setting & 0x07) << 4;
    
    // Configure all channels
    for(i=0; i<8; i++) {
        ads1299_write_reg(ADS1299_REG_CH1SET + i, ch_setting);
    }
    
    // Configure GPIO for DRDY interrupt
    IRQ_plug(IRQ_EVT_INT0, (IRQ_IsrPtr)ads1299_isr);
    IRQ_enable(IRQ_EVT_INT0);
    
    // Start continuous data conversion mode
    ads1299_send_cmd(ADS1299_CMD_RDATAC);
    ads1299_send_cmd(ADS1299_CMD_START);
    
    return 1;
}
