package com.ironsource.eventsmodule;

import android.os.AsyncTask;
import com.ironsource.sdk.precache.DownloadManager;
import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class EventsSender extends AsyncTask<Object, Void, Boolean> {
    private ArrayList extraData;
    private IEventsSenderResultListener mResultListener;
    private final int SERVER_REQUEST_TIMEOUT = 15000;
    private final String SERVER_REQUEST_METHOD = "POST";
    private final String SERVER_REQUEST_ENCODING = DownloadManager.UTF8_CHARSET;
    private final String CONTENT_TYPE_FIELD = "Content-Type";
    private final String APPLICATION_JSON = "application/json";

    public EventsSender() {
    }

    public EventsSender(IEventsSenderResultListener resultListener) {
        this.mResultListener = resultListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.AsyncTask
    public Boolean doInBackground(Object... objects) {
        try {
            URL requestURL = new URL((String) objects[1]);
            this.extraData = (ArrayList) objects[2];
            HttpURLConnection conn = (HttpURLConnection) requestURL.openConnection();
            conn.setReadTimeout(15000);
            conn.setConnectTimeout(15000);
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setDoInput(true);
            conn.setDoOutput(true);
            OutputStream os = conn.getOutputStream();
            BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(os, DownloadManager.UTF8_CHARSET));
            writer.write((String) objects[0]);
            writer.flush();
            writer.close();
            os.close();
            int responseCode = conn.getResponseCode();
            conn.disconnect();
            return Boolean.valueOf(responseCode == 200);
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Boolean success) {
        if (this.mResultListener != null) {
            this.mResultListener.onEventsSenderResult(this.extraData, success.booleanValue());
        }
    }
}
