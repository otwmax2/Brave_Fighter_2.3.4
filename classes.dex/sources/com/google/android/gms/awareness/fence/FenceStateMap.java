package com.google.android.gms.awareness.fence;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface FenceStateMap {
    Set<String> getFenceKeys();

    FenceState getFenceState(String str);
}
