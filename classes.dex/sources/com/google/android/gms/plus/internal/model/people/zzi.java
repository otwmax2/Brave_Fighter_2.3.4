package com.google.android.gms.plus.internal.model.people;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class zzi implements Parcelable.Creator<PersonEntity.PlacesLivedEntity> {
    static void zza(PersonEntity.PlacesLivedEntity placesLivedEntity, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        Set<Integer> set = placesLivedEntity.asX;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, placesLivedEntity.mVersionCode);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, placesLivedEntity.atF);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, placesLivedEntity.mValue, true);
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzqh, reason: merged with bridge method [inline-methods] */
    public PersonEntity.PlacesLivedEntity createFromParcel(Parcel parcel) {
        boolean zZzc = false;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        HashSet hashSet = new HashSet();
        String strZzq = null;
        int iZzg = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    hashSet.add(1);
                    break;
                case 2:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck);
                    hashSet.add(2);
                    break;
                case 3:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
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
        return new PersonEntity.PlacesLivedEntity(hashSet, iZzg, zZzc, strZzq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzxl, reason: merged with bridge method [inline-methods] */
    public PersonEntity.PlacesLivedEntity[] newArray(int i) {
        return new PersonEntity.PlacesLivedEntity[i];
    }
}
