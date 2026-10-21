package com.facebook.ads.internal.f;

import android.content.Context;
import android.os.Process;
import android.support.annotation.Nullable;
import com.facebook.ads.internal.q.a.m;
import com.facebook.ads.internal.q.a.p;
import java.lang.Thread;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class c implements Thread.UncaughtExceptionHandler {
    private final Thread.UncaughtExceptionHandler a;
    private final Context b;
    private final Map<String, String> c;

    public c(@Nullable Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Context context, Map<String, String> map) {
        this.a = uncaughtExceptionHandler;
        if (context == null) {
            throw new IllegalArgumentException("Missing Context");
        }
        this.b = context.getApplicationContext();
        this.c = map;
    }

    private void a(Thread thread, Throwable th) {
        if (this.a != null) {
            this.a.uncaughtException(thread, th);
            return;
        }
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable th2) {
        }
        try {
            System.exit(10);
        } catch (Throwable th3) {
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            String strA = p.a(th);
            if (strA != null && strA.contains("com.facebook.ads")) {
                e.a(new d(m.b(), m.c(), new b(strA, this.c).a()), this.b);
            }
        } catch (Exception e) {
        }
        a(thread, th);
    }
}
