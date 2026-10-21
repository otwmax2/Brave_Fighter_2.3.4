package com.google.android.gms.games.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class ConnectionInfo implements SafeParcelable {
    public static final ConnectionInfoCreator CREATOR = new ConnectionInfoCreator();
    private final String Sx;
    private final int Sy;
    private final int mVersionCode;

    public ConnectionInfo(int i, String str, int i2) {
        this.mVersionCode = i;
        this.Sx = str;
        this.Sy = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ConnectionInfoCreator.zza(this, parcel, i);
    }

    public String zzbhz() {
        return this.Sx;
    }

    public int zzbia() {
        return this.Sy;
    }
}
