package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzf;

/* JADX INFO: loaded from: classes.dex */
public final class LeaderboardBuffer extends zzf<Leaderboard> {
    public LeaderboardBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override // com.google.android.gms.common.data.zzf
    protected String zzarg() {
        return "external_leaderboard_id";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.data.zzf
    /* JADX INFO: renamed from: zzo, reason: merged with bridge method [inline-methods] */
    public Leaderboard zzl(int i, int i2) {
        return new LeaderboardRef(this.tk, i, i2);
    }
}
