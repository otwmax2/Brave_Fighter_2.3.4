package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import com.ironsource.sdk.constants.Constants;
import com.vungle.publisher.dp;
import com.vungle.publisher.log.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class iz extends dp<Integer> {

    @Inject
    a a;
    String b;
    String c;
    String d;

    @Inject
    iz() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.a;
    }

    @Override // com.vungle.publisher.dp
    protected String c() {
        return "template_replacements";
    }

    public String e() {
        return this.b;
    }

    public String h() {
        return this.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put(h_(), (Integer) this.u);
            contentValues.put("ad_id", this.d);
        }
        contentValues.put(Constants.ParametersKeys.KEY, this.b);
        contentValues.put(Constants.ParametersKeys.VALUE, this.c);
        return contentValues;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends dp.a<iz, Integer> {

        @Inject
        Provider<iz> a;

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

        public iz a(String str, String str2, String str3) {
            iz izVarG_ = g_();
            izVarG_.d = str;
            izVarG_.b = str2;
            izVarG_.c = str3;
            return izVarG_;
        }

        public List<iz> a(String str, JSONObject jSONObject) {
            ArrayList arrayList = new ArrayList();
            try {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    arrayList.add(a(str, next, jSONObject.getString(next)));
                }
            } catch (Exception e) {
                Logger.e(Logger.DATABASE_TAG, "could not create template replacement list", e);
            }
            return arrayList;
        }

        protected List<iz> a(String str) {
            return a("ad_id = ?", new String[]{str});
        }

        public b b(String str) {
            return new b(a(str));
        }

        @Override // com.vungle.publisher.dp.a
        protected String c() {
            return "template_replacements";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        public iz a(iz izVar, Cursor cursor, boolean z) {
            izVar.d = ce.e(cursor, "ad_id");
            izVar.b = ce.e(cursor, Constants.ParametersKeys.KEY);
            izVar.c = ce.e(cursor, Constants.ParametersKeys.VALUE);
            return izVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public iz g_() {
            return this.a.get();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public iz[] d(int i) {
            return new iz[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Integer[] b(int i) {
            return new Integer[i];
        }
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes2.dex */
    public static class b extends vs {
        private final JSONObject a = new JSONObject();

        public b(List<iz> list) {
            try {
                for (iz izVar : list) {
                    this.a.put(izVar.e(), izVar.h());
                }
            } catch (Exception e) {
                Logger.e(Logger.PROTOCOL_TAG, "could not parse json", e);
            }
        }

        @Override // com.vungle.publisher.vs, com.vungle.publisher.vt
        /* JADX INFO: renamed from: a */
        public JSONObject b() throws JSONException {
            return this.a;
        }
    }
}
