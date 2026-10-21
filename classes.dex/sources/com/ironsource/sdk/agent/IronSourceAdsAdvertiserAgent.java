package com.ironsource.sdk.agent;

import android.content.Context;
import com.ironsource.sdk.SSAAdvertiser;

/* JADX INFO: loaded from: classes.dex */
public class IronSourceAdsAdvertiserAgent implements SSAAdvertiser {
    private static final String TAG = "IronSourceAdsAdvertiserAgent";
    static IronSourceAdsAdvertiserAgent sInstance;

    private IronSourceAdsAdvertiserAgent() {
    }

    public static synchronized IronSourceAdsAdvertiserAgent getInstance() {
        if (sInstance == null) {
            sInstance = new IronSourceAdsAdvertiserAgent();
        }
        return sInstance;
    }

    @Override // com.ironsource.sdk.SSAAdvertiser
    @Deprecated
    public void reportAppStarted(Context context) {
    }
}
