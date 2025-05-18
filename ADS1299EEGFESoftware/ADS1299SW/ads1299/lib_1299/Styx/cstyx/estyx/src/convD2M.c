
/* convD2M.c -- dir struct marshaller */

/* estyx
   embedded Styx server

   Copyright (c) 1994-1999 Lucent Technologies Inc.  All rights reserved.
   Revisions Copyright (c) 2000-2005 Vita Nuova Holdings Limited 
      (www.vitanuova.com).  All rights reserved.
   Revisions (c) 2005-2006 Texas Instruments Inc.
   Based on lib9/convD2M.c from Inferno 4th Edition

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

#include <string.h>
#include "estyx.h"

#if 0
u16 sizeD2M(estyx_dir_t *d)
{
	char *sv[4];
	int i, ns;

	sv[0] = d->name;
	sv[1] = d->uid;
	sv[2] = d->gid;
	sv[3] = d->muid;

	ns = 0;
	for(i = 0; i < 4; i++)
		if(sv[i])
			ns += strlen(sv[i]);

	return STATFIXLEN + ns;
}
#endif

u16 sizeD2M(estyx_dir_t *d)
{
	return STATFIXLEN + strlen(d->name)+18;
}

u16 convD2M(estyx_dir_t *d, u8 *buf, u16 nbuf, u32 len)
{

	u8 *p, *ebuf;
	const char *sv[4];
	int i, ns, nsv[4], ss;

	if(nbuf < BIT16SZ)
		return 0;

	p = buf;
	ebuf = buf + nbuf;

	sv[0] = d->name;
	sv[1] = "nobody";
	sv[2] = "nobody";
	sv[3] = "nobody";

	ns = 0;
	for(i = 0; i < 4; i++){
		if(sv[i])
			nsv[i] = strlen(sv[i]);
		else
			nsv[i] = 0;
		ns += nsv[i];
	}

	ss = STATFIXLEN + ns;

	/* set size befor erroring, so user can know how much is needed */
	/* note that length excludes count field itself */
	PBIT16(p, ss-BIT16SZ);
	p += BIT16SZ;

	if(ss > nbuf)
		return BIT16SZ;

	PBIT16(p, d->type);
	p += BIT16SZ;
	PBIT32(p, d->dev);
	p += BIT32SZ;
	PBIT8(p, d->qid.type);
	p += BIT8SZ;
	PBIT32(p, d->qid.vers);
	p += BIT32SZ;
	PBIT32(p, d->qid.path);
	p += BIT32SZ;
	PBIT32(p,0);
	p += BIT32SZ;
	PBIT32(p, d->mode);
	p += BIT32SZ;
	//PBIT32(p, d->atime);
	PBIT32(p,0);
	p += BIT32SZ;
	//PBIT32(p, d->mtime);
	PBIT32(p,0);
	p += BIT32SZ;
	//PBIT64(p, d->length);
	PBIT32(p,len);
	p += BIT32SZ;
	PBIT32(p,0);
	p += BIT32SZ;

	for(i = 0; i < 4; i++){
		ns = nsv[i];
		if(p + ns + BIT16SZ > ebuf)
			return 0;
		PBIT16(p, ns);
		p += BIT16SZ;
		if(ns)
			memmove(p, sv[i], ns);
		p += ns;
	}

	if(ss != p - buf)
		return 0;

	return p - buf;
}
