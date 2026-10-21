package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzq;

/* JADX INFO: loaded from: classes.dex */
public class ResolveAccountResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountResponse> CREATOR = new zzad();
    final int mVersionCode;
    private ConnectionResult rv;
    private boolean tB;
    IBinder wY;
    private boolean yX;

    ResolveAccountResponse(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.mVersionCode = i;
        this.wY = iBinder;
        this.rv = connectionResult;
        this.tB = z;
        this.yX = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResolveAccountResponse)) {
            return false;
        }
        ResolveAccountResponse resolveAccountResponse = (ResolveAccountResponse) obj;
        return this.rv.equals(resolveAccountResponse.rv) && zzatc().equals(resolveAccountResponse.zzatc());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzad.zza(this, parcel, i);
    }

    public zzq zzatc() {
        return zzq.zza.zzdp(this.wY);
    }

    public ConnectionResult zzatd() {
        return this.rv;
    }

    public boolean zzate() {
        return this.tB;
    }

    public boolean zzatf() {
        return this.yX;
    }
}
