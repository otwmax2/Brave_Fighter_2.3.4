package com.mod.menu;

import android.content.Context;
import android.content.SharedPreferences;

/**
 * Menyimpan status toggle mod di SharedPreferences, sehingga native hook bisa
 * membaca nilai via JNI.
 */
public class Preferences {

    private static final String PREFS_NAME = "ModMenuPrefs";
    public static final String KEY_UNLIMITED_GOLD = "unlimited_gold";
    public static final String KEY_UNLIMITED_CRYSTALS = "unlimited_crystals";
    public static final String KEY_GOD_MODE = "god_mode";
    public static final String KEY_ONE_HIT_KILL = "one_hit_kill";
    public static final String KEY_FREE_SHOP = "free_shop";
    public static final String KEY_NO_ADS = "no_ads";
    public static final String KEY_MAX_LEVEL = "max_level";
    public static final String KEY_UNLOCK_ALL = "unlock_all";
    public static final String KEY_XP_X10 = "xp_x10";
    public static final String KEY_GOLD_DROP_X10 = "gold_drop_x10";
    public static final String KEY_NO_CD = "no_cooldown";
    public static final String KEY_SPEED_X2 = "speed_x2";

    private static SharedPreferences sPrefs;

    public static void init(Context ctx) {
        sPrefs = ctx.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE);
    }

    public static boolean getBoolean(String key, boolean def) {
        return sPrefs != null && sPrefs.getBoolean(key, def);
    }

    public static void setBoolean(String key, boolean val) {
        if (sPrefs != null) {
            sPrefs.edit().putBoolean(key, val).apply();
            // Notify native
            native_onPrefChanged(key, val ? 1 : 0);
        }
    }

    // Dipanggil dari C++ untuk membaca status toggle
    public static native int native_getFeature(String key);
    public static native void native_onPrefChanged(String key, int enabled);

    static {
        try { System.loadLibrary("modmenu"); }
        catch (UnsatisfiedLinkError e) { /* Akan dimuat setelah lib di-push */ }
    }
}
