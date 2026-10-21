package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import com.vungle.publisher.dp;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class co extends dp<Integer> {

    @Inject
    a a;
    private String b;
    private Integer c;

    @Inject
    co() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.a;
    }

    @Override // com.vungle.publisher.dp
    protected String c() {
        return "errors";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put(h_(), (Integer) this.u);
            contentValues.put("report_id", this.c);
        }
        contentValues.put("code", this.b);
        return contentValues;
    }

    @Override // com.vungle.publisher.dp
    public String toString() {
        return this.b;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends dp.a<co, Integer> {

        @Inject
        Provider<co> a;

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

        public co a(Integer num, String str) {
            co coVarG_ = g_();
            coVarG_.b = str;
            coVarG_.c = num;
            return coVarG_;
        }

        @Override // com.vungle.publisher.dp.a
        protected String c() {
            return "errors";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        public co a(co coVar, Cursor cursor, boolean z) {
            coVar.b = ce.e(cursor, "code");
            coVar.c = ce.c(cursor, "report_id");
            return coVar;
        }

        public List<co> a(Integer num) {
            return a("report_id = ?", new String[]{num.toString()});
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public co g_() {
            return this.a.get();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public co[] d(int i) {
            return new co[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Integer[] b(int i) {
            return new Integer[i];
        }
    }
}
