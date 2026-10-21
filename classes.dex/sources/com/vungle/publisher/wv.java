package com.vungle.publisher;

import com.vungle.publisher.wa;
import com.vungle.publisher.wu;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class wv extends wu {
    protected List<String> a;
    protected List<String> b;
    protected List<String> c;
    protected List<String> d;
    protected List<String> e;
    protected List<String> f;
    protected wa[] g;
    protected List<String> h;
    protected List<String> i;
    protected List<String> j;
    private Boolean k;
    private String l;

    protected wv() {
    }

    public List<String> c() {
        return this.a;
    }

    public List<String> d() {
        return this.b;
    }

    public List<String> f() {
        return this.c;
    }

    public List<String> g() {
        return this.d;
    }

    public List<String> h() {
        return this.e;
    }

    public List<String> i() {
        return this.f;
    }

    public wa[] j() {
        return this.g;
    }

    public List<String> k() {
        return this.h;
    }

    public List<String> l() {
        return this.i;
    }

    public List<String> m() {
        return this.j;
    }

    public Boolean n() {
        return this.k;
    }

    public String o() {
        return this.l;
    }

    @Override // com.vungle.publisher.vs, com.vungle.publisher.vt
    /* JADX INFO: renamed from: a */
    public JSONObject b() throws JSONException {
        JSONObject jSONObjectA = super.b();
        jSONObjectA.putOpt("postroll_click", this.a);
        jSONObjectA.putOpt("video_click", this.b);
        jSONObjectA.putOpt("video_close", this.c);
        jSONObjectA.putOpt("error", this.d);
        jSONObjectA.putOpt("mute", this.e);
        jSONObjectA.putOpt("pause", this.f);
        jSONObjectA.putOpt("play_percentage", ra.a(this.g));
        jSONObjectA.putOpt("postroll_view", this.h);
        jSONObjectA.putOpt("resume", this.i);
        jSONObjectA.putOpt("unmute", this.j);
        return jSONObjectA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a extends wu.a<wv> {

        @Inject
        protected wa.a a;

        @Inject
        a() {
        }

        @Override // com.vungle.publisher.wu.a, com.vungle.publisher.vy
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wv e(JSONObject jSONObject) throws JSONException {
            if (jSONObject == null) {
                return null;
            }
            wv wvVarB = b();
            wvVarB.a = ra.h(jSONObject, "postroll_click");
            wvVarB.b = ra.h(jSONObject, "video_click");
            wvVarB.c = ra.h(jSONObject, "video_close");
            wvVarB.d = ra.h(jSONObject, "error");
            wvVarB.e = ra.h(jSONObject, "mute");
            wvVarB.f = ra.h(jSONObject, "pause");
            wvVarB.g = this.a.a(jSONObject.optJSONArray("play_percentage"));
            wvVarB.h = ra.h(jSONObject, "postroll_view");
            wvVarB.i = ra.h(jSONObject, "resume");
            wvVarB.j = ra.h(jSONObject, "unmute");
            JSONObject jSONObject2 = jSONObject.getJSONObject("moat");
            wvVarB.k = ra.a(jSONObject2, "is_enabled");
            wvVarB.l = ra.f(jSONObject2, "extra_vast");
            return wvVarB;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wv[] b(int i) {
            return new wv[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wv b() {
            return new wv();
        }
    }
}
