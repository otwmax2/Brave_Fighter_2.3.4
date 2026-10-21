package com.ironsource.mediationsdk.sdk;

import com.ironsource.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public interface InterstitialSmashListener extends InterstitialListener {
    void onInterstitialAdVisible();

    void onInterstitialInitFailed(IronSourceError ironSourceError);

    void onInterstitialInitSuccess();
}
