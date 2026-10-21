package com.moat.analytics.mobile.cha;

import android.os.Handler;
import android.os.Looper;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
final class t {

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    private static t f176;

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    private static final Queue<e> f177 = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private Handler f189;

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    private long f180 = 1800000;

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    private long f178 = 60000;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    volatile int f183 = a.f195;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    volatile boolean f184 = false;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    volatile boolean f181 = false;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    volatile int f179 = 200;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    volatile int f186 = 10;

    /* JADX INFO: renamed from: ˋॱ, reason: contains not printable characters */
    private final AtomicBoolean f182 = new AtomicBoolean(false);

    /* JADX INFO: renamed from: ॱˋ, reason: contains not printable characters */
    private volatile long f188 = 0;

    /* JADX INFO: renamed from: ॱˊ, reason: contains not printable characters */
    private final AtomicInteger f187 = new AtomicInteger(0);

    /* JADX INFO: renamed from: ˏॱ, reason: contains not printable characters */
    private final AtomicBoolean f185 = new AtomicBoolean(false);

    interface b {
        /* JADX INFO: renamed from: ˎ */
        void mo54() throws o;
    }

    interface c {
        /* JADX INFO: renamed from: ˏ */
        void mo172(g gVar) throws o;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static final class a {

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        public static final int f195 = 1;

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        public static final int f194 = 2;

        static {
            int[] iArr = {1, 2};
        }
    }

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    static synchronized t m165() {
        if (f176 == null) {
            f176 = new t();
        }
        return f176;
    }

    private t() {
        try {
            this.f189 = new Handler(Looper.getMainLooper());
        } catch (Exception e2) {
            o.m131(e2);
        }
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    final void m171() {
        if (System.currentTimeMillis() - this.f188 > this.f180) {
            m166(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    public void m166(final long j) {
        if (this.f185.compareAndSet(false, true)) {
            com.moat.analytics.mobile.cha.a.m15(3, "OnOff", this, "Performing status check.");
            new Thread() { // from class: com.moat.analytics.mobile.cha.t.2
                /* JADX WARN: Type inference failed for: r4v0, types: [com.moat.analytics.mobile.cha.t$2$2] */
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    Looper.prepare();
                    Handler handler = new Handler();
                    handler.postDelayed(new d("CHA", handler, new c() { // from class: com.moat.analytics.mobile.cha.t.2.2
                        @Override // com.moat.analytics.mobile.cha.t.c
                        /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
                        public final void mo172(g gVar) throws o {
                            synchronized (t.f177) {
                                boolean z = ((f) MoatAnalytics.getInstance()).f60;
                                if (t.this.f183 != gVar.m61() || (t.this.f183 == a.f195 && z)) {
                                    t.this.f183 = gVar.m61();
                                    if (t.this.f183 == a.f195 && z) {
                                        t.this.f183 = a.f194;
                                    }
                                    if (t.this.f183 == a.f194) {
                                        com.moat.analytics.mobile.cha.a.m15(3, "OnOff", this, "Moat enabled - Version 2.4.1");
                                    }
                                    for (e eVar : t.f177) {
                                        if (t.this.f183 == a.f194) {
                                            eVar.f204.mo54();
                                        }
                                    }
                                }
                                while (!t.f177.isEmpty()) {
                                    t.f177.remove();
                                }
                            }
                        }
                    }), j);
                    Looper.loop();
                }
            }.start();
        }
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    final void m170(b bVar) throws o {
        if (this.f183 == a.f194) {
            bVar.mo54();
            return;
        }
        m159();
        f177.add(new e(Long.valueOf(System.currentTimeMillis()), bVar));
        if (!this.f182.compareAndSet(false, true)) {
            return;
        }
        this.f189.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.cha.t.4
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (t.f177.size() > 0) {
                        t.m159();
                        t.this.f189.postDelayed(this, 60000L);
                    } else {
                        t.this.f182.compareAndSet(true, false);
                        t.this.f189.removeCallbacks(this);
                    }
                } catch (Exception e2) {
                    o.m131(e2);
                }
            }
        }, 60000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    public static void m159() {
        synchronized (f177) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Iterator<e> it = f177.iterator();
            while (it.hasNext()) {
                if (jCurrentTimeMillis - it.next().f202.longValue() >= 60000) {
                    it.remove();
                }
            }
            if (f177.size() >= 15) {
                for (int i = 0; i < 5; i++) {
                    f177.remove();
                }
            }
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        private final String f197;

        /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
        private final AnonymousClass2.C01632 f198;

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        private final Handler f199;

        private d(String str, Handler handler, AnonymousClass2.C01632 c01632) {
            this.f198 = c01632;
            this.f199 = handler;
            this.f197 = "https://z.moatads.com/" + str + "/android/" + "35d482907bc2811c2e46b96f16eb5f9fe00185f3".substring(0, 7) + "/status.json";
        }

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        private String m173() {
            try {
                return m.m109(this.f197 + "?ts=" + System.currentTimeMillis() + "&v=2.4.1").get();
            } catch (Exception e) {
                return null;
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                String strM173 = m173();
                final g gVar = new g(strM173);
                t.this.f184 = gVar.m60();
                t.this.f181 = gVar.m64();
                t.this.f179 = gVar.m63();
                t.this.f186 = gVar.m62();
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.moat.analytics.mobile.cha.t.d.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            mo172(gVar);
                        } catch (Exception e) {
                            o.m131(e);
                        }
                    }
                });
                t.this.f188 = System.currentTimeMillis();
                t.this.f185.compareAndSet(true, false);
                if (strM173 == null) {
                    if (t.this.f187.incrementAndGet() < 10) {
                        t.this.m166(t.this.f178);
                    }
                } else {
                    t.this.f187.set(0);
                }
            } catch (Exception e) {
                o.m131(e);
            }
            this.f199.removeCallbacks(this);
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper != null) {
                looperMyLooper.quit();
            }
        }
    }

    class e {

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        final Long f202;

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        final b f204;

        e(Long l, b bVar) {
            this.f202 = l;
            this.f204 = bVar;
        }
    }
}
