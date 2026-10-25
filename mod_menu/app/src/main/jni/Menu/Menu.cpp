/**
 * Menu.cpp — inti dari mod menu: semua hook native Dobby dan memory patches.
 *
 * Setiap feature diwakili oleh fungsi hook() yang memeriksa toggle via
 * Jni::getBooleanPref(key). Fungsi InitMods() mendaftarkan semua hook
 * setelah libcocos2dcpp.so dimuat.
 *
 * Offset di hardcoded sebagai placeholder berbasis analisis Ghidra
 * (lihat folder ghidra_decomp/). Offset aktual bisa disesuaikan di build
 * produksi dengan pattern scan atau manual offset finder.
 */
#include "../Includes/Logger.hpp"
#include "../Includes/Obfuscate.hpp"
#include "Jni.hpp"
#include "KittyMemory/KittyMemory.hpp"
#include "dobby.h"
#include <string.h>
#include <stdint.h>
#include <sys/mman.h>

// Alamat base libcocos2dcpp.so (akan di-setup saat InitMods)
static uintptr_t g_base = 0;
static size_t    g_size = 0;

static uintptr_t get_lib_base(const char* lib) {
    FILE* f = fopen("/proc/self/maps", "r");
    if (!f) return 0;
    char line[512];
    uintptr_t ret = 0;
    while (fgets(line, sizeof(line), f)) {
        if (strstr(line, lib)) {
            ret = strtoul(line, nullptr, 16);
            break;
        }
    }
    fclose(f);
    return ret;
}

// ========== HOOK: takeDamage ==========
// Prototipe: float CActor::takeDamage(CActor* this, float damage, int source)
// Jika aktor adalah hero, kembalikan 0 (tidak menerima damage)
// Jika target adalah monster, ganti damage jadi 999999 (one-hit kill)
typedef float (*fn_takeDamage)(void* self, float dmg, int src);
fn_takeDamage o_takeDamage = nullptr;
float h_takeDamage(void* self, float dmg, int src) {
    bool god = Jni::getBooleanPref("god_mode", false);
    bool ohk = Jni::getBooleanPref("one_hit_kill", false);
    // Heuristik sederhana: hero pointer biasanya di area tertentu, monster berbeda.
    // Deteksi lebih akurat memerlukan inspeksi vtabel; untuk awal kita pakai asumsi:
    // - Parameter src == 0 berarti damage yang masuk ke hero; src != 0 ke monster.
    if (god && src == 0) dmg = 0.0f;
    if (ohk && src != 0) dmg = 999999.0f;
    return o_takeDamage(self, dmg, src);
}

// ========== HOOK: addGold ==========
// Tambah gold akan dikalikan, atau unlimited -> set langsung ke 999.999.999.
typedef void (*fn_addGold)(int amount);
fn_addGold o_addGold = nullptr;
void h_addGold(int amount) {
    int mult = 1;
    if (Jni::getBooleanPref("gold_drop_x10", false)) mult = 10;
    if (Jni::getBooleanPref("unlimited_gold", false)) amount = 999999999;
    else amount = amount * mult;
    o_addGold(amount);
}

typedef void (*fn_addCrystal)(int amount);
fn_addCrystal o_addCrystal = nullptr;
void h_addCrystal(int amount) {
    if (Jni::getBooleanPref("unlimited_crystals", false)) amount = 999999999;
    o_addCrystal(amount);
}

// ========== HOOK: giveExp ==========
typedef void (*fn_giveExp)(int amount);
fn_giveExp o_giveExp = nullptr;
void h_giveExp(int amount) {
    if (Jni::getBooleanPref("xp_x10", false)) amount *= 10;
    if (Jni::getBooleanPref("max_level", false)) amount = 99999999;
    o_giveExp(amount);
}

// ========== HOOK: skill cooldown ==========
typedef float (*fn_getCooldown)(void* skill);
fn_getCooldown o_getCooldown = nullptr;
float h_getCooldown(void* skill) {
    if (Jni::getBooleanPref("no_cooldown", false)) return 0.0f;
    return o_getCooldown(skill);
}

