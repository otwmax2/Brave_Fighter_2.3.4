package com.google.android.gms.games.quest;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class MilestoneEntityCreator implements Parcelable.Creator<MilestoneEntity> {
    static void zza(MilestoneEntity milestoneEntity, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zza(parcel, 1, milestoneEntity.getMilestoneId(), false);
        zzb.zza(parcel, 2, milestoneEntity.getCurrentProgress());
        zzb.zza(parcel, 3, milestoneEntity.getTargetProgress());
        zzb.zza(parcel, 4, milestoneEntity.getCompletionRewardData(), false);
        zzb.zzc(parcel, 5, milestoneEntity.getState());
        zzb.zza(parcel, 6, milestoneEntity.getEventId(), false);
        zzb.zzc(parcel, 1000, milestoneEntity.getVersionCode());
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzlt, reason: merged with bridge method [inline-methods] */
    public MilestoneEntity createFromParcel(Parcel parcel) {
        long jZzi = 0;
        int iZzg = 0;
        String strZzq = null;
        int iZzcl = zza.zzcl(parcel);
        byte[] bArrZzt = null;
        long jZzi2 = 0;
        String strZzq2 = null;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = zza.zzck(parcel);
            switch (zza.zzgi(iZzck)) {
                case 1:
                    strZzq2 = zza.zzq(parcel, iZzck);
                    break;
                case 2:
                    jZzi2 = zza.zzi(parcel, iZzck);
                    break;
                case 3:
                    jZzi = zza.zzi(parcel, iZzck);
                    break;
                case 4:
                    bArrZzt = zza.zzt(parcel, iZzck);
                    break;
                case 5:
                    iZzg = zza.zzg(parcel, iZzck);
                    break;
                case 6:
                    strZzq = zza.zzq(parcel, iZzck);
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
        return new MilestoneEntity(iZzg2, strZzq2, jZzi2, jZzi, bArrZzt, iZzg, strZzq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzrn, reason: merged with bridge method [inline-methods] */
    public MilestoneEntity[] newArray(int i) {
        return new MilestoneEntity[i];
    }
}
