package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class RoomEntityCreator implements Parcelable.Creator<RoomEntity> {
    static void zza(RoomEntity roomEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, roomEntity.getRoomId(), false);
        zzb.zza(parcel, 2, roomEntity.getCreatorId(), false);
        zzb.zza(parcel, 3, roomEntity.getCreationTimestamp());
        zzb.zzc(parcel, 4, roomEntity.getStatus());
        zzb.zza(parcel, 5, roomEntity.getDescription(), false);
        zzb.zzc(parcel, 6, roomEntity.getVariant());
        zzb.zza(parcel, 7, roomEntity.getAutoMatchCriteria(), false);
        zzb.zzc(parcel, 1000, roomEntity.getVersionCode());
        zzb.zzc(parcel, 8, roomEntity.getParticipants(), false);
        zzb.zzc(parcel, 9, roomEntity.getAutoMatchWaitEstimateSeconds());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzlr */
    public RoomEntity createFromParcel(Parcel parcel) {
        int iZzg = 0;
        ArrayList arrayListZzc = null;
        int iZzcl = zza.zzcl(parcel);
        long jZzi = 0;
        Bundle bundleZzs = null;
        int iZzg2 = 0;
        String strZzq = null;
        int iZzg3 = 0;
        String strZzq2 = null;
        String strZzq3 = null;
        int iZzg4 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    strZzq3 = zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    jZzi = zza.zzi(parcel, iZzck);
                    break;
                case 4:
                    iZzg3 = zza.zzg(parcel, iZzck);
                    break;
                case 5:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 6:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                case 7:
                    bundleZzs = zza.zzs(parcel, iZzck);
                    break;
                case 8:
                    arrayListZzc = zza.zzc(parcel, iZzck, ParticipantEntity.CREATOR);
                    break;
                case 9:
                    iZzg = zza.zzg(parcel, iZzck);
                    break;
                case 1000:
                    iZzg4 = zza.zzg(parcel, iZzck);
                    break;
                default:
                    zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new RoomEntity(iZzg4, strZzq3, strZzq2, jZzi, iZzg3, strZzq, iZzg2, bundleZzs, arrayListZzc, iZzg);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzrl, reason: merged with bridge method [inline-methods] */
    public RoomEntity[] newArray(int i) {
        return new RoomEntity[i];
    }
}
