package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzd implements Parcelable.Creator<HintRequest> {
    static void zza(HintRequest hintRequest, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) hintRequest.getHintPickerConfig(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, hintRequest.isEmailAddressIdentifierSupported());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, hintRequest.zzafe());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, hintRequest.getAccountTypes(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, hintRequest.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaj, reason: merged with bridge method [inline-methods] */
    public HintRequest createFromParcel(Parcel parcel) {
        String[] strArrZzac = null;
        boolean zZzc = false;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        boolean zZzc2 = false;
        CredentialPickerConfig credentialPickerConfig = null;
        int iZzg = 0;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    credentialPickerConfig = (CredentialPickerConfig) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, CredentialPickerConfig.CREATOR);
                    break;
                case 2:
                    zZzc2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck);
                    break;
                case 3:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck);
                    break;
                case 4:
                    strArrZzac = com.google.android.gms.common.internal.safeparcel.zza.zzac(parcel, iZzck);
                    break;
                case 1000:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new HintRequest(iZzg, credentialPickerConfig, zZzc2, zZzc, strArrZzac);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzcr, reason: merged with bridge method [inline-methods] */
    public HintRequest[] newArray(int i) {
        return new HintRequest[i];
    }
}
