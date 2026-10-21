package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class NetworkStateImpl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<NetworkStateImpl> CREATOR = new zzd();
    private final int fK;
    private final int fL;
    private final int mVersionCode;

    NetworkStateImpl(int i, int i2, int i3) {
        this.mVersionCode = i;
        this.fK = i2;
        this.fL = i3;
    }

    public static String zzdi(int i) {
        switch (i) {
            case 1:
                return "DISCONNECTED";
            case 2:
                return "ON_WIFI";
            case 3:
                return "ON_CELLULAR";
            default:
                return new StringBuilder(37).append("unknown connection state: ").append(i).toString();
        }
    }

    public static String zzdj(int i) {
        switch (i) {
            case 1:
                return "METERED";
            case 2:
                return "UNMETERED";
            default:
                return new StringBuilder(32).append("unknown meter state: ").append(i).toString();
        }
    }

    public int getConnectionState() {
        return this.fK;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public String toString() {
        String strValueOf = String.valueOf(zzdi(this.fK));
        String strValueOf2 = String.valueOf(zzdj(this.fL));
        return new StringBuilder(String.valueOf(strValueOf).length() + 41 + String.valueOf(strValueOf2).length()).append("ConnectionState = ").append(strValueOf).append(" NetworkMeteredState = ").append(strValueOf2).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }

    int zzagu() {
        return this.fL;
    }
}
