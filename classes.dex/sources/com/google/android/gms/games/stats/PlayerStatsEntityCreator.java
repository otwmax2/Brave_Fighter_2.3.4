package com.google.android.gms.games.stats;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class PlayerStatsEntityCreator implements Parcelable.Creator<PlayerStatsEntity> {
    static void zza(PlayerStatsEntity playerStatsEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, playerStatsEntity.getAverageSessionLength());
        zzb.zza(parcel, 2, playerStatsEntity.getChurnProbability());
        zzb.zzc(parcel, 3, playerStatsEntity.getDaysSinceLastPlayed());
        zzb.zzc(parcel, 4, playerStatsEntity.getNumberOfPurchases());
        zzb.zzc(parcel, 5, playerStatsEntity.getNumberOfSessions());
        zzb.zza(parcel, 6, playerStatsEntity.getSessionPercentile());
        zzb.zza(parcel, 7, playerStatsEntity.getSpendPercentile());
        zzb.zzc(parcel, 1000, playerStatsEntity.getVersionCode());
        zzb.zza(parcel, 8, playerStatsEntity.zzblo(), false);
        zzb.zza(parcel, 9, playerStatsEntity.getSpendProbability());
        zzb.zza(parcel, 10, playerStatsEntity.getHighSpenderProbability());
        zzb.zza(parcel, 11, playerStatsEntity.getTotalSpendNext28Days());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzmb, reason: merged with bridge method [inline-methods] */
    public PlayerStatsEntity createFromParcel(Parcel parcel) {
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        float fZzl = 0.0f;
        float fZzl2 = 0.0f;
        int iZzg2 = 0;
        int iZzg3 = 0;
        int iZzg4 = 0;
        float fZzl3 = 0.0f;
        float fZzl4 = 0.0f;
        Bundle bundleZzs = null;
        float fZzl5 = 0.0f;
        float fZzl6 = 0.0f;
        float fZzl7 = 0.0f;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    fZzl = zza.zzl(parcel, iZzck);
                    break;
                case 2:
                    fZzl2 = zza.zzl(parcel, iZzck);
                    break;
                case 3:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                case 4:
                    iZzg3 = zza.zzg(parcel, iZzck);
                    break;
                case 5:
                    iZzg4 = zza.zzg(parcel, iZzck);
                    break;
                case 6:
                    fZzl3 = zza.zzl(parcel, iZzck);
                    break;
                case 7:
                    fZzl4 = zza.zzl(parcel, iZzck);
                    break;
                case 8:
                    bundleZzs = zza.zzs(parcel, iZzck);
                    break;
                case 9:
                    fZzl5 = zza.zzl(parcel, iZzck);
                    break;
                case 10:
                    fZzl6 = zza.zzl(parcel, iZzck);
                    break;
                case 11:
                    fZzl7 = zza.zzl(parcel, iZzck);
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
        return new PlayerStatsEntity(iZzg, fZzl, fZzl2, iZzg2, iZzg3, iZzg4, fZzl3, fZzl4, bundleZzs, fZzl5, fZzl6, fZzl7);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzry, reason: merged with bridge method [inline-methods] */
    public PlayerStatsEntity[] newArray(int i) {
        return new PlayerStatsEntity[i];
    }
}
