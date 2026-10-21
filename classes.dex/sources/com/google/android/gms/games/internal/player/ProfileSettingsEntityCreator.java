package com.google.android.gms.games.internal.player;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class ProfileSettingsEntityCreator implements Parcelable.Creator<ProfileSettingsEntity> {
    static void zza(ProfileSettingsEntity profileSettingsEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, (Parcelable) profileSettingsEntity.getStatus(), i, false);
        zzb.zza(parcel, 2, profileSettingsEntity.zzbgd(), false);
        zzb.zza(parcel, 3, profileSettingsEntity.zzbgn());
        zzb.zza(parcel, 4, profileSettingsEntity.zzbgg());
        zzb.zza(parcel, 5, profileSettingsEntity.zzbgl());
        zzb.zza(parcel, 6, (Parcelable) profileSettingsEntity.zzbgm(), i, false);
        zzb.zza(parcel, 7, profileSettingsEntity.zzbgo());
        zzb.zzc(parcel, 1000, profileSettingsEntity.getVersionCode());
        zzb.zza(parcel, 8, profileSettingsEntity.zzbgp());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzlk, reason: merged with bridge method [inline-methods] */
    public ProfileSettingsEntity createFromParcel(Parcel parcel) {
        StockProfileImageEntity stockProfileImageEntity = null;
        boolean zZzc = false;
        int iZzcl = zza.zzcl(parcel);
        boolean zZzc2 = false;
        boolean zZzc3 = false;
        boolean zZzc4 = false;
        boolean zZzc5 = false;
        String strZzq = null;
        Status status = null;
        int iZzg = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    status = (Status) zza.zza(parcel, iZzck, Status.CREATOR);
                    break;
                case 2:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    zZzc5 = zza.zzc(parcel, iZzck);
                    break;
                case 4:
                    zZzc4 = zza.zzc(parcel, iZzck);
                    break;
                case 5:
                    zZzc3 = zza.zzc(parcel, iZzck);
                    break;
                case 6:
                    stockProfileImageEntity = (StockProfileImageEntity) zza.zza(parcel, iZzck, StockProfileImageEntity.CREATOR);
                    break;
                case 7:
                    zZzc2 = zza.zzc(parcel, iZzck);
                    break;
                case 8:
                    zZzc = zza.zzc(parcel, iZzck);
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
        return new ProfileSettingsEntity(iZzg, status, strZzq, zZzc5, zZzc4, zZzc3, stockProfileImageEntity, zZzc2, zZzc);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzrc, reason: merged with bridge method [inline-methods] */
    public ProfileSettingsEntity[] newArray(int i) {
        return new ProfileSettingsEntity[i];
    }
}
