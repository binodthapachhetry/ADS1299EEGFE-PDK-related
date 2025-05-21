
#include "spi.h"
#include "csl_gpio.h"

static MCBSP_Handle mcbsp;

u8 spi_shift8(u8 d)
{
	while (!MCBSP_xrdy(mcbsp));
	MCBSP_write16(mcbsp,d);
	while (!MCBSP_rrdy(mcbsp));
	return (u8)(MCBSP_read16(mcbsp)&0xff);
}

void spi_flush(void)
{
	while (MCBSP_xempty(mcbsp));
}

void spi_cs_low(void)
{
	GPIO_write(ADS1299_CS_GPIO, 0); // Active low
}

void spi_cs_high(void)
{
	GPIO_write(ADS1299_CS_GPIO, 1);
}

void spi_read_burst(u8* data, u16 len)
{
	u16 i;
	for(i=0; i<len; i++) {
		data[i] = spi_shift8(0xFF); // Read with dummy TX
	}
	spi_flush(); // Ensure all data is transferred before returning
}

/* Optimized function to read ADS1299 data (33 bytes: 24-bit × 8 channels + status) */
void spi_read_ads1299_data(u8* buffer)
{
	spi_read_burst(buffer, 33);
}

s32 spi_rs24(void)
{
	s32 data;
	
	data=spi_r8()<<16;
	data|=spi_r8()<<8;
	data|=spi_r8();
	if (data&0x00800000) data|=0xff000000;
	return data;
}

void spi_init(void)
{
	mcbsp=MCBSP_open(MCBSP_PORT1,MCBSP_OPEN_RESET);
	MCBSP_config(mcbsp,&MCBSP_slowspi);
	
	// Initialize CS pin as GPIO output high
	GPIO_pinEnable(ADS1299_CS_GPIO);
	GPIO_pinDirection(ADS1299_CS_GPIO, GPIO_OUTPUT);
	spi_cs_high();
}
