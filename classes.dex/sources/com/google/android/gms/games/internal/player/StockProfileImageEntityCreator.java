package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class StockProfileImageEntityCreator implements Parcelable.Creator<StockProfileImageEntity> {
    static void zza(StockProfileImageEntity stockProfileImageEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, stockProfileImageEntity.getImageUrl(), false);
        zzb.zza(parcel, 2, (Parcelable) stockProfileImageEntity.zzbhb(), i, false);
        zzb.zzc(parcel, 1000, stockProfileImageEntity.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzll, reason: merged with bridge method [inline-methods] */
    public StockProfileImageEntity createFromParcel(Parcel parcel) {
        Uri uri = null;
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        String strZzq = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    uri = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
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
        return new StockProfileImageEntity(iZzg, strZzq, uri);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzre, reason: merged with bridge method [inline-methods] */
    public StockProfileImageEntity[] newArray(int i) {
        return new StockProfileImageEntity[i];
    }
}
