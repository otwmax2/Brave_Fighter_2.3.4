package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AppContentActionEntityCreator implements Parcelable.Creator<AppContentActionEntity> {
    static void zza(AppContentActionEntity appContentActionEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zzc(parcel, 1, appContentActionEntity.zzbgv(), false);
        zzb.zza(parcel, 2, appContentActionEntity.zzbgw(), false);
        zzb.zza(parcel, 3, appContentActionEntity.getExtras(), false);
        zzb.zza(parcel, 6, appContentActionEntity.getType(), false);
        zzb.zza(parcel, 7, appContentActionEntity.getId(), false);
        zzb.zzc(parcel, 1000, appContentActionEntity.getVersionCode());
        zzb.zza(parcel, 8, (Parcelable) appContentActionEntity.zzbgu(), i, false);
        zzb.zza(parcel, 9, appContentActionEntity.zzbgx(), false);
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzky, reason: merged with bridge method [inline-methods] */
    public AppContentActionEntity createFromParcel(Parcel parcel) {
        String strZzq = null;
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        AppContentAnnotationEntity appContentAnnotationEntity = null;
        String strZzq2 = null;
        String strZzq3 = null;
        Bundle bundleZzs = null;
        String strZzq4 = null;
        ArrayList arrayListZzc = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    arrayListZzc = zza.zzc(parcel, iZzck, AppContentConditionEntity.CREATOR);
                    break;
                case 2:
                    strZzq4 = zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    bundleZzs = zza.zzs(parcel, iZzck);
                    break;
                case 6:
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 7:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 8:
                    appContentAnnotationEntity = (AppContentAnnotationEntity) zza.zza(parcel, iZzck, AppContentAnnotationEntity.CREATOR);
                    break;
                case 9:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 1000:
                    iZzg = zza.zzg(parcel, iZzck);
                    break;
                default:
                    zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new AppContentActionEntity(iZzg, arrayListZzc, strZzq4, bundleZzs, strZzq3, strZzq2, appContentAnnotationEntity, strZzq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzpx, reason: merged with bridge method [inline-methods] */
    public AppContentActionEntity[] newArray(int i) {
        return new AppContentActionEntity[i];
    }
}
