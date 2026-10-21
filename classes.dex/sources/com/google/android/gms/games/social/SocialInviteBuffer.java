package com.google.android.gms.games.social;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: loaded from: classes.dex */
public class SocialInviteBuffer extends AbstractDataBuffer<SocialInvite> {
    public SocialInviteBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* JADX INFO: renamed from: zzrv, reason: merged with bridge method [inline-methods] */
    public SocialInvite get(int i) {
        return new SocialInviteRef(this.tk, i);
    }
}
