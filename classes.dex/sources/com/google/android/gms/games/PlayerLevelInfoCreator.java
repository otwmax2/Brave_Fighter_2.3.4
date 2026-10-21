package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class PlayerLevelInfoCreator implements Parcelable.Creator<PlayerLevelInfo> {
    static void zza(PlayerLevelInfo playerLevelInfo, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, playerLevelInfo.getCurrentXpTotal());
        zzb.zza(parcel, 2, playerLevelInfo.getLastLevelUpTimestamp());
        zzb.zza(parcel, 3, (Parcelable) playerLevelInfo.getCurrentLevel(), i, false);
        zzb.zza(parcel, 4, (Parcelable) playerLevelInfo.getNextLevel(), i, false);
        zzb.zzc(parcel, 1000, playerLevelInfo.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzkw, reason: merged with bridge method [inline-methods] */
    public PlayerLevelInfo createFromParcel(Parcel parcel) {
        long jZzi = 0;
        PlayerLevel playerLevel = null;
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        PlayerLevel playerLevel2 = null;
        long jZzi2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    jZzi2 = zza.zzi(parcel, iZzck);
                    break;
                case 2:
                    jZzi = zza.zzi(parcel, iZzck);
                    break;
                case 3:
                    playerLevel2 = (PlayerLevel) zza.zza(parcel, iZzck, PlayerLevel.CREATOR);
                    break;
                case 4:
                    playerLevel = (PlayerLevel) zza.zza(parcel, iZzck, PlayerLevel.CREATOR);
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
        return new PlayerLevelInfo(iZzg, jZzi2, jZzi, playerLevel2, playerLevel);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzpv, reason: merged with bridge method [inline-methods] */
    public PlayerLevelInfo[] newArray(int i) {
        return new PlayerLevelInfo[i];
    }
}
