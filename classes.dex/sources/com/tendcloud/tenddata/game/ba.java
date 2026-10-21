package com.tendcloud.tenddata.game;

import android.content.Context;
import android.content.pm.Signature;
import com.facebook.internal.ServerProtocol;
import com.ironsource.sdk.constants.Constants;
import com.vungle.publisher.VungleAdActivity;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateFactory;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class ba {
    static final double a = 1.2d;
    static final int b = 0;
    static final String c = "Android";
    static final int d = 0;
    static final JSONArray e = new JSONArray();
    static JSONObject f = new JSONObject();
    static JSONObject g = new JSONObject();
    static JSONObject h = new JSONObject();
    static JSONObject i = null;
    static JSONObject j = new JSONObject();
    static String k = t.b(az.a, "td_pefercen_profile", "appkey", "");

    ba() {
    }

    static String a(JSONObject jSONObject) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (i == null) {
                i = new JSONObject();
                i.put(Constants.ParametersKeys.ORIENTATION_DEVICE, d());
                i.put("app", e());
                i.put(ServerProtocol.DIALOG_PARAM_SDK_VERSION, g());
            }
            i.put("appContext", f());
            i.put("ts", jCurrentTimeMillis);
            i.put("action", jSONObject);
            return i.toString();
        } catch (JSONException e2) {
            return null;
        }
    }

    static void a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("tid", i.b(az.a));
            JSONArray jSONArrayY = o.y(az.a);
            JSONArray jSONArray = new JSONArray();
            if (jSONArrayY != null && jSONArrayY.length() > 0) {
                jSONArray.put(jSONArrayY.getJSONObject(0).get("imei"));
                if (jSONArrayY.length() == 2) {
                    jSONArray.put(jSONArrayY.getJSONObject(1).get("imei"));
                }
            }
            jSONObject.put("imeis", jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(i.g(az.a));
            jSONObject.put("wifiMacs", jSONArray2);
            jSONObject.put("androidId", i.c(az.a));
            jSONObject.put(VungleAdActivity.AD_ID_EXTRA_KEY, i.h(az.a));
            jSONObject.put("serialNo", i.a() == null ? "" : i.a());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("manufacture", j.b());
            jSONObject2.put("brand", j.c());
            jSONObject2.put("model", j.d());
            g.put("hardwareConfig", jSONObject2);
            g.put("deviceId", jSONObject);
        } catch (Throwable th) {
        }
    }

    static void a(String str, JSONObject jSONObject, JSONObject jSONObject2, String str2) {
        try {
            h.put("sessionId", str);
            h.put(ao.i, jSONObject);
            h.put("subAccount", jSONObject2);
            h.put("push", str2);
        } catch (Throwable th) {
        }
    }

    static byte[] a(Context context, String str) {
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(str, 64).signatures;
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            byte[] byteArray = signatureArr[0].toByteArray();
            certificateFactory.generateCertificate(new ByteArrayInputStream(byteArray));
            return byteArray;
        } catch (Throwable th) {
            return null;
        }
    }

    static void b() {
        try {
            f.put("name", c.a().h(az.a));
            f.put("globalId", c.a().a(az.a));
            f.put("versionName", c.a().c(az.a));
            f.put("versionCode", c.a().b(az.a));
            f.put("installTime", c.a().d(az.a));
            f.put("updateTime", c.a().e(az.a));
            f.put("cert", aa.a(a(az.a, az.a.getPackageName())));
        } catch (Throwable th) {
        }
    }

    static void c() {
        try {
            j.put("features", e);
            j.put("minorVersion", 0);
            j.put("build", 0);
            j.put("platform", "Android");
            j.put("version", a);
        } catch (Throwable th) {
        }
    }

    private static JSONObject d() {
        return g;
    }

    private static JSONObject e() {
        return f;
    }

    private static JSONObject f() {
        return h;
    }

    private static JSONObject g() {
        return j;
    }
}
