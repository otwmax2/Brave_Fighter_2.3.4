package com.ironsource.mediationsdk.sdk;

import com.ironsource.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public interface BannerSmashListener extends BannerListener {
    void onBannerInitFailed(IronSourceError ironSourceError);

    void onBannerInitSuccess();
}
