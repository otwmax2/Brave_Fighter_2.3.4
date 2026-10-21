package com.chartboost.sdk.Model;

import com.chartboost.sdk.Libraries.e;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.ironsource.sdk.constants.Constants;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public final String a;
    public final String b;
    public final String c;

    public b(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    private static Map<String, b> b(JSONObject jSONObject) throws JSONException {
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            JSONObject jSONObject2 = jSONObject.getJSONObject(next);
            Iterator<String> itKeys2 = jSONObject2.keys();
            while (itKeys2.hasNext()) {
                String next2 = itKeys2.next();
                JSONObject jSONObject3 = jSONObject2.getJSONObject(next2);
                map.put(next2, new b(next, jSONObject3.getString("filename"), jSONObject3.getString("url")));
            }
        }
        return map;
    }

    public static Map<String, b> a(JSONObject jSONObject) {
        HashMap map = new HashMap();
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("videos");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String string = jSONObject2.getString(ShareConstants.WEB_DIALOG_PARAM_ID);
                    map.put(string, new b("videos", string, jSONObject2.getString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)));
                } catch (JSONException e) {
                    com.chartboost.sdk.Tracking.a.a(b.class, "deserializeNativeVideos (file)", e);
                }
            }
        } catch (JSONException e2) {
            com.chartboost.sdk.Tracking.a.a(b.class, "deserializeNativeVideos (videos array)", e2);
        }
        return map;
    }

    private static JSONObject a(JSONArray jSONArray) throws JSONException {
        JSONObject jSONObjectA = com.chartboost.sdk.Libraries.e.a(new e.a[0]);
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            String strOptString = jSONObject.optString("name");
            String strOptString2 = jSONObject.optString("type");
            String strOptString3 = jSONObject.optString(Constants.ParametersKeys.VALUE);
            String strOptString4 = jSONObject.optString("param");
            if (!strOptString2.equals("param") && strOptString4.isEmpty()) {
                JSONObject jSONObjectOptJSONObject = jSONObjectA.optJSONObject(strOptString2);
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = com.chartboost.sdk.Libraries.e.a(new e.a[0]);
                    jSONObjectA.put(strOptString2, jSONObjectOptJSONObject);
                }
                jSONObjectOptJSONObject.put(strOptString2.equals("html") ? "body" : strOptString, com.chartboost.sdk.Libraries.e.a(com.chartboost.sdk.Libraries.e.a("filename", strOptString), com.chartboost.sdk.Libraries.e.a("url", strOptString3)));
            }
        }
        return jSONObjectA;
    }

    public static Map<String, b> a(JSONObject jSONObject, int i) {
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("cache_assets");
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next.equals("templates")) {
                    JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("templates");
                    if (jSONArrayOptJSONArray != null) {
                        int iMin = Math.min(i, jSONArrayOptJSONArray.length());
                        for (int i2 = 0; i2 < iMin; i2++) {
                            Iterator<Map.Entry<String, b>> it = b(a(jSONArrayOptJSONArray.getJSONObject(i2).getJSONArray("elements"))).entrySet().iterator();
                            while (it.hasNext()) {
                                b value = it.next().getValue();
                                map.put(value.b, value);
                            }
                        }
                    }
                } else {
                    JSONArray jSONArray = jSONObject2.getJSONArray(next);
                    for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i3);
                        String string = jSONObject3.getString("name");
                        map.put(string, new b(next, string, jSONObject3.getString(Constants.ParametersKeys.VALUE)));
                    }
                }
            }
        } catch (JSONException e) {
            com.chartboost.sdk.Tracking.a.a(b.class, "v2PrefetchToAssets", e);
        }
        return map;
    }

    public File a(File file) {
        return new File(file, this.a + "/" + this.b);
    }
}