// ========== HOOK: hero speed ==========
typedef float (*fn_getSpeed)(void* actor);
fn_getSpeed o_getSpeed = nullptr;
float h_getSpeed(void* actor) {
    float spd = o_getSpeed(actor);
    if (Jni::getBooleanPref("speed_x2", false)) spd *= 2.0f;
    return spd;
}

// ========== PATCH: unlock all heroes ==========
// Fungsi isHeroUnlocked(int id) — return true untuk semua id.
typedef bool (*fn_isUnlocked)(int id);
fn_isUnlocked o_isUnlocked = nullptr;
bool h_isUnlocked(int id) {
    if (Jni::getBooleanPref("unlock_all", false)) return true;
    return o_isUnlocked(id);
}

// ============================================================
// InitMods — mencari offset dan memasang semua hook
// ============================================================
// Offset-placeholder; pada build produksi gunakan Ghidra untuk mencari
// alamat aktual di libcocos2dcpp.so versi 2.3.4.
// Angka di bawah adalah CONTOH. Ganti dengan offset nyata hasil analisis.
static constexpr uintptr_t OFF_TAKE_DAMAGE    = 0x00000000; // TODO: update
static constexpr uintptr_t OFF_ADD_GOLD       = 0x00000000;
static constexpr uintptr_t OFF_ADD_CRYSTAL    = 0x00000000;
static constexpr uintptr_t OFF_GIVE_EXP       = 0x00000000;
static constexpr uintptr_t OFF_GET_COOLDOWN   = 0x00000000;
static constexpr uintptr_t OFF_GET_SPEED      = 0x00000000;
static constexpr uintptr_t OFF_IS_UNLOCKED    = 0x00000000;

template <typename T>
static void hook(uintptr_t off, T hook_fn, T** orig) {
    if (off == 0) { LOGW(OBF("[ModMenu] Offset 0 dilewati (belum diketahui)")); return; }
    void* addr = reinterpret_cast<void*>(g_base + off);
    if (DobbyHook(addr, (dobby_dummy_func_t)hook_fn, (dobby_dummy_func_t*)orig) != 0) {
        LOGE(OBF("[ModMenu] Gagal hook offset 0x%lx"), off);
    } else {
        LOGI(OBF("[ModMenu] Hook OK @ 0x%lx"), off);
    }
}

void InitMods() {
    g_base = get_lib_base("libcocos2dcpp.so");
    if (!g_base) { LOGE(OBF("[ModMenu] Base libcocos2dcpp.so tidak ditemukan")); return; }
    LOGI(OBF("[ModMenu] libcocos2dcpp.so base = 0x%lx"), g_base);

    hook(OFF_TAKE_DAMAGE,  h_takeDamage,  (fn_takeDamage**)&o_takeDamage);
    hook(OFF_ADD_GOLD,     h_addGold,     (fn_addGold**)&o_addGold);
    hook(OFF_ADD_CRYSTAL,  h_addCrystal,  (fn_addCrystal**)&o_addCrystal);
    hook(OFF_GIVE_EXP,     h_giveExp,     (fn_giveExp**)&o_giveExp);
    hook(OFF_GET_COOLDOWN, h_getCooldown, (fn_getCooldown**)&o_getCooldown);
    hook(OFF_GET_SPEED,    h_getSpeed,    (fn_getSpeed**)&o_getSpeed);
    hook(OFF_IS_UNLOCKED,  h_isUnlocked,  (fn_isUnlocked**)&o_isUnlocked);

    // ============== PATCH FREE SHOP (Java layer) ==============
    // Sudah di-handle di patch smali (IabResult.isSuccess return true),
    // toggle dicek di Java Hook.shouldBypassBilling()

    // ============== PATCH NO ADS (Java layer) ==============
    // Sama, di patch smali.

    LOGI(OBF("[ModMenu] Semua hook sudah terpasang."));
}
