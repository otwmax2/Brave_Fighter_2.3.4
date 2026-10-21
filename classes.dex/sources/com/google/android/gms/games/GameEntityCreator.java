package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class GameEntityCreator implements Parcelable.Creator<GameEntity> {
    static void zza(GameEntity gameEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, gameEntity.getApplicationId(), false);
        zzb.zza(parcel, 2, gameEntity.getDisplayName(), false);
        zzb.zza(parcel, 3, gameEntity.getPrimaryCategory(), false);
        zzb.zza(parcel, 4, gameEntity.getSecondaryCategory(), false);
        zzb.zza(parcel, 5, gameEntity.getDescription(), false);
        zzb.zza(parcel, 6, gameEntity.getDeveloperName(), false);
        zzb.zza(parcel, 7, (Parcelable) gameEntity.getIconImageUri(), i, false);
        zzb.zza(parcel, 8, (Parcelable) gameEntity.getHiResImageUri(), i, false);
        zzb.zza(parcel, 9, (Parcelable) gameEntity.getFeaturedImageUri(), i, false);
        zzb.zza(parcel, 10, gameEntity.zzbfw());
        zzb.zza(parcel, 11, gameEntity.zzbfy());
        zzb.zza(parcel, 12, gameEntity.zzbfz(), false);
        zzb.zzc(parcel, 13, gameEntity.zzbga());
        zzb.zzc(parcel, 14, gameEntity.getAchievementTotalCount());
        zzb.zzc(parcel, 15, gameEntity.getLeaderboardCount());
        zzb.zza(parcel, 16, gameEntity.isRealTimeMultiplayerEnabled());
        zzb.zza(parcel, 17, gameEntity.isTurnBasedMultiplayerEnabled());
        zzb.zza(parcel, 18, gameEntity.getIconImageUrl(), false);
        zzb.zza(parcel, 19, gameEntity.getHiResImageUrl(), false);
        zzb.zza(parcel, 20, gameEntity.getFeaturedImageUrl(), false);
        zzb.zza(parcel, 21, gameEntity.isMuted());
        zzb.zza(parcel, 22, gameEntity.zzbfx());
        zzb.zza(parcel, 23, gameEntity.areSnapshotsEnabled());
        zzb.zza(parcel, 24, gameEntity.getThemeColor(), false);
        zzb.zza(parcel, 25, gameEntity.hasGamepadSupport());
        zzb.zzc(parcel, 1000, gameEntity.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzkt, reason: merged with bridge method [inline-methods] */
    public GameEntity createFromParcel(Parcel parcel) {
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        String strZzq = null;
        String strZzq2 = null;
        String strZzq3 = null;
        String strZzq4 = null;
        String strZzq5 = null;
        String strZzq6 = null;
        Uri uri = null;
        Uri uri2 = null;
        Uri uri3 = null;
        boolean zZzc = false;
        boolean zZzc2 = false;
        String strZzq7 = null;
        int iZzg2 = 0;
        int iZzg3 = 0;
        int iZzg4 = 0;
        boolean zZzc3 = false;
        boolean zZzc4 = false;
        String strZzq8 = null;
        String strZzq9 = null;
        String strZzq10 = null;
        boolean zZzc5 = false;
        boolean zZzc6 = false;
        boolean zZzc7 = false;
        String strZzq11 = null;
        boolean zZzc8 = false;
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
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 4:
                    strZzq4 = zza.zzq(parcel, iZzck);
                    break;
                case 5:
                    strZzq5 = zza.zzq(parcel, iZzck);
                    break;
                case 6:
                    strZzq6 = zza.zzq(parcel, iZzck);
                    break;
                case 7:
                    uri = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 8:
                    uri2 = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 9:
                    uri3 = (Uri) zza.zza(parcel, iZzck, Uri.CREATOR);
                    break;
                case 10:
                    zZzc = zza.zzc(parcel, iZzck);
                    break;
                case 11:
                    zZzc2 = zza.zzc(parcel, iZzck);
                    break;
                case 12:
                    strZzq7 = zza.zzq(parcel, iZzck);
                    break;
                case 13:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                case 14:
                    iZzg3 = zza.zzg(parcel, iZzck);
                    break;
                case 15:
                    iZzg4 = zza.zzg(parcel, iZzck);
                    break;
                case 16:
                    zZzc3 = zza.zzc(parcel, iZzck);
                    break;
                case 17:
                    zZzc4 = zza.zzc(parcel, iZzck);
                    break;
                case 18:
                    strZzq8 = zza.zzq(parcel, iZzck);
                    break;
                case 19:
                    strZzq9 = zza.zzq(parcel, iZzck);
                    break;
                case 20:
                    strZzq10 = zza.zzq(parcel, iZzck);
                    break;
                case 21:
                    zZzc5 = zza.zzc(parcel, iZzck);
                    break;
                case 22:
                    zZzc6 = zza.zzc(parcel, iZzck);
                    break;
                case 23:
                    zZzc7 = zza.zzc(parcel, iZzck);
                    break;
                case 24:
                    strZzq11 = zza.zzq(parcel, iZzck);
                    break;
                case 25:
                    zZzc8 = zza.zzc(parcel, iZzck);
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
        return new GameEntity(iZzg, strZzq, strZzq2, strZzq3, strZzq4, strZzq5, strZzq6, uri, uri2, uri3, zZzc, zZzc2, strZzq7, iZzg2, iZzg3, iZzg4, zZzc3, zZzc4, strZzq8, strZzq9, strZzq10, zZzc5, zZzc6, zZzc7, strZzq11, zZzc8);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzpr, reason: merged with bridge method [inline-methods] */
    public GameEntity[] newArray(int i) {
        return new GameEntity[i];
    }
}
