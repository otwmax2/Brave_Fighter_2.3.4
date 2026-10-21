package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class PlayerLevelCreator implements Parcelable.Creator<PlayerLevel> {
    static void zza(PlayerLevel playerLevel, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zzc(parcel, 1, playerLevel.getLevelNumber());
        zzb.zza(parcel, 2, playerLevel.getMinXp());
        zzb.zza(parcel, 3, playerLevel.getMaxXp());
        zzb.zzc(parcel, 1000, playerLevel.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzkv, reason: merged with bridge method [inline-methods] */
    public PlayerLevel createFromParcel(Parcel parcel) {
        long jZzi = 0;
        int iZzg = 0;
        int iZzcl = zza.zzcl(parcel);
        long jZzi2 = 0;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    iZzg = zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    jZzi2 = zza.zzi(parcel, iZzck);
                    break;
                case 3:
                    jZzi = zza.zzi(parcel, iZzck);
                    break;
                case 1000:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                default:
                    zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new PlayerLevel(iZzg2, iZzg, jZzi2, jZzi);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzpu, reason: merged with bridge method [inline-methods] */
    public PlayerLevel[] newArray(int i) {
        return new PlayerLevel[i];
    }
}
