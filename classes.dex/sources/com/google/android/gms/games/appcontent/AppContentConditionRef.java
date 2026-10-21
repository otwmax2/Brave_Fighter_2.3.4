package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class AppContentConditionRef extends MultiDataBufferRef implements AppContentCondition {
    AppContentConditionRef(ArrayList<DataHolder> arrayList, int i) {
        super(arrayList, 4, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return AppContentConditionEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return AppContentConditionEntity.zza(this);
    }

    public String toString() {
        return AppContentConditionEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((AppContentConditionEntity) ((AppContentCondition) freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public String zzbhl() {
        return getString("condition_default_value");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public String zzbhm() {
        return getString("condition_expected_value");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public String zzbhn() {
        return getString("condition_predicate");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public Bundle zzbho() {
        return AppContentUtils.zzd(this.tk, this.Su, "condition_predicate_parameters", this.vK);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbhp, reason: merged with bridge method [inline-methods] */
    public AppContentCondition freeze() {
        return new AppContentConditionEntity(this);
    }
}
