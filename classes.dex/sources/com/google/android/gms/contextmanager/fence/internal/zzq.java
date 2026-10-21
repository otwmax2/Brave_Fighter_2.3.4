package com.google.android.gms.contextmanager.fence.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzq implements Parcelable.Creator<UpdateFenceOperation> {
    static void zza(UpdateFenceOperation updateFenceOperation, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, updateFenceOperation.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, updateFenceOperation.getType());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) updateFenceOperation.zzaxl(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, updateFenceOperation.zzaxk(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, (Parcelable) updateFenceOperation.zzaoi(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, updateFenceOperation.getFenceKey(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, updateFenceOperation.zzaxm());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, updateFenceOperation.zzaxn());
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdm, reason: merged with bridge method [inline-methods] */
    public UpdateFenceOperation createFromParcel(Parcel parcel) {
        long jZzi = 0;
        int iZzg = 0;
        String strZzq = null;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        long jZzi2 = 0;
        PendingIntent pendingIntent = null;
        IBinder iBinderZzr = null;
        ContextFenceRegistrationStub contextFenceRegistrationStub = null;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 3:
                    contextFenceRegistrationStub = (ContextFenceRegistrationStub) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, ContextFenceRegistrationStub.CREATOR);
                    break;
                case 4:
                    iBinderZzr = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, iZzck);
                    break;
                case 5:
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, PendingIntent.CREATOR);
                    break;
                case 6:
                    strZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzck);
                    break;
                case 7:
                    jZzi2 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, iZzck);
                    break;
                case 8:
                    jZzi = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, iZzck);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new UpdateFenceOperation(iZzg2, iZzg, contextFenceRegistrationStub, iBinderZzr, pendingIntent, strZzq, jZzi2, jZzi);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzhs, reason: merged with bridge method [inline-methods] */
    public UpdateFenceOperation[] newArray(int i) {
        return new UpdateFenceOperation[i];
    }
}
