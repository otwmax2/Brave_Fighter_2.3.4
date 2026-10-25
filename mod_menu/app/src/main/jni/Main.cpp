/**
 * Main.cpp — entry point JNI untuk modmenu lib.
 * Berdasarkan template LGLModMenu v5.0, disesuaikan untuk Brave Fighter.
 */
#include <jni.h>
#include <string>
#include "Includes/Logger.hpp"
#include "Includes/Obfuscate.hpp"

// Didefinisikan di Menu/Jni.cpp
extern "C" jint JNI_OnLoad(JavaVM* vm, void* reserved);

// Di template LGL asli, Main.cpp berisi registrasi JNI dan inisialisasi logging.
// Kita serahkan semua ke JNI_OnLoad di Jni.cpp (yang akan menunggu libcocos2dcpp.so
// dimuat via Setup.cpp loader thread).
