package com.vungle.publisher;

import com.vungle.publisher.wp;
import com.vungle.publisher.wv;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class wm extends wp {
    Boolean m;

    public Boolean n() {
        return this.m;
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a extends wp.b<wm, wv.a> {

        @Inject
        wv.a b;

        @Inject
        a() {
        }

        @Override // com.vungle.publisher.wp.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public wm e(JSONObject jSONObject) throws JSONException {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("ad");
            wm wmVarB = null;
            if (jSONObjectOptJSONObject != null) {
                Boolean boolA = ra.a(jSONObjectOptJSONObject.optJSONObject("ad_markup"), "shouldStream");
                Boolean boolValueOf = Boolean.valueOf(jSONObjectOptJSONObject.has("sleepCode"));
                if (Boolean.TRUE.equals(boolA) && !boolValueOf.booleanValue()) {
                    wmVarB = (wm) super.e(jSONObjectOptJSONObject);
                } else {
                    wmVarB = b();
                }
                wmVarB.m = boolA;
            }
            return wmVarB;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public wm[] b(int i) {
            return new wm[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.vz
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public wm b() {
            return new wm();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.wp.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public wv.a e() {
            return this.b;
        }
    }
}
