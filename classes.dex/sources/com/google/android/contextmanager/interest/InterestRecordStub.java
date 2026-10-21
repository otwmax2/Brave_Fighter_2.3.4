package com.google.android.contextmanager.interest;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.zzapb;
import com.google.android.gms.internal.zzapc;
import com.google.android.gms.internal.zzsa;

/* JADX INFO: loaded from: classes.dex */
public class InterestRecordStub extends AbstractSafeParcelable {
    public static final Parcelable.Creator<InterestRecordStub> CREATOR = new zza();
    private final int mVersionCode;
    private final zzsa.zzb zzahu;

    InterestRecordStub(int i, byte[] bArr) {
        this.mVersionCode = i;
        zzsa.zzb zzbVarZzw = null;
        try {
            zzbVarZzw = zzsa.zzb.zzw(bArr);
        } catch (zzapb e) {
            Log.e("InterestRecordStub", "Could not deserialize interest bytes.", e);
        }
        this.zzahu = zzbVarZzw;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    byte[] zzdb() {
        return zzapc.zzf(this.zzahu);
    }
}
