package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;

/* JADX INFO: loaded from: classes.dex */
public final class Scope extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new zze();
    final int mVersionCode;
    private final String sf;

    Scope(int i, String str) {
        zzab.zzh(str, "scopeUri must not be null or empty");
        this.mVersionCode = i;
        this.sf = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.sf.equals(((Scope) obj).sf);
        }
        return false;
    }

    public int hashCode() {
        return this.sf.hashCode();
    }

    public String toString() {
        return this.sf;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public String zzaoh() {
        return this.sf;
    }
}
