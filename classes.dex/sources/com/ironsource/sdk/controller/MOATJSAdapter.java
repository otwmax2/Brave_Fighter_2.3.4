package com.ironsource.sdk.controller;

import android.app.Application;
import android.webkit.WebView;
import com.ironsource.sdk.analytics.moat.MOATManager;
import com.ironsource.sdk.controller.IronSourceWebView;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class MOATJSAdapter {
    private static final String createAdTracker = "createAdTracker";
    private static final String fail = "fail";
    private static final String initWithOptions = "initWithOptions";
    private static final String moatFunction = "moatFunction";
    private static final String moatParams = "moatParams";
    private static final String startTracking = "startTracking";
    private static final String stopTracking = "stopTracking";
    private static final String success = "success";
    private Application mApplication;

    public MOATJSAdapter(Application application) {
        this.mApplication = application;
    }

    private static class FunctionCall {
        String failCallback;
        String name;
        JSONObject params;
        String successCallback;

        private FunctionCall() {
        }
    }

    void call(String params, IronSourceWebView.JSInterface.JSCallbackTask callback, WebView webView) throws Exception {
        FunctionCall fCall = fetchFunctionCall(params);
        if (initWithOptions.equals(fCall.name)) {
            MOATManager.initWithOptions(fCall.params, this.mApplication);
            return;
        }
        if (createAdTracker.equals(fCall.name) && webView != null) {
            MOATManager.createAdTracker(webView);
            return;
        }
        if (startTracking.equals(fCall.name)) {
            MOATManager.setEventListener(createEventListener(callback, fCall.successCallback, fCall.failCallback));
            MOATManager.startTracking();
        } else if (stopTracking.equals(fCall.name)) {
            MOATManager.setEventListener(createEventListener(callback, fCall.successCallback, fCall.failCallback));
            MOATManager.stopTracking();
        }
    }

    private MOATManager.EventsListener createEventListener(final IronSourceWebView.JSInterface.JSCallbackTask callback, final String success2, final String fail2) {
        return new MOATManager.EventsListener() { // from class: com.ironsource.sdk.controller.MOATJSAdapter.1
            @Override // com.moat.analytics.mobile.iro.TrackerListener
            public void onTrackingStarted(String s) {
                if (callback != null) {
                    callback.sendMessage(true, success2, s);
                }
            }

            @Override // com.moat.analytics.mobile.iro.TrackerListener
            public void onTrackingFailedToStart(String s) {
                if (callback != null) {
                    callback.sendMessage(false, fail2, s);
                }
            }

            @Override // com.moat.analytics.mobile.iro.TrackerListener
            public void onTrackingStopped(String s) {
                if (callback != null) {
                    callback.sendMessage(true, success2, s);
                }
            }
        };
    }

    private FunctionCall fetchFunctionCall(String params) throws JSONException {
        JSONObject functionData = new JSONObject(params);
        FunctionCall res = new FunctionCall();
        res.name = functionData.optString(moatFunction);
        res.params = functionData.optJSONObject(moatParams);
        res.successCallback = functionData.optString("success");
        res.failCallback = functionData.optString(fail);
        return res;
    }
}
