package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class PlusSession extends AbstractSafeParcelable {
    public static final zzh CREATOR = new zzh();
    private final String[] asI;
    private final String[] asJ;
    private final String[] asK;
    private final String asL;
    private final String asM;
    private final String asN;
    private final PlusCommonExtras asO;
    private final String cf;
    private final int mVersionCode;
    private final String nX;

    PlusSession(int i, String str, String[] strArr, String[] strArr2, String[] strArr3, String str2, String str3, String str4, String str5, PlusCommonExtras plusCommonExtras) {
        this.mVersionCode = i;
        this.cf = str;
        this.asI = strArr;
        this.asJ = strArr2;
        this.asK = strArr3;
        this.asL = str2;
        this.asM = str3;
        this.nX = str4;
        this.asN = str5;
        this.asO = plusCommonExtras;
    }

    public PlusSession(String str, String[] strArr, String[] strArr2, String[] strArr3, String str2, String str3, String str4, PlusCommonExtras plusCommonExtras) {
        this.mVersionCode = 1;
        this.cf = str;
        this.asI = strArr;
        this.asJ = strArr2;
        this.asK = strArr3;
        this.asL = str2;
        this.asM = str3;
        this.nX = str4;
        this.asN = null;
        this.asO = plusCommonExtras;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlusSession)) {
            return false;
        }
        PlusSession plusSession = (PlusSession) obj;
        return this.mVersionCode == plusSession.mVersionCode && zzaa.equal(this.cf, plusSession.cf) && Arrays.equals(this.asI, plusSession.asI) && Arrays.equals(this.asJ, plusSession.asJ) && Arrays.equals(this.asK, plusSession.asK) && zzaa.equal(this.asL, plusSession.asL) && zzaa.equal(this.asM, plusSession.asM) && zzaa.equal(this.nX, plusSession.nX) && zzaa.equal(this.asN, plusSession.asN) && zzaa.equal(this.asO, plusSession.asO);
    }

    public String getAccountName() {
        return this.cf;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.mVersionCode), this.cf, this.asI, this.asJ, this.asK, this.asL, this.asM, this.nX, this.asN, this.asO);
    }

    public String toString() {
        return zzaa.zzz(this).zzg("versionCode", Integer.valueOf(this.mVersionCode)).zzg("accountName", this.cf).zzg("requestedScopes", this.asI).zzg("visibleActivities", this.asJ).zzg("requiredFeatures", this.asK).zzg("packageNameForAuth", this.asL).zzg("callingPackageName", this.asM).zzg("applicationName", this.nX).zzg("extra", this.asO.toString()).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    public String zzalr() {
        return this.nX;
    }

    public String[] zzbyk() {
        return this.asI;
    }

    public String[] zzbyl() {
        return this.asJ;
    }

    public String[] zzbym() {
        return this.asK;
    }

    public String zzbyn() {
        return this.asL;
    }

    public String zzbyo() {
        return this.asM;
    }

    public String zzbyp() {
        return this.asN;
    }

    public PlusCommonExtras zzbyq() {
        return this.asO;
    }

    public Bundle zzbyr() {
        Bundle bundle = new Bundle();
        bundle.setClassLoader(PlusCommonExtras.class.getClassLoader());
        this.asO.zzan(bundle);
        return bundle;
    }
}
