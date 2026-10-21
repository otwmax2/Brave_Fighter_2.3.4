package com.vungle.publisher;

import java.net.HttpURLConnection;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class tw {
    long a;
    private HttpURLConnection b;
    private int c;
    private String d;
    private List<ts> e;

    @Inject
    tw() {
    }

    public HttpURLConnection a() {
        return this.b;
    }

    void a(int i) {
        this.c = i;
    }

    public int b() {
        return this.c;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a {

        @Inject
        Provider<tw> a;

        @Inject
        a() {
        }

        public tw a(HttpURLConnection httpURLConnection, int i, List<ts> list, long j) {
            tw twVar = this.a.get();
            twVar.b = httpURLConnection;
            twVar.e = list;
            twVar.c = i;
            twVar.d = httpURLConnection == null ? null : String.valueOf(httpURLConnection.getURL());
            twVar.a = j;
            return twVar;
        }
    }
}
