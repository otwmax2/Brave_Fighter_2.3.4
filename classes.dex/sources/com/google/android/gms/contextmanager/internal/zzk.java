package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.contextmanager.interest.InterestRecordStub;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.contextmanager.internal.InterestUpdateBatchImpl;

/* JADX INFO: loaded from: classes.dex */
public class zzk implements Parcelable.Creator<InterestUpdateBatchImpl.Operation> {
    static void zza(InterestUpdateBatchImpl.Operation operation, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, operation.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, operation.getType());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) operation.zzaxz(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, operation.zzaya(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdr, reason: merged with bridge method [inline-methods] */
    public InterestUpdateBatchImpl.Operation createFromParcel(Parcel parcel) {
        String strZzq;
        InterestRecordStub interestRecordStub;
        int iZzg;
        int iZzg2;
        String str = null;
        int i = 0;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        InterestRecordStub interestRecordStub2 = null;
        int i2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    String str2 = str;
                    interestRecordStub = interestRecordStub2;
                    iZzg = i;
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    strZzq = str2;
                    break;
                case 2:
                    iZzg2 = i2;
                    InterestRecordStub interestRecordStub3 = interestRecordStub2;
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    strZzq = str;
                    interestRecordStub = interestRecordStub3;
                    break;
                case 3:
                    iZzg = i;
                    iZzg2 = i2;
                    String str3 = str;
                    interestRecordStub = (InterestRecordStub) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, InterestRecordStub.CREATOR);
                    strZzq = str3;
                    break;
                case 4:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    interestRecordStub = interestRecordStub2;
                    iZzg = i;
                    iZzg2 = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    strZzq = str;
                    interestRecordStub = interestRecordStub2;
                    iZzg = i;
                    iZzg2 = i2;
                    break;
            }
            i2 = iZzg2;
            i = iZzg;
            interestRecordStub2 = interestRecordStub;
            str = strZzq;
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new InterestUpdateBatchImpl.Operation(i2, i, interestRecordStub2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzhx, reason: merged with bridge method [inline-methods] */
    public InterestUpdateBatchImpl.Operation[] newArray(int i) {
        return new InterestUpdateBatchImpl.Operation[i];
    }
}
