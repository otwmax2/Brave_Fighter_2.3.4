package com.facebook.ads.internal.o;

import android.text.TextUtils;
import com.facebook.ads.internal.o.f;
import com.facebook.share.internal.ShareConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private static e a = new e();

    public static synchronized e a() {
        return a;
    }

    private g a(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONArray("placements").getJSONObject(0);
        com.facebook.ads.internal.h.c cVar = new com.facebook.ads.internal.h.c(com.facebook.ads.internal.h.d.a(jSONObject2.getJSONObject("definition")), jSONObject2.optString("feature_config"));
        if (jSONObject2.has("ads")) {
            JSONArray jSONArray = jSONObject2.getJSONArray("ads");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                cVar.a(new com.facebook.ads.internal.h.a(jSONObject3.optString("adapter"), jSONObject3.optJSONObject("data"), jSONObject3.optJSONArray("trackers")));
            }
        }
        return new g(cVar, jSONObject.optString("server_request_id"), jSONObject.optString("server_response"), jSONObject.optString("an_validation_uuid"));
    }

    private h b(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONArray("placements").getJSONObject(0);
            return new h(jSONObject.optString(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, ""), jSONObject.optInt("code", 0), new com.facebook.ads.internal.h.c(com.facebook.ads.internal.h.d.a(jSONObject2.getJSONObject("definition")), jSONObject2.optString("feature_config")));
        } catch (JSONException e) {
            return c(jSONObject);
        }
    }

    private h c(JSONObject jSONObject) {
        return new h(jSONObject.optString(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, ""), jSONObject.optInt("code", 0), null);
    }

    public f a(String str) {
        JSONObject jSONObject;
        if (!TextUtils.isEmpty(str)) {
            jSONObject = new JSONObject(str);
            switch (jSONObject.optString("type")) {
                case "ads":
                    return a(jSONObject);
                case "error":
                    return b(jSONObject);
                default:
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("error");
                    if (jSONObjectOptJSONObject != null) {
                        return c(jSONObjectOptJSONObject);
                    }
                    break;
            }
        }
        return new f(f.a.UNKNOWN);
    }
}
