package com.vungle.publisher;

import android.os.Bundle;
import com.vungle.publisher.lb;
import com.vungle.publisher.li;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public abstract class lf {

    /* JADX INFO: compiled from: vungle */
    public static abstract class a {
    }

    public abstract void a(Bundle bundle);

    public boolean a() {
        return false;
    }

    public String b() {
        return null;
    }

    public boolean c() {
        return false;
    }

    public String d() {
        return null;
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class b {

        @Inject
        lb.a a;

        @Inject
        li.a b;

        @Inject
        b() {
        }

        public lf a(Bundle bundle) {
            if (bundle.containsKey("webViewRootContentIndexFile")) {
                return this.a.a(bundle);
            }
            if (bundle.containsKey("webViewRootContentString")) {
                return this.b.a(bundle);
            }
            return null;
        }
    }
}
