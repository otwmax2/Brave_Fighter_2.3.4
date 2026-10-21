package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class ConnectionEvent extends StatsEvent {
    public static final Parcelable.Creator<ConnectionEvent> CREATOR = new zza();
    final int mVersionCode;
    private final long zM;
    private int zN;
    private final String zO;
    private final String zP;
    private final String zQ;
    private final String zR;
    private final String zS;
    private final String zT;
    private final long zU;
    private final long zV;
    private long zW;

    ConnectionEvent(int i, long j, int i2, String str, String str2, String str3, String str4, String str5, String str6, long j2, long j3) {
        this.mVersionCode = i;
        this.zM = j;
        this.zN = i2;
        this.zO = str;
        this.zP = str2;
        this.zQ = str3;
        this.zR = str4;
        this.zW = -1L;
        this.zS = str5;
        this.zT = str6;
        this.zU = j2;
        this.zV = j3;
    }

    public ConnectionEvent(long j, int i, String str, String str2, String str3, String str4, String str5, String str6, long j2, long j3) {
        this(1, j, i, str, str2, str3, str4, str5, str6, j2, j3);
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
        zza.zza(this, parcel, i);
    }

    public String zzauj() {
        return this.zO;
    }

    public String zzauk() {
        return this.zP;
    }

    public String zzaul() {
        return this.zQ;
    }

    public String zzaum() {
        return this.zR;
    }

    public String zzaun() {
        return this.zS;
    }

    public String zzauo() {
        return this.zT;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public long zzaup() {
        return this.zW;
    }

    public long zzauq() {
        return this.zV;
    }

    public long zzaur() {
        return this.zU;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public String zzaus() {
        String strValueOf = String.valueOf("\t");
        String strValueOf2 = String.valueOf(zzauj());
        String strValueOf3 = String.valueOf(zzauk());
        String strValueOf4 = String.valueOf("\t");
        String strValueOf5 = String.valueOf(zzaul());
        String strValueOf6 = String.valueOf(zzaum());
        String strValueOf7 = String.valueOf("\t");
        String str = this.zS == null ? "" : this.zS;
        String strValueOf8 = String.valueOf("\t");
        return new StringBuilder(String.valueOf(strValueOf).length() + 22 + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length() + String.valueOf(strValueOf4).length() + String.valueOf(strValueOf5).length() + String.valueOf(strValueOf6).length() + String.valueOf(strValueOf7).length() + String.valueOf(str).length() + String.valueOf(strValueOf8).length()).append(strValueOf).append(strValueOf2).append("/").append(strValueOf3).append(strValueOf4).append(strValueOf5).append("/").append(strValueOf6).append(strValueOf7).append(str).append(strValueOf8).append(zzauq()).toString();
    }
}
