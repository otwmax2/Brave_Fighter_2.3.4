package com.google.android.gms.awareness.fence;

import android.support.annotation.RequiresPermission;
import com.google.android.gms.contextmanager.fence.internal.ContextFenceStub;
import com.google.android.gms.contextmanager.fence.internal.zzn;

/* JADX INFO: loaded from: classes.dex */
public final class LocationFence {
    private LocationFence() {
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence entering(double d, double d2, double d3) {
        return ContextFenceStub.zza(zzn.zza((int) (d * 1.0E7d), (int) (1.0E7d * d2), d3));
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence exiting(double d, double d2, double d3) {
        return ContextFenceStub.zza(zzn.zzb((int) (d * 1.0E7d), (int) (1.0E7d * d2), d3));
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence in(double d, double d2, double d3, long j) {
        return ContextFenceStub.zza(zzn.zza((int) (d * 1.0E7d), (int) (1.0E7d * d2), d3, j));
    }
}
