package com.mod.menu;

import android.app.ActivityManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;

/**
 * Foreground service yang menampilkan floating mod menu.
 */
public class Launcher extends Service {

    private static Launcher sInstance;
    private Menu mMenu;
    private Handler mHandler = new Handler(Looper.getMainLooper());
    private Runnable mVisibilityChecker = new Runnable() {
        @Override
        public void run() {
            if (mMenu != null) {
                mMenu.setVisibility(isInGame() ? android.view.View.VISIBLE : android.view.View.INVISIBLE);
            }
            mHandler.postDelayed(this, 1000);
        }
    };

    public static void start(Context ctx) {
        try {
            Intent svc = new Intent(ctx, Launcher.class);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                ctx.startForegroundService(svc);
            } else {
                ctx.startService(svc);
            }
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    @Override
    public void onCreate() {
        super.onCreate();
        sInstance = this;
        mMenu = new Menu(this);
        mMenu.ShowMenu();
        mHandler.postDelayed(mVisibilityChecker, 1000);
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        return START_STICKY;
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    private boolean isInGame() {
        ActivityManager.RunningAppProcessInfo info = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(info);
        return info.importance == ActivityManager.RunningAppProcessInfo.IMPORTANCE_FOREGROUND;
    }

    @Override
    public void onDestroy() {
        mHandler.removeCallbacks(mVisibilityChecker);
        if (mMenu != null) mMenu.onDestroy();
        super.onDestroy();
    }

    @Override
    public void onTaskRemoved(Intent rootIntent) {
        stopSelf();
        super.onTaskRemoved(rootIntent);
    }
}
