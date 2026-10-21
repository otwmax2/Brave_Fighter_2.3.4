package com.google.android.gms.games.appcontent;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class AppContentTupleEntityCreator implements Parcelable.Creator<AppContentTupleEntity> {
    static void zza(AppContentTupleEntity appContentTupleEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, appContentTupleEntity.getName(), false);
        zzb.zza(parcel, 2, appContentTupleEntity.getValue(), false);
        zzb.zzc(parcel, 1000, appContentTupleEntity.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzld, reason: merged with bridge method [inline-methods] */
    public AppContentTupleEntity createFromParcel(Parcel parcel) {
        String strZzq = null;
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        String strZzq2 = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 2:
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
        return new AppContentTupleEntity(iZzg, strZzq2, strZzq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzqc, reason: merged with bridge method [inline-methods] */
    public AppContentTupleEntity[] newArray(int i) {
        return new AppContentTupleEntity[i];
    }
}
