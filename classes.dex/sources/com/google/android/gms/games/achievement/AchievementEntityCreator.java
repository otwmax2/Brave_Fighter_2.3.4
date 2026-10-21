package com.google.android.gms.games.achievement;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.PlayerEntity;

/* JADX INFO: loaded from: classes.dex */
public class AchievementEntityCreator implements Parcelable.Creator<AchievementEntity> {
    static void zza(AchievementEntity achievementEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, achievementEntity.getAchievementId(), false);
        zzb.zzc(parcel, 2, achievementEntity.getType());
        zzb.zza(parcel, 3, achievementEntity.getName(), false);
        zzb.zza(parcel, 4, achievementEntity.getDescription(), false);
        zzb.zza(parcel, 5, (Parcelable) achievementEntity.getUnlockedImageUri(), i, false);
        zzb.zza(parcel, 6, achievementEntity.getUnlockedImageUrl(), false);
        zzb.zza(parcel, 7, (Parcelable) achievementEntity.getRevealedImageUri(), i, false);
        zzb.zzc(parcel, 1000, achievementEntity.getVersionCode());
        zzb.zza(parcel, 8, achievementEntity.getRevealedImageUrl(), false);
        zzb.zzc(parcel, 9, achievementEntity.zzbgq());
        zzb.zza(parcel, 10, achievementEntity.zzbgr(), false);
        zzb.zza(parcel, 11, (Parcelable) achievementEntity.getPlayer(), i, false);
        zzb.zzc(parcel, 12, achievementEntity.getState());
        zzb.zzc(parcel, 13, achievementEntity.zzbgs());
        zzb.zza(parcel, 14, achievementEntity.zzbgt(), false);
        zzb.zza(parcel, 15, achievementEntity.getLastUpdatedTimestamp());
        zzb.zza(parcel, 16, achievementEntity.getXpValue());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzkx, reason: merged with bridge method [inline-methods] */
    public AchievementEntity createFromParcel(Parcel parcel) {
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        String strZzq = null;
        int iZzg2 = 0;
        String strZzq2 = null;
        String strZzq3 = null;
        Uri uri = null;
        String strZzq4 = null;
        Uri uri2 = null;
        String strZzq5 = null;
        int iZzg3 = 0;
        String strZzq6 = null;
        PlayerEntity playerEntity = null;
        int iZzg4 = 0;
        int iZzg5 = 0;
        String strZzq7 = null;
        long jZzi = 0;
        long jZzi2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                case 3:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 4:
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 5:
                    uri = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 6:
                    strZzq4 = zza.zzq(parcel, iZzck);
                    break;
                case 7:
                    uri2 = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 8:
                    strZzq5 = zza.zzq(parcel, iZzck);
                    break;
                case 9:
                    iZzg3 = zza.zzg(parcel, iZzck);
                    break;
                case 10:
                    strZzq6 = zza.zzq(parcel, iZzck);
                    break;
                case 11:
                    playerEntity = (PlayerEntity) zza.zza(parcel, iZzck, PlayerEntity.CREATOR);
                    break;
                case 12:
                    iZzg4 = zza.zzg(parcel, iZzck);
                    break;
                case 13:
                    iZzg5 = zza.zzg(parcel, iZzck);
                    break;
                case 14:
                    strZzq7 = zza.zzq(parcel, iZzck);
                    break;
                case 15:
                    jZzi = zza.zzi(parcel, iZzck);
                    break;
                case 16:
                    jZzi2 = zza.zzi(parcel, iZzck);
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
        return new AchievementEntity(iZzg, strZzq, iZzg2, strZzq2, strZzq3, uri, strZzq4, uri2, strZzq5, iZzg3, strZzq6, playerEntity, iZzg4, iZzg5, strZzq7, jZzi, jZzi2);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzpw, reason: merged with bridge method [inline-methods] */
    public AchievementEntity[] newArray(int i) {
        return new AchievementEntity[i];
    }
}
