
/* convM2D.c -- dir struct unmarshaller */

/* estyx
   embedded Styx server

   Copyright (c) 1994-1999 Lucent Technologies Inc.  All rights reserved.
   Revisions Copyright (c) 2000-2005 Vita Nuova Holdings Limited 
      (www.vitanuova.com).  All rights reserved.
   Revisions (c) 2005-2006 Texas Instruments Inc.
   Based on lib9/convM2D.c from Inferno 4th Edition

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

#include "estyx.h"

int statcheck(u8 *buf, u16 nbuf)
{
	u8 *ebuf;
	int i;

	ebuf = buf + nbuf;

	if(nbuf < STATFIXLEN || nbuf != BIT16SZ + GBIT16(buf))
		return -1;

	buf += STATFIXLEN - 4 * BIT16SZ;

	for(i = 0; i < 4; i++){
		if(buf + BIT16SZ > ebuf)
			return -1;
		buf += BIT16SZ + GBIT16(buf);
	}

	if(buf != ebuf)
		return -1;

	return 0;
}

static char nullstring[] = "";

u16 convM2D(u8 *buf, u16 nbuf, estyx_dir_t *d, char *strs)
{
	u8 *p, *ebuf;
	char *sv[4];
	int i, ns;

	if(nbuf < STATFIXLEN)
		return 0; 

	p = buf;
	ebuf = buf + nbuf;

	p += BIT16SZ;	/* ignore size */
	d->type = GBIT16(p);
	p += BIT16SZ;
	d->dev = GBIT32(p);
	p += BIT32SZ;
	d->qid.type = GBIT8(p);
	p += BIT8SZ;
	d->qid.vers = GBIT32(p);
	p += BIT32SZ;
	d->qid.path = GBIT32(p);
	p += BIT64SZ;
	d->mode = GBIT32(p);
	p += BIT32SZ;
	//d->atime = GBIT32(p);
	p += BIT32SZ;
	//d->mtime = GBIT32(p);
	p += BIT32SZ;
	//d->length = GBIT64(p);
	p += BIT64SZ;

	for(i = 0; i < 4; i++){
		if(p + BIT16SZ > ebuf)
			return 0;
		ns = GBIT16(p);
		p += BIT16SZ;
		if(p + ns > ebuf)
			return 0;
		if(strs){
			sv[i] = strs;
			memmove(strs, p, ns);
			strs += ns;
			*strs++ = '\0';
		}
		p += ns;
	}

	if(strs){
		d->name = sv[0];
		//d->uid = sv[1];
		//d->gid = sv[2];
		//d->muid = sv[3];
	}else{
		d->name = nullstring;
		//d->uid = nullstring;
		//d->gid = nullstring;
		//d->muid = nullstring;
	}
	
	return p - buf;
}
