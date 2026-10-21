package com.moat.analytics.mobile.iro;

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
    private static final Queue<b> f397 = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    private static t f398;

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private Handler f410;

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    private long f401 = 1800000;

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    private long f399 = 60000;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    volatile int f402 = c.f418;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    volatile boolean f404 = false;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    volatile boolean f405 = false;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    volatile int f407 = 200;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    volatile int f400 = 10;

    /* JADX INFO: renamed from: ॱˊ, reason: contains not printable characters */
    private final AtomicBoolean f408 = new AtomicBoolean(false);

    /* JADX INFO: renamed from: ॱˋ, reason: contains not printable characters */
    private volatile long f409 = 0;

    /* JADX INFO: renamed from: ˋॱ, reason: contains not printable characters */
    private final AtomicInteger f403 = new AtomicInteger(0);

    /* JADX INFO: renamed from: ˏॱ, reason: contains not printable characters */
    private final AtomicBoolean f406 = new AtomicBoolean(false);

    interface a {
        /* JADX INFO: renamed from: ॱ */
        void mo286() throws o;
    }

    interface e {
        /* JADX INFO: renamed from: ˋ */
        void mo351(i iVar) throws o;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static final class c {

        /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
        public static final int f418 = 1;

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        public static final int f419 = 2;

        static {
            int[] iArr = {1, 2};
        }
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    static synchronized t m340() {
        if (f398 == null) {
            f398 = new t();
        }
        return f398;
    }

    private t() {
        try {
            this.f410 = new Handler(Looper.getMainLooper());
        } catch (Exception e2) {
            o.m311(e2);
        }
    }

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    final void m349() {
        if (System.currentTimeMillis() - this.f409 > this.f401) {
            m342(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    public void m342(final long j) {
        if (this.f406.compareAndSet(false, true)) {
            com.moat.analytics.mobile.iro.b.m203(3, "OnOff", this, "Performing status check.");
            new Thread() { // from class: com.moat.analytics.mobile.iro.t.5
                /* JADX WARN: Type inference failed for: r4v0, types: [com.moat.analytics.mobile.iro.t$5$2] */
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    Looper.prepare();
                    Handler handler = new Handler();
                    handler.postDelayed(new d("IRO", handler, new e() { // from class: com.moat.analytics.mobile.iro.t.5.2
                        @Override // com.moat.analytics.mobile.iro.t.e
                        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
                        public final void mo351(i iVar) throws o {
                            synchronized (t.f397) {
                                boolean z = ((j) MoatAnalytics.getInstance()).f343;
                                if (t.this.f402 != iVar.m281() || (t.this.f402 == c.f418 && z)) {
                                    t.this.f402 = iVar.m281();
                                    if (t.this.f402 == c.f418 && z) {
                                        t.this.f402 = c.f419;
                                    }
                                    if (t.this.f402 == c.f419) {
                                        com.moat.analytics.mobile.iro.b.m203(3, "OnOff", this, "Moat enabled - Version 2.4.0");
                                    }
                                    for (b bVar : t.f397) {
                                        if (t.this.f402 == c.f419) {
                                            bVar.f415.mo286();
                                        }
                                    }
                                }
                                while (!t.f397.isEmpty()) {
                                    t.f397.remove();
                                }
                            }
                        }
                    }), j);
                    Looper.loop();
                }
            }.start();
        }
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    final void m350(a aVar) throws o {
        if (this.f402 == c.f419) {
            aVar.mo286();
            return;
        }
        m338();
        f397.add(new b(Long.valueOf(System.currentTimeMillis()), aVar));
        if (!this.f408.compareAndSet(false, true)) {
            return;
        }
        this.f410.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.iro.t.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (t.f397.size() > 0) {
                        t.m338();
                        t.this.f410.postDelayed(this, 60000L);
                    } else {
                        t.this.f408.compareAndSet(true, false);
                        t.this.f410.removeCallbacks(this);
                    }
                } catch (Exception e2) {
                    o.m311(e2);
                }
            }
        }, 60000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    public static void m338() {
        synchronized (f397) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Iterator<b> it = f397.iterator();
            while (it.hasNext()) {
                if (jCurrentTimeMillis - it.next().f417.longValue() >= 60000) {
                    it.remove();
                }
            }
            if (f397.size() >= 15) {
                for (int i = 0; i < 5; i++) {
                    f397.remove();
                }
            }
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        private final Handler f420;

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        private final AnonymousClass5.AnonymousClass2 f421;

        /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
        private final String f422;

        private d(String str, Handler handler, AnonymousClass5.AnonymousClass2 anonymousClass2) {
            this.f421 = anonymousClass2;
            this.f420 = handler;
            this.f422 = "https://z.moatads.com/" + str + "/android/" + "2bc3418b93f01686fcbd1ebebcc04694651821b2".substring(0, 7) + "/status.json";
        }

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        private String m353() {
            try {
                return l.m307(this.f422 + "?ts=" + System.currentTimeMillis() + "&v=2.4.0").get();
            } catch (Exception e) {
                return null;
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                String strM353 = m353();
                final i iVar = new i(strM353);
                t.this.f404 = iVar.m278();
                t.this.f405 = iVar.m280();
                t.this.f407 = iVar.m279();
                t.this.f400 = iVar.m282();
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.moat.analytics.mobile.iro.t.d.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            mo351(iVar);
                        } catch (Exception e) {
                            o.m311(e);
                        }
                    }
                });
                t.this.f409 = System.currentTimeMillis();
                t.this.f406.compareAndSet(true, false);
                if (strM353 == null) {
                    if (t.this.f403.incrementAndGet() < 10) {
                        t.this.m342(t.this.f399);
                    }
                } else {
                    t.this.f403.set(0);
                }
            } catch (Exception e) {
                o.m311(e);
            }
            this.f420.removeCallbacks(this);
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper != null) {
                looperMyLooper.quit();
            }
        }
    }

    class b {

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        final a f415;

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        final Long f417;

        b(Long l, a aVar) {
            this.f417 = l;
            this.f415 = aVar;
        }
    }
}
