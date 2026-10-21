package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AppContentActionRef extends MultiDataBufferRef implements AppContentAction {
    AppContentActionRef(ArrayList<DataHolder> arrayList, int i) {
        super(arrayList, 1, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return AppContentActionEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public Bundle getExtras() {
        return AppContentUtils.zzd(this.tk, this.Su, "action_data", this.vK);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public String getId() {
        return getString("action_id");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public String getType() {
        return getString(ShareConstants.WEB_DIALOG_PARAM_ACTION_TYPE);
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return AppContentActionEntity.zza(this);
    }

    public String toString() {
        return AppContentActionEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((AppContentActionEntity) ((AppContentAction) freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public AppContentAnnotation zzbgu() {
        ArrayList<AppContentAnnotation> arrayListZzb = AppContentUtils.zzb(this.tk, this.Su, "action_annotation", this.vK);
        if (arrayListZzb.size() == 1) {
            return arrayListZzb.get(0);
        }
        return null;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public List<AppContentCondition> zzbgv() {
        return AppContentUtils.zzc(this.tk, this.Su, "action_conditions", this.vK);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public String zzbgw() {
        return getString("action_content_description");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public String zzbgx() {
        return getString("overflow_text");
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbgy, reason: merged with bridge method [inline-methods] */
    public AppContentAction freeze() {
        return new AppContentActionEntity(this);
    }
}
