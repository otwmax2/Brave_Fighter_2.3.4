package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* JADX INFO: loaded from: classes.dex */
@KeepName
public class PlusCommonExtras extends AbstractSafeParcelable {
    public static final zzf CREATOR = new zzf();
    private String asF;
    private String asG;
    private final int mVersionCode;

    public PlusCommonExtras() {
        this.mVersionCode = 1;
        this.asF = "";
        this.asG = "";
    }

    PlusCommonExtras(int i, String str, String str2) {
        this.mVersionCode = i;
        this.asF = str;
        this.asG = str2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlusCommonExtras)) {
            return false;
        }
        PlusCommonExtras plusCommonExtras = (PlusCommonExtras) obj;
        return this.mVersionCode == plusCommonExtras.mVersionCode && zzaa.equal(this.asF, plusCommonExtras.asF) && zzaa.equal(this.asG, plusCommonExtras.asG);
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.mVersionCode), this.asF, this.asG);
    }

    public String toString() {
        return zzaa.zzz(this).zzg("versionCode", Integer.valueOf(this.mVersionCode)).zzg("Gpsrc", this.asF).zzg("ClientCallingPackage", this.asG).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }

    public void zzan(Bundle bundle) {
        bundle.putByteArray("android.gms.plus.internal.PlusCommonExtras.extraPlusCommon", com.google.android.gms.common.internal.safeparcel.zzc.zza(this));
    }

    public String zzbyi() {
        return this.asF;
    }

    public String zzbyj() {
        return this.asG;
    }
}
