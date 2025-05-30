/******************************************************************************\
*           Copyright (C) 1999 Texas Instruments Incorporated.
*                           All Rights Reserved
*------------------------------------------------------------------------------
* MODULE.NAME... GPT
* FILENAME...... gpt_close.c
* DATE CREATED.. Sun 02/10/2002 
* PROJECT....... Chip Support Library
* COMPONENT..... 
* IMPORTS....... 
*------------------------------------------------------------------------------
* HISTORY:
*   CREATED:  02/10/2002
*------------------------------------------------------------------------------
* DESCRIPTION:  (body file for the TIMER module)
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
#pragma CODE_SECTION(GPT_close,".text:GPT_close")

/*----------------------------------------------------------------------------*/
void GPT_close(GPT_Handle hGpt) {
  int oldgie;
  GPT_ASSERT_HANDLE(hGpt,return);
    oldgie = IRQ_globalDisable(); 


  CSL_SYS_DATA.GptAllocMask &= (~(1u<<((GPT_PrivateObj*)hGpt)->devNum));   
  GPT_reset(hGpt);
  IRQ_globalRestore(oldgie);

}
/*----------------------------------------------------------------------------*/

#endif /* GPT_SUPPORT */
/******************************************************************************\
* End of gpt_close.c
\******************************************************************************/

