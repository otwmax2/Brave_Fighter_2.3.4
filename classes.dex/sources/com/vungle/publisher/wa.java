package com.vungle.publisher;

import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class wa extends vs {
    Float a;
    List<String> b;

    protected wa() {
    }

    public Float c() {
        return this.a;
    }

    public List<String> d() {
        return this.b;
    }

    @Override // com.vungle.publisher.vs, com.vungle.publisher.vt
    /* JADX INFO: renamed from: a */
    public JSONObject b() throws JSONException {
        JSONObject jSONObjectB = super.b();
        jSONObjectB.putOpt("checkpoint", this.a);
        jSONObjectB.putOpt("urls", this.b);
        return jSONObjectB;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a extends vy<wa> {
        @Inject
        protected a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vy
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wa e(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            wa waVarB = b();
            waVarB.a = ra.c(jSONObject, "checkpoint");
            a(jSONObject, "checkpoint", waVarB.a);
            waVarB.b = ra.h(jSONObject, "urls");
            a(jSONObject, "urls", waVarB.b);
            return waVarB;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wa[] b(int i) {
            return new wa[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wa b() {
            return new wa();
        }
    }
}
