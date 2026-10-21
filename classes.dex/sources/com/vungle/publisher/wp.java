package com.vungle.publisher;

import com.vungle.publisher.wc;
import com.vungle.publisher.wu;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public abstract class wp extends wc {
    protected String p;
    protected a q;
    protected String r;
    protected Integer s;
    protected Integer t;
    protected Integer u;
    protected Integer v;
    protected String w;
    protected Integer x;

    public String q() {
        return this.p;
    }

    public a r() {
        return this.q;
    }

    public String s() {
        return this.r;
    }

    public Integer t() {
        return this.s;
    }

    public Integer u() {
        return this.t;
    }

    public Integer v() {
        return this.u;
    }

    public Integer w() {
        return this.v;
    }

    public String x() {
        return this.w;
    }

    public Integer y() {
        return this.x;
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    protected static abstract class b<R extends wp, T extends wu.a<?>> extends wc.a<R> {

        @Inject
        protected a.C0172a c;

        protected abstract T e();

        protected b() {
        }

        @Override // com.vungle.publisher.wc.a, com.vungle.publisher.vy
        public R e(JSONObject jSONObject) throws JSONException {
            R r = (R) super.e(jSONObject);
            if (r != null) {
                JSONObject jSONObjectA = a();
                r.p = ra.f(jSONObjectA, "callToActionDest");
                r.q = this.c.e(jSONObjectA.optJSONObject("cta_overlay"));
                r.r = ra.f(jSONObjectA, "callToActionUrl");
                r.s = ra.d(jSONObjectA, "showCloseIncentivized");
                r.t = ra.d(jSONObjectA, "showClose");
                r.u = ra.d(jSONObjectA, "countdown");
                r.v = ra.d(jSONObjectA, "videoHeight");
                a(jSONObjectA, "videoHeight", r.v);
                r.w = ra.f(jSONObjectA, "url");
                a(jSONObjectA, "url", r.w);
                r.x = ra.d(jSONObjectA, "videoWidth");
                a(jSONObjectA, "videoWidth", r.x);
                r.e = e().e(jSONObjectA.optJSONObject("tpat"));
            }
            return r;
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static class a extends vs {
        protected Float a;
        protected Integer b;
        protected Boolean c;
        protected Boolean d;
        protected Integer e;

        protected a() {
        }

        public Float c() {
            return this.a;
        }

        public Boolean d() {
            return this.c;
        }

        public Boolean f() {
            return this.d;
        }

        public Integer g() {
            return this.e;
        }

        public Integer h() {
            return this.b;
        }

        @Override // com.vungle.publisher.vs, com.vungle.publisher.vt
        /* JADX INFO: renamed from: a */
        public JSONObject b() throws JSONException {
            JSONObject jSONObjectB = super.b();
            jSONObjectB.putOpt("click_area", this.a);
            jSONObjectB.putOpt("enabled", this.c);
            jSONObjectB.putOpt("show_onclick", this.d);
            jSONObjectB.putOpt("time_show", this.e);
            jSONObjectB.putOpt("time_enabled", this.b);
            return jSONObjectB;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX INFO: renamed from: com.vungle.publisher.wp$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: vungle */
        /* JADX INFO: loaded from: classes.dex */
        @Singleton
        public static class C0172a extends vy<a> {
            @Inject
            C0172a() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.vungle.publisher.vy
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public a e(JSONObject jSONObject) throws JSONException {
                if (jSONObject == null) {
                    return null;
                }
                a aVarB = b();
                aVarB.a = ra.c(jSONObject, "click_area");
                aVarB.c = ra.a(jSONObject, "enabled");
                aVarB.d = ra.a(jSONObject, "show_onclick");
                aVarB.e = ra.d(jSONObject, "time_show");
                aVarB.b = ra.d(jSONObject, "time_enabled");
                return aVarB;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.vungle.publisher.vz
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public a[] b(int i) {
                return new a[i];
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.vungle.publisher.vz
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public a b() {
                return new a();
            }
        }
    }
}
