package com.ironsource.sdk.listeners.internals;

/* JADX INFO: loaded from: classes.dex */
public interface DSRewardedVideoListener extends DSAdProductListener {
    void onRVAdCredited(String str, int i);

    void onRVNoMoreOffers(String str);

    void onRVShowFail(String str, String str2);
}
