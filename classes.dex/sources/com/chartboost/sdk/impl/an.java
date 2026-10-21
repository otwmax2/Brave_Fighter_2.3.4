package com.chartboost.sdk.impl;

import android.os.Handler;
import com.chartboost.sdk.Model.CBError;
import java.io.BufferedInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class an<T> implements Comparable<an>, Runnable {
    public final ad<T> a;
    private final Executor b;
    private final ao c;
    private final ai d;
    private final com.chartboost.sdk.Libraries.i e;
    private final Handler f;
    private af<T> g;
    private ag h;

    an(Executor executor, ao aoVar, ai aiVar, com.chartboost.sdk.Libraries.i iVar, Handler handler, ad<T> adVar) {
        this.b = executor;
        this.c = aoVar;
        this.d = aiVar;
        this.e = iVar;
        this.f = handler;
        this.a = adVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.lang.Runnable
    public void run() {
        if (this.g != null) {
            try {
                if (this.g.b == null) {
                    this.a.a(this.g.a, this.h);
                } else {
                    this.a.a(this.g.b, this.h);
                }
                return;
            } catch (Exception e) {
                com.chartboost.sdk.Tracking.a.a(getClass(), "deliver result", e);
                return;
            }
        }
        if (this.a.e.compareAndSet(0, 1)) {
            long jB = this.e.b();
            try {
                try {
                    if (this.d.b()) {
                        this.h = a(this.a);
                        int i = this.h.a;
                        if (i < 200 || i >= 300) {
                            this.g = af.a(new CBError(CBError.a.NETWORK_FAILURE, "Failure due to HTTP status code " + i));
                        } else {
                            this.g = this.a.a(this.h);
                        }
                    } else {
                        this.g = af.a(new CBError(CBError.a.INTERNET_UNAVAILABLE, "Internet Unavailable"));
                    }
                    this.a.g = this.e.b() - jB;
                    switch (this.a.j) {
                        case 0:
                            this.f.post(this);
                            return;
                        case 1:
                            this.b.execute(this);
                            return;
                        default:
                            return;
                    }
                } catch (Throwable th) {
                    this.g = af.a(new CBError(CBError.a.NETWORK_FAILURE, th.toString()));
                    this.a.g = this.e.b() - jB;
                    switch (this.a.j) {
                        case 0:
                            this.f.post(this);
                            return;
                        case 1:
                            this.b.execute(this);
                            return;
                        default:
                            return;
                    }
                }
            } catch (Throwable th2) {
                this.a.g = this.e.b() - jB;
                switch (this.a.j) {
                    case 0:
                        this.f.post(this);
                        throw th2;
                    case 1:
                        this.b.execute(this);
                        throw th2;
                    default:
                        throw th2;
                }
            }
        }
    }

    private ag a(ad<T> adVar) throws IOException {
        int i = 10000;
        int i2 = 0;
        while (true) {
            try {
                return a(adVar, i);
            } catch (SocketTimeoutException e) {
                if (i2 < 1) {
                    i *= 2;
                    i2++;
                } else {
                    throw e;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v23 */
    private ag a(ad<T> adVar, int i) throws IOException {
        byte[] bArrB;
        InputStream errorStream;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        DataOutputStream dataOutputStream;
        ?? r2 = 0;
        r2 = 0;
        ae aeVarA = adVar.a();
        Map<String, String> map = aeVarA.a;
        HttpURLConnection httpURLConnectionA = this.c.a(adVar);
        httpURLConnectionA.setConnectTimeout(i);
        httpURLConnectionA.setReadTimeout(i);
        httpURLConnectionA.setUseCaches(false);
        httpURLConnectionA.setDoInput(true);
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    httpURLConnectionA.addRequestProperty(str, map.get(str));
                }
            } finally {
                httpURLConnectionA.disconnect();
            }
        }
        httpURLConnectionA.setRequestMethod(adVar.b);
        if (adVar.b.equals("POST") && aeVarA.b != null) {
            httpURLConnectionA.setDoOutput(true);
            httpURLConnectionA.setFixedLengthStreamingMode(aeVarA.b.length);
            if (aeVarA.c != null) {
                httpURLConnectionA.addRequestProperty("Content-Type", aeVarA.c);
            }
            try {
                dataOutputStream = new DataOutputStream(httpURLConnectionA.getOutputStream());
                try {
                    dataOutputStream.write(aeVarA.b);
                    if (dataOutputStream != null) {
                        try {
                            dataOutputStream.close();
                        } catch (IOException e) {
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    if (dataOutputStream != null) {
                        try {
                            dataOutputStream.close();
                        } catch (IOException e2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                dataOutputStream = null;
            }
        }
        long jB = this.e.b();
        try {
            int responseCode = httpURLConnectionA.getResponseCode();
            long jB2 = this.e.b();
            adVar.h = jB2 - jB;
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            try {
                if (a(responseCode)) {
                    try {
                        if (adVar.f != null) {
                            File file = new File(adVar.f.getParentFile(), adVar.f.getName() + ".tmp");
                            bArrB = new byte[0];
                            try {
                                InputStream inputStream2 = httpURLConnectionA.getInputStream();
                                try {
                                    fileOutputStream = new FileOutputStream(file);
                                } catch (Throwable th3) {
                                    th = th3;
                                    inputStream = inputStream2;
                                }
                                try {
                                    bh.a(inputStream2, fileOutputStream);
                                    if (inputStream2 != null) {
                                        try {
                                            inputStream2.close();
                                        } catch (IOException e3) {
                                        }
                                    }
                                    if (fileOutputStream != null) {
                                        try {
                                            fileOutputStream.close();
                                        } catch (IOException e4) {
                                        }
                                    }
                                    if (!file.renameTo(adVar.f)) {
                                        if (!file.delete()) {
                                            throw new IOException("Unable to delete " + file.getAbsolutePath() + " after failing to rename to " + adVar.f.getAbsolutePath());
                                        }
                                        throw new IOException("Unable to move " + file.getAbsolutePath() + " to " + adVar.f.getAbsolutePath());
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    r2 = fileOutputStream;
                                    inputStream = inputStream2;
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException e5) {
                                        }
                                    }
                                    if (r2 != 0) {
                                        try {
                                            r2.close();
                                            throw th;
                                        } catch (IOException e6) {
                                            throw th;
                                        }
                                    }
                                    throw th;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                inputStream = null;
                            }
                        } else {
                            try {
                                errorStream = httpURLConnectionA.getInputStream();
                            } catch (IOException e7) {
                                errorStream = httpURLConnectionA.getErrorStream();
                            }
                            if (errorStream != null) {
                                bArrB = bh.b(new BufferedInputStream(errorStream));
                            } else {
                                bArrB = new byte[0];
                            }
                            if (errorStream != null) {
                                try {
                                    errorStream.close();
                                } catch (IOException e8) {
                                }
                            }
                        }
                    } catch (Throwable th6) {
                        if (0 != 0) {
                            try {
                                r2.close();
                            } catch (IOException e9) {
                            }
                        }
                        throw th6;
                    }
                } else {
                    bArrB = new byte[0];
                }
                adVar.i = this.e.b() - jB2;
                return new ag(responseCode, bArrB);
            } catch (Throwable th7) {
                adVar.i = this.e.b() - jB2;
                throw th7;
            }
        } catch (Throwable th8) {
            adVar.h = this.e.b() - jB;
            throw th8;
        }
    }

    private static boolean a(int i) {
        return ((100 <= i && i < 200) || i == 204 || i == 304) ? false : true;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(an anVar) {
        return this.a.d - anVar.a.d;
    }
}
