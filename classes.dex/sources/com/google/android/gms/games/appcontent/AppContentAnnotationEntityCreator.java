package com.google.android.gms.games.appcontent;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class AppContentAnnotationEntityCreator implements Parcelable.Creator<AppContentAnnotationEntity> {
    static void zza(AppContentAnnotationEntity appContentAnnotationEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, appContentAnnotationEntity.getDescription(), false);
        zzb.zza(parcel, 2, (Parcelable) appContentAnnotationEntity.zzbhb(), i, false);
        zzb.zza(parcel, 3, appContentAnnotationEntity.getTitle(), false);
        zzb.zza(parcel, 5, appContentAnnotationEntity.getId(), false);
        zzb.zza(parcel, 6, appContentAnnotationEntity.zzbhe(), false);
        zzb.zza(parcel, 7, appContentAnnotationEntity.zzbgz(), false);
        zzb.zzc(parcel, 1000, appContentAnnotationEntity.getVersionCode());
        zzb.zzc(parcel, 8, appContentAnnotationEntity.zzbha());
        zzb.zzc(parcel, 9, appContentAnnotationEntity.zzbhd());
        zzb.zza(parcel, 10, appContentAnnotationEntity.zzbhc(), false);
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzkz, reason: merged with bridge method [inline-methods] */
    public AppContentAnnotationEntity createFromParcel(Parcel parcel) {
        int iZzg = 0;
        Bundle bundleZzs = null;
        int iZzcl = zza.zzcl(parcel);
        int iZzg2 = 0;
        String strZzq = null;
        String strZzq2 = null;
        String strZzq3 = null;
        String strZzq4 = null;
        Uri uri = null;
        String strZzq5 = null;
        int iZzg3 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    strZzq5 = zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    uri = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 3:
                    strZzq4 = zza.zzq(parcel, iZzck);
                    break;
                case 5:
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 6:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 7:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 8:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                case 9:
                    iZzg = zza.zzg(parcel, iZzck);
                    break;
                case 10:
                    bundleZzs = zza.zzs(parcel, iZzck);
                    break;
                case 1000:
                    iZzg3 = zza.zzg(parcel, iZzck);
                    break;
                default:
                    zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new AppContentAnnotationEntity(iZzg3, strZzq5, uri, strZzq4, strZzq3, strZzq2, strZzq, iZzg2, iZzg, bundleZzs);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzpy, reason: merged with bridge method [inline-methods] */
    public AppContentAnnotationEntity[] newArray(int i) {
        return new AppContentAnnotationEntity[i];
    }
}
