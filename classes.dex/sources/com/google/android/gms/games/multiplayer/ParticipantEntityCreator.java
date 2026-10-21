package com.google.android.gms.games.multiplayer;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.PlayerEntity;

/* JADX INFO: loaded from: classes.dex */
public class ParticipantEntityCreator implements Parcelable.Creator<ParticipantEntity> {
    static void zza(ParticipantEntity participantEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, participantEntity.getParticipantId(), false);
        zzb.zza(parcel, 2, participantEntity.getDisplayName(), false);
        zzb.zza(parcel, 3, (Parcelable) participantEntity.getIconImageUri(), i, false);
        zzb.zza(parcel, 4, (Parcelable) participantEntity.getHiResImageUri(), i, false);
        zzb.zzc(parcel, 5, participantEntity.getStatus());
        zzb.zza(parcel, 6, participantEntity.zzbhz(), false);
        zzb.zza(parcel, 7, participantEntity.isConnectedToRoom());
        zzb.zzc(parcel, 1000, participantEntity.getVersionCode());
        zzb.zza(parcel, 8, (Parcelable) participantEntity.getPlayer(), i, false);
        zzb.zzc(parcel, 9, participantEntity.getCapabilities());
        zzb.zza(parcel, 10, (Parcelable) participantEntity.getResult(), i, false);
        zzb.zza(parcel, 11, participantEntity.getIconImageUrl(), false);
        zzb.zza(parcel, 12, participantEntity.getHiResImageUrl(), false);
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzlo */
    public ParticipantEntity createFromParcel(Parcel parcel) {
        int iZzcl = zza.zzcl(parcel);
        int iZzg = 0;
        String strZzq = null;
        String strZzq2 = null;
        Uri uri = null;
        Uri uri2 = null;
        int iZzg2 = 0;
        String strZzq3 = null;
        boolean zZzc = false;
        PlayerEntity playerEntity = null;
        int iZzg3 = 0;
        ParticipantResult participantResult = null;
        String strZzq4 = null;
        String strZzq5 = null;
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
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                case 6:
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 7:
                    zZzc = zza.zzc(parcel, iZzck);
                    break;
                case 8:
                    playerEntity = (PlayerEntity) zza.zza(parcel, iZzck, PlayerEntity.CREATOR);
                    break;
                case 9:
                    iZzg3 = zza.zzg(parcel, iZzck);
                    break;
                case 10:
                    participantResult = (ParticipantResult) zza.zza(parcel, iZzck, ParticipantResult.CREATOR);
                    break;
                case 11:
                    strZzq4 = zza.zzq(parcel, iZzck);
                    break;
                case 12:
                    strZzq5 = zza.zzq(parcel, iZzck);
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
        return new ParticipantEntity(iZzg, strZzq, strZzq2, uri, uri2, iZzg2, strZzq3, zZzc, playerEntity, iZzg3, participantResult, strZzq4, strZzq5);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzri, reason: merged with bridge method [inline-methods] */
    public ParticipantEntity[] newArray(int i) {
        return new ParticipantEntity[i];
    }
}
