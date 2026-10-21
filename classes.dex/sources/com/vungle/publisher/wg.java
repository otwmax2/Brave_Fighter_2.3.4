package com.vungle.publisher;

import com.vungle.publisher.wp;
import com.vungle.publisher.wv;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class wg extends wp {
    String m;
    Integer n;
    String o;

    public String n() {
        return this.m;
    }

    public Integer o() {
        return this.n;
    }

    public String p() {
        return this.o;
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a extends wp.b<wg, wv.a> {

        @Inject
        wv.a b;

        @Inject
        public a() {
        }

        @Override // com.vungle.publisher.wp.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public wg e(JSONObject jSONObject) throws JSONException {
            if (jSONObject == null) {
                return null;
            }
            wg wgVar = (wg) super.e(jSONObject);
            JSONObject jSONObjectA = a();
            wgVar.m = ra.f(jSONObjectA, "postBundle");
            wgVar.n = ra.d(jSONObjectA, "size");
            wgVar.o = jSONObjectA.optString("md5");
            a(jSONObjectA, "md5", wgVar.o);
            return wgVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wg[] b(int i) {
            return new wg[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public wg b() {
            return new wg();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.wp.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public wv.a e() {
            return this.b;
        }
    }
}
