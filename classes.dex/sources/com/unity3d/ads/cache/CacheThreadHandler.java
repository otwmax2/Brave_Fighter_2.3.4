package com.unity3d.ads.cache;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import com.facebook.share.internal.ShareConstants;
import com.unity3d.ads.api.Request;
import com.unity3d.ads.device.Device;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.request.IWebRequestProgressListener;
import com.unity3d.ads.request.NetworkIOException;
import com.unity3d.ads.request.WebRequest;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.WebViewEventCategory;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class CacheThreadHandler extends Handler {
    private WebRequest _currentRequest = null;
    private boolean _canceled = false;
    private boolean _active = false;

    CacheThreadHandler() {
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) throws Throwable {
        Bundle data = msg.getData();
        String source = data.getString(ShareConstants.FEED_SOURCE_PARAM);
        data.remove(ShareConstants.FEED_SOURCE_PARAM);
        String target = data.getString("target");
        data.remove("target");
        int connectTimeout = data.getInt("connectTimeout");
        data.remove("connectTimeout");
        int readTimeout = data.getInt("readTimeout");
        data.remove("readTimeout");
        int progressInterval = data.getInt("progressInterval");
        data.remove("progressInterval");
        HashMap<String, List<String>> headers = null;
        if (data.size() > 0) {
            DeviceLog.debug("There are headers left in data, reading them");
            headers = new HashMap<>();
            for (String k : data.keySet()) {
                List<String> values = Arrays.asList(data.getStringArray(k));
                headers.put(k, values);
            }
        }
        switch (msg.what) {
            case 1:
                File targetFile = new File(target);
                downloadFile(source, target, targetFile.length(), connectTimeout, readTimeout, progressInterval, headers);
                break;
        }
    }

    public void setCancelStatus(boolean canceled) {
        this._canceled = canceled;
        if (canceled && this._currentRequest != null) {
            this._active = false;
            this._currentRequest.cancel();
        }
    }

    public boolean isActive() {
        return this._active;
    }

    private void downloadFile(String source, String target, final long position, int connectTimeout, int readTimeout, final int progressInterval, HashMap<String, List<String>> headers) throws Throwable {
        FileOutputStream fileOutput;
        if (this._canceled || source == null || target == null) {
            return;
        }
        if (position > 0) {
            DeviceLog.debug("Unity Ads cache: resuming download " + source + " to " + target + " at " + position + " bytes");
        } else {
            DeviceLog.debug("Unity Ads cache: start downloading " + source + " to " + target);
        }
        if (!Device.isActiveNetworkConnected()) {
            DeviceLog.debug("Unity Ads cache: download cancelled, no internet connection available");
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.NO_INTERNET, source);
            return;
        }
        this._active = true;
        long startTime = SystemClock.elapsedRealtime();
        File targetFile = new File(target);
        FileOutputStream fileOutput2 = null;
        try {
            try {
                fileOutput = new FileOutputStream(targetFile, position > 0);
            } catch (Throwable th) {
                th = th;
            }
        } catch (NetworkIOException e) {
            e = e;
        } catch (FileNotFoundException e2) {
            e = e2;
        } catch (IllegalStateException e3) {
            e = e3;
        } catch (MalformedURLException e4) {
            e = e4;
        } catch (IOException e5) {
            e = e5;
        }
        try {
            this._currentRequest = getWebRequest(source, position, connectTimeout, readTimeout, headers);
            this._currentRequest.setProgressListener(new IWebRequestProgressListener() { // from class: com.unity3d.ads.cache.CacheThreadHandler.1
                private long lastProgressEventTime = System.currentTimeMillis();

                @Override // com.unity3d.ads.request.IWebRequestProgressListener
                public void onRequestStart(String url, long total, int responseCode, Map<String, List<String>> headers2) {
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_STARTED, url, Long.valueOf(position), Long.valueOf(position + total), Integer.valueOf(responseCode), Request.getResponseHeadersMap(headers2));
                }

                @Override // com.unity3d.ads.request.IWebRequestProgressListener
                public void onRequestProgress(String url, long bytes, long total) {
                    if (progressInterval > 0 && System.currentTimeMillis() - this.lastProgressEventTime > progressInterval) {
                        this.lastProgressEventTime = System.currentTimeMillis();
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_PROGRESS, url, Long.valueOf(bytes), Long.valueOf(total));
                    }
                }
            });
            long total = this._currentRequest.makeStreamRequest(fileOutput);
            this._active = false;
            postProcessDownload(startTime, source, targetFile, total, this._currentRequest.getContentLength(), this._currentRequest.isCanceled(), this._currentRequest.getResponseCode(), this._currentRequest.getResponseHeaders());
            this._currentRequest = null;
            if (fileOutput != null) {
                try {
                    fileOutput.close();
                    fileOutput2 = fileOutput;
                } catch (Exception e6) {
                    DeviceLog.exception("Error closing stream", e6);
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, source, e6.getMessage());
                    fileOutput2 = fileOutput;
                }
            } else {
                fileOutput2 = fileOutput;
            }
        } catch (NetworkIOException e7) {
            e = e7;
            fileOutput2 = fileOutput;
            DeviceLog.exception("Network error", e);
            this._active = false;
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.NETWORK_ERROR, source, e.getMessage());
            this._currentRequest = null;
            if (fileOutput2 != null) {
                try {
                    fileOutput2.close();
                } catch (Exception e8) {
                    DeviceLog.exception("Error closing stream", e8);
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, source, e8.getMessage());
                }
            }
        } catch (FileNotFoundException e9) {
            e = e9;
            fileOutput2 = fileOutput;
            DeviceLog.exception("Couldn't create target file", e);
            this._active = false;
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, source, e.getMessage());
            this._currentRequest = null;
            if (fileOutput2 != null) {
                try {
                    fileOutput2.close();
                } catch (Exception e10) {
                    DeviceLog.exception("Error closing stream", e10);
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, source, e10.getMessage());
                }
            }
        } catch (IllegalStateException e11) {
            e = e11;
            fileOutput2 = fileOutput;
            DeviceLog.exception("Illegal state", e);
            this._active = false;
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.ILLEGAL_STATE, source, e.getMessage());
            this._currentRequest = null;
            if (fileOutput2 != null) {
                try {
                    fileOutput2.close();
                } catch (Exception e12) {
                    DeviceLog.exception("Error closing stream", e12);
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, source, e12.getMessage());
                }
            }
        } catch (MalformedURLException e13) {
            e = e13;
            fileOutput2 = fileOutput;
            DeviceLog.exception("Malformed URL", e);
            this._active = false;
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.MALFORMED_URL, source, e.getMessage());
            this._currentRequest = null;
            if (fileOutput2 != null) {
                try {
                    fileOutput2.close();
                } catch (Exception e14) {
                    DeviceLog.exception("Error closing stream", e14);
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, source, e14.getMessage());
                }
            }
        } catch (IOException e15) {
            e = e15;
            fileOutput2 = fileOutput;
            DeviceLog.exception("Couldn't request stream", e);
            this._active = false;
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, source, e.getMessage());
            this._currentRequest = null;
            if (fileOutput2 != null) {
                try {
                    fileOutput2.close();
                } catch (Exception e16) {
                    DeviceLog.exception("Error closing stream", e16);
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, source, e16.getMessage());
                }
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutput2 = fileOutput;
            this._currentRequest = null;
            if (fileOutput2 != null) {
                try {
                    fileOutput2.close();
                } catch (Exception e17) {
                    DeviceLog.exception("Error closing stream", e17);
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, source, e17.getMessage());
                }
            }
            throw th;
        }
    }

    private void postProcessDownload(long startTime, String source, File targetFile, long byteCount, long totalBytes, boolean canceled, int responseCode, Map<String, List<String>> responseHeaders) {
        long duration = SystemClock.elapsedRealtime() - startTime;
        boolean result = targetFile.setReadable(true, false);
        if (!result) {
            DeviceLog.debug("Unity Ads cache: could not set file readable!");
        }
        if (!canceled) {
            DeviceLog.debug("Unity Ads cache: File " + targetFile.getName() + " of " + byteCount + " bytes downloaded in " + duration + "ms");
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_END, source, Long.valueOf(byteCount), Long.valueOf(totalBytes), Long.valueOf(duration), Integer.valueOf(responseCode), Request.getResponseHeadersMap(responseHeaders));
        } else {
            DeviceLog.debug("Unity Ads cache: downloading of " + source + " stopped");
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_STOPPED, source, Long.valueOf(byteCount), Long.valueOf(totalBytes), Long.valueOf(duration), Integer.valueOf(responseCode), Request.getResponseHeadersMap(responseHeaders));
        }
    }

    private WebRequest getWebRequest(String source, long position, int connectTimeout, int readTimeout, HashMap<String, List<String>> headers) throws MalformedURLException {
        HashMap<String, List<String>> requestHeaders = new HashMap<>();
        if (headers != null) {
            requestHeaders.putAll(headers);
        }
        if (position > 0) {
            ArrayList list = new ArrayList(Arrays.asList("bytes=" + position + "-"));
            requestHeaders.put("Range", list);
        }
        return new WebRequest(source, "GET", requestHeaders, connectTimeout, readTimeout);
    }
}
