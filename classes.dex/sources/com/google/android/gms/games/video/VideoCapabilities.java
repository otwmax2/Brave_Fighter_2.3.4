package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzab;

/* JADX INFO: loaded from: classes.dex */
public final class VideoCapabilities extends AbstractSafeParcelable {
    public static final Parcelable.Creator<VideoCapabilities> CREATOR = new VideoCapabilitiesCreator();
    private final boolean aae;
    private final boolean aaf;
    private final boolean aag;
    private final boolean[] aah;
    private final boolean[] aai;
    private final int mVersionCode;

    public VideoCapabilities(int i, boolean z, boolean z2, boolean z3, boolean[] zArr, boolean[] zArr2) {
        this.mVersionCode = i;
        this.aae = z;
        this.aaf = z2;
        this.aag = z3;
        this.aah = zArr;
        this.aai = zArr2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof VideoCapabilities)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        VideoCapabilities videoCapabilities = (VideoCapabilities) obj;
        return zzaa.equal(videoCapabilities.zzblr(), zzblr()) && zzaa.equal(videoCapabilities.zzbls(), zzbls()) && zzaa.equal(Boolean.valueOf(videoCapabilities.isCameraSupported()), Boolean.valueOf(isCameraSupported())) && zzaa.equal(Boolean.valueOf(videoCapabilities.isMicSupported()), Boolean.valueOf(isMicSupported())) && zzaa.equal(Boolean.valueOf(videoCapabilities.isWriteStorageSupported()), Boolean.valueOf(isWriteStorageSupported()));
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(zzblr(), zzbls(), Boolean.valueOf(isCameraSupported()), Boolean.valueOf(isMicSupported()), Boolean.valueOf(isWriteStorageSupported()));
    }

    public boolean isCameraSupported() {
        return this.aae;
    }

    public boolean isFullySupported(int i, int i2) {
        return this.aae && this.aaf && this.aag && supportsCaptureMode(i) && supportsQualityLevel(i2);
    }

    public boolean isMicSupported() {
        return this.aaf;
    }

    public boolean isWriteStorageSupported() {
        return this.aag;
    }

    public boolean supportsCaptureMode(int i) {
        zzab.zzbm(VideoConfiguration.isValidCaptureMode(i, false));
        return this.aah[i];
    }

    public boolean supportsQualityLevel(int i) {
        zzab.zzbm(VideoConfiguration.isValidQualityLevel(i, false));
        return this.aai[i];
    }

    public String toString() {
        return zzaa.zzz(this).zzg("SupportedCaptureModes", zzblr()).zzg("SupportedQualityLevels", zzbls()).zzg("CameraSupported", Boolean.valueOf(isCameraSupported())).zzg("MicSupported", Boolean.valueOf(isMicSupported())).zzg("StorageWriteSupported", Boolean.valueOf(isWriteStorageSupported())).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        VideoCapabilitiesCreator.zza(this, parcel, i);
    }

    public boolean[] zzblr() {
        return this.aah;
    }

    public boolean[] zzbls() {
        return this.aai;
    }
}
