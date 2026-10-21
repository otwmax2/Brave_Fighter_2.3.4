package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AppContentCardEntityCreator implements Parcelable.Creator<AppContentCardEntity> {
    static void zza(AppContentCardEntity appContentCardEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zzc(parcel, 1, appContentCardEntity.getActions(), false);
        zzb.zzc(parcel, 2, appContentCardEntity.zzbhg(), false);
        zzb.zzc(parcel, 3, appContentCardEntity.zzbgv(), false);
        zzb.zza(parcel, 4, appContentCardEntity.zzbgw(), false);
        zzb.zzc(parcel, 5, appContentCardEntity.zzbhh());
        zzb.zza(parcel, 6, appContentCardEntity.getDescription(), false);
        zzb.zza(parcel, 7, appContentCardEntity.getExtras(), false);
        zzb.zzc(parcel, 1000, appContentCardEntity.getVersionCode());
        zzb.zza(parcel, 10, appContentCardEntity.zzbhi(), false);
        zzb.zza(parcel, 11, appContentCardEntity.getTitle(), false);
        zzb.zzc(parcel, 12, appContentCardEntity.zzbhj());
        zzb.zza(parcel, 13, appContentCardEntity.getType(), false);
        zzb.zza(parcel, 14, appContentCardEntity.getId(), false);
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzla, reason: merged with bridge method [inline-methods] */
    public AppContentCardEntity createFromParcel(Parcel parcel) {
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        ArrayList arrayListZzc = null;
        ArrayList arrayListZzc2 = null;
        ArrayList arrayListZzc3 = null;
        String strZzq = null;
        int iZzg2 = 0;
        String strZzq2 = null;
        Bundle bundleZzs = null;
        String strZzq3 = null;
        String strZzq4 = null;
        int iZzg3 = 0;
        String strZzq5 = null;
        String strZzq6 = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    arrayListZzc = zza.zzc(parcel, iZzck, AppContentActionEntity.CREATOR);
                    break;
                case 2:
                    arrayListZzc2 = zza.zzc(parcel, iZzck, AppContentAnnotationEntity.CREATOR);
                    break;
                case 3:
                    arrayListZzc3 = zza.zzc(parcel, iZzck, AppContentConditionEntity.CREATOR);
                    break;
                case 4:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 5:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                case 6:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 7:
                    bundleZzs = zza.zzs(parcel, iZzck);
                    break;
                case 10:
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 11:
                    strZzq4 = zza.zzq(parcel, iZzck);
                    break;
                case 12:
                    iZzg3 = zza.zzg(parcel, iZzck);
                    break;
                case 13:
                    strZzq5 = zza.zzq(parcel, iZzck);
                    break;
                case 14:
                    strZzq6 = zza.zzq(parcel, iZzck);
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
        return new AppContentCardEntity(iZzg, arrayListZzc, arrayListZzc2, arrayListZzc3, strZzq, iZzg2, strZzq2, bundleZzs, strZzq3, strZzq4, iZzg3, strZzq5, strZzq6);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzpz, reason: merged with bridge method [inline-methods] */
    public AppContentCardEntity[] newArray(int i) {
        return new AppContentCardEntity[i];
    }
}
