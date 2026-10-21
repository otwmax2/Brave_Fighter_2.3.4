package com.google.android.gms.games.social;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.games.PlayerEntity;

/* JADX INFO: loaded from: classes.dex */
public class SocialInviteEntityCreator implements Parcelable.Creator<SocialInviteEntity> {
    static void zza(SocialInviteEntity socialInviteEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, socialInviteEntity.zzblm(), false);
        zzb.zza(parcel, 2, (Parcelable) socialInviteEntity.getPlayer(), i, false);
        zzb.zzc(parcel, 3, socialInviteEntity.getType());
        zzb.zzc(parcel, 4, socialInviteEntity.getDirection());
        zzb.zza(parcel, 5, socialInviteEntity.getLastModifiedTimestamp());
        zzb.zzc(parcel, 1000, socialInviteEntity.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzma, reason: merged with bridge method [inline-methods] */
    public SocialInviteEntity createFromParcel(Parcel parcel) {
        PlayerEntity playerEntity = null;
        int iZzg = 0;
        int iZzcl = zza.zzcl(parcel);
        long jZzi = 0;
        int iZzg2 = 0;
        String strZzq = null;
        int iZzg3 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    strZzq = zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    playerEntity = (PlayerEntity) zza.zza(parcel, iZzck, PlayerEntity.CREATOR);
                    break;
                case 3:
                    iZzg2 = zza.zzg(parcel, iZzck);
                    break;
                case 4:
                    iZzg = zza.zzg(parcel, iZzck);
                    break;
                case 5:
                    jZzi = zza.zzi(parcel, iZzck);
                    break;
                case 1000:
                    iZzg3 = zza.zzg(parcel, iZzck);
                    break;
                default:
                    zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new SocialInviteEntity(iZzg3, strZzq, playerEntity, iZzg2, iZzg, jZzi);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzrw, reason: merged with bridge method [inline-methods] */
    public SocialInviteEntity[] newArray(int i) {
        return new SocialInviteEntity[i];
    }
}
