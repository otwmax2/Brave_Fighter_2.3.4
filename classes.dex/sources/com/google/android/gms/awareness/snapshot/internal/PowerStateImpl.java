package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class PowerStateImpl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PowerStateImpl> CREATOR = new zzg();
    private final int fN;
    private final double fO;
    private final int mVersionCode;

    PowerStateImpl(int i, int i2, double d) {
        this.mVersionCode = i;
        this.fN = i2;
        this.fO = d;
    }

    public static String zzdm(int i) {
        switch (i) {
            case 1:
                return "POWER_DISCONNECTED";
            case 2:
                return "POWER_CONNECTED_USB";
            case 3:
                return "POWER_CONNECTED_AC";
            case 4:
                return "POWER_CONNECTED_WIRELESS";
            default:
                return new StringBuilder(36).append("unknown plugged in state=").append(i).toString();
        }
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public String toString() {
        String strValueOf = String.valueOf(zzdm(this.fN));
        return new StringBuilder(String.valueOf(strValueOf).length() + 69).append("PowerConnectionState = ").append(strValueOf).append(" Battery Percentage = ").append(this.fO).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }

    public int zzagw() {
        return this.fN;
    }

    public double zzagx() {
        return this.fO;
    }
}
