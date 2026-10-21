package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.internal.constants.TurnBasedMatchTurnStatus;
import com.google.android.gms.games.multiplayer.InvitationBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class LoadMatchesResponse {
    private final InvitationBuffer YP;
    private final TurnBasedMatchBuffer YQ;
    private final TurnBasedMatchBuffer YR;
    private final TurnBasedMatchBuffer YS;

    public LoadMatchesResponse(Bundle bundle) {
        DataHolder dataHolderZzc = zzc(bundle, 0);
        if (dataHolderZzc != null) {
            this.YP = new InvitationBuffer(dataHolderZzc);
        } else {
            this.YP = null;
        }
        DataHolder dataHolderZzc2 = zzc(bundle, 1);
        if (dataHolderZzc2 != null) {
            this.YQ = new TurnBasedMatchBuffer(dataHolderZzc2);
        } else {
            this.YQ = null;
        }
        DataHolder dataHolderZzc3 = zzc(bundle, 2);
        if (dataHolderZzc3 != null) {
            this.YR = new TurnBasedMatchBuffer(dataHolderZzc3);
        } else {
            this.YR = null;
        }
        DataHolder dataHolderZzc4 = zzc(bundle, 3);
        if (dataHolderZzc4 != null) {
            this.YS = new TurnBasedMatchBuffer(dataHolderZzc4);
        } else {
            this.YS = null;
        }
    }

    private static DataHolder zzc(Bundle bundle, int i) {
        String strZzqs = TurnBasedMatchTurnStatus.zzqs(i);
        if (bundle.containsKey(strZzqs)) {
            return (DataHolder) bundle.getParcelable(strZzqs);
        }
        return null;
    }

    @Deprecated
    public void close() {
        release();
    }

    public TurnBasedMatchBuffer getCompletedMatches() {
        return this.YS;
    }

    public InvitationBuffer getInvitations() {
        return this.YP;
    }

    public TurnBasedMatchBuffer getMyTurnMatches() {
        return this.YQ;
    }

    public TurnBasedMatchBuffer getTheirTurnMatches() {
        return this.YR;
    }

    public boolean hasData() {
        if (this.YP != null && this.YP.getCount() > 0) {
            return true;
        }
        if (this.YQ != null && this.YQ.getCount() > 0) {
            return true;
        }
        if (this.YR == null || this.YR.getCount() <= 0) {
            return this.YS != null && this.YS.getCount() > 0;
        }
        return true;
    }

    public void release() {
        if (this.YP != null) {
            this.YP.release();
        }
        if (this.YQ != null) {
            this.YQ.release();
        }
        if (this.YR != null) {
            this.YR.release();
        }
        if (this.YS != null) {
            this.YS.release();
        }
    }
}
