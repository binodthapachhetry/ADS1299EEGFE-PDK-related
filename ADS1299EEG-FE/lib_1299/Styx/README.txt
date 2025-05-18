
==========================
cstyx: Styx client library version 0.1.0
==========================

cstyx is a client library for the Styx protocol. It communicates using
connection modules. Currently it supports USB (using the USBStyx protocol)
and a "local" connection to a test Styx server (estest, from estyx; see
estyx.berlios.de).

The cstyx source distribution also contains styxsh, a shell for Styx. See
styxsh/README for information on styxsh.

Building
--------

Currently, cstyx is distributed as source code, and has projects for
Microsoft Visual C++ Express 8.

The USB support for Windows in cstyx requires libusb-win32 and a suitable
driver.  Both are included.

Files
-----

The distribution contains the following:

cstyx/ - Core C++ code and C binding
pystyx/ - Python binding
lvstyx/ - LabView binding
README - This file
VERSION - Version number
LICENSE - Common Public License 1.0

Documentation
-------------

At present, cstyx has little documentation.  The API is partly documented 
in Doxygen-formatted comments in the header files.

Contributions to the documentation (or any other part of cstyx) are welcomed
and solicited.

About
-----

Written by Michael Ashton <mpashton@users.berlios.de>
(c) 2005-2006 Texas Instruments Inc.
Portions (c) 1994-1999 Lucent Technologies Inc.
Portions (c) 2000-2005 Vita Nuova Holdings Ltd.
