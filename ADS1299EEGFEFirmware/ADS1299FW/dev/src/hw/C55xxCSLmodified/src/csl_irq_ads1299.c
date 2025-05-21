#include "csl_irq.h"
#include "csl_gpio.h"
#include "spi.h"

/* 
 * Fast interrupt handler for ADS1299 DRDY pin
 * This function is called when the ADS1299 signals that new data is ready
 * It quickly reads the data via SPI to prevent data loss
 */
void IRQ_handleADS1299DataReady(void) {
    static u8 eegBuffer[33]; // Buffer to hold 24-bit × 8 channels + status byte
    
    // Clear the interrupt flag first to acknowledge it
    IRQ_clear(IRQ_EVT_INT1); // Assuming DRDY is connected to INT1
    
    // Read all 33 bytes from the ADS1299 (status byte + 8 channels × 3 bytes)
    spi_cs_low();
    spi_read_ads1299_data(eegBuffer);
    spi_cs_high();
    
    // Process the data (add to BlockQueue, etc.)
    // This would typically be handled by a higher-level function
}
