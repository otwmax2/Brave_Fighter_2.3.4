package com.vungle.publisher;

import com.vungle.publisher.cn;
import com.vungle.publisher.hq;
import com.vungle.publisher.im;
import com.vungle.publisher.jh;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class hr extends jh<hr, hq, wm> {

    @Inject
    a w;

    @Inject
    protected hr() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.jh
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public a x() {
        return this.w;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return x();
    }

    @Override // com.vungle.publisher.cn
    protected boolean b() {
        return true;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends jh.a<hr, hq, wm> {

        @Inject
        Provider<hr> e;

        @Inject
        hq.a f;

        @Inject
        im.a g;

        @Inject
        a() {
        }

        @Override // com.vungle.publisher.jh.a
        public hr a(wm wmVar) {
            hr hrVar = (hr) super.a(wmVar);
            hrVar.a(cn.c.ready);
            return hrVar;
        }

        @Override // com.vungle.publisher.cn.a
        protected m a() {
            return m.vungle_streaming;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.jh.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public hq.a k() {
            return this.f;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.jh.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public im.a j() {
            return this.g;
        }

        @Override // com.vungle.publisher.cn.a, com.vungle.publisher.dp.a
        protected String c() {
            return "ad";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public hr[] d(int i) {
            return new hr[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cn.a, com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a */
        public String[] b(int i) {
            return new String[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public hr g_() {
            return this.e.get();
        }
    }
}
