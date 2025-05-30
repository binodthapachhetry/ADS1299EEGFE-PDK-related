
#ifndef GUARD_5509a_dma_h
#define GUARD_5509a_dma_h

#define DMAREG(ofs)		IOREG(DMA_BASE+ofs)
#define DMAREG_SIGNED(ofs) 	IOREG_SIGNED(DMA_BASE+ofs)
#define DMACHREG(ch,ofs)	DMAREG(ofs+(ch*0x20))
#define DMACHREG_SIGNED(ch,ofs) DMAREG_SIGNED(ofs+(ch*0x20))

#define DMAGCR 		DMAREG(0x200)
#define DMAGCR_FREE		(1<<2)
#define DMAGCR_EHPIEXCL	(1<<1)
#define DMAGCR_EHPIPRIO	(1<<0)

#define DMAGSCR		DMAREG(0x202)
#define DMAGSCR_DINDXMD	(1)

#define DMAGTCR		DMAREG(0x203)
#define DMAGTCR_DTCE		(1<<1)
#define DMAGTCR_STCE		(1<<0)

#define DMACSDP(ch)		DMACHREG(ch,0x0)
#define DMACSDP_DSTBEN_DISABLE	(0<<14)
#define DMACSDP_DSTBEN_ENABLE	(2<<14)
#define DMACSDP_DSTPACK		(1<<13)
#define DMACSDP_DST_SARAM		(0<<9)
#define DMACSDP_DST_DARAM		(1<<9)
#define DMACSDP_DST_EMIF		(2<<9)
#define DMACSDP_DST_IO		(3<<9)
#define DMACSDP_SRCBEN_DISABLE	(0<<7)
#define DMACSDP_SRCBEN_ENABLE	(2<<7)
#define DMACSDP_SRCPACK		(1<<6)
#define DMACSDP_SRC_SARAM		(0<<2)
#define DMACSDP_SRC_DARAM		(1<<2)
#define DMACSDP_SRC_EMIF		(2<<2)
#define DMACSDP_SRC_IO		(3<<2)
#define DMACSDP_DATATYPE_8		(0)
#define DMACSDP_DATATYPE_16		(1)
#define DMACSDP_DATATYPE_32		(2)

#define DMACCR(ch) 		DMACHREG(ch,0x1)
#define DMACCR_DSTAMODE_CONSTANT	(0<<14)
#define DMACCR_DSTAMODE_AUTOMATIC	(1<<14)
#define DMACCR_DSTAMODE_SINGLE	(2<<14)
#define DMACCR_DSTAMODE_DOUBLE	(3<<14)
#define DMACCR_SRCAMODE_CONSTANT	(0<<12)
#define DMACCR_SRCAMODE_AUTOMATIC	(1<<12)
#define DMACCR_SRCAMODE_SINGLE	(2<<12)
#define DMACCR_SRCAMODE_DOUBLE	(3<<12)
#define DMACCR_ENDPROG		(1<<11)
#define DMACCR_REPEAT			(1<<9)
#define DMACCR_AUTOINIT		(1<<8)
#define DMACCR_EN			(1<<7)
#define DMACCR_PRIO			(1<<6)
#define DMACCR_FS			(1<<5)

#define DMACICR(ch)		DMACHREG(ch,0x2)
#define DMACICR_BLOCKIE		(1<<5)
#define DMACICR_LASTIE		(1<<4)
#define DMACICR_FRAMEIE		(1<<3)
#define DMACICR_HALFIE		(1<<2)
#define DMACICR_DROPIE		(1<<1)
#define DMACICR_TIMEOUTIE		(1<<0)

#define DMACSR(ch) 		DMACHREG(ch,0x3)
#define DMACSR_BLOCK			(1<<5)
#define DMACSR_LAST			(1<<4)
#define DMACSR_FRAME			(1<<3)
#define DMACSR_HALF			(1<<2)
#define DMACSR_DROP			(1<<1)
#define DMACSR_TIMEOUT		(1<<0)

#define DMACSSAL(ch)		DMACHREG(ch,0x4)
#define DMACSSAU(ch)		DMACHREG(ch,0x5)
#define DMACDSAL(ch)		DMACHREG(ch,0x6)
#define DMACDSAU(ch)		DMACHREG(ch,0x7)
#define DMACEN(ch) 		DMACHREG(ch,0x8)
#define DMACFN(ch) 		DMACHREG(ch,0x9)
#define DMACSFI(ch)		DMACHREG_SIGNED(ch,0xA)
#define DMACSEI(ch)		DMACHREG_SIGNED(ch,0xB)
#define DMACSAC(ch)		DMACHREG(ch,0xC)
#define DMACDAC(ch)		DMACHREG(ch,0xD)
#define DMACDEI(ch)		DMACHREG_SIGNED(ch,0xE)
#define DMACDFI(ch)		DMACHREG_SIGNED(ch,0xF)

#endif
