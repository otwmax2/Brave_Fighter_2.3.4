package com.google.android.gms.games.video;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzab;

/* JADX INFO: loaded from: classes.dex */
public final class CaptureState {
    private final boolean aab;
    private final int aac;
    private final int aad;
    private final boolean kk;
    private final boolean zzanc;

    private CaptureState(boolean z, int i, int i2, boolean z2, boolean z3) {
        zzab.zzbn(VideoConfiguration.isValidCaptureMode(i, true));
        zzab.zzbn(VideoConfiguration.isValidQualityLevel(i2, true));
        this.aab = z;
        this.aac = i;
        this.aad = i2;
        this.kk = z2;
        this.zzanc = z3;
    }

    public static CaptureState zzaa(Bundle bundle) {
        if (bundle == null || bundle.get("IsCapturing") == null) {
            return null;
        }
        return new CaptureState(bundle.getBoolean("IsCapturing", false), bundle.getInt("CaptureMode", -1), bundle.getInt("CaptureQuality", -1), bundle.getBoolean("IsOverlayVisible", false), bundle.getBoolean("IsPaused", false));
    }

    public int getCaptureMode() {
        return this.aac;
    }

    public int getCaptureQuality() {
        return this.aad;
    }

    public boolean isCapturing() {
        return this.aab;
    }

    public boolean isOverlayVisible() {
        return this.kk;
    }

    public boolean isPaused() {
        return this.zzanc;
    }

    public String toString() {
        return zzaa.zzz(this).zzg("IsCapturing", Boolean.valueOf(this.aab)).zzg("CaptureMode", Integer.valueOf(this.aac)).zzg("CaptureQuality", Integer.valueOf(this.aad)).zzg("IsOverlayVisible", Boolean.valueOf(this.kk)).zzg("IsPaused", Boolean.valueOf(this.zzanc)).toString();
    }
}
