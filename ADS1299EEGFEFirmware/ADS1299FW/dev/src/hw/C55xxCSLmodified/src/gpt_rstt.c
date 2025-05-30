/******************************************************************************\
*           Copyright (C) 1999 Texas Instruments Incorporated.
*                           All Rights Reserved
*------------------------------------------------------------------------------
* MODULE.NAME... GPT
* FILENAME...... gpt_rst.c
* DATE CREATED.. Sun 02/10/2002
* PROJECT....... Chip Support Library
* COMPONENT..... Service Layer
* IMPORTS....... 
*------------------------------------------------------------------------------
* HISTORY:
*   CREATED:  02/10/2002
*------------------------------------------------------------------------------
* DESCRIPTION:  (body file for the GPT module)
*
*
*
\******************************************************************************/
#define _GPT_MOD_

/****************************************\
* include files
\****************************************/
    
#include <csl_gpt.h>
   
   
 
#if (_GPT_SUPPORT)
/******************************************************************************\
*                         L O C A L   S E C T I O N
\******************************************************************************/

/****************************************\
* TIMER static macro declarations
\****************************************/
/*----------------------------------------------------------------------------*/

/******************************************************************************\
*                        G L O B A L   S E C T I O N
\******************************************************************************/

/****************************************\
* GPT global variable definitions
\****************************************/
/* Definition See gpt.h */
/*----------------------------------------------------------------------------*/
/* DSP/BIOS symbols that CSL needs to check to see what if any timer devices  */
/* are in use by BIOS. These symbols will e defined in the BIOS linker        */
/* command file generated by gconf.                                           */
/* See C6xx */
             
/****************************************\
* GPT global function definitions
\****************************************/

#pragma CODE_SECTION(GPT_reset,".text:GPT_reset")

/*----------------------------------------------------------------------------*/
void GPT_reset(GPT_Handle hGpt) {
  int oldgie;
  Uint16 EventId;
  ioport GPT_RegObj *regPtr = ((GPT_PrivateObj *)hGpt)->regs;

  oldgie = IRQ_globalDisable();  
    
  if (hGpt == INV) {    
 
      GPT_reset(GPT_hDev0);
      GPT_reset(GPT_hDev1);  
       
  } 
  else {
      EventId  = GPT_getEventId(hGpt);
      /* stop timer */  
       (regPtr->gptgctl1) = 0x0000u; 
      /* Reset Period Value=0xFFFF */
       (regPtr->gptprd1) = 0x0000u;
       (regPtr->gptprd2) = 0x0000u;
       (regPtr->gptprd3) = 0x0000u;
       (regPtr->gptprd4) = 0x0000u;
      IRQ_disable(EventId);
      IRQ_clear(EventId);
  }
  IRQ_globalRestore(oldgie);

}

/*----------------------------------------------------------------------------*/

#endif /* GPT_SUPPORT */
/******************************************************************************\
* End of gpt_rst.c
\******************************************************************************/

