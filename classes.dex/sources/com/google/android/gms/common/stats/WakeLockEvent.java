package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new zzg();
    private final String AA;
    private final int AB;
    private final List<String> AC;
    private final String AD;
    private int AE;
    private final String AF;
    private final float AG;
    private final String Ay;
    private final String Az;
    private final long mTimeout;
    final int mVersionCode;
    private final long zM;
    private int zN;
    private final long zU;
    private long zW;

    WakeLockEvent(int i, long j, int i2, String str, int i3, List<String> list, String str2, long j2, int i4, String str3, String str4, float f, long j3, String str5) {
        this.mVersionCode = i;
        this.zM = j;
        this.zN = i2;
        this.Ay = str;
        this.Az = str3;
        this.AA = str5;
        this.AB = i3;
        this.zW = -1L;
        this.AC = list;
        this.AD = str2;
        this.zU = j2;
        this.AE = i4;
        this.AF = str4;
        this.AG = f;
        this.mTimeout = j3;
    }

    public WakeLockEvent(long j, int i, String str, int i2, List<String> list, String str2, long j2, int i3, String str3, String str4, float f, long j3, String str5) {
        this(2, j, i, str, i2, list, str2, j2, i3, str3, str4, f, j3, str5);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public int getEventType() {
        return this.zN;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public long getTimeMillis() {
        return this.zM;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }

    public String zzauo() {
        return this.AD;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public long zzaup() {
        return this.zW;
    }

    public long zzaur() {
        return this.zU;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public String zzaus() {
        String strValueOf = String.valueOf("\t");
        String strValueOf2 = String.valueOf(zzauv());
        String strValueOf3 = String.valueOf("\t");
        int iZzauy = zzauy();
        String strValueOf4 = String.valueOf("\t");
        String strJoin = zzauz() == null ? "" : TextUtils.join(",", zzauz());
        String strValueOf5 = String.valueOf("\t");
        int iZzava = zzava();
        String strValueOf6 = String.valueOf("\t");
        String strZzauw = zzauw() == null ? "" : zzauw();
        String strValueOf7 = String.valueOf("\t");
        String strZzavb = zzavb() == null ? "" : zzavb();
        String strValueOf8 = String.valueOf("\t");
        float fZzavc = zzavc();
        String strValueOf9 = String.valueOf("\t");
        String strZzaux = zzaux() == null ? "" : zzaux();
        return new StringBuilder(String.valueOf(strValueOf).length() + 37 + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length() + String.valueOf(strValueOf4).length() + String.valueOf(strJoin).length() + String.valueOf(strValueOf5).length() + String.valueOf(strValueOf6).length() + String.valueOf(strZzauw).length() + String.valueOf(strValueOf7).length() + String.valueOf(strZzavb).length() + String.valueOf(strValueOf8).length() + String.valueOf(strValueOf9).length() + String.valueOf(strZzaux).length()).append(strValueOf).append(strValueOf2).append(strValueOf3).append(iZzauy).append(strValueOf4).append(strJoin).append(strValueOf5).append(iZzava).append(strValueOf6).append(strZzauw).append(strValueOf7).append(strZzavb).append(strValueOf8).append(fZzavc).append(strValueOf9).append(strZzaux).toString();
    }

    public String zzauv() {
        return this.Ay;
    }

    public String zzauw() {
        return this.Az;
    }

    public String zzaux() {
        return this.AA;
    }

    public int zzauy() {
        return this.AB;
    }

    public List<String> zzauz() {
        return this.AC;
    }

    public int zzava() {
        return this.AE;
    }

    public String zzavb() {
        return this.AF;
    }

    public float zzavc() {
        return this.AG;
    }

    public long zzavd() {
        return this.mTimeout;
    }
}
