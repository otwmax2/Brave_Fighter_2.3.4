package com.mod.menu;

/**
 * Hook.java — Java-layer hook yang di-inject.
 *
 * Class ini berisi method yang dipanggil dari patch smali untuk:
 *   • Membypass IAP billing (free shop)
 *   • Membypass iklan (no ads)
 *
 * TIDAK menggunakan Xposed/Frog/Dobby di layer Java — patch smali dilakukan
 * oleh scripts/patch_smali.py.
 */
public final class Hook {

    // ==== Free IAP ====
    // Patch di MonsterHunter.onIabPurchaseFinished akan memanggil
    // Hook.onPurchaseSuccess() alih-alih memproses response dari Play Store,
    // sehingga SKU apapun langsung dianggap berhasil dan item diberikan.
    public static boolean shouldBypassBilling() {
        return Preferences.getBoolean(Preferences.KEY_FREE_SHOP, true);
    }

    // ==== No Ads ====
    // Patch di IronSource panggilan akan dicek ke Hook.shouldSkipAds();
    // jika true, callback reward akan langsung di-trigger tanpa menampilkan iklan.
    public static boolean shouldSkipAds() {
        return Preferences.getBoolean(Preferences.KEY_NO_ADS, true);
    }

    // ==== Gold Multiplier ====
    // Digunakan jika native hook ingin membaca factor dari Java.
    public static int getGoldMultiplier() {
        if (Preferences.getBoolean(Preferences.KEY_UNLIMITED_GOLD, false)) return -1; // flag unlimited
        if (Preferences.getBoolean(Preferences.KEY_GOLD_DROP_X10, false)) return 10;
        return 1;
    }

    public static int getXPMultiplier() {
        return Preferences.getBoolean(Preferences.KEY_XP_X10, false) ? 10 : 1;
    }

    public static float getSpeedMultiplier() {
        return Preferences.getBoolean(Preferences.KEY_SPEED_X2, false) ? 2.0f : 1.0f;
    }

    private Hook() {}
}
