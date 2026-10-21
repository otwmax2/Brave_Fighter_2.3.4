package com.google.android.gms.awareness.snapshot.internal;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.location.ActivityRecognitionResult;

/* JADX INFO: loaded from: classes.dex */
public class zzj implements Parcelable.Creator<Snapshot> {
    static void zza(Snapshot snapshot, Parcel parcel, int i) {
        int iZzcm = com.google.android.gms.common.internal.safeparcel.zzb.zzcm(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, snapshot.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) snapshot.getActivityRecognitionResult(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) snapshot.zzagz(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, (Parcelable) snapshot.zzaha(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, (Parcelable) snapshot.getLocation(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, (Parcelable) snapshot.zzahb(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, (Parcelable) snapshot.zzahc(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, (Parcelable) snapshot.zzahd(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, (Parcelable) snapshot.zzahe(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 10, (Parcelable) snapshot.zzahf(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, iZzcm);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzbd, reason: merged with bridge method [inline-methods] */
    public Snapshot createFromParcel(Parcel parcel) {
        WeatherImpl weatherImpl = null;
        int iZzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
        int iZzg = 0;
        ScreenStateImpl screenStateImpl = null;
        PowerStateImpl powerStateImpl = null;
        DataHolder dataHolder = null;
        NetworkStateImpl networkStateImpl = null;
        Location location = null;
        HeadphoneStateImpl headphoneStateImpl = null;
        BeaconStateImpl beaconStateImpl = null;
        ActivityRecognitionResult activityRecognitionResult = null;
        while (parcel.dataPosition() < iZzcl) {
            int iZzck = com.google.android.gms.common.internal.safeparcel.zza.zzck(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgi(iZzck)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzck);
                    break;
                case 2:
                    activityRecognitionResult = (ActivityRecognitionResult) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, (Parcelable.Creator) ActivityRecognitionResult.CREATOR);
                    break;
                case 3:
                    beaconStateImpl = (BeaconStateImpl) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, BeaconStateImpl.CREATOR);
                    break;
                case 4:
                    headphoneStateImpl = (HeadphoneStateImpl) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, HeadphoneStateImpl.CREATOR);
                    break;
                case 5:
                    location = (Location) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, Location.CREATOR);
                    break;
                case 6:
                    networkStateImpl = (NetworkStateImpl) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, NetworkStateImpl.CREATOR);
                    break;
                case 7:
                    dataHolder = (DataHolder) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, DataHolder.CREATOR);
                    break;
                case 8:
                    powerStateImpl = (PowerStateImpl) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, PowerStateImpl.CREATOR);
                    break;
                case 9:
                    screenStateImpl = (ScreenStateImpl) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, ScreenStateImpl.CREATOR);
                    break;
                case 10:
                    weatherImpl = (WeatherImpl) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzck, WeatherImpl.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzck);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzcl) {
            throw new zza.C0071zza(new StringBuilder(37).append("Overread allowed size end=").append(iZzcl).toString(), parcel);
        }
        return new Snapshot(iZzg, activityRecognitionResult, beaconStateImpl, headphoneStateImpl, location, networkStateImpl, dataHolder, powerStateImpl, screenStateImpl, weatherImpl);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzdp, reason: merged with bridge method [inline-methods] */
    public Snapshot[] newArray(int i) {
        return new Snapshot[i];
    }
}
