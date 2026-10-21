package com.facebook.ads.internal.p.a;

import android.os.Build;
import com.google.android.gms.games.GamesStatusCodes;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static int[] f = new int[20];
    private static final String g = a.class.getSimpleName();
    private boolean j;
    private Set<String> k;
    private Set<String> l;
    protected final d b = new e();
    protected r c = new g();
    protected int d = 2000;
    protected int e = GamesStatusCodes.STATUS_MILESTONE_CLAIMED_PREVIOUSLY;
    private int h = 3;
    private Map<String, String> i = new TreeMap();
    protected final q a = new f() { // from class: com.facebook.ads.internal.p.a.a.1
    };

    static {
        c();
        if (Build.VERSION.SDK_INT > 8) {
            a();
        }
    }

    public static void a() {
        if (CookieHandler.getDefault() == null) {
            CookieHandler.setDefault(new CookieManager());
        }
    }

    private static void c() {
        if (Build.VERSION.SDK_INT < 8) {
            System.setProperty("http.keepAlive", "false");
        }
    }

    private void c(HttpURLConnection httpURLConnection) {
        for (String str : this.i.keySet()) {
            httpURLConnection.setRequestProperty(str, this.i.get(str));
        }
    }

    protected int a(int i) {
        return f[i + 2] * 1000;
    }

    protected int a(HttpURLConnection httpURLConnection, byte[] bArr) {
        OutputStream outputStreamA = null;
        try {
            outputStreamA = this.a.a(httpURLConnection);
            if (outputStreamA != null) {
                this.a.a(outputStreamA, bArr);
            }
            return httpURLConnection.getResponseCode();
        } finally {
            if (outputStreamA != null) {
                try {
                    outputStreamA.close();
                } catch (Exception e) {
                }
            }
        }
    }

    public a a(String str, String str2) {
        this.i.put(str, str2);
        return this;
    }

    public n a(l lVar) throws Throwable {
        n nVarA;
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (int i = 0; i < this.h; i++) {
            try {
                c(a(i));
                if (this.c.a()) {
                    this.c.a((i + 1) + "of" + this.h + ", trying " + lVar.a());
                }
                jCurrentTimeMillis = System.currentTimeMillis();
                nVarA = a(lVar.a(), lVar.b(), lVar.c(), lVar.d());
            } catch (m e) {
                if (a(e, jCurrentTimeMillis) && i < this.h - 1) {
                    continue;
                } else {
                    if (!this.a.a(e) || i >= this.h - 1) {
                        throw e;
                    }
                    try {
                        Thread.sleep(this.d);
                    } catch (InterruptedException e2) {
                        throw e;
                    }
                }
            }
            if (nVarA != null) {
                return nVarA;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.facebook.ads.internal.p.a.n a(java.lang.String r9, com.facebook.ads.internal.p.a.j r10, java.lang.String r11, byte[] r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 290
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.p.a.a.a(java.lang.String, com.facebook.ads.internal.p.a.j, java.lang.String, byte[]):com.facebook.ads.internal.p.a.n");
    }

    public n a(String str, p pVar) {
        return b(new i(str, pVar));
    }

    public n a(String str, String str2, byte[] bArr) {
        return b(new k(str, null, str2, bArr));
    }

    protected n a(HttpURLConnection httpURLConnection) throws Throwable {
        InputStream inputStreamB;
        byte[] bArrA = null;
        try {
            inputStreamB = this.a.b(httpURLConnection);
            if (inputStreamB != null) {
                try {
                    bArrA = this.a.a(inputStreamB);
                } catch (Throwable th) {
                    th = th;
                    if (inputStreamB != null) {
                        try {
                            inputStreamB.close();
                        } catch (Exception e) {
                        }
                    }
                    throw th;
                }
            }
            n nVar = new n(httpURLConnection, bArrA);
            if (inputStreamB != null) {
                try {
                    inputStreamB.close();
                } catch (Exception e2) {
                }
            }
            return nVar;
        } catch (Throwable th2) {
            th = th2;
            inputStreamB = null;
        }
    }

    protected HttpURLConnection a(String str) {
        try {
            new URL(str);
            return this.a.a(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(str + " is not a valid URL", e);
        }
    }

    protected void a(l lVar, b bVar) {
        this.b.a(this, bVar).a(lVar);
    }

    public void a(String str, p pVar, b bVar) {
        a(new k(str, pVar), bVar);
    }

    protected void a(HttpURLConnection httpURLConnection, j jVar, String str) {
        httpURLConnection.setConnectTimeout(this.d);
        httpURLConnection.setReadTimeout(this.e);
        this.a.a(httpURLConnection, jVar, str);
    }

    public void a(Set<String> set) {
        this.l = set;
    }

    protected boolean a(Throwable th, long j) {
        long jCurrentTimeMillis = (System.currentTimeMillis() - j) + 10;
        if (this.c.a()) {
            this.c.a("ELAPSED TIME = " + jCurrentTimeMillis + ", CT = " + this.d + ", RT = " + this.e);
        }
        return this.j ? jCurrentTimeMillis >= ((long) this.e) : jCurrentTimeMillis >= ((long) this.d);
    }

    public n b(l lVar) {
        try {
            return a(lVar.a(), lVar.b(), lVar.c(), lVar.d());
        } catch (m e) {
            this.a.a(e);
            return null;
        } catch (Exception e2) {
            this.a.a(new m(e2, null));
            return null;
        }
    }

    public n b(String str, p pVar) {
        return b(new k(str, pVar));
    }

    protected n b(HttpURLConnection httpURLConnection) throws Throwable {
        InputStream errorStream;
        byte[] bArrA = null;
        try {
            errorStream = httpURLConnection.getErrorStream();
            if (errorStream != null) {
                try {
                    bArrA = this.a.a(errorStream);
                } catch (Throwable th) {
                    th = th;
                    if (errorStream != null) {
                        try {
                            errorStream.close();
                        } catch (Exception e) {
                        }
                    }
                    throw th;
                }
            }
            n nVar = new n(httpURLConnection, bArrA);
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (Exception e2) {
                }
            }
            return nVar;
        } catch (Throwable th2) {
            th = th2;
            errorStream = null;
        }
    }

    public p b() {
        return new p();
    }

    public void b(int i) {
        if (i < 1 || i > 18) {
            throw new IllegalArgumentException("Maximum retries must be between 1 and 18");
        }
        this.h = i;
    }

    public void b(Set<String> set) {
        this.k = set;
    }

    public void c(int i) {
        this.d = i;
    }
}
