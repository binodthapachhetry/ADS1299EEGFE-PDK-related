/****************************************************************/
/* ADS1299 ADCPro Firmware version 1.0 for the TMS320C5500      */
/* Copyright (C) 2009 - 2010  Texas Instruments Incorporated    */
/* All Rights Reserved                                          */
/****************************************************************/
/*
Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use, copy,
modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.
*/
/****************************************************************/
#ifndef DC_CONF_H
#define DC_CONF_H

/* ADC 1 parameter data */
#define    ADC1_TYPE                         ADS1299
#define    ADC1_SERPORT                      (1)
#define    ADC1_ADS1299DEVID                 (0x003Eu)
#define    ADC1_ADS1299CONFIG1               (0x0096u)
#define    ADC1_ADS1299CONFIG2               (0x00C0u)
#define    ADC1_ADS1299CONFIG3               (0x00E0u)
#define    ADC1_ADS1299LOFF                  (0x0000u)
#define    ADC1_ADS1299CH1SET                (0x0060u)
#define    ADC1_ADS1299CH2SET                (0x0060u)
#define    ADC1_ADS1299CH3SET                (0x0060u)
#define    ADC1_ADS1299CH4SET                (0x0060u)
#define    ADC1_ADS1299CH5SET                (0x0060u)
#define    ADC1_ADS1299CH6SET                (0x0060u)
#define    ADC1_ADS1299CH7SET                (0x0060u)
#define    ADC1_ADS1299CH8SET                (0x0060u)
#define    ADC1_ADS1299BIASSENSP             (0x0000u)
#define    ADC1_ADS1299BIASSENSN             (0x0000u)
#define    ADC1_ADS1299LOFFSENSP             (0x0000u)
#define    ADC1_ADS1299LOFFSENSN             (0x0000u)
#define    ADC1_ADS1299LOFFFLIP              (0x0000u)
#define    ADC1_ADS1299LOFFSTATP             (0x0000u)
#define    ADC1_ADS1299LOFFSTATN             (0x0000u)
#define    ADC1_ADS1299GPIO                  (0x0000u)
#define    ADC1_ADS1299MISC1                 (0x0000u)
#define    ADC1_ADS1299MISC2                 (0x0000u)
#define    ADC1_ADS1299CONFIG4               (0x0000u)

#define    ADC1_DMACHAN                      (1)
#define    ADC1_INTNUM                       (IRQ_EVT_INT0)
//#define    ADC1_MCBSP_CLKDIV                (9)
#define    ADC1_MCBSP_CLKDIV                 (52)

/* DSP parameter data      */
#define    TMS320VC5509A                     (1)
#define    DCP_DARAM_START                   (0x0000C0)
#define    DCP_DARAM_END                     (0x00FFFF)
#define    DCP_SARAM_START                   (0x010000)
#define    DCP_SARAM_END                     (0x03FFFF)
#define    DCP_EXTRAM_START                  (0x040000)
#define    DCP_EXTRAM_END                    (0xFEFFFF)
/* CSL device build option */
#define    CHIP_5509A                        (1)
#define    DSP_FREQ                          (192)  /* in MHz */

/* McBSP1 parameter data      */
#define    MCBSP1_FPER_VALUE                 (0)
#define    MCBSP1_CLKGDV_VALUE               (0)
#define    MCBSP1_FSGM_MODE                  (0)
#endif /* DC_CONF_H */

/****************************************************************/
/* END OF DC_CONF.H                                             */
/****************************************************************/

