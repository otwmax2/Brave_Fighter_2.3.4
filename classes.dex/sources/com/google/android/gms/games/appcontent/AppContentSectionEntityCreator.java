package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AppContentSectionEntityCreator implements Parcelable.Creator<AppContentSectionEntity> {
    static void zza(AppContentSectionEntity appContentSectionEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zzc(parcel, 1, appContentSectionEntity.getActions(), false);
        zzb.zzc(parcel, 3, appContentSectionEntity.zzbhq(), false);
        zzb.zza(parcel, 4, appContentSectionEntity.zzbgw(), false);
        zzb.zza(parcel, 5, appContentSectionEntity.getExtras(), false);
        zzb.zza(parcel, 6, appContentSectionEntity.zzbhi(), false);
        zzb.zza(parcel, 7, appContentSectionEntity.getTitle(), false);
        zzb.zzc(parcel, 1000, appContentSectionEntity.getVersionCode());
        zzb.zza(parcel, 8, appContentSectionEntity.getType(), false);
        zzb.zza(parcel, 9, appContentSectionEntity.getId(), false);
        zzb.zza(parcel, 10, appContentSectionEntity.zzbhr(), false);
        zzb.zzc(parcel, 14, appContentSectionEntity.zzbhg(), false);
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzlc, reason: merged with bridge method [inline-methods] */
    public AppContentSectionEntity createFromParcel(Parcel parcel) {
        ArrayList arrayListZzc = null;
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        String strZzq = null;
        String strZzq2 = null;
        String strZzq3 = null;
        String strZzq4 = null;
        String strZzq5 = null;
        Bundle bundleZzs = null;
        String strZzq6 = null;
        ArrayList arrayListZzc2 = null;
        ArrayList arrayListZzc3 = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    arrayListZzc3 = zza.zzc(parcel, iZzck, AppContentActionEntity.CREATOR);
                    break;
                case 3:
                    arrayListZzc2 = zza.zzc(parcel, iZzck, AppContentCardEntity.CREATOR);
                    break;
                case 4:
                    strZzq6 = zza.zzq(parcel, iZzck);
                    break;
                case 5:
                    bundleZzs = zza.zzs(parcel, iZzck);
                    break;
                case 6:
                    strZzq5 = zza.zzq(parcel, iZzck);
                    break;
                case 7:
                    strZzq4 = zza.zzq(parcel, iZzck);
                    break;
                case 8:
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 9:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 10:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 14:
                    arrayListZzc = zza.zzc(parcel, iZzck, AppContentAnnotationEntity.CREATOR);
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
        return new AppContentSectionEntity(iZzg, arrayListZzc3, arrayListZzc2, strZzq6, bundleZzs, strZzq5, strZzq4, strZzq3, strZzq2, strZzq, arrayListZzc);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzqb, reason: merged with bridge method [inline-methods] */
    public AppContentSectionEntity[] newArray(int i) {
        return new AppContentSectionEntity[i];
    }
}
