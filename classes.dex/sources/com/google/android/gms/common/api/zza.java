package com.google.android.gms.common.api;

import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.zzpo;

/* JADX INFO: loaded from: classes.dex */
public class zza extends zzb {
    private final ConnectionResult rv;

    public zza(Status status, ArrayMap<zzpo<?>, ConnectionResult> arrayMap) {
        super(status, arrayMap);
        this.rv = arrayMap.get(arrayMap.keyAt(0));
    }
}
