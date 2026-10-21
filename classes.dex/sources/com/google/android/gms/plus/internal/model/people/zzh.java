package com.google.android.gms.plus.internal.model.people;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class zzh implements Parcelable.Creator<PersonEntity.OrganizationsEntity> {
    static void zza(PersonEntity.OrganizationsEntity organizationsEntity, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        Set<Integer> set = organizationsEntity.asX;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, organizationsEntity.mVersionCode);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, organizationsEntity.atC, true);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, organizationsEntity.zzcvi, true);
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, organizationsEntity.atD, true);
        }
        if (set.contains(5)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, organizationsEntity.atE, true);
        }
        if (set.contains(6)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, organizationsEntity.mName, true);
        }
        if (set.contains(7)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, organizationsEntity.atF);
        }
        if (set.contains(8)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, organizationsEntity.atG, true);
        }
        if (set.contains(9)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, organizationsEntity.Fx, true);
        }
        if (set.contains(10)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 10, organizationsEntity.it);
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzqg, reason: merged with bridge method [inline-methods] */
    public PersonEntity.OrganizationsEntity createFromParcel(Parcel parcel) {
        int iZzg = 0;
        String strZzq = null;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        HashSet hashSet = new HashSet();
        String strZzq2 = null;
        boolean zZzc = false;
        String strZzq3 = null;
        String strZzq4 = null;
        String strZzq5 = null;
        String strZzq6 = null;
        String strZzq7 = null;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    hashSet.add(1);
                    break;
                case 2:
                    strZzq7 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(2);
                    break;
                case 3:
                    strZzq6 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(3);
                    break;
                case 4:
                    strZzq5 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(4);
                    break;
                case 5:
                    strZzq4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(5);
                    break;
                case 6:
                    strZzq3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(6);
                    break;
                case 7:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck);
                    hashSet.add(7);
                    break;
                case 8:
                    strZzq2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(8);
                    break;
                case 9:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    hashSet.add(9);
                    break;
                case 10:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    hashSet.add(10);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new PersonEntity.OrganizationsEntity(hashSet, iZzg2, strZzq7, strZzq6, strZzq5, strZzq4, strZzq3, zZzc, strZzq2, strZzq, iZzg);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzxk, reason: merged with bridge method [inline-methods] */
    public PersonEntity.OrganizationsEntity[] newArray(int i) {
        return new PersonEntity.OrganizationsEntity[i];
    }
}
