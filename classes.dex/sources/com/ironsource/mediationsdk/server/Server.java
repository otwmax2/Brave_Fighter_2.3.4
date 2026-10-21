package com.ironsource.mediationsdk.server;

import android.util.Log;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.logger.ThreadExceptionHandler;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Server {
    /* JADX INFO: Access modifiers changed from: private */
    public static void callRequestURL(String requestUrl, boolean hit, int placementId) {
        try {
            String url = ServerURL.getRequestURL(requestUrl, hit, placementId);
            String json = HttpFunctions.getStringFromURL(url);
            new JSONObject(json);
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.NETWORK, "callRequestURL(reqUrl:" + requestUrl + ", hit:" + hit + ")", 1);
        } catch (Throwable e) {
            StringBuilder builder = new StringBuilder("callRequestURL(reqUrl:");
            if (requestUrl == null) {
                builder.append("null");
            } else {
                builder.append(requestUrl);
            }
            builder.append(", hit:").append(hit).append(")");
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.NETWORK, builder.toString() + ", e:" + Log.getStackTraceString(e), 0);
        }
    }

    public static void callAsyncRequestURL(final String requestUrl, final boolean hit, final int placementId) {
        Thread asyncRequestURL = new Thread(new Runnable() { // from class: com.ironsource.mediationsdk.server.Server.1
            @Override // java.lang.Runnable
            public void run() {
                Server.callRequestURL(requestUrl, hit, placementId);
            }
        }, "callAsyncRequestURL");
        asyncRequestURL.setUncaughtExceptionHandler(new ThreadExceptionHandler());
        asyncRequestURL.start();
    }
}
