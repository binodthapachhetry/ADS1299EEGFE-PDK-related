# Simple Makefile for building JNI USB shim

JNI_INCLUDE = $(JAVA_HOME)/include
JNI_PLATFORM_INCLUDE = $(JAVA_HOME)/include/linux

all: libtiusb_jni.so

libtiusb_jni.so: tiusb_jni.c
	$(CC) -fPIC -I$(JNI_INCLUDE) -I$(JNI_PLATFORM_INCLUDE) -shared -o libtiusb_jni.so tiusb_jni.c

clean:
	rm -f libtiusb_jni.so
