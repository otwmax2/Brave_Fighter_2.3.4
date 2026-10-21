package com.vungle.publisher;

import com.vungle.publisher.bw;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class py extends pi {
    VungleInitListener a;

    @Inject
    bw b;

    @Inject
    py() {
    }

    public void onEvent(qk event) {
        a(pz.a(this));
    }

    /* synthetic */ void a() {
        if (this.a != null) {
            this.a.onSuccess();
            this.a = null;
            unregister();
        }
    }

    public void onEvent(qj event) {
        a(qa.a(this, event));
    }

    /* synthetic */ void a(qj qjVar) {
        if (this.a != null) {
            this.a.onFailure(qjVar.a);
            this.a = null;
            unregister();
        }
    }

    private void a(Runnable runnable) {
        this.b.a(runnable, bw.b.clientEvent);
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a {

        @Inject
        Provider<py> a;

        @Inject
        a() {
        }

        public py a(VungleInitListener vungleInitListener) {
            py pyVar = this.a.get();
            pyVar.a = vungleInitListener;
            return pyVar;
        }
    }
}
