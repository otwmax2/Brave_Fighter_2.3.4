package com.google.android.gms.internal;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class zzbr {
    public static final zzbr zzaho = new zzbr("@@ContextManagerNullAccount@@");
    private static zza zzahp = null;
    private final String mName;

    public interface zza {
    }

    public zzbr(String str) {
        this.mName = com.google.android.gms.common.internal.zzab.zzhs(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzbr) {
            return TextUtils.equals(this.mName, ((zzbr) obj).getName());
        }
        return false;
    }

    public String getName() {
        return this.mName;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.mName);
    }

    public String toString() {
        return "#account#";
    }
}
