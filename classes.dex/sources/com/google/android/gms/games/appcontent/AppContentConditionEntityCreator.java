package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class AppContentConditionEntityCreator implements Parcelable.Creator<AppContentConditionEntity> {
    static void zza(AppContentConditionEntity appContentConditionEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, appContentConditionEntity.zzbhl(), false);
        zzb.zza(parcel, 2, appContentConditionEntity.zzbhm(), false);
        zzb.zza(parcel, 3, appContentConditionEntity.zzbhn(), false);
        zzb.zza(parcel, 4, appContentConditionEntity.zzbho(), false);
        zzb.zzc(parcel, 1000, appContentConditionEntity.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzlb, reason: merged with bridge method [inline-methods] */
    public AppContentConditionEntity createFromParcel(Parcel parcel) {
        Bundle bundleZzs = null;
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        String strZzq = null;
        String strZzq2 = null;
        String strZzq3 = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 4:
                    bundleZzs = zza.zzs(parcel, iZzck);
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
        return new AppContentConditionEntity(iZzg, strZzq3, strZzq2, strZzq, bundleZzs);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzqa, reason: merged with bridge method [inline-methods] */
    public AppContentConditionEntity[] newArray(int i) {
        return new AppContentConditionEntity[i];
    }
}
