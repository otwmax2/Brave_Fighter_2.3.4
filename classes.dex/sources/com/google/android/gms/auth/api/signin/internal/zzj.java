package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzj implements Parcelable.Creator<SignInConfiguration> {
    static void zza(SignInConfiguration signInConfiguration, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, signInConfiguration.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, signInConfiguration.zzagg(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, (Parcelable) signInConfiguration.zzagh(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzav, reason: merged with bridge method [inline-methods] */
    public SignInConfiguration createFromParcel(Parcel parcel) {
        GoogleSignInOptions googleSignInOptions = null;
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
                case 4:
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
                case 5:
                    googleSignInOptions = (GoogleSignInOptions) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, GoogleSignInOptions.CREATOR);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new SignInConfiguration(iZzg, strZzq, googleSignInOptions);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdd, reason: merged with bridge method [inline-methods] */
    public SignInConfiguration[] newArray(int i) {
        return new SignInConfiguration[i];
    }
}
