package com.ironsource.mediationsdk.sdk;

import com.ironsource.mediationsdk.BannerSmash;
import com.ironsource.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public interface BannerLayoutListener {
    void onBannerAdClicked(BannerSmash bannerSmash);

    void onBannerAdLeftApplication(BannerSmash bannerSmash);

    void onBannerAdLoadFailed(IronSourceError ironSourceError, BannerSmash bannerSmash);

    void onBannerAdLoaded(BannerSmash bannerSmash);

    void onBannerAdReloadFailed(BannerSmash bannerSmash);

    void onBannerAdReloaded(BannerSmash bannerSmash);

    void onBannerAdScreenDismissed(BannerSmash bannerSmash);

    void onBannerAdScreenPresented(BannerSmash bannerSmash);
}
