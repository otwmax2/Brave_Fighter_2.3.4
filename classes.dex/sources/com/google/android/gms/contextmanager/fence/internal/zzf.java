package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzf implements Parcelable.Creator<ContextFenceRegistrationStub> {
    static void zza(ContextFenceRegistrationStub contextFenceRegistrationStub, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, contextFenceRegistrationStub.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, contextFenceRegistrationStub.zzawz(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) contextFenceRegistrationStub.zzaxa(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzde, reason: merged with bridge method [inline-methods] */
    public ContextFenceRegistrationStub createFromParcel(Parcel parcel) {
        ContextFenceStub contextFenceStub = null;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int iZzg = 0;
        String strZzq = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 3:
                    contextFenceStub = (ContextFenceStub) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, ContextFenceStub.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new ContextFenceRegistrationStub(iZzg, strZzq, contextFenceStub);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzhk, reason: merged with bridge method [inline-methods] */
    public ContextFenceRegistrationStub[] newArray(int i) {
        return new ContextFenceRegistrationStub[i];
    }
}
