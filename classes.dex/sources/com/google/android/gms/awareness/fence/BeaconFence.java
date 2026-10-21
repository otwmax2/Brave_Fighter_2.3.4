package com.google.android.gms.awareness.fence;

import android.support.annotation.RequiresPermission;
import com.google.android.gms.awareness.state.BeaconState;
import com.google.android.gms.contextmanager.fence.internal.ContextFenceStub;
import com.google.android.gms.contextmanager.fence.internal.zzd;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public final class BeaconFence {
    private BeaconFence() {
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence found(Collection<BeaconState.TypeFilter> collection) {
        return (collection == null || collection.isEmpty()) ? found(new BeaconState.TypeFilter[0]) : found((BeaconState.TypeFilter[]) collection.toArray(new BeaconState.TypeFilter[collection.size()]));
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence found(BeaconState.TypeFilter... typeFilterArr) {
        return ContextFenceStub.zza(zzd.zzb(typeFilterArr));
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence lost(Collection<BeaconState.TypeFilter> collection) {
        return (collection == null || collection.isEmpty()) ? lost(new BeaconState.TypeFilter[0]) : lost((BeaconState.TypeFilter[]) collection.toArray(new BeaconState.TypeFilter[collection.size()]));
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence lost(BeaconState.TypeFilter... typeFilterArr) {
        return ContextFenceStub.zza(zzd.zzc(typeFilterArr));
    }
}
