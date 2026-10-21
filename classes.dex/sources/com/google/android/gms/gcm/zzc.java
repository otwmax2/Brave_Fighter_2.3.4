package com.google.android.gms.gcm;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class zzc {
    public static final zzc abb = new zzc(0, 30, 3600);
    public static final zzc abc = new zzc(1, 30, 3600);
    private final int abd;
    private final int abe;
    private final int abf;

    private zzc(int i, int i2, int i3) {
        this.abd = i;
        this.abe = i2;
        this.abf = i3;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzc)) {
            return false;
        }
        zzc zzcVar = (zzc) obj;
        return zzcVar.abd == this.abd && zzcVar.abe == this.abe && zzcVar.abf == this.abf;
    }

    public int hashCode() {
        return (((((this.abd + 1) ^ 1000003) * 1000003) ^ this.abe) * 1000003) ^ this.abf;
    }

    public String toString() {
        int i = this.abd;
        int i2 = this.abe;
        return new StringBuilder(74).append("policy=").append(i).append(" initial_backoff=").append(i2).append(" maximum_backoff=").append(this.abf).toString();
    }

    public Bundle zzai(Bundle bundle) {
        bundle.putInt("retry_policy", this.abd);
        bundle.putInt("initial_backoff_seconds", this.abe);
        bundle.putInt("maximum_backoff_seconds", this.abf);
        return bundle;
    }

    public int zzbmg() {
        return this.abd;
    }

    public int zzbmh() {
        return this.abe;
    }

    public int zzbmi() {
        return this.abf;
    }
}
