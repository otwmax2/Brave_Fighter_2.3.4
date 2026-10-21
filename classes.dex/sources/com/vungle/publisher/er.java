package com.vungle.publisher;

import com.vungle.publisher.eb;
import com.vungle.publisher.el;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class er extends eb<el, wg, el.a> {
    @Inject
    er() {
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends eb.a<el, wg, el.a, er> {

        @Inject
        er a;

        @Inject
        a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.vungle.publisher.eb.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public er a() {
            return this.a;
        }
    }
}
