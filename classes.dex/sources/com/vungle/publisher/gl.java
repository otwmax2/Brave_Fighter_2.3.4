package com.vungle.publisher;

import com.vungle.publisher.eb;
import com.vungle.publisher.gk;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class gl extends eb<gk, wj, gk.a> {
    @Inject
    gl() {
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends eb.a<gk, wj, gk.a, gl> {

        @Inject
        gl a;

        @Inject
        a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.vungle.publisher.eb.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public gl a() {
            return this.a;
        }
    }
}
