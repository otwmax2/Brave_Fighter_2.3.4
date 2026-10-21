package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzg;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class LeaderboardEntity implements Leaderboard {
    private final Uri QE;
    private final String QP;
    private final String XL;
    private final int XM;
    private final ArrayList<LeaderboardVariantEntity> XN;
    private final Game XO;
    private final String dH;

    public LeaderboardEntity(Leaderboard leaderboard) {
        this.XL = leaderboard.getLeaderboardId();
        this.dH = leaderboard.getDisplayName();
        this.QE = leaderboard.getIconImageUri();
        this.QP = leaderboard.getIconImageUrl();
        this.XM = leaderboard.getScoreOrder();
        Game game = leaderboard.getGame();
        this.XO = game == null ? null : new GameEntity(game);
        ArrayList<LeaderboardVariant> variants = leaderboard.getVariants();
        int size = variants.size();
        this.XN = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            this.XN.add((LeaderboardVariantEntity) variants.get(i).freeze());
        }
    }

    static int zza(Leaderboard leaderboard) {
        return zzaa.hashCode(leaderboard.getLeaderboardId(), leaderboard.getDisplayName(), leaderboard.getIconImageUri(), Integer.valueOf(leaderboard.getScoreOrder()), leaderboard.getVariants());
    }

    static boolean zza(Leaderboard leaderboard, Object obj) {
        if (!(obj instanceof Leaderboard)) {
            return false;
        }
        if (leaderboard == obj) {
            return true;
        }
        Leaderboard leaderboard2 = (Leaderboard) obj;
        return zzaa.equal(leaderboard2.getLeaderboardId(), leaderboard.getLeaderboardId()) && zzaa.equal(leaderboard2.getDisplayName(), leaderboard.getDisplayName()) && zzaa.equal(leaderboard2.getIconImageUri(), leaderboard.getIconImageUri()) && zzaa.equal(Integer.valueOf(leaderboard2.getScoreOrder()), Integer.valueOf(leaderboard.getScoreOrder())) && zzaa.equal(leaderboard2.getVariants(), leaderboard.getVariants());
    }

    static String zzb(Leaderboard leaderboard) {
        return zzaa.zzz(leaderboard).zzg("LeaderboardId", leaderboard.getLeaderboardId()).zzg("DisplayName", leaderboard.getDisplayName()).zzg("IconImageUri", leaderboard.getIconImageUri()).zzg("IconImageUrl", leaderboard.getIconImageUrl()).zzg("ScoreOrder", Integer.valueOf(leaderboard.getScoreOrder())).zzg("Variants", leaderboard.getVariants()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public String getDisplayName() {
        return this.dH;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.dH, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public Game getGame() {
        return this.XO;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public Uri getIconImageUri() {
        return this.QE;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public String getIconImageUrl() {
        return this.QP;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public String getLeaderboardId() {
        return this.XL;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public int getScoreOrder() {
        return this.XM;
    }

    @Override // com.google.android.gms.games.leaderboard.Leaderboard
    public ArrayList<LeaderboardVariant> getVariants() {
        return new ArrayList<>(this.XN);
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
    /* JADX INFO: renamed from: zzbkz, reason: merged with bridge method [inline-methods] */
    public Leaderboard freeze() {
        return this;
    }
}
