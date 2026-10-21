package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;

/* JADX INFO: loaded from: classes.dex */
public final class zzpo<O extends Api.ApiOptions> {
    private final Api<O> pD;
    private final O rF;

    public zzpo(Api<O> api, O o) {
        this.pD = api;
        this.rF = o;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzpo)) {
            return false;
        }
        zzpo zzpoVar = (zzpo) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.pD, zzpoVar.pD) && com.google.android.gms.common.internal.zzaa.equal(this.rF, zzpoVar.rF);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.pD, this.rF);
    }

    public Api.zzc<?> zzanp() {
        return this.pD.zzanp();
    }

    public String zzaok() {
        return this.pD.getName();
    }
}
