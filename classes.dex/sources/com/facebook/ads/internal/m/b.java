package com.facebook.ads.internal.m;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.facebook.ads.internal.p.a.n;
import com.facebook.ads.internal.p.a.p;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static final String a = b.class.getSimpleName();
    private static final String b = com.facebook.ads.internal.o.d.b();
    private final a c;
    private final ConnectivityManager e;
    private final com.facebook.ads.internal.p.a.a f;
    private final long h;
    private final long i;
    private volatile boolean k;
    private int l;
    private long m;
    private final Runnable j = new Runnable() { // from class: com.facebook.ads.internal.m.b.1
        /* JADX WARN: Type inference failed for: r0v5, types: [com.facebook.ads.internal.m.b$1$1] */
        @Override // java.lang.Runnable
        public void run() {
            b.this.k = false;
            if (b.this.d.getQueue().isEmpty()) {
                new AsyncTask<Void, Void, Void>() { // from class: com.facebook.ads.internal.m.b.1.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Void doInBackground(Void... voidArr) {
                        b.b(b.this);
                        if (b.this.m > 0) {
                            try {
                                Thread.sleep(b.this.m);
                            } catch (InterruptedException e) {
                            }
                        }
                        b.this.d();
                        return null;
                    }
                }.executeOnExecutor(b.this.d, new Void[0]);
            }
        }
    };
    private final ThreadPoolExecutor d = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    private final Handler g = new Handler(Looper.getMainLooper());

    interface a {
        JSONObject a();

        boolean a(JSONArray jSONArray);

        void b();

        void b(JSONArray jSONArray);

        boolean c();
    }

    b(Context context, a aVar) {
        this.c = aVar;
        this.e = (ConnectivityManager) context.getSystemService("connectivity");
        this.f = com.facebook.ads.internal.q.c.d.b(context);
        this.h = com.facebook.ads.internal.l.a.h(context);
        this.i = com.facebook.ads.internal.l.a.i(context);
    }

    private void a(long j) {
        this.g.postDelayed(this.j, j);
    }

    static /* synthetic */ int b(b bVar) {
        int i = bVar.l + 1;
        bVar.l = i;
        return i;
    }

    private void c() {
        if (this.l >= 5) {
            e();
            b();
        } else {
            if (this.l == 1) {
                this.m = 2000L;
            } else {
                this.m *= 2;
            }
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void d() {
        try {
            NetworkInfo activeNetworkInfo = this.e.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                a(this.i);
                return;
            }
            JSONObject jSONObjectA = this.c.a();
            if (jSONObjectA == null) {
                e();
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("attempt", String.valueOf(this.l));
            jSONObjectA.put("data", jSONObject);
            p pVar = new p();
            pVar.put("payload", jSONObjectA.toString());
            n nVarB = this.f.b(b, pVar);
            String strE = nVarB != null ? nVarB.e() : null;
            if (TextUtils.isEmpty(strE)) {
                if (jSONObjectA.has(DataBaseEventsStorage.EventEntry.TABLE_NAME)) {
                    this.c.b(jSONObjectA.getJSONArray(DataBaseEventsStorage.EventEntry.TABLE_NAME));
                }
                c();
            } else if (nVarB.a() != 200) {
                if (jSONObjectA.has(DataBaseEventsStorage.EventEntry.TABLE_NAME)) {
                    this.c.b(jSONObjectA.getJSONArray(DataBaseEventsStorage.EventEntry.TABLE_NAME));
                }
                c();
            } else if (!this.c.a(new JSONArray(strE))) {
                c();
            } else if (this.c.c()) {
                c();
            } else {
                e();
            }
        } catch (Exception e) {
            c();
        }
    }

    private void e() {
        this.l = 0;
        this.m = 0L;
        if (this.d.getQueue().size() == 0) {
            this.c.b();
        }
    }

    void a() {
        this.k = true;
        this.g.removeCallbacks(this.j);
        a(this.h);
    }

    void b() {
        if (this.k) {
            return;
        }
        this.k = true;
        this.g.removeCallbacks(this.j);
        a(this.i);
    }
}
