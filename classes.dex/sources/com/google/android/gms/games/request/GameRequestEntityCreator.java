package com.google.android.gms.games.request;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.PlayerEntity;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class GameRequestEntityCreator implements Parcelable.Creator<GameRequestEntity> {
    static void zza(GameRequestEntity gameRequestEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, (Parcelable) gameRequestEntity.getGame(), i, false);
        zzb.zza(parcel, 2, (Parcelable) gameRequestEntity.getSender(), i, false);
        zzb.zza(parcel, 3, gameRequestEntity.getData(), false);
        zzb.zza(parcel, 4, gameRequestEntity.getRequestId(), false);
        zzb.zzc(parcel, 5, gameRequestEntity.getRecipients(), false);
        zzb.zzc(parcel, 7, gameRequestEntity.getType());
        zzb.zzc(parcel, 1000, gameRequestEntity.getVersionCode());
        zzb.zza(parcel, 9, gameRequestEntity.getCreationTimestamp());
        zzb.zza(parcel, 10, gameRequestEntity.getExpirationTimestamp());
        zzb.zza(parcel, 11, gameRequestEntity.zzblk(), false);
        zzb.zzc(parcel, 12, gameRequestEntity.getStatus());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzlv, reason: merged with bridge method [inline-methods] */
    public GameRequestEntity createFromParcel(Parcel parcel) {
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        GameEntity gameEntity = null;
        PlayerEntity playerEntity = null;
        byte[] bArrZzt = null;
        String strZzq = null;
        ArrayList arrayListZzc = null;
        int iZzg2 = 0;
        long jZzi = 0;
        long jZzi2 = 0;
        Bundle bundleZzs = null;
        int iZzg3 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    gameEntity = (GameEntity) zza.zza(parcel, iZzck, GameEntity.CREATOR);
                    break;
                case 2:
                    playerEntity = (PlayerEntity) zza.zza(parcel, iZzck, PlayerEntity.CREATOR);
                    break;
                case 3:
                    bArrZzt = zza.zzt(parcel, iZzck);
                    break;
                case 4:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 5:
                    arrayListZzc = zza.zzc(parcel, iZzck, PlayerEntity.CREATOR);
                    break;
                case 7:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                case 9:
                    jZzi = zza.zzi(parcel, iZzck);
                    break;
                case 10:
                    jZzi2 = zza.zzi(parcel, iZzck);
                    break;
                case 11:
                    bundleZzs = zza.zzs(parcel, iZzck);
                    break;
                case 12:
                    iZzg3 = zza.zzg(parcel, iZzck);
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
        return new GameRequestEntity(iZzg, gameEntity, playerEntity, bArrZzt, strZzq, arrayListZzc, iZzg2, jZzi, jZzi2, bundleZzs, iZzg3);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzrp, reason: merged with bridge method [inline-methods] */
    public GameRequestEntity[] newArray(int i) {
        return new GameRequestEntity[i];
    }
}
