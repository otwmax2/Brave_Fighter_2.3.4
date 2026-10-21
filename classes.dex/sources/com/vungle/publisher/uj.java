package com.vungle.publisher;

import com.vungle.publisher.log.Logger;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class uj {
    static final String a = "ISO-8859-1";
    private static final Pattern b = Pattern.compile("\\bcharset=([\\w\\-]+)\\b");

    @Inject
    public uj() {
    }

    public String a(HttpURLConnection httpURLConnection) throws Throwable {
        InputStreamReader inputStreamReader = null;
        try {
            int responseCode = httpURLConnection.getResponseCode();
            String strA = a(httpURLConnection.getContentType());
            Logger.v(Logger.NETWORK_TAG, "response character set: " + strA);
            InputStream inputStream = a(responseCode) ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream();
            if (zk.f(strA)) {
                strA = a;
            }
            InputStreamReader inputStreamReader2 = new InputStreamReader(inputStream, strA);
            try {
                StringBuilder sb = new StringBuilder();
                char[] cArr = new char[8192];
                while (true) {
                    int i = inputStreamReader2.read(cArr);
                    if (i <= 0) {
                        break;
                    }
                    sb.append(cArr, 0, i);
                }
                String string = sb.toString();
                Logger.d(Logger.NETWORK_TAG, "response body: " + string);
                if (inputStreamReader2 != null) {
                    try {
                        inputStreamReader2.close();
                    } catch (IOException e) {
                        Logger.e(Logger.NETWORK_TAG, "error closing input stream " + httpURLConnection.getURL(), e);
                    }
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return string;
            } catch (Throwable th) {
                th = th;
                inputStreamReader = inputStreamReader2;
                if (inputStreamReader != null) {
                    try {
                        inputStreamReader.close();
                    } catch (IOException e2) {
                        Logger.e(Logger.NETWORK_TAG, "error closing input stream " + httpURLConnection.getURL(), e2);
                    }
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private boolean a(int i) {
        return i / 100 <= 3;
    }

    String a(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = b.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        return matcher.group(1);
    }
}
