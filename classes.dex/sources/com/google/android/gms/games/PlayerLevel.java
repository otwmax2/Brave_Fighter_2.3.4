package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzab;

/* JADX INFO: loaded from: classes.dex */
public final class PlayerLevel implements SafeParcelable {
    public static final Parcelable.Creator<PlayerLevel> CREATOR = new PlayerLevelCreator();
    private final int RC;
    private final long RD;
    private final long RE;
    private final int mVersionCode;

    PlayerLevel(int i, int i2, long j, long j2) {
        zzab.zza(j >= 0, "Min XP must be positive!");
        zzab.zza(j2 > j, "Max XP must be more than min XP!");
        this.mVersionCode = i;
        this.RC = i2;
        this.RD = j;
        this.RE = j2;
    }

    public PlayerLevel(int i, long j, long j2) {
        this(1, i, j, j2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlayerLevel)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        PlayerLevel playerLevel = (PlayerLevel) obj;
        return zzaa.equal(Integer.valueOf(playerLevel.getLevelNumber()), Integer.valueOf(getLevelNumber())) && zzaa.equal(Long.valueOf(playerLevel.getMinXp()), Long.valueOf(getMinXp())) && zzaa.equal(Long.valueOf(playerLevel.getMaxXp()), Long.valueOf(getMaxXp()));
    }

    public int getLevelNumber() {
        return this.RC;
    }

    public long getMaxXp() {
        return this.RE;
    }

    public long getMinXp() {
        return this.RD;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.RC), Long.valueOf(this.RD), Long.valueOf(this.RE));
    }

    public String toString() {
        return zzaa.zzz(this).zzg("LevelNumber", Integer.valueOf(getLevelNumber())).zzg("MinXp", Long.valueOf(getMinXp())).zzg("MaxXp", Long.valueOf(getMaxXp())).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        PlayerLevelCreator.zza(this, parcel, i);
    }
}
