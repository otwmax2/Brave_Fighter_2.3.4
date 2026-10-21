package com.google.android.gms.games.internal.player;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: loaded from: classes.dex */
public class StockProfileImageBuffer extends AbstractDataBuffer<StockProfileImage> {
    public StockProfileImageBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* JADX INFO: renamed from: zzrd, reason: merged with bridge method [inline-methods] */
    public StockProfileImage get(int i) {
        return new StockProfileImageRef(this.tk, i);
    }
}
