package com.google.android.gms.analytics.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes.dex */
public class zzv extends zzd {
    private boolean zzczm;
    private boolean zzczn;
    private AlarmManager zzczo;

    protected zzv(zzf zzfVar) {
        super(zzfVar);
        this.zzczo = (AlarmManager) getContext().getSystemService("alarm");
    }

    private PendingIntent zzacn() {
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"));
        return PendingIntent.getBroadcast(getContext(), 0, intent, 0);
    }

    public void cancel() {
        zzzg();
        this.zzczn = false;
        this.zzczo.cancel(zzacn());
    }

    public void schedule() {
        zzzg();
        com.google.android.gms.common.internal.zzab.zza(zzacm(), "Receiver not registered");
        long jZzabl = zzyy().zzabl();
        if (jZzabl > 0) {
            cancel();
            long jElapsedRealtime = zzyw().elapsedRealtime() + jZzabl;
            this.zzczn = true;
            this.zzczo.setInexactRepeating(2, jElapsedRealtime, 0L, zzacn());
        }
    }

    public boolean zzacm() {
        return this.zzczm;
    }

    public boolean zzfc() {
        return this.zzczn;
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzwv() {
        ActivityInfo receiverInfo;
        try {
            this.zzczo.cancel(zzacn());
            if (zzyy().zzabl() <= 0 || (receiverInfo = getContext().getPackageManager().getReceiverInfo(new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"), 2)) == null || !receiverInfo.enabled) {
                return;
            }
            zzei("Receiver registered. Using alarm for local dispatch.");
            this.zzczm = true;
        } catch (PackageManager.NameNotFoundException e) {
        }
    }
}
