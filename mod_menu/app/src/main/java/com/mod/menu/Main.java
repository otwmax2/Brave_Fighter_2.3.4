package com.mod.menu;

import android.app.Application;
import android.content.Context;

/**
 * Application proxy: diinisialisasi sebelum activity, memulai service mod menu.
 */
public class Main extends Application {

    private static Context sContext;

    @Override
    public void onCreate() {
        super.onCreate();
        sContext = getApplicationContext();
        // Start overlay service
        Launcher.start(this);
    }

    public static Context getContext() {
        return sContext;
    }
}
