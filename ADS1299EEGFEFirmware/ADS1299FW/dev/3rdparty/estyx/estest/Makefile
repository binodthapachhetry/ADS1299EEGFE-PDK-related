
CC=mingw32-gcc
CXX=mingw32-g++
CPPFLAGS=-I..

obj=convD2M.o convM2D.o convM2S.o convS2M.o \
	crc32.o estyx.o utilfiles.o estest.o

estest.a: $(obj)
	ar rcs estest.a $(obj)

$(obj): estyx.h utilfiles.h

clean:
	- rm -f $(obj) estest.a
