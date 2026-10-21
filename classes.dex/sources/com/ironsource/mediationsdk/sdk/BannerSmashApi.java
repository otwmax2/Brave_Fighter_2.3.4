package com.ironsource.mediationsdk.sdk;

import android.app.Activity;
import com.ironsource.mediationsdk.EBannerSize;
import com.ironsource.mediationsdk.IronSourceBannerLayout;

/* JADX INFO: loaded from: classes.dex */
public interface BannerSmashApi {
    IronSourceBannerLayout createBanner(Activity activity, EBannerSize eBannerSize);

    void destroyBanner(IronSourceBannerLayout ironSourceBannerLayout);

    void loadBanner(IronSourceBannerLayout ironSourceBannerLayout);
}
