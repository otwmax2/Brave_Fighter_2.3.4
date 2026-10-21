package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AppContentCardEntity extends AbstractSafeParcelable implements AppContentCard {
    public static final AppContentCardEntityCreator CREATOR = new AppContentCardEntityCreator();
    private final String Fx;
    private final ArrayList<AppContentConditionEntity> RX;
    private final String RY;
    private final ArrayList<AppContentAnnotationEntity> Sg;
    private final int Sh;
    private final String Si;
    private final int Sj;
    private final ArrayList<AppContentActionEntity> mActions;
    private final Bundle mExtras;
    private final int mVersionCode;
    private final String zzbgk;
    private final String zzcgd;
    private final String zzcvi;

    AppContentCardEntity(int i, ArrayList<AppContentActionEntity> arrayList, ArrayList<AppContentAnnotationEntity> arrayList2, ArrayList<AppContentConditionEntity> arrayList3, String str, int i2, String str2, Bundle bundle, String str3, String str4, int i3, String str5, String str6) {
        this.mVersionCode = i;
        this.mActions = arrayList;
        this.Sg = arrayList2;
        this.RX = arrayList3;
        this.RY = str;
        this.Sh = i2;
        this.zzcvi = str2;
        this.mExtras = bundle;
        this.zzbgk = str6;
        this.Si = str3;
        this.Fx = str4;
        this.Sj = i3;
        this.zzcgd = str5;
    }

    public AppContentCardEntity(AppContentCard appContentCard) {
        this.mVersionCode = 4;
        this.RY = appContentCard.zzbgw();
        this.Sh = appContentCard.zzbhh();
        this.zzcvi = appContentCard.getDescription();
        this.mExtras = appContentCard.getExtras();
        this.zzbgk = appContentCard.getId();
        this.Fx = appContentCard.getTitle();
        this.Si = appContentCard.zzbhi();
        this.Sj = appContentCard.zzbhj();
        this.zzcgd = appContentCard.getType();
        List<AppContentAction> actions = appContentCard.getActions();
        int size = actions.size();
        this.mActions = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            this.mActions.add((AppContentActionEntity) actions.get(i).freeze());
        }
        List<AppContentAnnotation> listZzbhg = appContentCard.zzbhg();
        int size2 = listZzbhg.size();
        this.Sg = new ArrayList<>(size2);
        for (int i2 = 0; i2 < size2; i2++) {
            this.Sg.add((AppContentAnnotationEntity) listZzbhg.get(i2).freeze());
        }
        List<AppContentCondition> listZzbgv = appContentCard.zzbgv();
        int size3 = listZzbgv.size();
        this.RX = new ArrayList<>(size3);
        for (int i3 = 0; i3 < size3; i3++) {
            this.RX.add((AppContentConditionEntity) listZzbgv.get(i3).freeze());
        }
    }

    static int zza(AppContentCard appContentCard) {
        return zzaa.hashCode(appContentCard.getActions(), appContentCard.zzbhg(), appContentCard.zzbgv(), appContentCard.zzbgw(), Integer.valueOf(appContentCard.zzbhh()), appContentCard.getDescription(), appContentCard.getExtras(), appContentCard.getId(), appContentCard.zzbhi(), appContentCard.getTitle(), Integer.valueOf(appContentCard.zzbhj()), appContentCard.getType());
    }

    static boolean zza(AppContentCard appContentCard, Object obj) {
        if (!(obj instanceof AppContentCard)) {
            return false;
        }
        if (appContentCard == obj) {
            return true;
        }
        AppContentCard appContentCard2 = (AppContentCard) obj;
        return zzaa.equal(appContentCard2.getActions(), appContentCard.getActions()) && zzaa.equal(appContentCard2.zzbhg(), appContentCard.zzbhg()) && zzaa.equal(appContentCard2.zzbgv(), appContentCard.zzbgv()) && zzaa.equal(appContentCard2.zzbgw(), appContentCard.zzbgw()) && zzaa.equal(Integer.valueOf(appContentCard2.zzbhh()), Integer.valueOf(appContentCard.zzbhh())) && zzaa.equal(appContentCard2.getDescription(), appContentCard.getDescription()) && zzaa.equal(appContentCard2.getExtras(), appContentCard.getExtras()) && zzaa.equal(appContentCard2.getId(), appContentCard.getId()) && zzaa.equal(appContentCard2.zzbhi(), appContentCard.zzbhi()) && zzaa.equal(appContentCard2.getTitle(), appContentCard.getTitle()) && zzaa.equal(Integer.valueOf(appContentCard2.zzbhj()), Integer.valueOf(appContentCard.zzbhj())) && zzaa.equal(appContentCard2.getType(), appContentCard.getType());
    }

    static String zzb(AppContentCard appContentCard) {
        return zzaa.zzz(appContentCard).zzg("Actions", appContentCard.getActions()).zzg("Annotations", appContentCard.zzbhg()).zzg("Conditions", appContentCard.zzbgv()).zzg("ContentDescription", appContentCard.zzbgw()).zzg("CurrentSteps", Integer.valueOf(appContentCard.zzbhh())).zzg("Description", appContentCard.getDescription()).zzg("Extras", appContentCard.getExtras()).zzg("Id", appContentCard.getId()).zzg("Subtitle", appContentCard.zzbhi()).zzg("Title", appContentCard.getTitle()).zzg("TotalSteps", Integer.valueOf(appContentCard.zzbhj())).zzg("Type", appContentCard.getType()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public List<AppContentAction> getActions() {
        return new ArrayList(this.mActions);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String getDescription() {
        return this.zzcvi;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String getId() {
        return this.zzbgk;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String getTitle() {
        return this.Fx;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
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
        AppContentCardEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public List<AppContentCondition> zzbgv() {
        return new ArrayList(this.RX);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String zzbgw() {
        return this.RY;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public List<AppContentAnnotation> zzbhg() {
        return new ArrayList(this.Sg);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public int zzbhh() {
        return this.Sh;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String zzbhi() {
        return this.Si;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public int zzbhj() {
        return this.Sj;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbhk, reason: merged with bridge method [inline-methods] */
    public AppContentCard freeze() {
        return this;
    }
}
