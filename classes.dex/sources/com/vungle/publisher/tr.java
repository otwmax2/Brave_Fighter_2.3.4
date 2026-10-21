package com.vungle.publisher;

import android.os.Bundle;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public abstract class tr {
    private static final Pattern a = Pattern.compile("^https://");
    private String b;
    private Bundle c;
    private String d;

    /* JADX INFO: compiled from: vungle */
    public enum b {
        GET,
        HEAD,
        POST
    }

    /* JADX INFO: compiled from: vungle */
    public enum c {
        download,
        reportAd,
        requestConfig,
        requestLocalAd,
        requestWillPlayAd,
        trackEvent,
        trackInstall,
        unfilledAd,
        reportExceptions,
        appFingerprint
    }

    protected abstract b a();

    protected abstract c b();

    protected tr() {
    }

    public final String c() {
        return this.b;
    }

    public final void a(String str) {
        this.b = str;
    }

    public final void a(Bundle bundle) {
        this.c = bundle;
    }

    public final Bundle d() {
        return this.c;
    }

    public final String b(String str) {
        if (this.c == null) {
            return null;
        }
        return this.c.getString(str);
    }

    public final String e() {
        return b("Content-Encoding");
    }

    public final String f() {
        return this.d;
    }

    public String toString() {
        return "{" + b() + "}";
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class a<T extends tr> {
        protected abstract T b();

        protected a() {
        }

        protected T c() {
            T t = (T) b();
            t.a(new Bundle());
            return t;
        }
    }
}
