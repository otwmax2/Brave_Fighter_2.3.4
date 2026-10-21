package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AppContentSectionEntity extends AbstractSafeParcelable implements AppContentSection {
    public static final AppContentSectionEntityCreator CREATOR = new AppContentSectionEntityCreator();
    private final String Fx;
    private final String RY;
    private final ArrayList<AppContentAnnotationEntity> Sg;
    private final String Si;
    private final ArrayList<AppContentCardEntity> So;
    private final String Sp;
    private final ArrayList<AppContentActionEntity> mActions;
    private final Bundle mExtras;
    private final int mVersionCode;
    private final String zzbgk;
    private final String zzcgd;

    AppContentSectionEntity(int i, ArrayList<AppContentActionEntity> arrayList, ArrayList<AppContentCardEntity> arrayList2, String str, Bundle bundle, String str2, String str3, String str4, String str5, String str6, ArrayList<AppContentAnnotationEntity> arrayList3) {
        this.mVersionCode = i;
        this.mActions = arrayList;
        this.Sg = arrayList3;
        this.So = arrayList2;
        this.Sp = str6;
        this.RY = str;
        this.mExtras = bundle;
        this.zzbgk = str5;
        this.Si = str2;
        this.Fx = str3;
        this.zzcgd = str4;
    }

    public AppContentSectionEntity(AppContentSection appContentSection) {
        this.mVersionCode = 5;
        this.Sp = appContentSection.zzbhr();
        this.RY = appContentSection.zzbgw();
        this.mExtras = appContentSection.getExtras();
        this.zzbgk = appContentSection.getId();
        this.Si = appContentSection.zzbhi();
        this.Fx = appContentSection.getTitle();
        this.zzcgd = appContentSection.getType();
        List<AppContentAction> actions = appContentSection.getActions();
        int size = actions.size();
        this.mActions = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            this.mActions.add((AppContentActionEntity) actions.get(i).freeze());
        }
        List<AppContentCard> listZzbhq = appContentSection.zzbhq();
        int size2 = listZzbhq.size();
        this.So = new ArrayList<>(size2);
        for (int i2 = 0; i2 < size2; i2++) {
            this.So.add((AppContentCardEntity) listZzbhq.get(i2).freeze());
        }
        List<AppContentAnnotation> listZzbhg = appContentSection.zzbhg();
        int size3 = listZzbhg.size();
        this.Sg = new ArrayList<>(size3);
        for (int i3 = 0; i3 < size3; i3++) {
            this.Sg.add((AppContentAnnotationEntity) listZzbhg.get(i3).freeze());
        }
    }

    static int zza(AppContentSection appContentSection) {
        return zzaa.hashCode(appContentSection.getActions(), appContentSection.zzbhg(), appContentSection.zzbhq(), appContentSection.zzbhr(), appContentSection.zzbgw(), appContentSection.getExtras(), appContentSection.getId(), appContentSection.zzbhi(), appContentSection.getTitle(), appContentSection.getType());
    }

    static boolean zza(AppContentSection appContentSection, Object obj) {
        if (!(obj instanceof AppContentSection)) {
            return false;
        }
        if (appContentSection == obj) {
            return true;
        }
        AppContentSection appContentSection2 = (AppContentSection) obj;
        return zzaa.equal(appContentSection2.getActions(), appContentSection.getActions()) && zzaa.equal(appContentSection2.zzbhg(), appContentSection.zzbhg()) && zzaa.equal(appContentSection2.zzbhq(), appContentSection.zzbhq()) && zzaa.equal(appContentSection2.zzbhr(), appContentSection.zzbhr()) && zzaa.equal(appContentSection2.zzbgw(), appContentSection.zzbgw()) && zzaa.equal(appContentSection2.getExtras(), appContentSection.getExtras()) && zzaa.equal(appContentSection2.getId(), appContentSection.getId()) && zzaa.equal(appContentSection2.zzbhi(), appContentSection.zzbhi()) && zzaa.equal(appContentSection2.getTitle(), appContentSection.getTitle()) && zzaa.equal(appContentSection2.getType(), appContentSection.getType());
    }

    static String zzb(AppContentSection appContentSection) {
        return zzaa.zzz(appContentSection).zzg("Actions", appContentSection.getActions()).zzg("Annotations", appContentSection.zzbhg()).zzg("Cards", appContentSection.zzbhq()).zzg("CardType", appContentSection.zzbhr()).zzg("ContentDescription", appContentSection.zzbgw()).zzg("Extras", appContentSection.getExtras()).zzg("Id", appContentSection.getId()).zzg("Subtitle", appContentSection.zzbhi()).zzg("Title", appContentSection.getTitle()).zzg("Type", appContentSection.getType()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public List<AppContentAction> getActions() {
        return new ArrayList(this.mActions);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String getId() {
        return this.zzbgk;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String getTitle() {
        return this.Fx;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
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
        AppContentSectionEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String zzbgw() {
        return this.RY;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public List<AppContentAnnotation> zzbhg() {
        return new ArrayList(this.Sg);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String zzbhi() {
        return this.Si;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public List<AppContentCard> zzbhq() {
        return new ArrayList(this.So);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String zzbhr() {
        return this.Sp;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbhs, reason: merged with bridge method [inline-methods] */
    public AppContentSection freeze() {
        return this;
    }
}
