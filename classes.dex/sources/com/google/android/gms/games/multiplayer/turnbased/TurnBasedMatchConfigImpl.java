package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;

/* JADX INFO: loaded from: classes.dex */
public final class TurnBasedMatchConfigImpl extends TurnBasedMatchConfig {
    private final Bundle YK;
    private final String[] YL;
    private final int YT;
    private final int Yu;

    TurnBasedMatchConfigImpl(TurnBasedMatchConfig.Builder builder) {
        this.Yu = builder.Yu;
        this.YT = builder.YT;
        this.YK = builder.YK;
        this.YL = (String[]) builder.YJ.toArray(new String[builder.YJ.size()]);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig
    public Bundle getAutoMatchCriteria() {
        return this.YK;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig
    public String[] getInvitedPlayerIds() {
        return this.YL;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig
    public int getVariant() {
        return this.Yu;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig
    public int zzblg() {
        return this.YT;
    }
}
