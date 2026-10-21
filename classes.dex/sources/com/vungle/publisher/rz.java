package com.vungle.publisher;

import android.os.Build;
import android.util.Log;
import com.ironsource.sdk.constants.Constants;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class rz extends vs {
    JSONObject a;
    JSONObject b;
    JSONObject c;
    JSONObject d;
    JSONObject e;
    JSONObject f;
    JSONObject g;
    JSONObject h;
    String i;
    se j;
    Boolean k;
    Boolean l;
    Boolean m;
    Boolean n;
    x o;

    @Inject
    mv p;

    @Inject
    rz() {
    }

    @Override // com.vungle.publisher.vs, com.vungle.publisher.vt
    /* JADX INFO: renamed from: a */
    public JSONObject b() throws JSONException {
        JSONObject jSONObjectB = super.b();
        jSONObjectB.putOpt("maxSize", this.a);
        jSONObjectB.putOpt("screenSize", this.b);
        jSONObjectB.putOpt("defaultPosition", this.c);
        jSONObjectB.putOpt("currentPosition", this.d);
        jSONObjectB.putOpt("expandProperties", this.e);
        jSONObjectB.putOpt("resizeProperties", this.f);
        jSONObjectB.putOpt("orientationProperties", this.g);
        jSONObjectB.putOpt("supports", this.h);
        jSONObjectB.putOpt("state", this.i);
        jSONObjectB.putOpt("placementType", this.j);
        jSONObjectB.putOpt(Constants.ParametersKeys.IS_VIEWABLE, this.k);
        jSONObjectB.putOpt("os", "android");
        jSONObjectB.putOpt("osVersion", Integer.toString(Build.VERSION.SDK_INT));
        jSONObjectB.putOpt("startMuted", this.l);
        jSONObjectB.putOpt("incentivized", this.m);
        jSONObjectB.putOpt("enableBackImmediately", this.n);
        jSONObjectB.putOpt("version", "1.0");
        return jSONObjectB;
    }

    public void a(int i, int i2) {
        this.a = c(i, i2);
    }

    public void a(p pVar, boolean z) {
        this.m = Boolean.valueOf(z);
        this.n = Boolean.valueOf(pVar.isBackButtonImmediatelyEnabled());
    }

    public void b(int i, int i2) {
        this.b = c(i, i2);
    }

    private JSONObject c(int i, int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("width", i);
            jSONObject.put("height", i2);
        } catch (JSONException e) {
            Logger.e(Logger.PROTOCOL_TAG, "exception setting mraid size properties", e);
        }
        return jSONObject;
    }

    public void a(int i, int i2, int i3, int i4) {
        this.c = c(i, i2, i3, i4);
    }

    public void b(int i, int i2, int i3, int i4) {
        this.d = c(i, i2, i3, i4);
    }

    private JSONObject c(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i);
            jSONObject.put("y", i2);
            jSONObject.put("width", i3);
            jSONObject.put("height", i4);
        } catch (JSONException e) {
            Logger.e(Logger.PROTOCOL_TAG, "exception setting mraid position properties", e);
        }
        return jSONObject;
    }

    public void c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sms", false);
            jSONObject.put("tel", false);
            jSONObject.put("calendar", false);
            jSONObject.put("storePicture", false);
            jSONObject.put("inlineVideo", false);
        } catch (JSONException e) {
            Logger.e(Logger.PROTOCOL_TAG, "exception setting mraid supports properties", e);
        }
        this.h = jSONObject;
    }

    public void d() {
        int iC;
        int iD;
        switch (this.o) {
            case fullscreen:
                iC = (int) this.p.a();
                iD = (int) this.p.b();
                break;
            case flexview:
                iC = this.p.c();
                iD = this.p.d();
                break;
            default:
                Log.e(Logger.PROTOCOL_TAG, "Unsupported TemplateType: " + this.o);
                iD = 0;
                iC = 0;
                break;
        }
        a(iC, iD);
        b(iC, iD);
        a(0, 0, iC, iD);
        b(0, 0, iC, iD);
    }

    public void a(se seVar) {
        this.j = seVar;
    }

    public void a(boolean z) {
        this.k = Boolean.valueOf(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(x xVar) {
        this.o = xVar;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a {

        @Inject
        Provider<rz> a;

        @Inject
        a() {
        }

        public rz a(x xVar) {
            rz rzVar = this.a.get();
            rzVar.a(xVar);
            return rzVar;
        }
    }
}
