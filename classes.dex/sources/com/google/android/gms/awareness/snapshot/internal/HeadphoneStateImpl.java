package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.state.HeadphoneState;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class HeadphoneStateImpl extends AbstractSafeParcelable implements HeadphoneState {
    public static final Parcelable.Creator<HeadphoneStateImpl> CREATOR = new zzc();
    private final int fJ;
    private final int mVersionCode;

    HeadphoneStateImpl(int i, int i2) {
        this.mVersionCode = i;
        this.fJ = i2;
    }

    @Override // com.google.android.gms.awareness.state.HeadphoneState
    public int getState() {
        return this.fJ;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public String toString() {
        switch (this.fJ) {
            case 1:
                return "HEADPHONE_PLUGGED";
            case 2:
                return "HEADPHONE_UNPLUGGED";
            default:
                return new StringBuilder(35).append("unknown headphone state=").append(this.fJ).toString();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
