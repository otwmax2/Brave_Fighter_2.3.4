package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;
import com.tendcloud.tenddata.game.ao;

/* JADX INFO: loaded from: classes.dex */
public final class zzj {
    private static long AQ;
    private static IntentFilter AP = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    private static float AR = Float.NaN;

    @TargetApi(20)
    public static boolean zzb(PowerManager powerManager) {
        return zzs.zzavr() ? powerManager.isInteractive() : powerManager.isScreenOn();
    }

    @TargetApi(20)
    public static int zzcm(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent intentRegisterReceiver = context.getApplicationContext().registerReceiver(null, AP);
        boolean z = ((intentRegisterReceiver == null ? 0 : intentRegisterReceiver.getIntExtra("plugged", 0)) & 7) != 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        return ((zzb(powerManager) ? 1 : 0) << 1) | (z ? 1 : 0);
    }

    public static synchronized float zzcn(Context context) {
        float f;
        if (SystemClock.elapsedRealtime() - AQ >= 60000 || Float.isNaN(AR)) {
            if (context.getApplicationContext().registerReceiver(null, AP) != null) {
                AR = r0.getIntExtra(ao.f, -1) / r0.getIntExtra("scale", -1);
            }
            AQ = SystemClock.elapsedRealtime();
            f = AR;
        } else {
            f = AR;
        }
        return f;
    }
}
