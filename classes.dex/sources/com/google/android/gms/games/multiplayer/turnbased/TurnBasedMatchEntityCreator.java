package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class TurnBasedMatchEntityCreator implements Parcelable.Creator<TurnBasedMatchEntity> {
    static void zza(TurnBasedMatchEntity turnBasedMatchEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, (Parcelable) turnBasedMatchEntity.getGame(), i, false);
        zzb.zza(parcel, 2, turnBasedMatchEntity.getMatchId(), false);
        zzb.zza(parcel, 3, turnBasedMatchEntity.getCreatorId(), false);
        zzb.zza(parcel, 4, turnBasedMatchEntity.getCreationTimestamp());
        zzb.zza(parcel, 5, turnBasedMatchEntity.getLastUpdaterId(), false);
        zzb.zza(parcel, 6, turnBasedMatchEntity.getLastUpdatedTimestamp());
        zzb.zza(parcel, 7, turnBasedMatchEntity.getPendingParticipantId(), false);
        zzb.zzc(parcel, 1000, turnBasedMatchEntity.getVersionCode());
        zzb.zzc(parcel, 8, turnBasedMatchEntity.getStatus());
        zzb.zzc(parcel, 10, turnBasedMatchEntity.getVariant());
        zzb.zzc(parcel, 11, turnBasedMatchEntity.getVersion());
        zzb.zza(parcel, 12, turnBasedMatchEntity.getData(), false);
        zzb.zzc(parcel, 13, turnBasedMatchEntity.getParticipants(), false);
        zzb.zza(parcel, 14, turnBasedMatchEntity.getRematchId(), false);
        zzb.zza(parcel, 15, turnBasedMatchEntity.getPreviousMatchData(), false);
        zzb.zzc(parcel, 16, turnBasedMatchEntity.getMatchNumber());
        zzb.zza(parcel, 17, turnBasedMatchEntity.getAutoMatchCriteria(), false);
        zzb.zzc(parcel, 18, turnBasedMatchEntity.getTurnStatus());
        zzb.zza(parcel, 19, turnBasedMatchEntity.isLocallyModified());
        zzb.zza(parcel, 20, turnBasedMatchEntity.getDescription(), false);
        zzb.zza(parcel, 21, turnBasedMatchEntity.getDescriptionParticipantId(), false);
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzls, reason: merged with bridge method [inline-methods] */
    public TurnBasedMatchEntity createFromParcel(Parcel parcel) {
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        GameEntity gameEntity = null;
        String strZzq = null;
        String strZzq2 = null;
        long jZzi = 0;
        String strZzq3 = null;
        long jZzi2 = 0;
        String strZzq4 = null;
        int iZzg2 = 0;
        int iZzg3 = 0;
        int iZzg4 = 0;
        byte[] bArrZzt = null;
        ArrayList arrayListZzc = null;
        String strZzq5 = null;
        byte[] bArrZzt2 = null;
        int iZzg5 = 0;
        Bundle bundleZzs = null;
        int iZzg6 = 0;
        boolean zZzc = false;
        String strZzq6 = null;
        String strZzq7 = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    gameEntity = (GameEntity) zza.zza(parcel, iZzck, GameEntity.CREATOR);
                    break;
                case 2:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 4:
                    jZzi = zza.zzi(parcel, iZzck);
                    break;
                case 5:
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 6:
                    jZzi2 = zza.zzi(parcel, iZzck);
                    break;
                case 7:
                    strZzq4 = zza.zzq(parcel, iZzck);
                    break;
                case 8:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                case 10:
                    iZzg3 = zza.zzg(parcel, iZzck);
                    break;
                case 11:
                    iZzg4 = zza.zzg(parcel, iZzck);
                    break;
                case 12:
                    bArrZzt = zza.zzt(parcel, iZzck);
                    break;
                case 13:
                    arrayListZzc = zza.zzc(parcel, iZzck, ParticipantEntity.CREATOR);
                    break;
                case 14:
                    strZzq5 = zza.zzq(parcel, iZzck);
                    break;
                case 15:
                    bArrZzt2 = zza.zzt(parcel, iZzck);
                    break;
                case 16:
                    iZzg5 = zza.zzg(parcel, iZzck);
                    break;
                case 17:
                    bundleZzs = zza.zzs(parcel, iZzck);
                    break;
                case 18:
                    iZzg6 = zza.zzg(parcel, iZzck);
                    break;
                case 19:
                    zZzc = zza.zzc(parcel, iZzck);
                    break;
                case 20:
                    strZzq6 = zza.zzq(parcel, iZzck);
                    break;
                case 21:
                    strZzq7 = zza.zzq(parcel, iZzck);
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
        return new TurnBasedMatchEntity(iZzg, gameEntity, strZzq, strZzq2, jZzi, strZzq3, jZzi2, strZzq4, iZzg2, iZzg3, iZzg4, bArrZzt, arrayListZzc, strZzq5, bArrZzt2, iZzg5, bundleZzs, iZzg6, zZzc, strZzq6, strZzq7);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzrm, reason: merged with bridge method [inline-methods] */
    public TurnBasedMatchEntity[] newArray(int i) {
        return new TurnBasedMatchEntity[i];
    }
}
