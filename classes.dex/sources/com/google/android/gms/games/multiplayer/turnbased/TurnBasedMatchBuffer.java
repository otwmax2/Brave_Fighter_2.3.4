package com.google.android.gms.games.multiplayer.turnbased;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzf;

/* JADX INFO: loaded from: classes.dex */
public final class TurnBasedMatchBuffer extends zzf<TurnBasedMatch> {
    public TurnBasedMatchBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override // com.google.android.gms.common.data.zzf
    protected String zzarg() {
        return "external_match_id";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.data.zzf
    /* JADX INFO: renamed from: zzr, reason: merged with bridge method [inline-methods] */
    public TurnBasedMatch zzl(int i, int i2) {
        return new TurnBasedMatchRef(this.tk, i, i2);
    }
}
