#pragma once
#include <jni.h>
#include <string>

namespace Jni {
    void init(JavaVM* vm, JNIEnv* env);
    JavaVM* getVM();
    JNIEnv* getEnv();
    jclass findClass(const char* name);
    bool getBooleanPref(const char* key, bool def = false);
}
