/******************************************************************************\
*           Copyright (C) 1999 Texas Instruments Incorporated.
*                           All Rights Reserved
*------------------------------------------------------------------------------
* MODULE.NAME... WDTIM
* FILENAME...... wdtim_cfg.c
* DATE CREATED.. Sun 02/10/2002 
* PROJECT....... CSL - Chip Support Library
* COMPONENT..... 
* IMPORTS....... 
*------------------------------------------------------------------------------
* HISTORY:
*   CREATED:  02/10/2002 
*------------------------------------------------------------------------------
* DESCRIPTION:  (body file for the 5502 General Purpose 64 bit timer)
*
*
*
\******************************************************************************/
#define _WDTIM_MOD_

/****************************************\
* include files
\****************************************/    

#include <csl_wdtim.h>
   
 
#if (_WDTIMB_SUPPORT)
/******************************************************************************\
*                         L O C A L   S E C T I O N
\******************************************************************************/

/****************************************\
* GPT static macro declarations
\****************************************/
/* See gpt.h Romability */
 
/****************************************\
* GPT static typedef declarations
\****************************************/

/****************************************\
* GPT static function declarations
\****************************************/

/****************************************\
* GPT Variable definitions : ROMability 
\****************************************/

/* Definition Romability See GPT.h */


             
/****************************************\
* TIMER static function definitions
\****************************************/

/*----------------------------------------------------------------------------*/

/******************************************************************************\
*                        G L O B A L   S E C T I O N
\******************************************************************************/

/****************************************\
* TIMER global variable definitions
\****************************************/
/* Definition See csl_wdtim.h */
/*----------------------------------------------------------------------------*/
/* DSP/BIOS symbols that CSL needs to check to see what if any timer devices  */
/* are in use by BIOS. These symbols will e defined in the BIOS linker        */
/* command file generated by gconf.                                           */
/* See C6xx */
             
/****************************************\
* TIMER global function definitions
\****************************************/

#pragma CODE_SECTION(WDTIM_config,".text:WDTIM_config")

/*----------------------------------------------------------------------------*/
void WDTIM_config(WDTIM_Handle hWdt, WDTIM_Config *Config) {
  int oldgie;
  ioport WDTIM_RegObj *regPtr =((CSL_WdtimDataObj *)(hWdt))->regs;
  Uint16 tcr2_val = Config->wdtwctl2 & (_WDTIM_WDTWCTL2_WDKEY_CLR);
  Uint16 tcr1_val = Config->wdtwctl1 & (_WDTIM_WDTWCTL1_WDEN_CLR);

    oldgie = IRQ_globalDisable();  
 
   (regPtr->wdtgctl1) = 0x0000u;
   (regPtr->wdtemu)   = Config->wdtemu;
   (regPtr->wdtgpint) = Config->wdtgpint;
   (regPtr->wdtgpen) = Config->wdtgpen;
   (regPtr->wdtgpdir) = Config->wdtgpdir;
   (regPtr->wdtgpdat) = Config->wdtgpdat;
   (regPtr->wdtprd1) = Config->wdtprd1;
   (regPtr->wdtprd2) = Config->wdtprd2;
   (regPtr->wdtprd3) = Config->wdtprd3;
   (regPtr->wdtprd4) = Config->wdtprd4;
   (regPtr->wdtctl1) = Config->wdtctl1;
   (regPtr->wdtctl2) = Config->wdtctl2;
   (regPtr->wdtgctl1) = Config->wdtgctl1;  
   (regPtr->wdtwctl1) = tcr1_val;
   (regPtr->wdtwctl2) = tcr2_val;
  
  IRQ_globalRestore(oldgie); 
 
}
/*----------------------------------------------------------------------------*/

#endif /* WDTIMB_SUPPORT */
/******************************************************************************\
* End of wdtim_cfg.c
\******************************************************************************/

