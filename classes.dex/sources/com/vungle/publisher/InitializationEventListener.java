package com.vungle.publisher;

import com.vungle.publisher.env.r;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class InitializationEventListener extends pi {

    @Inject
    bw a;

    @Inject
    vc b;

    @Inject
    a c;

    @Inject
    r d;
    private final zs e = new zs();

    @Inject
    InitializationEventListener() {
    }

    public void onEvent(pf event) {
        Logger.d(Logger.DEVICE_TAG, "device ID available");
        a(1);
    }

    public void onEvent(cm event) {
        Logger.d(Logger.DATABASE_TAG, "on database ready");
        a(0);
    }

    public void onEvent(pg event) {
        Logger.d(Logger.DEVICE_TAG, "webview user agent updated");
        a(2);
    }

    private void a(int i) {
        if (this.e.a(i, 1) == 7) {
            if (this.d.b.compareAndSet(false, true)) {
                unregister();
                this.a.a(com.vungle.publisher.a.a(this), 2000L);
            } else {
                Logger.d(Logger.EVENT_TAG, "Already processing initialize, going to drop this request");
            }
        }
    }

    /* synthetic */ void a() {
        this.c.register();
        this.d.g();
        qw.a();
        this.b.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends pi {

        @Inject
        c a;

        @Inject
        yk b;

        @Inject
        r c;

        @Inject
        com.vungle.publisher.log.g d;

        @Inject
        vc e;

        @Inject
        bw f;

        @Inject
        a() {
        }

        public void onEvent(td event) throws Throwable {
            this.c.b.set(false);
            if (event.a()) {
                if (this.c.a.compareAndSet(false, true)) {
                    unregister();
                    this.eventBus.a(new qk());
                    this.b.a();
                    this.a.a();
                    this.c.d();
                    this.f.b(b.a(this), 600000L);
                    return;
                }
                return;
            }
            this.eventBus.a(new qj(new Throwable(event.b())));
        }

        /* synthetic */ void a() {
            this.d.a(this.e);
        }
    }
}
