package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import com.facebook.share.internal.ShareConstants;
import com.vungle.publisher.dp;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class hk extends dp<String> {
    public boolean a;
    public boolean b;

    @Inject
    a c;

    @Inject
    protected hk() {
    }

    @Override // com.vungle.publisher.dp
    protected StringBuilder p() {
        return super.p();
    }

    @Override // com.vungle.publisher.dp
    public String toString() {
        return super.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.c;
    }

    @Override // com.vungle.publisher.dp
    protected String c() {
        return "placement";
    }

    @Override // com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put(h_(), c_());
        }
        contentValues.put("is_auto_cached", Boolean.valueOf(this.a));
        contentValues.put("is_incentivized", Boolean.valueOf(this.b));
        return contentValues;
    }

    @Override // com.vungle.publisher.dp
    protected boolean i_() {
        return false;
    }

    /* JADX INFO: compiled from: vungle */
    public static class a extends dp.a<hk, String> {

        @Inject
        Provider<hk> a;

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

        public hk[] d(List<s> list) {
            hk[] hkVarArrD = d(list.size());
            int i = 0;
            Iterator<s> it = list.iterator();
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    s next = it.next();
                    hkVarArrD[i2] = g_();
                    hkVarArrD[i2].t = String.class;
                    hkVarArrD[i2].a(next.a);
                    hkVarArrD[i2].a = next.b;
                    hkVarArrD[i2].b = next.c;
                    i = i2 + 1;
                } else {
                    return hkVarArrD;
                }
            }
        }

        @Override // com.vungle.publisher.dp.a
        public List<String> a(hk... hkVarArr) {
            return super.a((dp[]) hkVarArr);
        }

        public int b(hk... hkVarArr) {
            int i = 0;
            for (hk hkVar : hkVarArr) {
                if (hkVar.e_() != null) {
                    i++;
                }
            }
            return i;
        }

        @Override // com.vungle.publisher.dp.a
        protected String c() {
            return "placement";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        public hk a(hk hkVar, Cursor cursor, boolean z) {
            hkVar.a(ce.e(cursor, ShareConstants.WEB_DIALOG_PARAM_ID));
            hkVar.a = ce.a(cursor, "is_auto_cached").booleanValue();
            hkVar.b = ce.a(cursor, "is_incentivized").booleanValue();
            return hkVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public hk g_() {
            return this.a.get();
        }

        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public hk[] d(int i) {
            return new hk[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public String[] b(int i) {
            return new String[i];
        }
    }
}
