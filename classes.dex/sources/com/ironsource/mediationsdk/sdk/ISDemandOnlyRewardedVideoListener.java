package com.ironsource.mediationsdk.sdk;

import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes.dex */
public interface ISDemandOnlyRewardedVideoListener {
    void onRewardedVideoAdClicked(String str, Placement placement);

    void onRewardedVideoAdClosed(String str);

    void onRewardedVideoAdOpened(String str);

    void onRewardedVideoAdRewarded(String str, Placement placement);

    void onRewardedVideoAdShowFailed(String str, IronSourceError ironSourceError);

    void onRewardedVideoAvailabilityChanged(String str, boolean z);
}
