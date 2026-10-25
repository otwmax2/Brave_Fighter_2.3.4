#include "../Includes/Logger.hpp"
#include "../Includes/Obfuscate.hpp"
#include "Jni.hpp"
#include <dlfcn.h>
#include <unistd.h>
#include <string.h>
#include <pthread.h>

// Forward declarations
void InitMods();

static bool s_libLoaded = false;

/**
 * Setup — menunggu libcocos2dcpp.so dimuat, lalu patch memory.
 * Berjalan di thread latar belakang agar tidak blocking UI.
 */
static void* loaderThread(void*) {
    LOGI(OBF("[ModMenu] Thread hook dimulai, menunggu libcocos2dcpp.so..."));
    const char* libName = "libcocos2dcpp.so";
    void* h = nullptr;
    while (!h) {
        h = dlopen(libName, RTLD_NOW);
        if (!h) {
            // scan /proc/self/maps
            FILE* f = fopen("/proc/self/maps", "r");
            if (f) {
                char line[512];
                while (fgets(line, sizeof(line), f)) {
                    if (strstr(line, libName)) {
                        h = dlopen(libName, RTLD_NOW);
                        break;
                    }
                }
                fclose(f);
            }
            usleep(200 * 1000); // 200 ms
        }
    }
    LOGI(OBF("[ModMenu] %s ditemukan! Init mods."), libName);
    s_libLoaded = true;
    InitMods();
    return nullptr;
}

// Constructor yang otomatis berjalan saat library dimuat
__attribute__((constructor))
static void early_init() {
    pthread_t t;
    pthread_create(&t, nullptr, loaderThread, nullptr);
    pthread_detach(t);
}
