package com.google.android.gms.games.appcontent;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* JADX INFO: loaded from: classes.dex */
public final class AppContentAnnotationEntity extends AbstractSafeParcelable implements AppContentAnnotation {
    public static final AppContentAnnotationEntityCreator CREATOR = new AppContentAnnotationEntityCreator();
    private final String Fx;
    private final String Sb;
    private final String Sc;
    private final int Sd;
    private final int Se;
    private final Bundle Sf;
    private final Uri mP;
    private final int mVersionCode;
    private final String zzbgk;
    private final String zzcvi;

    AppContentAnnotationEntity(int i, String str, Uri uri, String str2, String str3, String str4, String str5, int i2, int i3, Bundle bundle) {
        this.mVersionCode = i;
        this.zzcvi = str;
        this.zzbgk = str3;
        this.Sc = str5;
        this.Sd = i2;
        this.mP = uri;
        this.Se = i3;
        this.Sb = str4;
        this.Sf = bundle;
        this.Fx = str2;
    }

    public AppContentAnnotationEntity(AppContentAnnotation appContentAnnotation) {
        this.mVersionCode = 4;
        this.zzcvi = appContentAnnotation.getDescription();
        this.zzbgk = appContentAnnotation.getId();
        this.Sc = appContentAnnotation.zzbgz();
        this.Sd = appContentAnnotation.zzbha();
        this.mP = appContentAnnotation.zzbhb();
        this.Se = appContentAnnotation.zzbhd();
        this.Sb = appContentAnnotation.zzbhe();
        this.Sf = appContentAnnotation.zzbhc();
        this.Fx = appContentAnnotation.getTitle();
    }

    static int zza(AppContentAnnotation appContentAnnotation) {
        return zzaa.hashCode(appContentAnnotation.getDescription(), appContentAnnotation.getId(), appContentAnnotation.zzbgz(), Integer.valueOf(appContentAnnotation.zzbha()), appContentAnnotation.zzbhb(), Integer.valueOf(appContentAnnotation.zzbhd()), appContentAnnotation.zzbhe(), appContentAnnotation.zzbhc(), appContentAnnotation.getTitle());
    }

    static boolean zza(AppContentAnnotation appContentAnnotation, Object obj) {
        if (!(obj instanceof AppContentAnnotation)) {
            return false;
        }
        if (appContentAnnotation == obj) {
            return true;
        }
        AppContentAnnotation appContentAnnotation2 = (AppContentAnnotation) obj;
        return zzaa.equal(appContentAnnotation2.getDescription(), appContentAnnotation.getDescription()) && zzaa.equal(appContentAnnotation2.getId(), appContentAnnotation.getId()) && zzaa.equal(appContentAnnotation2.zzbgz(), appContentAnnotation.zzbgz()) && zzaa.equal(Integer.valueOf(appContentAnnotation2.zzbha()), Integer.valueOf(appContentAnnotation.zzbha())) && zzaa.equal(appContentAnnotation2.zzbhb(), appContentAnnotation.zzbhb()) && zzaa.equal(Integer.valueOf(appContentAnnotation2.zzbhd()), Integer.valueOf(appContentAnnotation.zzbhd())) && zzaa.equal(appContentAnnotation2.zzbhe(), appContentAnnotation.zzbhe()) && zzaa.equal(appContentAnnotation2.zzbhc(), appContentAnnotation.zzbhc()) && zzaa.equal(appContentAnnotation2.getTitle(), appContentAnnotation.getTitle());
    }

    static String zzb(AppContentAnnotation appContentAnnotation) {
        return zzaa.zzz(appContentAnnotation).zzg("Description", appContentAnnotation.getDescription()).zzg("Id", appContentAnnotation.getId()).zzg("ImageDefaultId", appContentAnnotation.zzbgz()).zzg("ImageHeight", Integer.valueOf(appContentAnnotation.zzbha())).zzg("ImageUri", appContentAnnotation.zzbhb()).zzg("ImageWidth", Integer.valueOf(appContentAnnotation.zzbhd())).zzg("LayoutSlot", appContentAnnotation.zzbhe()).zzg("Modifiers", appContentAnnotation.zzbhc()).zzg("Title", appContentAnnotation.getTitle()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public String getDescription() {
        return this.zzcvi;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public String getId() {
        return this.zzbgk;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public String getTitle() {
        return this.Fx;
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
        AppContentAnnotationEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public String zzbgz() {
        return this.Sc;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public int zzbha() {
        return this.Sd;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public Uri zzbhb() {
        return this.mP;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public Bundle zzbhc() {
        return this.Sf;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public int zzbhd() {
        return this.Se;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAnnotation
    public String zzbhe() {
        return this.Sb;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbhf, reason: merged with bridge method [inline-methods] */
    public AppContentAnnotation freeze() {
        return this;
    }
}
