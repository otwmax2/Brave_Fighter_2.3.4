package com.ironsource.sdk.handlers;

import android.app.Activity;
import com.ironsource.sdk.agent.IronSourceAdsPublisherAgent;
import com.ironsource.sdk.controller.IronSourceWebView;
import com.ironsource.sdk.data.SSAEnums;
import com.ironsource.sdk.utils.IronSourceSharedPrefHelper;

/* JADX INFO: loaded from: classes.dex */
public class BackButtonHandler {
    public static BackButtonHandler mInstance;

    public static BackButtonHandler getInstance() {
        return mInstance == null ? new BackButtonHandler() : mInstance;
    }

    public boolean handleBackButton(Activity activity) {
        SSAEnums.BackButtonState state = IronSourceSharedPrefHelper.getSupersonicPrefHelper().getBackButtonState();
        switch (state) {
            case Controller:
                try {
                    IronSourceAdsPublisherAgent ssaPubAgt = IronSourceAdsPublisherAgent.getInstance(activity);
                    IronSourceWebView webViewController = ssaPubAgt.getWebViewController();
                    if (webViewController != null) {
                        webViewController.nativeNavigationPressed("back");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                    return false;
                }
                break;
        }
        return false;
    }
}
