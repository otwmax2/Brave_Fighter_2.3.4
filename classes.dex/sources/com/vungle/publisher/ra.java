package com.vungle.publisher;

import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class ra {
    public static Boolean a(JSONObject jSONObject, String str) {
        boolean zOptBoolean = jSONObject.optBoolean(str, false);
        if (!zOptBoolean) {
            boolean zOptBoolean2 = jSONObject.optBoolean(str, true);
            if (zOptBoolean2) {
                return null;
            }
            return Boolean.valueOf(zOptBoolean2);
        }
        return Boolean.valueOf(zOptBoolean);
    }

    public static Double b(JSONObject jSONObject, String str) {
        double dOptDouble = jSONObject.optDouble(str);
        if (dOptDouble == Double.NaN) {
            double dOptDouble2 = jSONObject.optDouble(str, -1.0d);
            if (dOptDouble2 == -1.0d) {
                return null;
            }
            return Double.valueOf(dOptDouble2);
        }
        return Double.valueOf(dOptDouble);
    }

    public static Float c(JSONObject jSONObject, String str) {
        Double dB = b(jSONObject, str);
        if (dB == null) {
            return null;
        }
        return Float.valueOf(dB.floatValue());
    }

    public static Integer d(JSONObject jSONObject, String str) {
        int iOptInt = jSONObject.optInt(str, -1);
        if (iOptInt == -1) {
            int iOptInt2 = jSONObject.optInt(str, -2);
            if (iOptInt2 == -2) {
                return null;
            }
            return Integer.valueOf(iOptInt2);
        }
        return Integer.valueOf(iOptInt);
    }

    public static Long e(JSONObject jSONObject, String str) {
        long jOptLong = jSONObject.optLong(str, -1L);
        if (jOptLong == -1) {
            long jOptLong2 = jSONObject.optLong(str, -2L);
            if (jOptLong2 == -2) {
                return null;
            }
            return Long.valueOf(jOptLong2);
        }
        return Long.valueOf(jOptLong);
    }

    public static String f(JSONObject jSONObject, String str) {
        if (jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.optString(str, null);
    }

    public static String[] g(JSONObject jSONObject, String str) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        int length = jSONArrayOptJSONArray.length();
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = jSONArrayOptJSONArray.optString(i, null);
        }
        return strArr;
    }

    public static List<String> h(JSONObject jSONObject, String str) {
        String[] strArrG = g(jSONObject, str);
        if (strArrG == null) {
            return null;
        }
        return Arrays.asList(strArrG);
    }

    public static <T extends vs> JSONArray a(T... tArr) throws JSONException {
        JSONArray jSONArray = null;
        if (tArr != null) {
            jSONArray = new JSONArray();
            for (T t : tArr) {
                jSONArray.put(a(t));
            }
        }
        return jSONArray;
    }

    public static JSONObject a(vs vsVar) throws JSONException {
        if (vsVar == null) {
            return null;
        }
        return vsVar.b();
    }
}
