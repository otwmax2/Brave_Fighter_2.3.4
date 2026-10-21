package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import com.vungle.publisher.dp;
import com.vungle.publisher.log.Logger;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class ct extends dp<String> {
    public String a;
    public String b;

    @Inject
    a c;

    @Inject
    protected ct() {
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
        return "ad_placement";
    }

    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public String c_() {
        return this.a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    public void a(String str) {
        this.a = str;
    }

    @Override // com.vungle.publisher.dp
    protected String h_() {
        return "ad_id";
    }

    @Override // com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("ad_id", this.a);
        contentValues.put("placement_reference_id", this.b);
        return contentValues;
    }

    @Override // com.vungle.publisher.dp
    protected int q() {
        String strC = c();
        int iDelete = this.v.getWritableDatabase().delete(strC, "placement_reference_id = ? AND ad_id = ? ", new String[]{this.b, this.a});
        switch (iDelete) {
            case 0:
                Logger.d(Logger.DATABASE_TAG, "no " + strC + " rows updated ");
                return iDelete;
            case 1:
                Logger.d(Logger.DATABASE_TAG, "delete successful " + B());
                return iDelete;
            default:
                Logger.w(Logger.DATABASE_TAG, "deleted " + iDelete + " " + strC + " records");
                return iDelete;
        }
    }

    @Override // com.vungle.publisher.dp, com.vungle.publisher.gj
    public int f_() {
        String strC = c();
        int iA = this.v.a(strC, a(false), "placement_reference_id = ? AND ad_id = ? ", new String[]{this.b, this.a}, 3);
        switch (iA) {
            case 0:
                Logger.d(Logger.DATABASE_TAG, "no " + strC + " rows updated ");
                return iA;
            case 1:
                Logger.d(Logger.DATABASE_TAG, "update successful " + B());
                return iA;
            default:
                Logger.w(Logger.DATABASE_TAG, "updated " + iA + " " + strC + " records");
                return iA;
        }
    }

    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public String e_() {
        return (String) super.e_();
    }

    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public String d_() {
        return (String) super.d_();
    }

    @Override // com.vungle.publisher.dp
    protected boolean i_() {
        return false;
    }

    /* JADX INFO: compiled from: vungle */
    public static class a extends dp.a<ct, String> {

        @Inject
        Provider<ct> a;

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

        public ct a(String str, String str2) {
            ct ctVarG_ = g_();
            ctVarG_.t = String.class;
            ctVarG_.a = str2;
            ctVarG_.b = str;
            return ctVarG_;
        }

        @Override // com.vungle.publisher.dp.a
        public List<String> a(ct... ctVarArr) {
            return super.a((dp[]) ctVarArr);
        }

        @Override // com.vungle.publisher.dp.a
        protected String c() {
            return "ad_placement";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        public ct a(ct ctVar, Cursor cursor, boolean z) {
            ctVar.b = ce.e(cursor, "placement_reference_id");
            ctVar.a = ce.e(cursor, "ad_id");
            return ctVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ct g_() {
            return this.a.get();
        }

        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ct[] d(int i) {
            return new ct[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public String[] b(int i) {
            return new String[i];
        }

        public List<ct> a(String str) {
            return super.a("ad_id = ?", new String[]{str}, (String) null);
        }

        public List<ct> b(String str) {
            return super.a("placement_reference_id = ?", new String[]{str}, (String) null);
        }
    }
}
