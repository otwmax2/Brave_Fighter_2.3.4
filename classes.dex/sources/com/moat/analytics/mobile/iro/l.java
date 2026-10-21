package com.moat.analytics.mobile.iro;

import com.ironsource.sdk.precache.DownloadManager;
import com.moat.analytics.mobile.iro.base.functional.Optional;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
final class l {
    l() {
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static String m306(InputStream inputStream) throws IOException {
        char[] cArr = new char[256];
        StringBuilder sb = new StringBuilder();
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, DownloadManager.UTF8_CHARSET);
        int i = 0;
        do {
            int i2 = inputStreamReader.read(cArr, 0, 256);
            if (i2 <= 0) {
                break;
            }
            i += i2;
            sb.append(cArr, 0, i2);
        } while (i < 1024);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.IOException] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    static Optional<String> m307(String str) {
        Optional<String> optionalEmpty;
        ?? e = 0;
        e = 0;
        e = 0;
        try {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setReadTimeout(10000);
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() >= 400) {
                    optionalEmpty = Optional.empty();
                } else {
                    e = httpURLConnection.getInputStream();
                    optionalEmpty = Optional.of(m306(e));
                    if (e != 0) {
                        try {
                            e.close();
                        } catch (IOException e2) {
                            e = e2;
                        }
                    }
                }
            } catch (IOException e3) {
                optionalEmpty = Optional.empty();
                if (e != 0) {
                    try {
                        e.close();
                    } catch (IOException e4) {
                    }
                }
            }
            return optionalEmpty;
        } catch (Throwable th) {
            if (e != 0) {
                try {
                    e.close();
                } catch (IOException e5) {
                }
            }
            throw th;
        }
    }
}
