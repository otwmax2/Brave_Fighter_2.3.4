package com.google.android.gms.analytics;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.analytics.internal.zzak;

/* JADX INFO: loaded from: classes.dex */
public final class AnalyticsService extends Service implements zzak.zza {
    private zzak zzcrt;

    private zzak zzvt() {
        if (this.zzcrt == null) {
            this.zzcrt = new zzak(this);
        }
        return this.zzcrt;
    }

    @Override // com.google.android.gms.analytics.internal.zzak.zza
    public boolean callServiceStopSelfResult(int i) {
        return stopSelfResult(i);
    }

    @Override // com.google.android.gms.analytics.internal.zzak.zza
    public Context getContext() {
        return this;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return zzvt().onBind(intent);
    }

    @Override // android.app.Service
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public void onCreate() {
        super.onCreate();
        zzvt().onCreate();
    }

    @Override // android.app.Service
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public void onDestroy() {
        zzvt().onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Service
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public int onStartCommand(Intent intent, int i, int i2) {
        return zzvt().onStartCommand(intent, i, i2);
    }
}
