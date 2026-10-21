package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class ScreenStateImpl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ScreenStateImpl> CREATOR = new zzh();
    private final int fP;
    private final int mVersionCode;

    ScreenStateImpl(int i, int i2) {
        this.mVersionCode = i;
        this.fP = i2;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public String toString() {
        return this.fP == 1 ? "ScreenState: SCREEN_OFF" : this.fP == 2 ? "ScreenState: SCREEN_ON" : "ScreenState: UNKNOWN";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    public int zzagy() {
        return this.fP;
    }
}
