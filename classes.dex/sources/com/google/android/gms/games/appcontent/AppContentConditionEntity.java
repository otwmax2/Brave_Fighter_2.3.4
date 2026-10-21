package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* JADX INFO: loaded from: classes.dex */
public final class AppContentConditionEntity extends AbstractSafeParcelable implements AppContentCondition {
    public static final AppContentConditionEntityCreator CREATOR = new AppContentConditionEntityCreator();
    private final String Sk;
    private final String Sl;
    private final String Sm;
    private final Bundle Sn;
    private final int mVersionCode;

    AppContentConditionEntity(int i, String str, String str2, String str3, Bundle bundle) {
        this.mVersionCode = i;
        this.Sk = str;
        this.Sl = str2;
        this.Sm = str3;
        this.Sn = bundle;
    }

    public AppContentConditionEntity(AppContentCondition appContentCondition) {
        this.mVersionCode = 1;
        this.Sk = appContentCondition.zzbhl();
        this.Sl = appContentCondition.zzbhm();
        this.Sm = appContentCondition.zzbhn();
        this.Sn = appContentCondition.zzbho();
    }

    static int zza(AppContentCondition appContentCondition) {
        return zzaa.hashCode(appContentCondition.zzbhl(), appContentCondition.zzbhm(), appContentCondition.zzbhn(), appContentCondition.zzbho());
    }

    static boolean zza(AppContentCondition appContentCondition, Object obj) {
        if (!(obj instanceof AppContentCondition)) {
            return false;
        }
        if (appContentCondition == obj) {
            return true;
        }
        AppContentCondition appContentCondition2 = (AppContentCondition) obj;
        return zzaa.equal(appContentCondition2.zzbhl(), appContentCondition.zzbhl()) && zzaa.equal(appContentCondition2.zzbhm(), appContentCondition.zzbhm()) && zzaa.equal(appContentCondition2.zzbhn(), appContentCondition.zzbhn()) && zzaa.equal(appContentCondition2.zzbho(), appContentCondition.zzbho());
    }

    static String zzb(AppContentCondition appContentCondition) {
        return zzaa.zzz(appContentCondition).zzg("DefaultValue", appContentCondition.zzbhl()).zzg("ExpectedValue", appContentCondition.zzbhm()).zzg("Predicate", appContentCondition.zzbhn()).zzg("PredicateParameters", appContentCondition.zzbho()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        AppContentConditionEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public String zzbhl() {
        return this.Sk;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public String zzbhm() {
        return this.Sl;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public String zzbhn() {
        return this.Sm;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public Bundle zzbho() {
        return this.Sn;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbhp, reason: merged with bridge method [inline-methods] */
    public AppContentCondition freeze() {
        return this;
    }
}
