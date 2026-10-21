package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: loaded from: classes.dex */
public final class LeaderboardScoreBuffer extends AbstractDataBuffer<LeaderboardScore> {
    private final LeaderboardScoreBufferHeader XP;

    public LeaderboardScoreBuffer(DataHolder dataHolder) {
        super(dataHolder);
        this.XP = new LeaderboardScoreBufferHeader(dataHolder.zzaqy());
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public LeaderboardScore get(int i) {
        return new LeaderboardScoreRef(this.tk, i);
    }

    public LeaderboardScoreBufferHeader zzbla() {
        return this.XP;
    }
}
