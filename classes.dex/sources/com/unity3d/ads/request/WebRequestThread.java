package com.unity3d.ads.request;

import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.request.WebRequest;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class WebRequestThread extends Thread {
    protected static final int MSG_REQUEST = 1;
    private static WebRequestHandler _handler;
    private static boolean _ready = false;
    private static final Object _readyLock = new Object();

    private static void init() {
        WebRequestThread thread = new WebRequestThread();
        thread.setName("UnityAdsWebRequestThread");
        thread.start();
        while (!_ready) {
            try {
                synchronized (_readyLock) {
                    _readyLock.wait();
                }
            } catch (InterruptedException e) {
                DeviceLog.debug("Couldn't synchronize thread");
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        if (_handler == null) {
            _handler = new WebRequestHandler();
        }
        _ready = true;
        synchronized (_readyLock) {
            _readyLock.notify();
        }
        Looper.loop();
    }

    public static void cancel() {
        if (_handler != null) {
            _handler.removeMessages(1);
            _handler.setCancelStatus(true);
        }
    }

    public static synchronized void request(String url, WebRequest.RequestType requestType, Map<String, List<String>> headers, Integer connectTimeout, Integer readTimeout, IWebRequestListener listener) {
        request(url, requestType, headers, null, connectTimeout, readTimeout, listener);
    }

    public static synchronized void request(String url, WebRequest.RequestType requestType, Map<String, List<String>> headers, String requestBody, Integer connectTimeout, Integer readTimeout, IWebRequestListener listener) {
        request(1, url, requestType, headers, requestBody, connectTimeout, readTimeout, listener, new WebRequestResultReceiver(_handler, listener));
    }

    public static synchronized void request(int msgWhat, String url, WebRequest.RequestType requestType, Map<String, List<String>> headers, String requestBody, Integer connectTimeout, Integer readTimeout, IWebRequestListener listener, WebRequestResultReceiver receiver) {
        if (!_ready) {
            init();
        }
        if (url == null || url.length() < 3) {
            listener.onFailed(url, "Request is NULL or too short");
        } else {
            Bundle params = new Bundle();
            params.putString("url", url);
            params.putString("type", requestType.name());
            params.putString("body", requestBody);
            params.putParcelable("receiver", receiver);
            params.putInt("connectTimeout", connectTimeout.intValue());
            params.putInt("readTimeout", readTimeout.intValue());
            if (headers != null) {
                for (String s : headers.keySet()) {
                    String[] h = new String[headers.get(s).size()];
                    params.putStringArray(s, (String[]) headers.get(s).toArray(h));
                }
            }
            Message msg = new Message();
            msg.what = msgWhat;
            msg.setData(params);
            _handler.setCancelStatus(false);
            _handler.sendMessage(msg);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000c A[Catch: all -> 0x0025, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0005, B:11:0x0016, B:7:0x000c), top: B:16:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized boolean resolve(final java.lang.String r3, final com.unity3d.ads.request.IResolveHostListener r4) {
        /*
            java.lang.Class<com.unity3d.ads.request.WebRequestThread> r1 = com.unity3d.ads.request.WebRequestThread.class
            monitor-enter(r1)
            if (r3 == 0) goto Lc
            int r0 = r3.length()     // Catch: java.lang.Throwable -> L25
            r2 = 3
            if (r0 >= r2) goto L16
        Lc:
            com.unity3d.ads.request.ResolveHostError r0 = com.unity3d.ads.request.ResolveHostError.INVALID_HOST     // Catch: java.lang.Throwable -> L25
            java.lang.String r2 = "Host is NULL"
            r4.onFailed(r3, r0, r2)     // Catch: java.lang.Throwable -> L25
            r0 = 0
        L14:
            monitor-exit(r1)
            return r0
        L16:
            java.lang.Thread r0 = new java.lang.Thread     // Catch: java.lang.Throwable -> L25
            com.unity3d.ads.request.WebRequestThread$1 r2 = new com.unity3d.ads.request.WebRequestThread$1     // Catch: java.lang.Throwable -> L25
            r2.<init>()     // Catch: java.lang.Throwable -> L25
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L25
            r0.start()     // Catch: java.lang.Throwable -> L25
            r0 = 1
            goto L14
        L25:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.request.WebRequestThread.resolve(java.lang.String, com.unity3d.ads.request.IResolveHostListener):boolean");
    }
}
