package com.facebook.ads.internal.d;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.ads.internal.p.b.f;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private static final String a = d.class.getSimpleName();
    private static d b;
    private final Future<f> c;

    private d(final Context context) {
        this.c = Executors.newSingleThreadExecutor().submit(new Callable<f>() { // from class: com.facebook.ads.internal.d.d.1
            @Override // java.util.concurrent.Callable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public f call() {
                return new f(context);
            }
        });
    }

    public static d a(Context context) {
        if (b == null) {
            Context applicationContext = context.getApplicationContext();
            synchronized (d.class) {
                if (b == null) {
                    b = new d(applicationContext);
                }
            }
        }
        return b;
    }

    @Nullable
    private f a() {
        try {
            return this.c.get(500L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            Log.e(a, "Timed out waiting for cache server.", e);
            return null;
        }
    }

    public void a(String str) {
        f fVarA = a();
        if (fVarA != null) {
            fVarA.a(str);
        }
    }

    @Nullable
    public String b(String str) {
        f fVarA = a();
        if (fVarA == null) {
            return null;
        }
        return fVarA.b(str);
    }
}
