package com.vungle.publisher;

import android.database.Cursor;
import com.vungle.publisher.da;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class kj extends da<kd> {

    @Inject
    a e;

    @Inject
    kj() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.e;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends da.a<kd, kj> {

        @Inject
        Provider<kj> a;

        @Override // com.vungle.publisher.dp.a
        public /* bridge */ /* synthetic */ int a(List list) {
            return super.a(list);
        }

        @Override // com.vungle.publisher.dp.a
        public /* bridge */ /* synthetic */ List a(String str, String[] strArr) {
            return super.a(str, strArr);
        }

        @Inject
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public kj g_() {
            return this.a.get();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public kj[] d(int i) {
            return new kj[i];
        }

        @Override // com.vungle.publisher.da.a
        protected jf a(Cursor cursor) {
            return new hf(ce.e(cursor, "event"));
        }
    }
}
