package com.google.android.gms.contextmanager;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class zzf extends com.google.android.gms.common.data.zzd<Relation> {
    public zzf(DataHolder dataHolder) {
        super(dataHolder, Relation.CREATOR);
    }

    @Override // com.google.android.gms.common.data.zzd
    /* JADX INFO: renamed from: zzfn */
    public /* synthetic */ SafeParcelable get(int i) {
        return (Relation) get(i);
    }

    @Override // com.google.android.gms.common.data.zzd, com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* JADX INFO: renamed from: zzhh, reason: merged with bridge method [inline-methods] */
    public Relation get(int i) {
        return (Relation) super.get(i);
    }
}
