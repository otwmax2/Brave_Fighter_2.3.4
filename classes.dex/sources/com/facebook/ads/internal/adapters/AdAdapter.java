package com.facebook.ads.internal.adapters;

import com.facebook.ads.internal.protocol.AdPlacementType;

/* JADX INFO: loaded from: classes.dex */
public interface AdAdapter {
    AdPlacementType getPlacementType();

    void onDestroy();
}
