package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzab;

/* JADX INFO: loaded from: classes.dex */
public final class PlayerLevelInfo implements SafeParcelable {
    public static final Parcelable.Creator<PlayerLevelInfo> CREATOR = new PlayerLevelInfoCreator();
    private final long RF;
    private final long RG;
    private final PlayerLevel RH;
    private final PlayerLevel RI;
    private final int mVersionCode;

    PlayerLevelInfo(int i, long j, long j2, PlayerLevel playerLevel, PlayerLevel playerLevel2) {
        zzab.zzbm(j != -1);
        zzab.zzaa(playerLevel);
        zzab.zzaa(playerLevel2);
        this.mVersionCode = i;
        this.RF = j;
        this.RG = j2;
        this.RH = playerLevel;
        this.RI = playerLevel2;
    }

    public PlayerLevelInfo(long j, long j2, PlayerLevel playerLevel, PlayerLevel playerLevel2) {
        this(1, j, j2, playerLevel, playerLevel2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlayerLevelInfo)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        PlayerLevelInfo playerLevelInfo = (PlayerLevelInfo) obj;
        return zzaa.equal(Long.valueOf(this.RF), Long.valueOf(playerLevelInfo.RF)) && zzaa.equal(Long.valueOf(this.RG), Long.valueOf(playerLevelInfo.RG)) && zzaa.equal(this.RH, playerLevelInfo.RH) && zzaa.equal(this.RI, playerLevelInfo.RI);
    }

    public PlayerLevel getCurrentLevel() {
        return this.RH;
    }

    public long getCurrentXpTotal() {
        return this.RF;
    }

    public long getLastLevelUpTimestamp() {
        return this.RG;
    }

    public PlayerLevel getNextLevel() {
        return this.RI;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(Long.valueOf(this.RF), Long.valueOf(this.RG), this.RH, this.RI);
    }

    public boolean isMaxLevel() {
        return this.RH.equals(this.RI);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        PlayerLevelInfoCreator.zza(this, parcel, i);
    }
}
