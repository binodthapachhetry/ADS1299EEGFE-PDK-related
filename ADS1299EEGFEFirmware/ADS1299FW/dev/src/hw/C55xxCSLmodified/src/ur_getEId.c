/******************************************************************************\
*           Copyright (C) 2001 Texas Instruments Incorporated.
*                           All Rights Reserved
*------------------------------------------------------------------------------
* MODULE.NAME... UART
* FILENAME...... uart_getEventId.c
* DATE CREATED.. Sun 01/18/2002
* PROJECT....... Chip Support Library
* COMPONENT..... 
* IMPORTS....... 
*------------------------------------------------------------------------------
* HISTORY:
*   01/18/2002   Created 
*------------------------------------------------------------------------------
* DESCRIPTION:  (body file for the UART module)
*
*
*
\******************************************************************************/
#define _UART_MOD_

/****************************************\
* include files
\****************************************/  
#include <csl_irq.h>
#if (_UART_SUPPORT)
#include <csl_uart.h> 
#pragma CODE_SECTION(UART_getEventId,".text:UART_getEventId")
/******************************************************************************\
*                         L O C A L   S E C T I O N
\******************************************************************************/

/****************************************\
* UART global function definitions
\****************************************/
/*----------------------------------------------------------------------------*/
 Uint16 UART_getEventId() {
  return IRQ_EVT_UART;
}
/*----------------------------------------------------------------------------*/

#endif /* UART_SUPPORT */
/******************************************************************************\
* End of uart_cfga.c
\******************************************************************************/

