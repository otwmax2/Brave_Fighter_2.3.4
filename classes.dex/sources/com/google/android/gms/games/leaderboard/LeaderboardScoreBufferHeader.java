package com.google.android.gms.games.leaderboard;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class LeaderboardScoreBufferHeader {
    private final Bundle bM;

    public static final class Builder {
        private Builder() {
        }
    }

    public LeaderboardScoreBufferHeader(Bundle bundle) {
        this.bM = bundle == null ? new Bundle() : bundle;
    }

    public Bundle asBundle() {
        return this.bM;
    }
}
