package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.state.Weather;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.zzbu;
import com.ironsource.sdk.constants.Constants;

/* JADX INFO: loaded from: classes.dex */
public class WeatherImpl extends AbstractSafeParcelable implements Weather {
    public static final Parcelable.Creator<WeatherImpl> CREATOR = new zzn();
    private final float gn;
    private final float go;
    private final float gp;
    private final int gq;
    private final int[] gr;
    private final int mVersionCode;

    WeatherImpl(int i, float f, float f2, float f3, int i2, int[] iArr) {
        this.mVersionCode = i;
        this.gn = f;
        this.go = f2;
        this.gp = f3;
        this.gq = i2;
        this.gr = iArr;
    }

    static float zza(int i, float f) {
        switch (i) {
            case 1:
                return f;
            case 2:
                return zzc(f);
            default:
                zzbu.zza("WeatherImpl", "Invalid temperature unit %s", Integer.valueOf(i));
                throw new IllegalArgumentException("Invalid temperature unit");
        }
    }

    private static float zzc(float f) {
        return (5.0f * (f - 32.0f)) / 9.0f;
    }

    @Override // com.google.android.gms.awareness.state.Weather
    public int[] getConditions() {
        return this.gr;
    }

    @Override // com.google.android.gms.awareness.state.Weather
    public float getDewPoint(int i) {
        return zza(i, this.gp);
    }

    @Override // com.google.android.gms.awareness.state.Weather
    public float getFeelsLikeTemperature(int i) {
        return zza(i, this.go);
    }

    @Override // com.google.android.gms.awareness.state.Weather
    public int getHumidity() {
        return this.gq;
    }

    @Override // com.google.android.gms.awareness.state.Weather
    public float getTemperature(int i) {
        return zza(i, this.gn);
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Temp=").append(getTemperature(1)).append("F/").append(getTemperature(2)).append("C, Feels=").append(getFeelsLikeTemperature(1)).append("F/").append(getFeelsLikeTemperature(2)).append("C, Dew=").append(getDewPoint(1)).append("F/").append(getDewPoint(2)).append("C, Humidity=").append(getHumidity()).append(", Condition=");
        if (getConditions() == null) {
            sb.append("unknown");
        } else {
            sb.append(Constants.RequestParameters.LEFT_BRACKETS);
            int[] conditions = getConditions();
            int length = conditions.length;
            boolean z = true;
            int i = 0;
            while (i < length) {
                int i2 = conditions[i];
                if (!z) {
                    sb.append(",");
                }
                sb.append(i2);
                i++;
                z = false;
            }
            sb.append(Constants.RequestParameters.RIGHT_BRACKETS);
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzn.zza(this, parcel, i);
    }

    public float zzahj() {
        return this.gp;
    }

    public float zzahk() {
        return this.go;
    }

    public float zzahl() {
        return this.gn;
    }
}
