package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.constants.LeaderboardCollection;
import com.google.android.gms.games.internal.constants.TimeSpan;
import com.ironsource.sdk.constants.Constants;

/* JADX INFO: loaded from: classes.dex */
public final class LeaderboardVariantEntity implements LeaderboardVariant {
    private final int Yd;
    private final int Ye;
    private final boolean Yf;
    private final long Yg;
    private final String Yh;
    private final long Yi;
    private final String Yj;
    private final String Yk;
    private final long Yl;
    private final String Ym;
    private final String Yn;
    private final String Yo;

    public LeaderboardVariantEntity(LeaderboardVariant leaderboardVariant) {
        this.Yd = leaderboardVariant.getTimeSpan();
        this.Ye = leaderboardVariant.getCollection();
        this.Yf = leaderboardVariant.hasPlayerInfo();
        this.Yg = leaderboardVariant.getRawPlayerScore();
        this.Yh = leaderboardVariant.getDisplayPlayerScore();
        this.Yi = leaderboardVariant.getPlayerRank();
        this.Yj = leaderboardVariant.getDisplayPlayerRank();
        this.Yk = leaderboardVariant.getPlayerScoreTag();
        this.Yl = leaderboardVariant.getNumScores();
        this.Ym = leaderboardVariant.zzblc();
        this.Yn = leaderboardVariant.zzbld();
        this.Yo = leaderboardVariant.zzble();
    }

    static int zza(LeaderboardVariant leaderboardVariant) {
        return zzaa.hashCode(Integer.valueOf(leaderboardVariant.getTimeSpan()), Integer.valueOf(leaderboardVariant.getCollection()), Boolean.valueOf(leaderboardVariant.hasPlayerInfo()), Long.valueOf(leaderboardVariant.getRawPlayerScore()), leaderboardVariant.getDisplayPlayerScore(), Long.valueOf(leaderboardVariant.getPlayerRank()), leaderboardVariant.getDisplayPlayerRank(), Long.valueOf(leaderboardVariant.getNumScores()), leaderboardVariant.zzblc(), leaderboardVariant.zzble(), leaderboardVariant.zzbld());
    }

    static boolean zza(LeaderboardVariant leaderboardVariant, Object obj) {
        if (!(obj instanceof LeaderboardVariant)) {
            return false;
        }
        if (leaderboardVariant == obj) {
            return true;
        }
        LeaderboardVariant leaderboardVariant2 = (LeaderboardVariant) obj;
        return zzaa.equal(Integer.valueOf(leaderboardVariant2.getTimeSpan()), Integer.valueOf(leaderboardVariant.getTimeSpan())) && zzaa.equal(Integer.valueOf(leaderboardVariant2.getCollection()), Integer.valueOf(leaderboardVariant.getCollection())) && zzaa.equal(Boolean.valueOf(leaderboardVariant2.hasPlayerInfo()), Boolean.valueOf(leaderboardVariant.hasPlayerInfo())) && zzaa.equal(Long.valueOf(leaderboardVariant2.getRawPlayerScore()), Long.valueOf(leaderboardVariant.getRawPlayerScore())) && zzaa.equal(leaderboardVariant2.getDisplayPlayerScore(), leaderboardVariant.getDisplayPlayerScore()) && zzaa.equal(Long.valueOf(leaderboardVariant2.getPlayerRank()), Long.valueOf(leaderboardVariant.getPlayerRank())) && zzaa.equal(leaderboardVariant2.getDisplayPlayerRank(), leaderboardVariant.getDisplayPlayerRank()) && zzaa.equal(Long.valueOf(leaderboardVariant2.getNumScores()), Long.valueOf(leaderboardVariant.getNumScores())) && zzaa.equal(leaderboardVariant2.zzblc(), leaderboardVariant.zzblc()) && zzaa.equal(leaderboardVariant2.zzble(), leaderboardVariant.zzble()) && zzaa.equal(leaderboardVariant2.zzbld(), leaderboardVariant.zzbld());
    }

    static String zzb(LeaderboardVariant leaderboardVariant) {
        return zzaa.zzz(leaderboardVariant).zzg("TimeSpan", TimeSpan.zzqs(leaderboardVariant.getTimeSpan())).zzg("Collection", LeaderboardCollection.zzqs(leaderboardVariant.getCollection())).zzg("RawPlayerScore", leaderboardVariant.hasPlayerInfo() ? Long.valueOf(leaderboardVariant.getRawPlayerScore()) : Constants.ParametersKeys.ORIENTATION_NONE).zzg("DisplayPlayerScore", leaderboardVariant.hasPlayerInfo() ? leaderboardVariant.getDisplayPlayerScore() : Constants.ParametersKeys.ORIENTATION_NONE).zzg("PlayerRank", leaderboardVariant.hasPlayerInfo() ? Long.valueOf(leaderboardVariant.getPlayerRank()) : Constants.ParametersKeys.ORIENTATION_NONE).zzg("DisplayPlayerRank", leaderboardVariant.hasPlayerInfo() ? leaderboardVariant.getDisplayPlayerRank() : Constants.ParametersKeys.ORIENTATION_NONE).zzg("NumScores", Long.valueOf(leaderboardVariant.getNumScores())).zzg("TopPageNextToken", leaderboardVariant.zzblc()).zzg("WindowPageNextToken", leaderboardVariant.zzble()).zzg("WindowPagePrevToken", leaderboardVariant.zzbld()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public int getCollection() {
        return this.Ye;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String getDisplayPlayerRank() {
        return this.Yj;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String getDisplayPlayerScore() {
        return this.Yh;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public long getNumScores() {
        return this.Yl;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public long getPlayerRank() {
        return this.Yi;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String getPlayerScoreTag() {
        return this.Yk;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public long getRawPlayerScore() {
        return this.Yg;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public int getTimeSpan() {
        return this.Yd;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public boolean hasPlayerInfo() {
        return this.Yf;
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

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String zzblc() {
        return this.Ym;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String zzbld() {
        return this.Yn;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardVariant
    public String zzble() {
        return this.Yo;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzblf, reason: merged with bridge method [inline-methods] */
    public LeaderboardVariant freeze() {
        return this;
    }
}
