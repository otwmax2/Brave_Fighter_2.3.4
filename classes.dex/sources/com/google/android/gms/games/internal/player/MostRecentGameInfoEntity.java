package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* JADX INFO: loaded from: classes.dex */
public final class MostRecentGameInfoEntity extends AbstractSafeParcelable implements MostRecentGameInfo {
    public static final MostRecentGameInfoEntityCreator CREATOR = new MostRecentGameInfoEntityCreator();
    private final String WP;
    private final String WQ;
    private final long WR;
    private final Uri WS;
    private final Uri WT;
    private final Uri WU;
    private final int mVersionCode;

    MostRecentGameInfoEntity(int i, String str, String str2, long j, Uri uri, Uri uri2, Uri uri3) {
        this.mVersionCode = i;
        this.WP = str;
        this.WQ = str2;
        this.WR = j;
        this.WS = uri;
        this.WT = uri2;
        this.WU = uri3;
    }

    public MostRecentGameInfoEntity(MostRecentGameInfo mostRecentGameInfo) {
        this.mVersionCode = 2;
        this.WP = mostRecentGameInfo.zzbko();
        this.WQ = mostRecentGameInfo.zzbkp();
        this.WR = mostRecentGameInfo.zzbkq();
        this.WS = mostRecentGameInfo.zzbkr();
        this.WT = mostRecentGameInfo.zzbks();
        this.WU = mostRecentGameInfo.zzbkt();
    }

    static int zza(MostRecentGameInfo mostRecentGameInfo) {
        return zzaa.hashCode(mostRecentGameInfo.zzbko(), mostRecentGameInfo.zzbkp(), Long.valueOf(mostRecentGameInfo.zzbkq()), mostRecentGameInfo.zzbkr(), mostRecentGameInfo.zzbks(), mostRecentGameInfo.zzbkt());
    }

    static boolean zza(MostRecentGameInfo mostRecentGameInfo, Object obj) {
        if (!(obj instanceof MostRecentGameInfo)) {
            return false;
        }
        if (mostRecentGameInfo == obj) {
            return true;
        }
        MostRecentGameInfo mostRecentGameInfo2 = (MostRecentGameInfo) obj;
        return zzaa.equal(mostRecentGameInfo2.zzbko(), mostRecentGameInfo.zzbko()) && zzaa.equal(mostRecentGameInfo2.zzbkp(), mostRecentGameInfo.zzbkp()) && zzaa.equal(Long.valueOf(mostRecentGameInfo2.zzbkq()), Long.valueOf(mostRecentGameInfo.zzbkq())) && zzaa.equal(mostRecentGameInfo2.zzbkr(), mostRecentGameInfo.zzbkr()) && zzaa.equal(mostRecentGameInfo2.zzbks(), mostRecentGameInfo.zzbks()) && zzaa.equal(mostRecentGameInfo2.zzbkt(), mostRecentGameInfo.zzbkt());
    }

    static String zzb(MostRecentGameInfo mostRecentGameInfo) {
        return zzaa.zzz(mostRecentGameInfo).zzg("GameId", mostRecentGameInfo.zzbko()).zzg("GameName", mostRecentGameInfo.zzbkp()).zzg("ActivityTimestampMillis", Long.valueOf(mostRecentGameInfo.zzbkq())).zzg("GameIconUri", mostRecentGameInfo.zzbkr()).zzg("GameHiResUri", mostRecentGameInfo.zzbks()).zzg("GameFeaturedUri", mostRecentGameInfo.zzbkt()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
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
        MostRecentGameInfoEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public String zzbko() {
        return this.WP;
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public String zzbkp() {
        return this.WQ;
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public long zzbkq() {
        return this.WR;
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public Uri zzbkr() {
        return this.WS;
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public Uri zzbks() {
        return this.WT;
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public Uri zzbkt() {
        return this.WU;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbku, reason: merged with bridge method [inline-methods] */
    public MostRecentGameInfo freeze() {
        return this;
    }
}
