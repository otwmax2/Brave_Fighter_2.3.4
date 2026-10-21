package com.vungle.publisher;

import android.text.TextUtils;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class hp {
    public final String a;
    public final String[] b;
    public final String c;
    public final String[] d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;

    private hp(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
        this.g = aVar.g;
        this.h = aVar.h;
    }

    public String a() {
        String strA = zk.a(this.b);
        String strA2 = zk.a(this.d);
        return (TextUtils.isEmpty(this.a) ? "" : "table: " + this.a + "; ") + (TextUtils.isEmpty(strA) ? "" : "columns: " + strA + "; ") + (TextUtils.isEmpty(this.c) ? "" : "selection: " + this.c + "; ") + (TextUtils.isEmpty(strA2) ? "" : "selectionArgs: " + strA2 + "; ") + (TextUtils.isEmpty(this.e) ? "" : "groupBy: " + this.e + "; ") + (TextUtils.isEmpty(this.f) ? "" : "having: " + this.f + "; ") + (TextUtils.isEmpty(this.g) ? "" : "orderBy: " + this.g + "; ") + (TextUtils.isEmpty(this.h) ? "" : "limit: " + this.h + "; ");
    }

    /* JADX INFO: compiled from: vungle */
    public static final class a {
        private String a;
        private String[] b;
        private String c = "";
        private String[] d = new String[0];
        private String e;
        private String f;
        private String g;
        private String h;

        public a a(String str) {
            this.a = str;
            return this;
        }

        public a b(String str) {
            this.c = this.c.concat(str);
            return this;
        }

        public a a(String[] strArr) {
            this.d = (String[]) yz.a((Object[][]) new String[][]{this.d, strArr});
            return this;
        }

        public a c(String str) {
            return a(new String[]{str});
        }

        public hp a() {
            return new hp(this);
        }
    }
}
