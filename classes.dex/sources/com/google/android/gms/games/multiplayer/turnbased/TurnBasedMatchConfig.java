package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.games.multiplayer.Multiplayer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class TurnBasedMatchConfig {

    public static final class Builder {
        ArrayList<String> YJ;
        Bundle YK;
        int YT;
        int Yu;

        private Builder() {
            this.Yu = -1;
            this.YJ = new ArrayList<>();
            this.YK = null;
            this.YT = 2;
        }

        public Builder addInvitedPlayer(String str) {
            zzab.zzaa(str);
            this.YJ.add(str);
            return this;
        }

        public Builder addInvitedPlayers(ArrayList<String> arrayList) {
            zzab.zzaa(arrayList);
            this.YJ.addAll(arrayList);
            return this;
        }

        public TurnBasedMatchConfig build() {
            return new TurnBasedMatchConfigImpl(this);
        }

        public Builder setAutoMatchCriteria(Bundle bundle) {
            this.YK = bundle;
            return this;
        }

        public Builder setVariant(int i) {
            zzab.zzb(i == -1 || i > 0, "Variant must be a positive integer or TurnBasedMatch.MATCH_VARIANT_ANY");
            this.Yu = i;
            return this;
        }
    }

    protected TurnBasedMatchConfig() {
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Bundle createAutoMatchCriteria(int i, int i2, long j) {
        Bundle bundle = new Bundle();
        bundle.putInt(Multiplayer.EXTRA_MIN_AUTOMATCH_PLAYERS, i);
        bundle.putInt(Multiplayer.EXTRA_MAX_AUTOMATCH_PLAYERS, i2);
        bundle.putLong(Multiplayer.EXTRA_EXCLUSIVE_BIT_MASK, j);
        return bundle;
    }

    public abstract Bundle getAutoMatchCriteria();

    public abstract String[] getInvitedPlayerIds();

    public abstract int getVariant();

    public abstract int zzblg();
}
