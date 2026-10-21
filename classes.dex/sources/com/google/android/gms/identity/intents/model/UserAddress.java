package com.google.android.gms.identity.intents.model;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.identity.intents.AddressConstants;

/* JADX INFO: loaded from: classes.dex */
public final class UserAddress extends AbstractSafeParcelable {
    public static final Parcelable.Creator<UserAddress> CREATOR = new zzb();
    String abC;
    String abD;
    String abE;
    String abF;
    String abG;
    String abH;
    String abI;
    String abJ;
    String abK;
    boolean abL;
    String abM;
    String abN;
    private final int mVersionCode;
    String name;
    String phoneNumber;
    String zzcgl;

    UserAddress() {
        this.mVersionCode = 1;
    }

    UserAddress(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, boolean z, String str13, String str14) {
        this.mVersionCode = i;
        this.name = str;
        this.abC = str2;
        this.abD = str3;
        this.abE = str4;
        this.abF = str5;
        this.abG = str6;
        this.abH = str7;
        this.abI = str8;
        this.zzcgl = str9;
        this.abJ = str10;
        this.abK = str11;
        this.phoneNumber = str12;
        this.abL = z;
        this.abM = str13;
        this.abN = str14;
    }

    public static UserAddress fromIntent(Intent intent) {
        if (intent == null || !intent.hasExtra(AddressConstants.Extras.EXTRA_ADDRESS)) {
            return null;
        }
        return (UserAddress) intent.getParcelableExtra(AddressConstants.Extras.EXTRA_ADDRESS);
    }

    public String getAddress1() {
        return this.abC;
    }

    public String getAddress2() {
        return this.abD;
    }

    public String getAddress3() {
        return this.abE;
    }

    public String getAddress4() {
        return this.abF;
    }

    public String getAddress5() {
        return this.abG;
    }

    public String getAdministrativeArea() {
        return this.abH;
    }

    public String getCompanyName() {
        return this.abM;
    }

    public String getCountryCode() {
        return this.zzcgl;
    }

    public String getEmailAddress() {
        return this.abN;
    }

    public String getLocality() {
        return this.abI;
    }

    public String getName() {
        return this.name;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public String getPostalCode() {
        return this.abJ;
    }

    public String getSortingCode() {
        return this.abK;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public boolean isPostBox() {
        return this.abL;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
