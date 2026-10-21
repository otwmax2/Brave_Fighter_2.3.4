package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class AppContentSectionRef extends MultiDataBufferRef implements AppContentSection {
    private final int Sq;

    AppContentSectionRef(ArrayList<DataHolder> arrayList, int i, int i2) {
        super(arrayList, 0, i);
        this.Sq = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return AppContentSectionEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public Bundle getExtras() {
        return AppContentUtils.zzd(this.tk, this.Su, "section_data", this.vK);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String getId() {
        return getString("section_id");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String getTitle() {
        return getString("section_title");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String getType() {
        return getString("section_type");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return AppContentSectionEntity.zza(this);
    }

    public String toString() {
        return AppContentSectionEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((AppContentSectionEntity) ((AppContentSection) freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String zzbgw() {
        return getString("section_content_description");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String zzbhi() {
        return getString("section_subtitle");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String zzbhr() {
        return getString("section_card_type");
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbhs, reason: merged with bridge method [inline-methods] */
    public AppContentSection freeze() {
        return new AppContentSectionEntity(this);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    /* JADX INFO: renamed from: zzbht, reason: merged with bridge method [inline-methods] */
    public ArrayList<AppContentAction> getActions() {
        return AppContentUtils.zza(this.tk, this.Su, "section_actions", this.vK);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    /* JADX INFO: renamed from: zzbhu, reason: merged with bridge method [inline-methods] */
    public ArrayList<AppContentAnnotation> zzbhg() {
        return AppContentUtils.zzb(this.tk, this.Su, "section_annotations", this.vK);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    /* JADX INFO: renamed from: zzbhv, reason: merged with bridge method [inline-methods] */
    public ArrayList<AppContentCard> zzbhq() {
        ArrayList<AppContentCard> arrayList = new ArrayList<>(this.Sq);
        for (int i = 0; i < this.Sq; i++) {
            arrayList.add(new AppContentCardRef(this.Su, this.vK + i));
        }
        return arrayList;
    }
}
