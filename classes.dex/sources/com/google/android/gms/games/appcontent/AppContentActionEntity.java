package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AppContentActionEntity extends AbstractSafeParcelable implements AppContentAction {
    public static final AppContentActionEntityCreator CREATOR = new AppContentActionEntityCreator();
    private final ArrayList<AppContentConditionEntity> RX;
    private final String RY;
    private final AppContentAnnotationEntity RZ;
    private final String Sa;
    private final Bundle mExtras;
    private final int mVersionCode;
    private final String zzbgk;
    private final String zzcgd;

    AppContentActionEntity(int i, ArrayList<AppContentConditionEntity> arrayList, String str, Bundle bundle, String str2, String str3, AppContentAnnotationEntity appContentAnnotationEntity, String str4) {
        this.mVersionCode = i;
        this.RZ = appContentAnnotationEntity;
        this.RX = arrayList;
        this.RY = str;
        this.mExtras = bundle;
        this.zzbgk = str3;
        this.Sa = str4;
        this.zzcgd = str2;
    }

    public AppContentActionEntity(AppContentAction appContentAction) {
        this.mVersionCode = 5;
        this.RZ = (AppContentAnnotationEntity) appContentAction.zzbgu().freeze();
        this.RY = appContentAction.zzbgw();
        this.mExtras = appContentAction.getExtras();
        this.zzbgk = appContentAction.getId();
        this.Sa = appContentAction.zzbgx();
        this.zzcgd = appContentAction.getType();
        List<AppContentCondition> listZzbgv = appContentAction.zzbgv();
        int size = listZzbgv.size();
        this.RX = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            this.RX.add((AppContentConditionEntity) listZzbgv.get(i).freeze());
        }
    }

    static int zza(AppContentAction appContentAction) {
        return zzaa.hashCode(appContentAction.zzbgu(), appContentAction.zzbgv(), appContentAction.zzbgw(), appContentAction.getExtras(), appContentAction.getId(), appContentAction.zzbgx(), appContentAction.getType());
    }

    static boolean zza(AppContentAction appContentAction, Object obj) {
        if (!(obj instanceof AppContentAction)) {
            return false;
        }
        if (appContentAction == obj) {
            return true;
        }
        AppContentAction appContentAction2 = (AppContentAction) obj;
        return zzaa.equal(appContentAction2.zzbgu(), appContentAction.zzbgu()) && zzaa.equal(appContentAction2.zzbgv(), appContentAction.zzbgv()) && zzaa.equal(appContentAction2.zzbgw(), appContentAction.zzbgw()) && zzaa.equal(appContentAction2.getExtras(), appContentAction.getExtras()) && zzaa.equal(appContentAction2.getId(), appContentAction.getId()) && zzaa.equal(appContentAction2.zzbgx(), appContentAction.zzbgx()) && zzaa.equal(appContentAction2.getType(), appContentAction.getType());
    }

    static String zzb(AppContentAction appContentAction) {
        return zzaa.zzz(appContentAction).zzg("Annotation", appContentAction.zzbgu()).zzg("Conditions", appContentAction.zzbgv()).zzg("ContentDescription", appContentAction.zzbgw()).zzg("Extras", appContentAction.getExtras()).zzg("Id", appContentAction.getId()).zzg("OverflowText", appContentAction.zzbgx()).zzg("Type", appContentAction.getType()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public String getId() {
        return this.zzbgk;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public String getType() {
        return this.zzcgd;
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
        AppContentActionEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public AppContentAnnotation zzbgu() {
        return this.RZ;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public List<AppContentCondition> zzbgv() {
        return new ArrayList(this.RX);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public String zzbgw() {
        return this.RY;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public String zzbgx() {
        return this.Sa;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbgy, reason: merged with bridge method [inline-methods] */
    public AppContentAction freeze() {
        return this;
    }
}
