package com.google.android.gms.contextmanager;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class zza extends com.google.android.gms.common.data.zzd<ContextData> {
    public zza(DataHolder dataHolder) {
        super(dataHolder, ContextData.CREATOR);
    }

    @Override // com.google.android.gms.common.data.zzd
    /* JADX INFO: renamed from: zzfn */
    public /* synthetic */ SafeParcelable get(int i) {
        return (ContextData) get(i);
    }

    @Override // com.google.android.gms.common.data.zzd, com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* JADX INFO: renamed from: zzhf, reason: merged with bridge method [inline-methods] */
    public ContextData get(int i) {
        return (ContextData) super.get(i);
    }
}
