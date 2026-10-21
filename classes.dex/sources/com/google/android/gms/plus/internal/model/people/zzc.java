package com.google.android.gms.plus.internal.model.people;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class zzc implements Parcelable.Creator<PersonEntity.CoverEntity> {
    static void zza(PersonEntity.CoverEntity coverEntity, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        Set<Integer> set = coverEntity.asX;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, coverEntity.mVersionCode);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) coverEntity.att, i, true);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) coverEntity.atu, i, true);
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, coverEntity.atv);
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzqb, reason: merged with bridge method [inline-methods] */
    public PersonEntity.CoverEntity createFromParcel(Parcel parcel) {
        PersonEntity.CoverEntity.CoverPhotoEntity coverPhotoEntity = null;
        int iZzg = 0;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        HashSet hashSet = new HashSet();
        PersonEntity.CoverEntity.CoverInfoEntity coverInfoEntity = null;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    hashSet.add(1);
                    break;
                case 2:
                    PersonEntity.CoverEntity.CoverInfoEntity coverInfoEntity2 = (PersonEntity.CoverEntity.CoverInfoEntity) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, PersonEntity.CoverEntity.CoverInfoEntity.CREATOR);
                    hashSet.add(2);
                    coverInfoEntity = coverInfoEntity2;
                    break;
                case 3:
                    PersonEntity.CoverEntity.CoverPhotoEntity coverPhotoEntity2 = (PersonEntity.CoverEntity.CoverPhotoEntity) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, PersonEntity.CoverEntity.CoverPhotoEntity.CREATOR);
                    hashSet.add(3);
                    coverPhotoEntity = coverPhotoEntity2;
                    break;
                case 4:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    hashSet.add(4);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new PersonEntity.CoverEntity(hashSet, iZzg2, coverInfoEntity, coverPhotoEntity, iZzg);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzxf, reason: merged with bridge method [inline-methods] */
    public PersonEntity.CoverEntity[] newArray(int i) {
        return new PersonEntity.CoverEntity[i];
    }
}
