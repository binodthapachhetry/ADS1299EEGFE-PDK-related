
#ifndef GUARD_spi_h
#define GUARD_spi_h

#include "types.h"

u8 spi_shift8(u8 d);

inline extern void spi_w8(u8 d)
{
	while (!(IFG1&UTXIFG0));
	U0TXBUF=d;
}

inline extern void spi_flush(void)
{
	while (!(U0TCTL&TXEPT));
}

inline extern u8 spi_shift8(u8 out)
{
	while (!(IFG1&UTXIFG0));
	U0TXBUF=out;
	spi_flush();
	return U0RXBUF;
}

inline extern u8 spi_r8(void)
{
	return spi_shift8(0xff);
}

void spi_read_burst(u8* data, u16 len);

// Fast read of ADS1299 data (33 bytes: 24-bit × 8 channels + status)
inline extern void spi_read_ads1299_data(u8* buffer)
{
	spi_read_burst(buffer, 33);
}

/* Define ADS1299 chip select GPIO pin */
#define ADS1299_CS_GPIO GPIO_PIN3

void spi_init(void);
void spi_cs_low(void);
void spi_cs_high(void);
s32 spi_rs24(void);

#endif
