package com.google.android.gms.games.appcontent;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzf;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class AppContentSectionBuffer extends zzf<AppContentSection> {
    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer, com.google.android.gms.common.api.Releasable
    public void release() {
        ArrayList arrayList = null;
        super.release();
        int size = arrayList.size();
        for (int i = 1; i < size; i++) {
            DataHolder dataHolder = (DataHolder) arrayList.get(i);
            if (dataHolder != null) {
                dataHolder.close();
            }
        }
    }

    @Override // com.google.android.gms.common.data.zzf
    protected String zzarg() {
        return "section_id";
    }

    @Override // com.google.android.gms.common.data.zzf
    protected String zzari() {
        return "card_id";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.data.zzf
    /* JADX INFO: renamed from: zzn, reason: merged with bridge method [inline-methods] */
    public AppContentSection zzl(int i, int i2) {
        return new AppContentSectionRef(null, i, i2);
    }
}
