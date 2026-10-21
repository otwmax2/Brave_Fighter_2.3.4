package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class CountrySpecification extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CountrySpecification> CREATOR = new zza();
    private final int mVersionCode;
    String zzcgl;

    CountrySpecification(int i, String str) {
        this.mVersionCode = i;
        this.zzcgl = str;
    }

    public CountrySpecification(String str) {
        this.mVersionCode = 1;
        this.zzcgl = str;
    }

    public String getCountryCode() {
        return this.zzcgl;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
