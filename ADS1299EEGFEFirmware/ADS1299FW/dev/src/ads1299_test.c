/**
 * ADS1299 Test Module
 * 
 * This file contains test functions for validating the ADS1299 EEG frontend
 * including SPI communication, interrupt handling, and data acquisition.
 */

#include <csl.h>
#include <csl_gpio.h>
#include <csl_irq.h>
#include "spi.h"

/* Pin definitions */
#define DEBUG_LED_PIN   GPIO_PIN0  /* Debug LED for interrupt activity */
#define ERROR_LED_PIN   GPIO_PIN1  /* Error LED for queue overflow */
#define DEBUG_PIN       GPIO_PIN2  /* Debug pin for oscilloscope monitoring */
#define ADS1299_DRDY_INT IRQ_EVT_INT0  /* ADS1299 DRDY interrupt */

/**
 * Test SPI signals with oscilloscope
 * 
 * This function performs a simple SPI transaction that can be
 * monitored with an oscilloscope to verify signal integrity.
 */
void test_spi_signals(void) {
    spi_cs_low();
    spi_shift8(0x00); /* Dummy transaction */
    spi_cs_high();
}

/**
 * Configure ADS1299 to generate test signals
 * 
 * This function configures the ADS1299 to generate internal test signals
 * for validation without external inputs.
 */
void ads1299_init_test_mode(void) {
    /* Reset the ADS1299 */
    spi_cs_low();
    spi_shift8(0x06); /* RESET command */
    spi_cs_high();
    
    /* Wait for device to reset */
    for(volatile int i=0; i<10000; i++);
    
    /* Stop continuous data mode */
    spi_cs_low();
    spi_shift8(0x11); /* SDATAC command */
    spi_cs_high();
    
    /* Configure test signal generation */
    spi_cs_low();
    spi_shift8(0x41); /* Write to CONFIG1 register */
    spi_shift8(0x05); /* Enable internal test signal (110% pulse) */
    spi_cs_high();
    
    /* Configure all channels to test signal */
    spi_cs_low();
    spi_shift8(0x42); /* Write to CONFIG2 register */
    spi_shift8(0xD0); /* Test signal frequency and amplitude */
    spi_cs_high();
    
    /* Start continuous data mode */
    spi_cs_low();
    spi_shift8(0x10); /* RDATAC command */
    spi_cs_high();
    
    /* Start conversions */
    spi_cs_low();
    spi_shift8(0x08); /* START command */
    spi_cs_high();
}

/**
 * Initialize ADS1299 interrupt handling
 * 
 * This function configures the DSP to handle DRDY interrupts
 * from the ADS1299.
 */
void ads1299_init_interrupt(void) {
    /* Configure GPIO pins */
    GPIO_pinEnable(DEBUG_LED_PIN);
    GPIO_pinDirection(DEBUG_LED_PIN, GPIO_OUTPUT);
    GPIO_write(DEBUG_LED_PIN, 0);
    
    GPIO_pinEnable(ERROR_LED_PIN);
    GPIO_pinDirection(ERROR_LED_PIN, GPIO_OUTPUT);
    GPIO_write(ERROR_LED_PIN, 0);
    
    GPIO_pinEnable(DEBUG_PIN);
    GPIO_pinDirection(DEBUG_PIN, GPIO_OUTPUT);
    GPIO_write(DEBUG_PIN, 0);
    
    /* Configure interrupt */
    IRQ_clear(ADS1299_DRDY_INT);
    IRQ_plug(ADS1299_DRDY_INT, (IRQ_IsrPtr)IRQ_handleADS1299DataReady);
    IRQ_enable(ADS1299_DRDY_INT);
}

/**
 * Run complete ADS1299 test sequence
 * 
 * This function initializes the ADS1299, configures test mode,
 * and sets up interrupt handling for data acquisition.
 */
void ads1299_run_test(void) {
    /* Initialize SPI interface */
    spi_init();
    
    /* Test SPI signals */
    test_spi_signals();
    
    /* Configure ADS1299 for test mode */
    ads1299_init_test_mode();
    
    /* Initialize interrupt handling */
    ads1299_init_interrupt();
    
    /* Enable global interrupts */
    IRQ_globalEnable();
    
    /* Now the system will collect data via interrupts */
}
