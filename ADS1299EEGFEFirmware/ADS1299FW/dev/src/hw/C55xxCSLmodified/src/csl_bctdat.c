/******************************************************************************\
*           Copyright (C) 1999 Texas Instruments Incorporated.
*                           All Rights Reserved
*------------------------------------------------------------------------------
* MODULE.NAME... BCT
* FILENAME...... csl_bctdat.c
* DATE CREATED.. Thu 10 April 2003
* PROJECT....... CSL - Chip Support Library
* COMPONENT..... 
* IMPORTS....... 
*------------------------------------------------------------------------------
* HISTORY:
*   CREATED:  10 April 2003
*------------------------------------------------------------------------------
* DESCRIPTION:  (Data file for BCT Module)
*
*
*
\******************************************************************************/
#define _BCT_MOD_

/****************************************\
* include files
\****************************************/    

#include <csl_bct.h>
   
 
#if (_BCT_SUPPORT)
/******************************************************************************\
*                         L O C A L   S E C T I O N
\******************************************************************************/

/****************************************\
* BCT static macro declarations
\****************************************/
/* See BCT.h Romability */
 
/****************************************\
* BCT static typedef declarations
\****************************************/

/****************************************\
* BCT static function declarations
\****************************************/

/****************************************\
* BCT Variable definitions : ROMability 
\****************************************/

/* Definition Romability See BCT.h */


             
/****************************************\
* TIMER static function definitions
\****************************************/

/*----------------------------------------------------------------------------*/

/******************************************************************************\
*                        G L O B A L   S E C T I O N
\******************************************************************************/

/****************************************\
* BCT global variable definitions
\****************************************/
/* Definition See csl_bct.h */
/*----------------------------------------------------------------------------*/
             
/****************************************\
* BCT global function definitions
\****************************************/

#pragma DATA_SECTION(CSL_BctData,".csldata:BCT_data")

CSL_BctDataObj  CSL_BctData = CSL_BCTDATAINIT;

#endif /* BCT_SUPPORT */
/******************************************************************************\
* End of bct_open.c
\******************************************************************************/

