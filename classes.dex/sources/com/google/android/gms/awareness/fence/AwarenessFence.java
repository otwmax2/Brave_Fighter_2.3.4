package com.google.android.gms.awareness.fence;

import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.contextmanager.fence.internal.ContextFenceStub;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class AwarenessFence extends AbstractSafeParcelable {
    protected AwarenessFence() {
    }

    public static AwarenessFence and(Collection<AwarenessFence> collection) {
        zzab.zzbn((collection == null || collection.isEmpty()) ? false : true);
        return ContextFenceStub.zzg(zzd(collection));
    }

    public static AwarenessFence and(AwarenessFence... awarenessFenceArr) {
        zzab.zzbn(awarenessFenceArr != null && awarenessFenceArr.length > 0);
        return ContextFenceStub.zzg(zza(awarenessFenceArr));
    }

    public static AwarenessFence not(AwarenessFence awarenessFence) {
        zzab.zzaa(awarenessFence);
        return ContextFenceStub.zza((ContextFenceStub) awarenessFence);
    }

    public static AwarenessFence or(Collection<AwarenessFence> collection) {
        zzab.zzbn((collection == null || collection.isEmpty()) ? false : true);
        return ContextFenceStub.zzh(zzd(collection));
    }

    public static AwarenessFence or(AwarenessFence... awarenessFenceArr) {
        zzab.zzbn(awarenessFenceArr != null && awarenessFenceArr.length > 0);
        return ContextFenceStub.zzh(zza(awarenessFenceArr));
    }

    private static ArrayList<ContextFenceStub> zza(AwarenessFence[] awarenessFenceArr) {
        ArrayList<ContextFenceStub> arrayList = new ArrayList<>(awarenessFenceArr.length);
        for (AwarenessFence awarenessFence : awarenessFenceArr) {
            arrayList.add((ContextFenceStub) awarenessFence);
        }
        return arrayList;
    }

    private static ArrayList<ContextFenceStub> zzd(Collection<AwarenessFence> collection) {
        ArrayList<ContextFenceStub> arrayList = new ArrayList<>(collection.size());
        Iterator<AwarenessFence> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add((ContextFenceStub) it.next());
        }
        return arrayList;
    }
}
