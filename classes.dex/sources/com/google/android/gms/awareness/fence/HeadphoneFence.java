package com.google.android.gms.awareness.fence;

import com.google.android.gms.contextmanager.fence.internal.ContextFenceStub;
import com.google.android.gms.contextmanager.fence.internal.zzb;

/* JADX INFO: loaded from: classes.dex */
public final class HeadphoneFence {
    private HeadphoneFence() {
    }

    public static AwarenessFence during(int i) {
        return ContextFenceStub.zza(zzb.zzhj(i));
    }

    public static AwarenessFence pluggingIn() {
        return ContextFenceStub.zza(zzb.zzawv());
    }

    public static AwarenessFence unplugging() {
        return ContextFenceStub.zza(zzb.zzaww());
    }
}
