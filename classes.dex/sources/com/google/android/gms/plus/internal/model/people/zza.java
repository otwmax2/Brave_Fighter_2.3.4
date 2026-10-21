package com.google.android.gms.plus.internal.model.people;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class zza implements Parcelable.Creator<PersonEntity> {
    static void zza(PersonEntity personEntity, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        Set<Integer> set = personEntity.asX;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, personEntity.mVersionCode);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, personEntity.asY, true);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) personEntity.asZ, i, true);
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, personEntity.ata, true);
        }
        if (set.contains(5)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, personEntity.atb, true);
        }
        if (set.contains(6)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 6, personEntity.atc);
        }
        if (set.contains(7)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, (Parcelable) personEntity.atd, i, true);
        }
        if (set.contains(8)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, personEntity.ate, true);
        }
        if (set.contains(9)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, personEntity.dH, true);
        }
        if (set.contains(12)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 12, personEntity.zzaub);
        }
        if (set.contains(14)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 14, personEntity.zzbgk, true);
        }
        if (set.contains(15)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 15, (Parcelable) personEntity.atf, i, true);
        }
        if (set.contains(16)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 16, personEntity.atg);
        }
        if (set.contains(18)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 18, personEntity.zzcvb, true);
        }
        if (set.contains(19)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 19, (Parcelable) personEntity.ath, i, true);
        }
        if (set.contains(20)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 20, personEntity.ati, true);
        }
        if (set.contains(21)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 21, personEntity.atj);
        }
        if (set.contains(22)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 22, personEntity.atk, true);
        }
        if (set.contains(23)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 23, personEntity.atl, true);
        }
        if (set.contains(24)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 24, personEntity.atm);
        }
        if (set.contains(25)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 25, personEntity.atn);
        }
        if (set.contains(26)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 26, personEntity.ato, true);
        }
        if (set.contains(27)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 27, personEntity.zzae, true);
        }
        if (set.contains(28)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 28, personEntity.atp, true);
        }
        if (set.contains(29)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 29, personEntity.atq);
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzpz, reason: merged with bridge method [inline-methods] */
    public PersonEntity createFromParcel(Parcel parcel) {
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        HashSet hashSet = new HashSet();
        int iZzg = 0;
        String strZzq = null;
        PersonEntity.AgeRangeEntity ageRangeEntity = null;
        String strZzq2 = null;
        String strZzq3 = null;
        int iZzg2 = 0;
        PersonEntity.CoverEntity coverEntity = null;
        String strZzq4 = null;
        String strZzq5 = null;
        int iZzg3 = 0;
        String strZzq6 = null;
        PersonEntity.ImageEntity imageEntity = null;
        boolean zZzc = false;
        String strZzq7 = null;
        PersonEntity.NameEntity nameEntity = null;
        String strZzq8 = null;
        int iZzg4 = 0;
        ArrayList arrayListZzc = null;
        ArrayList arrayListZzc2 = null;
        int iZzg5 = 0;
        int iZzg6 = 0;
        String strZzq9 = null;
        String strZzq10 = null;
        ArrayList arrayListZzc3 = null;
        boolean zZzc2 = false;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    hashSet.add(1);
                    break;
                case 2:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(2);
                    break;
                case 3:
                    PersonEntity.AgeRangeEntity ageRangeEntity2 = (PersonEntity.AgeRangeEntity) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, PersonEntity.AgeRangeEntity.CREATOR);
                    hashSet.add(3);
                    ageRangeEntity = ageRangeEntity2;
                    break;
                case 4:
                    strZzq2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(4);
                    break;
                case 5:
                    strZzq3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(5);
                    break;
                case 6:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    hashSet.add(6);
                    break;
                case 7:
                    PersonEntity.CoverEntity coverEntity2 = (PersonEntity.CoverEntity) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, PersonEntity.CoverEntity.CREATOR);
                    hashSet.add(7);
                    coverEntity = coverEntity2;
                    break;
                case 8:
                    strZzq4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(8);
                    break;
                case 9:
                    strZzq5 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(9);
                    break;
                case 10:
                case 11:
                case 13:
                case 17:
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
                case 12:
                    iZzg3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    hashSet.add(12);
                    break;
                case 14:
                    strZzq6 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(14);
                    break;
                case 15:
                    PersonEntity.ImageEntity imageEntity2 = (PersonEntity.ImageEntity) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, PersonEntity.ImageEntity.CREATOR);
                    hashSet.add(15);
                    imageEntity = imageEntity2;
                    break;
                case 16:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck);
                    hashSet.add(16);
                    break;
                case 18:
                    strZzq7 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(18);
                    break;
                case 19:
                    PersonEntity.NameEntity nameEntity2 = (PersonEntity.NameEntity) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, PersonEntity.NameEntity.CREATOR);
                    hashSet.add(19);
                    nameEntity = nameEntity2;
                    break;
                case 20:
                    strZzq8 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(20);
                    break;
                case 21:
                    iZzg4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    hashSet.add(21);
                    break;
                case 22:
                    arrayListZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck, PersonEntity.OrganizationsEntity.CREATOR);
                    hashSet.add(22);
                    break;
                case 23:
                    arrayListZzc2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck, PersonEntity.PlacesLivedEntity.CREATOR);
                    hashSet.add(23);
                    break;
                case 24:
                    iZzg5 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    hashSet.add(24);
                    break;
                case 25:
                    iZzg6 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    hashSet.add(25);
                    break;
                case 26:
                    strZzq9 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(26);
                    break;
                case 27:
                    strZzq10 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(27);
                    break;
                case 28:
                    arrayListZzc3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck, PersonEntity.UrlsEntity.CREATOR);
                    hashSet.add(28);
                    break;
                case 29:
                    zZzc2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck);
                    hashSet.add(29);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new PersonEntity(hashSet, iZzg, strZzq, ageRangeEntity, strZzq2, strZzq3, iZzg2, coverEntity, strZzq4, strZzq5, iZzg3, strZzq6, imageEntity, zZzc, strZzq7, nameEntity, strZzq8, iZzg4, arrayListZzc, arrayListZzc2, iZzg5, iZzg6, strZzq9, strZzq10, arrayListZzc3, zZzc2);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzxd, reason: merged with bridge method [inline-methods] */
    public PersonEntity[] newArray(int i) {
        return new PersonEntity[i];
    }
}
