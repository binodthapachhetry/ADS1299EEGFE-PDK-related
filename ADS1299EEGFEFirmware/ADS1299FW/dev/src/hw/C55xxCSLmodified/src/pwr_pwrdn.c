/******************************************************************************\
*           Copyright (C) 1999 Texas Instruments Incorporated.
*                           All Rights Reserved
*------------------------------------------------------------------------------
* MODULE NAME... PWR
* FILENAME...... pwr_pwrdn.c
* DATE CREATED.. Wed 06/06/2000
* PROJECT....... CSL - Chip Support Library
* COMPONENT..... service layer
* PREREQUISITS.. 
*------------------------------------------------------------------------------
* HISTORY:
*   CREATED: 06/06/2000
*   MODIFIED:      07/06/2001 added code section pragma
*                  08/16/2001 fixed typo in asm statement
*                  08/21/2003 Added #if (CHIP_5502) 
*                  08/06/2004 Added 5501 support
*                  
*------------------------------------------------------------------------------
* DESCRIPTION:  (interface file for the PWR module)
\******************************************************************************/
#define _PWR_MOD_

#include <csl_irq.h>
#include <csl_pwr.h>

#if (_PWR_SUPPORT)

#if (!((CHIP_5502) || (CHIP_5501)))

#pragma CODE_SECTION(PWR_powerDown,".text:PWR_powerDown")

/*----------------------------------------------------------------------------*/
void PWR_powerDown(Uint16 wakeUpMode){
  if (wakeUpMode) {
    IRQ_globalEnable();
  }
  else {
    IRQ_globalDisable();
  }
    
  asm("\t IDLE   ;=====>NOTE: Automatic Code Generated by CSL");
}

#endif /* !(CHIP_5502) || !(CHIP_5501) */

#endif /*PWR_SUPPORT */
/******************************************************************************\
* End of pwr_pwrdn.c
\******************************************************************************/
