package com.google.android.contextmanager.interest;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* JADX INFO: loaded from: classes.dex */
public class zza implements Parcelable.Creator<InterestRecordStub> {
    static void zza(InterestRecordStub interestRecordStub, Parcel parcel, int i) {
        int iZzcm = zzb.zzcm(parcel);
        zzb.zzc(parcel, 1, interestRecordStub.getVersionCode());
        zzb.zza(parcel, 2, interestRecordStub.zzdb(), false);
        zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public InterestRecordStub createFromParcel(Parcel parcel) {
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int iZzg = 0;
        byte[] bArrZzt = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    bArrZzt = com.google.android.gms.common.internal.safeparcel.zza.zzt(parcel, iZzck);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new InterestRecordStub(iZzg, bArrZzt);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public InterestRecordStub[] newArray(int i) {
        return new InterestRecordStub[i];
    }
}
