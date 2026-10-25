#include "Jni.hpp"
#include "../Includes/Logger.hpp"
#include "../Includes/Obfuscate.hpp"

static JavaVM* g_vm = nullptr;
static JNIEnv* g_env = nullptr;

namespace Jni {
    void init(JavaVM* vm, JNIEnv* env) { g_vm = vm; g_env = env; }
    JavaVM* getVM() { return g_vm; }
    JNIEnv* getEnv() {
        if (g_env) return g_env;
        if (g_vm) {
            JNIEnv* e = nullptr;
            g_vm->AttachCurrentThread(&e, nullptr);
            return e;
        }
        return nullptr;
    }

    jclass findClass(const char* name) {
        JNIEnv* env = getEnv();
        if (!env) return nullptr;
        return env->FindClass(name);
    }

    bool getBooleanPref(const char* key, bool def) {
        JNIEnv* env = getEnv();
        if (!env) return def;
        jclass c = env->FindClass("com/mod/menu/Preferences");
        if (!c) return def;
        jmethodID m = env->GetStaticMethodID(c, "getBoolean",
            "(Ljava/lang/String;Z)Z");
        if (!m) { env->DeleteLocalRef(c); return def; }
        jstring jk = env->NewStringUTF(key);
        bool v = env->CallStaticBooleanMethod(c, m, jk, (jboolean)def);
        env->DeleteLocalRef(jk);
        env->DeleteLocalRef(c);
        return v;
    }
}

// JNI_OnLoad dipanggil saat System.loadLibrary("modmenu")
extern "C"
jint JNI_OnLoad(JavaVM* vm, void* reserved) {
    JNIEnv* env = nullptr;
    vm->GetEnv(reinterpret_cast<void**>(&env), JNI_VERSION_1_6);
    Jni::init(vm, env);
    LOGI(OBF("[ModMenu] JNI_OnLoad OK"));
    return JNI_VERSION_1_6;
}
