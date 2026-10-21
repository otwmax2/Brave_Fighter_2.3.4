package com.vungle.publisher;

import com.vungle.publisher.vu;
import com.vungle.publisher.wc;
import com.vungle.publisher.wz;
import com.vungle.publisher.xb;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class wr extends wc {
    JSONObject m;
    wz n;
    String o;
    String p;
    private boolean q;

    public boolean n() {
        return this.q;
    }

    public JSONObject o() {
        return this.m;
    }

    public wz p() {
        return this.n;
    }

    public String q() {
        return this.o;
    }

    public String r() {
        return this.p;
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a extends wc.a<wr> {

        @Inject
        xb.a b;

        @Inject
        wz.a c;

        @Inject
        vu.a d;

        @Inject
        a() {
        }

        @Override // com.vungle.publisher.wc.a, com.vungle.publisher.vy
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public wr e(JSONObject jSONObject) throws JSONException {
            wr wrVar = (wr) super.e(jSONObject);
            if (wrVar != null) {
                JSONObject jSONObjectA = a();
                JSONObject jSONObjectOptJSONObject = jSONObjectA.optJSONObject("templateSettings");
                if (jSONObjectOptJSONObject != null) {
                    wrVar.m = jSONObjectOptJSONObject.optJSONObject("normal_replacements");
                    wrVar.n = this.c.c(jSONObjectOptJSONObject.optJSONObject("cacheable_replacements"));
                }
                wrVar.p = ra.f(jSONObjectA, "templateId");
                wrVar.o = ra.f(jSONObjectA, "templateURL");
                wrVar.k = ra.f(jSONObjectA, "template_type");
                if (jSONObjectA.has("requires_sideloading")) {
                    wrVar.q = ra.a(jSONObjectA, "requires_sideloading").booleanValue();
                }
                wrVar.e = this.d.c(jSONObjectA.optJSONObject("tpat"));
            }
            return wrVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wr[] b(int i) {
            return new wr[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public wr b() {
            return new wr();
        }
    }
}
