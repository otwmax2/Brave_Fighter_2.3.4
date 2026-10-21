package com.google.android.gms.common.api;

import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.zzpo;

/* JADX INFO: loaded from: classes.dex */
public class zzb implements Result {
    private final Status cc;
    private final ArrayMap<zzpo<?>, ConnectionResult> rw;

    public zzb(Status status, ArrayMap<zzpo<?>, ConnectionResult> arrayMap) {
        this.cc = status;
        this.rw = arrayMap;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.cc;
    }
}
