
/* estest.h -- estyx tester */

/* estyx
   embedded Styx server

   (c) 2005-2006 Texas Instruments Inc.
*/

/* This file is part of estyx.  You can redistribute and/or modify
   it under the terms of the Common Public License as published by
   IBM Corporation; either version 1.0 of the License, or
   (at your option) any later version.

   estyx is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   Common Public License for more details.

   You should have received a copy of the Common Public License
   along with estyx.  It may also be available at the following URL:
   
      http://www.opensource.org/licenses/cpl1.0.txt
   
   If you cannot obtain a copy of the License, please contact the 
   Data Acquisition Products Applications Department at Texas 
   Instruments Inc.
*/

#ifndef GUARD_estest_h
#define GUARD_estest_h

#include <estyx.h>

estyx_server_t* estest_init(estyx_tx_cb txcb);
int estest_rx(u16 len, char* buf);

#endif
