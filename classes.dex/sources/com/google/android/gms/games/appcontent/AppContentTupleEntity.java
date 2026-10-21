package com.google.android.gms.games.appcontent;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* JADX INFO: loaded from: classes.dex */
public final class AppContentTupleEntity extends AbstractSafeParcelable implements AppContentTuple {
    public static final AppContentTupleEntityCreator CREATOR = new AppContentTupleEntityCreator();
    private final String mName;
    private final String mValue;
    private final int mVersionCode;

    AppContentTupleEntity(int i, String str, String str2) {
        this.mVersionCode = i;
        this.mName = str;
        this.mValue = str2;
    }

    public AppContentTupleEntity(AppContentTuple appContentTuple) {
        this.mVersionCode = 1;
        this.mName = appContentTuple.getName();
        this.mValue = appContentTuple.getValue();
    }

    static int zza(AppContentTuple appContentTuple) {
        return zzaa.hashCode(appContentTuple.getName(), appContentTuple.getValue());
    }

    static boolean zza(AppContentTuple appContentTuple, Object obj) {
        if (!(obj instanceof AppContentTuple)) {
            return false;
        }
        if (appContentTuple == obj) {
            return true;
        }
        AppContentTuple appContentTuple2 = (AppContentTuple) obj;
        return zzaa.equal(appContentTuple2.getName(), appContentTuple.getName()) && zzaa.equal(appContentTuple2.getValue(), appContentTuple.getValue());
    }

    static String zzb(AppContentTuple appContentTuple) {
        return zzaa.zzz(appContentTuple).zzg("Name", appContentTuple.getName()).zzg("Value", appContentTuple.getValue()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentTuple
    public String getName() {
        return this.mName;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentTuple
    public String getValue() {
        return this.mValue;
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
        AppContentTupleEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbhw, reason: merged with bridge method [inline-methods] */
    public AppContentTuple freeze() {
        return this;
    }
}
