#include <jni.h>
#include <stdio.h>

/*
 * Stub implementation for JNI USB shim
 * JNIEXPORT and JNICALL are defined in jni.h, but to avoid build errors if
 * this file is compiled directly, ensure they are defined.
 */
#ifndef JNIEXPORT
#define JNIEXPORT
#endif
#ifndef JNICALL
#define JNICALL
#endif

JNIEXPORT void JNICALL Java_com_ti_usb_DeviceManager_nativeInit(JNIEnv *env, jobject obj) {
    // In a real implementation, initialize USB subsystem here
    printf("Native USB subsystem initialized.\n");
}
