package com.vungle.publisher;

import android.database.Cursor;
import com.vungle.publisher.eh;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class jy extends eh {

    @Inject
    a d;

    @Inject
    jy() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.d;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends eh.a<jy, vu, wr> {

        @Inject
        Provider<jy> a;

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

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.vungle.publisher.eh.a
        public Map<jf, List<jy>> a(String str, vu vuVar) {
            if (vuVar == null) {
                return null;
            }
            HashMap map = new HashMap();
            for (String str2 : vuVar.c()) {
                a(str, map, new hf(str2), vuVar.a(str2));
            }
            return map;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.eh.a
        public jy a(jy jyVar, Cursor cursor, boolean z) {
            super.a(jyVar, cursor, z);
            jyVar.c = new hf(ce.e(cursor, "event"));
            return jyVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public jy g_() {
            return this.a.get();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public jy[] d(int i) {
            return new jy[i];
        }
    }
}
