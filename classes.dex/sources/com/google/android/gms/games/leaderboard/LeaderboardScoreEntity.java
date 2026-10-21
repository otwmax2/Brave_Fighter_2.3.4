package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.util.zzg;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;

/* JADX INFO: loaded from: classes.dex */
public final class LeaderboardScoreEntity implements LeaderboardScore {
    private final long XQ;
    private final String XR;
    private final String XS;
    private final long XT;
    private final long XU;
    private final String XV;
    private final Uri XW;
    private final Uri XX;
    private final PlayerEntity XY;
    private final String XZ;
    private final String Ya;
    private final String Yb;

    public LeaderboardScoreEntity(LeaderboardScore leaderboardScore) {
        this.XQ = leaderboardScore.getRank();
        this.XR = (String) zzab.zzaa(leaderboardScore.getDisplayRank());
        this.XS = (String) zzab.zzaa(leaderboardScore.getDisplayScore());
        this.XT = leaderboardScore.getRawScore();
        this.XU = leaderboardScore.getTimestampMillis();
        this.XV = leaderboardScore.getScoreHolderDisplayName();
        this.XW = leaderboardScore.getScoreHolderIconImageUri();
        this.XX = leaderboardScore.getScoreHolderHiResImageUri();
        Player scoreHolder = leaderboardScore.getScoreHolder();
        this.XY = scoreHolder == null ? null : (PlayerEntity) scoreHolder.freeze();
        this.XZ = leaderboardScore.getScoreTag();
        this.Ya = leaderboardScore.getScoreHolderIconImageUrl();
        this.Yb = leaderboardScore.getScoreHolderHiResImageUrl();
    }

    static int zza(LeaderboardScore leaderboardScore) {
        return zzaa.hashCode(Long.valueOf(leaderboardScore.getRank()), leaderboardScore.getDisplayRank(), Long.valueOf(leaderboardScore.getRawScore()), leaderboardScore.getDisplayScore(), Long.valueOf(leaderboardScore.getTimestampMillis()), leaderboardScore.getScoreHolderDisplayName(), leaderboardScore.getScoreHolderIconImageUri(), leaderboardScore.getScoreHolderHiResImageUri(), leaderboardScore.getScoreHolder());
    }

    static boolean zza(LeaderboardScore leaderboardScore, Object obj) {
        if (!(obj instanceof LeaderboardScore)) {
            return false;
        }
        if (leaderboardScore == obj) {
            return true;
        }
        LeaderboardScore leaderboardScore2 = (LeaderboardScore) obj;
        return zzaa.equal(Long.valueOf(leaderboardScore2.getRank()), Long.valueOf(leaderboardScore.getRank())) && zzaa.equal(leaderboardScore2.getDisplayRank(), leaderboardScore.getDisplayRank()) && zzaa.equal(Long.valueOf(leaderboardScore2.getRawScore()), Long.valueOf(leaderboardScore.getRawScore())) && zzaa.equal(leaderboardScore2.getDisplayScore(), leaderboardScore.getDisplayScore()) && zzaa.equal(Long.valueOf(leaderboardScore2.getTimestampMillis()), Long.valueOf(leaderboardScore.getTimestampMillis())) && zzaa.equal(leaderboardScore2.getScoreHolderDisplayName(), leaderboardScore.getScoreHolderDisplayName()) && zzaa.equal(leaderboardScore2.getScoreHolderIconImageUri(), leaderboardScore.getScoreHolderIconImageUri()) && zzaa.equal(leaderboardScore2.getScoreHolderHiResImageUri(), leaderboardScore.getScoreHolderHiResImageUri()) && zzaa.equal(leaderboardScore2.getScoreHolder(), leaderboardScore.getScoreHolder()) && zzaa.equal(leaderboardScore2.getScoreTag(), leaderboardScore.getScoreTag());
    }

    static String zzb(LeaderboardScore leaderboardScore) {
        return zzaa.zzz(leaderboardScore).zzg("Rank", Long.valueOf(leaderboardScore.getRank())).zzg("DisplayRank", leaderboardScore.getDisplayRank()).zzg("Score", Long.valueOf(leaderboardScore.getRawScore())).zzg("DisplayScore", leaderboardScore.getDisplayScore()).zzg("Timestamp", Long.valueOf(leaderboardScore.getTimestampMillis())).zzg("DisplayName", leaderboardScore.getScoreHolderDisplayName()).zzg("IconImageUri", leaderboardScore.getScoreHolderIconImageUri()).zzg("IconImageUrl", leaderboardScore.getScoreHolderIconImageUrl()).zzg("HiResImageUri", leaderboardScore.getScoreHolderHiResImageUri()).zzg("HiResImageUrl", leaderboardScore.getScoreHolderHiResImageUrl()).zzg("Player", leaderboardScore.getScoreHolder() == null ? null : leaderboardScore.getScoreHolder()).zzg("ScoreTag", leaderboardScore.getScoreTag()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getDisplayRank() {
        return this.XR;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public void getDisplayRank(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.XR, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getDisplayScore() {
        return this.XS;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public void getDisplayScore(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.XS, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public long getRank() {
        return this.XQ;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public long getRawScore() {
        return this.XT;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public Player getScoreHolder() {
        return this.XY;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getScoreHolderDisplayName() {
        return this.XY == null ? this.XV : this.XY.getDisplayName();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public void getScoreHolderDisplayName(CharArrayBuffer charArrayBuffer) {
        if (this.XY == null) {
            zzg.zzb(this.XV, charArrayBuffer);
        } else {
            this.XY.getDisplayName(charArrayBuffer);
        }
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public Uri getScoreHolderHiResImageUri() {
        return this.XY == null ? this.XX : this.XY.getHiResImageUri();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getScoreHolderHiResImageUrl() {
        return this.XY == null ? this.Yb : this.XY.getHiResImageUrl();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public Uri getScoreHolderIconImageUri() {
        return this.XY == null ? this.XW : this.XY.getIconImageUri();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getScoreHolderIconImageUrl() {
        return this.XY == null ? this.Ya : this.XY.getIconImageUrl();
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public String getScoreTag() {
        return this.XZ;
    }

    @Override // com.google.android.gms.games.leaderboard.LeaderboardScore
    public long getTimestampMillis() {
        return this.XU;
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

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzblb, reason: merged with bridge method [inline-methods] */
    public LeaderboardScore freeze() {
        return this;
    }
}
