package com.google.android.gms.games.stats;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* JADX INFO: loaded from: classes.dex */
public class PlayerStatsEntity extends AbstractSafeParcelable implements PlayerStats {
    public static final Parcelable.Creator<PlayerStatsEntity> CREATOR = new PlayerStatsEntityCreator();
    private final float ZQ;
    private final float ZR;
    private final int ZS;
    private final int ZT;
    private final int ZU;
    private final float ZV;
    private final float ZW;
    private final Bundle ZX;
    private final float ZY;
    private final float ZZ;
    private final float aaa;
    private final int mVersionCode;

    PlayerStatsEntity(int i, float f, float f2, int i2, int i3, int i4, float f3, float f4, Bundle bundle, float f5, float f6, float f7) {
        this.mVersionCode = i;
        this.ZQ = f;
        this.ZR = f2;
        this.ZS = i2;
        this.ZT = i3;
        this.ZU = i4;
        this.ZV = f3;
        this.ZW = f4;
        this.ZX = bundle;
        this.ZY = f5;
        this.ZZ = f6;
        this.aaa = f7;
    }

    public PlayerStatsEntity(PlayerStats playerStats) {
        this.mVersionCode = 4;
        this.ZQ = playerStats.getAverageSessionLength();
        this.ZR = playerStats.getChurnProbability();
        this.ZS = playerStats.getDaysSinceLastPlayed();
        this.ZT = playerStats.getNumberOfPurchases();
        this.ZU = playerStats.getNumberOfSessions();
        this.ZV = playerStats.getSessionPercentile();
        this.ZW = playerStats.getSpendPercentile();
        this.ZY = playerStats.getSpendProbability();
        this.ZZ = playerStats.getHighSpenderProbability();
        this.aaa = playerStats.getTotalSpendNext28Days();
        this.ZX = playerStats.zzblo();
    }

    static int zza(PlayerStats playerStats) {
        return zzaa.hashCode(Float.valueOf(playerStats.getAverageSessionLength()), Float.valueOf(playerStats.getChurnProbability()), Integer.valueOf(playerStats.getDaysSinceLastPlayed()), Integer.valueOf(playerStats.getNumberOfPurchases()), Integer.valueOf(playerStats.getNumberOfSessions()), Float.valueOf(playerStats.getSessionPercentile()), Float.valueOf(playerStats.getSpendPercentile()), Float.valueOf(playerStats.getSpendProbability()), Float.valueOf(playerStats.getHighSpenderProbability()), Float.valueOf(playerStats.getTotalSpendNext28Days()));
    }

    static boolean zza(PlayerStats playerStats, Object obj) {
        if (!(obj instanceof PlayerStats)) {
            return false;
        }
        if (playerStats == obj) {
            return true;
        }
        PlayerStats playerStats2 = (PlayerStats) obj;
        return zzaa.equal(Float.valueOf(playerStats2.getAverageSessionLength()), Float.valueOf(playerStats.getAverageSessionLength())) && zzaa.equal(Float.valueOf(playerStats2.getChurnProbability()), Float.valueOf(playerStats.getChurnProbability())) && zzaa.equal(Integer.valueOf(playerStats2.getDaysSinceLastPlayed()), Integer.valueOf(playerStats.getDaysSinceLastPlayed())) && zzaa.equal(Integer.valueOf(playerStats2.getNumberOfPurchases()), Integer.valueOf(playerStats.getNumberOfPurchases())) && zzaa.equal(Integer.valueOf(playerStats2.getNumberOfSessions()), Integer.valueOf(playerStats.getNumberOfSessions())) && zzaa.equal(Float.valueOf(playerStats2.getSessionPercentile()), Float.valueOf(playerStats.getSessionPercentile())) && zzaa.equal(Float.valueOf(playerStats2.getSpendPercentile()), Float.valueOf(playerStats.getSpendPercentile())) && zzaa.equal(Float.valueOf(playerStats2.getSpendProbability()), Float.valueOf(playerStats.getSpendProbability())) && zzaa.equal(Float.valueOf(playerStats2.getHighSpenderProbability()), Float.valueOf(playerStats.getHighSpenderProbability())) && zzaa.equal(Float.valueOf(playerStats2.getTotalSpendNext28Days()), Float.valueOf(playerStats.getTotalSpendNext28Days()));
    }

    static String zzb(PlayerStats playerStats) {
        return zzaa.zzz(playerStats).zzg("AverageSessionLength", Float.valueOf(playerStats.getAverageSessionLength())).zzg("ChurnProbability", Float.valueOf(playerStats.getChurnProbability())).zzg("DaysSinceLastPlayed", Integer.valueOf(playerStats.getDaysSinceLastPlayed())).zzg("NumberOfPurchases", Integer.valueOf(playerStats.getNumberOfPurchases())).zzg("NumberOfSessions", Integer.valueOf(playerStats.getNumberOfSessions())).zzg("SessionPercentile", Float.valueOf(playerStats.getSessionPercentile())).zzg("SpendPercentile", Float.valueOf(playerStats.getSpendPercentile())).zzg("SpendProbability", Float.valueOf(playerStats.getSpendProbability())).zzg("HighSpenderProbability", Float.valueOf(playerStats.getHighSpenderProbability())).zzg("TotalSpendNext28Days", Float.valueOf(playerStats.getTotalSpendNext28Days())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getAverageSessionLength() {
        return this.ZQ;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getChurnProbability() {
        return this.ZR;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public int getDaysSinceLastPlayed() {
        return this.ZS;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getHighSpenderProbability() {
        return this.ZZ;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public int getNumberOfPurchases() {
        return this.ZT;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public int getNumberOfSessions() {
        return this.ZU;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getSessionPercentile() {
        return this.ZV;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getSpendPercentile() {
        return this.ZW;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getSpendProbability() {
        return this.ZY;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public float getTotalSpendNext28Days() {
        return this.aaa;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        PlayerStatsEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public Bundle zzblo() {
        return this.ZX;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzblp, reason: merged with bridge method [inline-methods] */
    public PlayerStats freeze() {
        return this;
    }
}
