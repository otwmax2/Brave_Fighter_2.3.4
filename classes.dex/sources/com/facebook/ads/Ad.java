package com.facebook.ads;

/* JADX INFO: loaded from: classes.dex */
public interface Ad {
    void destroy();

    String getPlacementId();

    void loadAd();

    void loadAdFromBid(String str);
}
