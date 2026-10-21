package com.ironsource.sdk.utils;

import android.os.AsyncTask;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class IronSourceAsyncHttpRequestTask extends AsyncTask<String, Integer, Integer> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Integer doInBackground(String... urls) throws Throwable {
        URL url;
        HttpURLConnection urlConnection = null;
        try {
            try {
                url = new URL(urls[0]);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            urlConnection = (HttpURLConnection) url.openConnection();
            urlConnection.setConnectTimeout(3000);
            urlConnection.getInputStream();
            if (urlConnection != null) {
                urlConnection.disconnect();
            }
        } catch (Exception e2) {
            e = e2;
            e.printStackTrace();
            if (urlConnection != null) {
                urlConnection.disconnect();
            }
        } catch (Throwable th2) {
            th = th2;
            if (urlConnection != null) {
                urlConnection.disconnect();
            }
            throw th;
        }
        return 1;
    }
}
