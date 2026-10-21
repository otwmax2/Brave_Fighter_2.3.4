package com.google.android.gms.awareness;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.zzab;

/* JADX INFO: loaded from: classes.dex */
public class AwarenessOptions implements Api.ApiOptions.Optional {
    public static final int NO_UID = -1;
    private final int fA;
    private final String fB;
    private final String fC;
    private final int fD;
    private final String fz;

    protected AwarenessOptions(String str, int i, String str2, String str3, int i2) {
        this.fz = str;
        this.fA = i;
        this.fB = str2;
        this.fC = str3;
        this.fD = i2;
    }

    public static AwarenessOptions create1p(String str) {
        zzab.zzhs(str);
        return new AwarenessOptions(str, 1, null, null, -1);
    }

    public String zzagm() {
        return this.fz;
    }

    public int zzagn() {
        return this.fA;
    }

    public String zzago() {
        return this.fB;
    }

    public String zzagp() {
        return this.fC;
    }

    public int zzagq() {
        return this.fD;
    }
}
