package com.facebook.ads.internal.q.a;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class j {
    public static String a(Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                try {
                    jSONObject.put(entry.getKey(), entry.getValue());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return jSONObject.toString();
    }

    public static String a(JSONObject jSONObject, String str) {
        return a(jSONObject, str, null);
    }

    public static String a(JSONObject jSONObject, String str, String str2) {
        String strOptString = jSONObject.optString(str, str2);
        if ("null".equals(strOptString)) {
            return null;
        }
        return strOptString;
    }
}
