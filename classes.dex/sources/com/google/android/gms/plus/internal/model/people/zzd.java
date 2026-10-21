package com.google.android.gms.plus.internal.model.people;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class zzd implements Parcelable.Creator<PersonEntity.CoverEntity.CoverInfoEntity> {
    static void zza(PersonEntity.CoverEntity.CoverInfoEntity coverInfoEntity, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        Set<Integer> set = coverInfoEntity.asX;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, coverInfoEntity.mVersionCode);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, coverInfoEntity.atw);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, coverInfoEntity.atx);
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzqc, reason: merged with bridge method [inline-methods] */
    public PersonEntity.CoverEntity.CoverInfoEntity createFromParcel(Parcel parcel) {
        int iZzg = 0;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        HashSet hashSet = new HashSet();
        int iZzg2 = 0;
        int iZzg3 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    hashSet.add(1);
                    break;
                case 2:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    hashSet.add(2);
                    break;
                case 3:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    hashSet.add(3);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new PersonEntity.CoverEntity.CoverInfoEntity(hashSet, iZzg3, iZzg2, iZzg);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzxg, reason: merged with bridge method [inline-methods] */
    public PersonEntity.CoverEntity.CoverInfoEntity[] newArray(int i) {
        return new PersonEntity.CoverEntity.CoverInfoEntity[i];
    }
}
