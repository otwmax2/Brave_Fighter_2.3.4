package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;

/* JADX INFO: loaded from: classes.dex */
public final class VideoConfiguration extends AbstractSafeParcelable {
    public static final int CAPTURE_MODE_FILE = 0;
    public static final int CAPTURE_MODE_STREAM = 1;
    public static final int CAPTURE_MODE_UNKNOWN = -1;
    public static final Parcelable.Creator<VideoConfiguration> CREATOR = new VideoConfigurationCreator();
    public static final int NUM_CAPTURE_MODE = 2;
    public static final int NUM_QUALITY_LEVEL = 4;
    public static final int QUALITY_LEVEL_FULLHD = 3;
    public static final int QUALITY_LEVEL_HD = 1;
    public static final int QUALITY_LEVEL_SD = 0;
    public static final int QUALITY_LEVEL_UNKNOWN = -1;
    public static final int QUALITY_LEVEL_XHD = 2;
    private final int aac;
    private final int aaj;
    private final String aak;
    private final String aal;
    private final String aam;
    private final String aan;
    private final boolean aao;
    private final int mVersionCode;

    public static final class Builder {
        private int aac;
        private int aaj;
        private boolean aao = true;
        private String aak = null;
        private String aal = null;
        private String aam = null;
        private String aan = null;

        public Builder(int i, int i2) {
            this.aaj = i;
            this.aac = i2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public VideoConfiguration build() {
            return new VideoConfiguration(this.aaj, this.aac, (String) null, (String) (0 == true ? 1 : 0), (String) (0 == true ? 1 : 0), (String) (0 == true ? 1 : 0), this.aao);
        }

        public Builder setCaptureMode(int i) {
            this.aac = i;
            return this;
        }

        public Builder setQualityLevel(int i) {
            this.aaj = i;
            return this;
        }
    }

    public VideoConfiguration(int i, int i2, int i3, String str, String str2, String str3, String str4, boolean z) {
        this.mVersionCode = i;
        zzab.zzbn(isValidQualityLevel(i2, false));
        zzab.zzbn(isValidCaptureMode(i3, false));
        this.aaj = i2;
        this.aac = i3;
        this.aao = z;
        if (i3 == 1) {
            this.aal = str2;
            this.aak = str;
            this.aam = str3;
            this.aan = str4;
            return;
        }
        zzab.zzb(str2 == null, "Stream key should be null when not streaming");
        zzab.zzb(str == null, "Stream url should be null when not streaming");
        zzab.zzb(str3 == null, "Stream title should be null when not streaming");
        zzab.zzb(str4 == null, "Stream description should be null when not streaming");
        this.aal = null;
        this.aak = null;
        this.aam = null;
        this.aan = null;
    }

    private VideoConfiguration(int i, int i2, String str, String str2, String str3, String str4, boolean z) {
        this(2, i, i2, str, str2, str3, str4, z);
    }

    public static boolean isValidCaptureMode(int i, boolean z) {
        switch (i) {
            case -1:
                return z;
            case 0:
            case 1:
                return true;
            default:
                return false;
        }
    }

    public static boolean isValidQualityLevel(int i, boolean z) {
        switch (i) {
            case -1:
                return z;
            case 0:
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    public int getCaptureMode() {
        return this.aac;
    }

    public int getQualityLevel() {
        return this.aaj;
    }

    public String getStreamUrl() {
        return this.aak;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        VideoConfigurationCreator.zza(this, parcel, i);
    }

    public String zzblt() {
        return this.aal;
    }

    public String zzblu() {
        return this.aam;
    }

    public String zzblv() {
        return this.aan;
    }

    public boolean zzblw() {
        return this.aao;
    }
}
