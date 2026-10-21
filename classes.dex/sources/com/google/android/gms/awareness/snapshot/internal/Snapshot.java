package com.google.android.gms.awareness.snapshot.internal;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.location.ActivityRecognitionResult;

/* JADX INFO: loaded from: classes.dex */
public final class Snapshot extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Snapshot> CREATOR = new zzj();
    private final ActivityRecognitionResult fQ;
    private final BeaconStateImpl fR;
    private final HeadphoneStateImpl fS;
    private final NetworkStateImpl fT;
    private final DataHolder fU;
    private final PowerStateImpl fV;
    private final ScreenStateImpl fW;
    private final WeatherImpl fX;
    private final int mVersionCode;
    private final Location zzft;

    Snapshot(int i, ActivityRecognitionResult activityRecognitionResult, BeaconStateImpl beaconStateImpl, HeadphoneStateImpl headphoneStateImpl, Location location, NetworkStateImpl networkStateImpl, DataHolder dataHolder, PowerStateImpl powerStateImpl, ScreenStateImpl screenStateImpl, WeatherImpl weatherImpl) {
        this.mVersionCode = i;
        this.fQ = activityRecognitionResult;
        this.fR = beaconStateImpl;
        this.fS = headphoneStateImpl;
        this.zzft = location;
        this.fT = networkStateImpl;
        this.fU = dataHolder;
        this.fV = powerStateImpl;
        this.fW = screenStateImpl;
        this.fX = weatherImpl;
    }

    public ActivityRecognitionResult getActivityRecognitionResult() {
        return this.fQ;
    }

    public Location getLocation() {
        return this.zzft;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }

    public BeaconStateImpl zzagz() {
        return this.fR;
    }

    public HeadphoneStateImpl zzaha() {
        return this.fS;
    }

    public NetworkStateImpl zzahb() {
        return this.fT;
    }

    public DataHolder zzahc() {
        return this.fU;
    }

    public PowerStateImpl zzahd() {
        return this.fV;
    }

    public ScreenStateImpl zzahe() {
        return this.fW;
    }

    public WeatherImpl zzahf() {
        return this.fX;
    }
}
