package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntity;

/* JADX INFO: loaded from: classes.dex */
public class PlayerEntityCreator implements Parcelable.Creator<PlayerEntity> {
    static void zza(PlayerEntity playerEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, playerEntity.getPlayerId(), false);
        zzb.zza(parcel, 2, playerEntity.getDisplayName(), false);
        zzb.zza(parcel, 3, (Parcelable) playerEntity.getIconImageUri(), i, false);
        zzb.zza(parcel, 4, (Parcelable) playerEntity.getHiResImageUri(), i, false);
        zzb.zza(parcel, 5, playerEntity.getRetrievedTimestamp());
        zzb.zzc(parcel, 6, playerEntity.zzbgf());
        zzb.zza(parcel, 7, playerEntity.getLastPlayedWithTimestamp());
        zzb.zzc(parcel, 1000, playerEntity.getVersionCode());
        zzb.zza(parcel, 8, playerEntity.getIconImageUrl(), false);
        zzb.zza(parcel, 9, playerEntity.getHiResImageUrl(), false);
        zzb.zza(parcel, 14, playerEntity.getTitle(), false);
        zzb.zza(parcel, 15, (Parcelable) playerEntity.zzbgh(), i, false);
        zzb.zza(parcel, 16, (Parcelable) playerEntity.getLevelInfo(), i, false);
        zzb.zza(parcel, 18, playerEntity.zzbgg());
        zzb.zza(parcel, 19, playerEntity.zzbge());
        zzb.zza(parcel, 20, playerEntity.zzbgd(), false);
        zzb.zza(parcel, 21, playerEntity.getName(), false);
        zzb.zza(parcel, 22, (Parcelable) playerEntity.getBannerImageLandscapeUri(), i, false);
        zzb.zza(parcel, 23, playerEntity.getBannerImageLandscapeUrl(), false);
        zzb.zza(parcel, 24, (Parcelable) playerEntity.getBannerImagePortraitUri(), i, false);
        zzb.zza(parcel, 25, playerEntity.getBannerImagePortraitUrl(), false);
        zzb.zzc(parcel, 26, playerEntity.zzbgi());
        zzb.zza(parcel, 27, playerEntity.zzbgj());
        zzb.zza(parcel, 28, playerEntity.isMuted());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzku, reason: merged with bridge method [inline-methods] */
    public PlayerEntity createFromParcel(Parcel parcel) {
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        String strZzq = null;
        String strZzq2 = null;
        Uri uri = null;
        Uri uri2 = null;
        long jZzi = 0;
        int iZzg2 = 0;
        long jZzi2 = 0;
        String strZzq3 = null;
        String strZzq4 = null;
        String strZzq5 = null;
        MostRecentGameInfoEntity mostRecentGameInfoEntity = null;
        PlayerLevelInfo playerLevelInfo = null;
        boolean zZzc = false;
        boolean zZzc2 = false;
        String strZzq6 = null;
        String strZzq7 = null;
        Uri uri3 = null;
        String strZzq8 = null;
        Uri uri4 = null;
        String strZzq9 = null;
        int iZzg3 = 0;
        long jZzi3 = 0;
        boolean zZzc3 = false;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    uri = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 4:
                    uri2 = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 5:
                    jZzi = zza.zzi(parcel, iZzck);
                    break;
                case 6:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                case 7:
                    jZzi2 = zza.zzi(parcel, iZzck);
                    break;
                case 8:
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 9:
                    strZzq4 = zza.zzq(parcel, iZzck);
                    break;
                case 14:
                    strZzq5 = zza.zzq(parcel, iZzck);
                    break;
                case 15:
                    mostRecentGameInfoEntity = (MostRecentGameInfoEntity) zza.zza(parcel, iZzck, MostRecentGameInfoEntity.CREATOR);
                    break;
                case 16:
                    playerLevelInfo = (PlayerLevelInfo) zza.zza(parcel, iZzck, PlayerLevelInfo.CREATOR);
                    break;
                case 18:
                    zZzc = zza.zzc(parcel, iZzck);
                    break;
                case 19:
                    zZzc2 = zza.zzc(parcel, iZzck);
                    break;
                case 20:
                    strZzq6 = zza.zzq(parcel, iZzck);
                    break;
                case 21:
                    strZzq7 = zza.zzq(parcel, iZzck);
                    break;
                case 22:
                    uri3 = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 23:
                    strZzq8 = zza.zzq(parcel, iZzck);
                    break;
                case 24:
                    uri4 = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 25:
                    strZzq9 = zza.zzq(parcel, iZzck);
                    break;
                case 26:
                    iZzg3 = zza.zzg(parcel, iZzck);
                    break;
                case 27:
                    jZzi3 = zza.zzi(parcel, iZzck);
                    break;
                case 28:
                    zZzc3 = zza.zzc(parcel, iZzck);
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
        return new PlayerEntity(iZzg, strZzq, strZzq2, uri, uri2, jZzi, iZzg2, jZzi2, strZzq3, strZzq4, strZzq5, mostRecentGameInfoEntity, playerLevelInfo, zZzc, zZzc2, strZzq6, strZzq7, uri3, strZzq8, uri4, strZzq9, iZzg3, jZzi3, zZzc3);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzpt, reason: merged with bridge method [inline-methods] */
    public PlayerEntity[] newArray(int i) {
        return new PlayerEntity[i];
    }
}
