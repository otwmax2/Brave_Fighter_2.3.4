package com.vungle.publisher;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.tr;
import com.vungle.publisher.ts;
import com.vungle.publisher.tw;
import java.io.IOException;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class ue {

    @Inject
    uh a;

    @Inject
    tw.a b;

    @Inject
    ts.a c;

    static {
        if (Build.VERSION.SDK_INT < 8) {
            System.setProperty("http.keepAlive", "false");
        }
    }

    @Inject
    ue() {
    }

    public tw a(tr trVar) {
        long j;
        HttpURLConnection httpURLConnection;
        int i;
        HttpURLConnection httpURLConnection2;
        long j2;
        long j3;
        int responseCode = -1;
        ArrayList arrayList = new ArrayList();
        try {
            tr.b bVarA = trVar.a();
            String strC = trVar.c();
            int i2 = 0;
            j = -1;
            HttpURLConnection httpURLConnection3 = null;
            while (true) {
                if (i2 > 5) {
                    httpURLConnection2 = httpURLConnection3;
                    j2 = j;
                    break;
                }
                try {
                    Logger.d(Logger.NETWORK_TAG, bVarA + " " + strC);
                    HttpURLConnection httpURLConnectionA = this.a.a(strC);
                    try {
                        a(httpURLConnectionA, bVarA);
                        b(httpURLConnectionA, trVar);
                        a(httpURLConnectionA, trVar);
                        responseCode = httpURLConnectionA.getResponseCode();
                        String headerField = httpURLConnectionA.getHeaderField("Retry-After");
                        if (TextUtils.isEmpty(headerField)) {
                            j3 = j;
                        } else {
                            try {
                                j3 = Long.parseLong(headerField);
                            } catch (NumberFormatException e) {
                                j3 = -1;
                            }
                        }
                        try {
                            if (a(i2, responseCode)) {
                                String headerField2 = httpURLConnectionA.getHeaderField("Location");
                                arrayList.add(this.c.a(strC, responseCode, headerField2, httpURLConnectionA.getHeaderFieldDate("Date", -1L) == -1 ? null : Long.valueOf(httpURLConnectionA.getHeaderFieldDate("Date", -1L))));
                                if (b(responseCode)) {
                                    Logger.d(Logger.NETWORK_TAG, a(bVarA, i2, responseCode, httpURLConnectionA.getContentType(), trVar.c(), strC, null));
                                    j2 = j3;
                                    httpURLConnection2 = httpURLConnectionA;
                                    break;
                                }
                                Logger.i(Logger.NETWORK_TAG, a(bVarA, i2, responseCode, httpURLConnectionA.getContentType(), trVar.c(), strC, headerField2));
                                i2++;
                                strC = headerField2;
                                j = j3;
                                httpURLConnection3 = httpURLConnectionA;
                            } else if (b(responseCode)) {
                                Logger.d(Logger.NETWORK_TAG, a(bVarA, i2, responseCode, httpURLConnectionA.getContentType(), trVar.c(), strC, null));
                                j2 = j3;
                                httpURLConnection2 = httpURLConnectionA;
                            } else {
                                Logger.i(Logger.NETWORK_TAG, a(bVarA, i2, responseCode, httpURLConnectionA.getContentType(), trVar.c(), strC, null));
                                j2 = j3;
                                httpURLConnection2 = httpURLConnectionA;
                            }
                        } catch (ConnectException e2) {
                            e = e2;
                            j = j3;
                            httpURLConnection = httpURLConnectionA;
                            Logger.d(Logger.NETWORK_TAG, zb.a(e));
                            i = IronSourceError.BANNER_LOAD_EXCEPTION;
                        } catch (MalformedURLException e3) {
                            e = e3;
                            j = j3;
                            httpURLConnection = httpURLConnectionA;
                            Logger.w(Logger.NETWORK_TAG, zb.a(e));
                            i = IronSourceError.BANNER_INIT_IN_PROGRESS;
                        } catch (SocketTimeoutException e4) {
                            e = e4;
                            j = j3;
                            httpURLConnection = httpURLConnectionA;
                            Logger.d(Logger.NETWORK_TAG, zb.a(e));
                            i = 603;
                        } catch (IOException e5) {
                            e = e5;
                            j = j3;
                            httpURLConnection = httpURLConnectionA;
                            Logger.w(Logger.NETWORK_TAG, zb.a(e));
                            i = IronSourceError.BANNER_INIT_FAILED;
                        }
                    } catch (ConnectException e6) {
                        e = e6;
                        httpURLConnection = httpURLConnectionA;
                    } catch (MalformedURLException e7) {
                        e = e7;
                        httpURLConnection = httpURLConnectionA;
                    } catch (SocketTimeoutException e8) {
                        e = e8;
                        httpURLConnection = httpURLConnectionA;
                    } catch (IOException e9) {
                        e = e9;
                        httpURLConnection = httpURLConnectionA;
                    }
                } catch (ConnectException e10) {
                    httpURLConnection = httpURLConnection3;
                    e = e10;
                } catch (MalformedURLException e11) {
                    httpURLConnection = httpURLConnection3;
                    e = e11;
                } catch (SocketTimeoutException e12) {
                    httpURLConnection = httpURLConnection3;
                    e = e12;
                } catch (IOException e13) {
                    httpURLConnection = httpURLConnection3;
                    e = e13;
                }
            }
            j = j2;
            httpURLConnection = httpURLConnection2;
            i = responseCode;
        } catch (ConnectException e14) {
            e = e14;
            j = -1;
            httpURLConnection = null;
        } catch (MalformedURLException e15) {
            e = e15;
            j = -1;
            httpURLConnection = null;
        } catch (SocketTimeoutException e16) {
            e = e16;
            j = -1;
            httpURLConnection = null;
        } catch (IOException e17) {
            e = e17;
            j = -1;
            httpURLConnection = null;
        }
        return this.b.a(httpURLConnection, i, arrayList, j);
    }

    void a(HttpURLConnection httpURLConnection, tr.b bVar) throws ProtocolException {
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(10000);
        httpURLConnection.setUseCaches(false);
        if (bVar != null) {
            httpURLConnection.setRequestMethod(bVar.toString());
        }
    }

    void a(HttpURLConnection httpURLConnection, tr trVar) throws IOException {
        String strF = trVar.f();
        if (!TextUtils.isEmpty(strF)) {
            Logger.d(Logger.NETWORK_TAG, "request body: " + strF);
            byte[] bytes = strF.getBytes();
            if ("gzip".equals(trVar.e())) {
                int length = bytes.length;
                bytes = zi.a(bytes);
                Logger.v(Logger.NETWORK_TAG, "gzipped request from " + length + " bytes down to " + bytes.length + " bytes");
            }
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setFixedLengthStreamingMode(bytes.length);
            httpURLConnection.getOutputStream().write(bytes);
        }
    }

    void b(HttpURLConnection httpURLConnection, tr trVar) {
        Bundle bundleD = trVar.d();
        if (bundleD != null) {
            for (String str : bundleD.keySet()) {
                if (bundleD.get(str) instanceof String[]) {
                    for (String str2 : bundleD.getStringArray(str)) {
                        Logger.v(Logger.NETWORK_TAG, "request header: " + str + ": " + str2);
                        httpURLConnection.addRequestProperty(str, str2);
                    }
                } else {
                    String strValueOf = String.valueOf(bundleD.get(str));
                    Logger.v(Logger.NETWORK_TAG, "request header: " + str + ": " + strValueOf);
                    httpURLConnection.addRequestProperty(str, strValueOf);
                }
            }
        }
    }

    boolean a(int i, int i2) {
        return i > 0 || a(i2);
    }

    boolean a(int i) {
        return i == 301 || i == 302;
    }

    boolean b(int i) {
        return i == 200;
    }

    String a(tr.b bVar, int i, int i2, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder("HTTP");
        boolean zA = a(i, i2);
        if (zA) {
            sb.append(" redirect count ").append(i).append(',');
        }
        sb.append(" response code ").append(i2).append(", content-type ").append(str).append(" for ").append(bVar).append(" to");
        if (i > 0) {
            sb.append(" original URL ").append(str2).append(',');
        }
        sb.append(" requested URL ").append(str3);
        if (zA) {
            sb.append(", next URL ").append(str4);
        }
        return sb.toString();
    }
}
