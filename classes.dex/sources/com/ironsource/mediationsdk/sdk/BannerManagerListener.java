package com.ironsource.mediationsdk.sdk;

import com.ironsource.mediationsdk.BannerSmash;
import com.ironsource.mediationsdk.IronSourceBannerLayout;
import com.ironsource.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public interface BannerManagerListener {
    void onBannerAdLoadFailed(IronSourceError ironSourceError, BannerSmash bannerSmash);

    void onBannerAdLoaded(BannerSmash bannerSmash);

    void onBannerAdReloadFailed(IronSourceError ironSourceError, BannerSmash bannerSmash);

    void onBannerAdReloaded(BannerSmash bannerSmash);

    void onBannerInitFailed(IronSourceError ironSourceError, BannerSmash bannerSmash);

    void onBannerInitSuccess(BannerSmash bannerSmash);

    void onBannerReloadAd(BannerSmash bannerSmash);

    void onFirstBannerImpression(IronSourceBannerLayout ironSourceBannerLayout, BannerSmash bannerSmash);
}
