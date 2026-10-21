package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.contextmanager.ContextData;
import com.google.android.gms.contextmanager.Relation;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzs implements Parcelable.Creator<WriteBatchImpl> {
    static void zza(WriteBatchImpl writeBatchImpl, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, writeBatchImpl.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, writeBatchImpl.zzayk());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, writeBatchImpl.zzayl(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, writeBatchImpl.zzaym(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 5, writeBatchImpl.zzayn(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdz, reason: merged with bridge method [inline-methods] */
    public WriteBatchImpl createFromParcel(Parcel parcel) {
        boolean zZzc = false;
        ArrayList arrayListZzc = null;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        ArrayList arrayListZzc2 = null;
        ArrayList arrayListZzc3 = null;
        int iZzg = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck);
                    break;
                case 3:
                    arrayListZzc3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck, ContextData.CREATOR);
                    break;
                case 4:
                    arrayListZzc2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck, Relation.CREATOR);
                    break;
                case 5:
                    arrayListZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck, Relation.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new WriteBatchImpl(iZzg, zZzc, arrayListZzc3, arrayListZzc2, arrayListZzc);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzif, reason: merged with bridge method [inline-methods] */
    public WriteBatchImpl[] newArray(int i) {
        return new WriteBatchImpl[i];
    }
}
