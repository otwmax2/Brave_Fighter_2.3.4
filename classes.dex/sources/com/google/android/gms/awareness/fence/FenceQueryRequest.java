package com.google.android.gms.awareness.fence;

import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.contextmanager.fence.internal.FenceQueryRequestImpl;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class FenceQueryRequest extends AbstractSafeParcelable {
    protected FenceQueryRequest() {
    }

    public static FenceQueryRequest all() {
        return new FenceQueryRequestImpl();
    }

    public static FenceQueryRequest forFences(Collection<String> collection) {
        zzab.zzaa(collection);
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            zzab.zzhs(it.next());
        }
        return new FenceQueryRequestImpl(collection);
    }

    public static FenceQueryRequest forFences(String... strArr) {
        zzab.zzaa(strArr);
        for (String str : strArr) {
            zzab.zzhs(str);
        }
        return new FenceQueryRequestImpl(strArr);
    }
}
