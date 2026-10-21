package com.vungle.publisher;

import com.facebook.share.internal.ShareConstants;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.m;
import javax.inject.Inject;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import rx.exceptions.Exceptions;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public abstract class wc {
    String a;
    Integer b;
    String c;
    Long d;
    wu e;
    m f;
    String g;
    Integer h;
    String i;
    String j;
    String k;
    protected String l;

    public String a() {
        return this.c;
    }

    public String b() {
        return yx.a(this.c, "ad_token");
    }

    public Long c() {
        return this.d;
    }

    public m d() {
        return this.f;
    }

    public wu e() {
        return this.e;
    }

    public String f() {
        return this.g;
    }

    public String g() {
        return this.l;
    }

    public String h() {
        return this.i;
    }

    public Integer i() {
        return this.h;
    }

    public Long j() {
        if (this.b == null) {
            return null;
        }
        return Long.valueOf(ze.a(this.b.intValue(), 1000L));
    }

    public boolean k() {
        return this.d.longValue() * 1000 < System.currentTimeMillis();
    }

    public String l() {
        return this.j;
    }

    public String m() {
        return this.k;
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    public static abstract class a<R extends wc> extends vy<R> {

        @Inject
        protected m.a a;
        private JSONObject b;

        @Override // com.vungle.publisher.vy
        /* JADX INFO: renamed from: a */
        public R e(JSONObject jSONObject) throws Throwable {
            R rB = null;
            if (jSONObject != null) {
                rB = b();
                JSONObject jSONObjectD = d(jSONObject);
                if (jSONObjectD != null) {
                    String strF = ra.f(jSONObjectD, "placement_reference_id");
                    Logger.d(Logger.PROTOCOL_TAG, "Got AdUnit for placement: " + strF);
                    JSONObject jSONObject2 = jSONObjectD.getJSONObject("ad_markup");
                    if (jSONObject2 != null) {
                        b(jSONObject2);
                        rB.j = strF;
                        rB.c = ra.f(jSONObject2, "ad_token");
                        rB.i = ra.f(jSONObject2, "app_id");
                        rB.h = ra.d(jSONObject2, "delay");
                        rB.l = ra.f(jSONObject2, ShareConstants.WEB_DIALOG_PARAM_ID);
                        rB.f = this.a.a(ra.f(jSONObject2, VungleAdActivity.AD_TYPE_EXTRA_KEY));
                        rB.g = ra.f(jSONObject2, "campaign");
                        a(jSONObject2, ShareConstants.WEB_DIALOG_PARAM_ID, rB.l);
                        a(jSONObject2, "campaign", rB.g);
                        Long lE = ra.e(jSONObject2, "expiry");
                        rB.d = lE;
                        a(jSONObject2, "expiry", lE);
                        rB.b = ra.d(jSONObject2, "sleep");
                        rB.a = ra.f(jSONObject2, "sleepCode");
                    } else {
                        Exceptions.propagate(new Throwable("No ad_markup in v5/api/ads response"));
                    }
                } else {
                    Exceptions.propagate(new Throwable("No AdPlacementUnit in v5/api/ads response"));
                }
            }
            return rB;
        }

        private JSONObject d(JSONObject jSONObject) throws JSONException {
            if (jSONObject.has("ads")) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ads");
                if (jSONArrayOptJSONArray == null) {
                    return null;
                }
                return jSONArrayOptJSONArray.getJSONObject(0);
            }
            if (jSONObject.has("ad_markup")) {
                return jSONObject;
            }
            return null;
        }

        public JSONObject a() {
            return this.b;
        }

        public void b(JSONObject jSONObject) {
            this.b = jSONObject;
        }
    }
}
