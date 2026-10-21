package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.contextmanager.internal.ContextDataFilterImpl;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zza implements Parcelable.Creator<ContextDataFilterImpl> {
    static void zza(ContextDataFilterImpl contextDataFilterImpl, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, contextDataFilterImpl.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, contextDataFilterImpl.zzaxo(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 3, contextDataFilterImpl.zzaxp(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, (Parcelable) contextDataFilterImpl.zzaxq(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdn, reason: merged with bridge method [inline-methods] */
    public ContextDataFilterImpl createFromParcel(Parcel parcel) {
        QueryFilterParameters queryFilterParameters = null;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int iZzg = 0;
        ArrayList<String> arrayListZzae = null;
        ArrayList arrayListZzc = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    arrayListZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzck, ContextDataFilterImpl.Inclusion.CREATOR);
                    break;
                case 3:
                    arrayListZzae = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, iZzck);
                    break;
                case 4:
                    queryFilterParameters = (QueryFilterParameters) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, QueryFilterParameters.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new ContextDataFilterImpl(iZzg, arrayListZzc, arrayListZzae, queryFilterParameters);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzht, reason: merged with bridge method [inline-methods] */
    public ContextDataFilterImpl[] newArray(int i) {
        return new ContextDataFilterImpl[i];
    }
}
