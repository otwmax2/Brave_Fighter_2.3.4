package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzf;

/* JADX INFO: loaded from: classes.dex */
public final class InvitationBuffer extends zzf<Invitation> {
    public InvitationBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override // com.google.android.gms.common.data.zzf
    protected String zzarg() {
        return "external_invitation_id";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.data.zzf
    /* JADX INFO: renamed from: zzp, reason: merged with bridge method [inline-methods] */
    public Invitation zzl(int i, int i2) {
        return new InvitationRef(this.tk, i, i2);
    }
}
