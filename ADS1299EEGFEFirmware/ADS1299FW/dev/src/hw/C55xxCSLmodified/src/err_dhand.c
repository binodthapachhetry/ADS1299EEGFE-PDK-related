
/******************************************************************************\
*           Copyright (C) 1999 Texas Instruments Incorporated.
*                           All Rights Reserved
*------------------------------------------------------------------------------
* MODULE.NAME... ERR
* FILENAME...... ERR_dHandler.c
* DATE CREATED.. Tue 06/22/1999 
* PROJECT....... Chip Support Library
* COMPONENT..... 
* IMPORTS....... 
*------------------------------------------------------------------------------
* HISTORY:
*   CREATED:  06/22/1999 
*   MODIFIED: 02/22/2000 C54x Romability ( All static variable were removed) .
*   MODIFIED: 07/13/2000 Modified for C55x
*   MODIFIED: 06/29/2001 added pragma for section per function and updated
*                        for new CSL initialization/data model
*------------------------------------------------------------------------------
* DESCRIPTION:  (body file for the ERR module)
*
*
*
\******************************************************************************/
#define _ERR_MOD_

/****************************************\
* include files
\****************************************/

#include <csl_err.h> 

#if (_ERR_SUPPORT)
/******************************************************************************\
*                         L O C A L   S E C T I O N
\******************************************************************************/

/****************************************\
* ERR static macro declarations
\****************************************/

/****************************************\
* ERR static typedef declarations
\****************************************/

/****************************************\
* ERR static function declarations
\****************************************/

/****************************************\
* ERR static variable definitions
\****************************************/
/* See err.h for global macro definitions */ 


/****************************************\
* ERR static function definitions
\****************************************/ 

/*----------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------*/

/******************************************************************************\
*                        G L O B A L   S E C T I O N
\******************************************************************************/

/****************************************\
* ERR global variable definitions
\****************************************/


/****************************************\
* ERR global function definitions
\****************************************/ 

#pragma CODE_SECTION(ERR_defaultHandler,".text:ERR_defaultHandler")

/*----------------------------------------------------------------------------*/
void ERR_defaultHandler(Uint32 Major, Uint32 Minor) {
  CSL_SYS_DATA.ErrCnt++;
  UNREFERENCED_PARAMETER(Major);
  UNREFERENCED_PARAMETER(Minor);
}

/*----------------------------------------------------------------------------*/
#endif /* ERR_SUPPORT */
/******************************************************************************\
* End of ERR_dHandler.c
\******************************************************************************/

