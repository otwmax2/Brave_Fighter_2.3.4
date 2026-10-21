package com.vungle.publisher;

import com.vungle.publisher.log.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
abstract class vy<T> extends vz<T> {
    protected abstract T c(JSONObject jSONObject) throws JSONException;

    vy() {
    }

    public final T a(String str) throws JSONException {
        if (str == null) {
            return null;
        }
        return c(new JSONObject(str));
    }

    protected final T[] a(JSONArray jSONArray) throws JSONException {
        T[] tArrB = null;
        if (jSONArray != null) {
            int length = jSONArray.length();
            tArrB = b(length);
            for (int i = 0; i < length; i++) {
                tArrB[i] = c(jSONArray.optJSONObject(i));
            }
        }
        return tArrB;
    }

    protected final void a(JSONObject jSONObject, String str, Object obj) {
        if (obj == null) {
            Object objOpt = jSONObject.opt(str);
            if (objOpt == null) {
                Logger.d(Logger.PROTOCOL_TAG, "null " + str + " is required input");
                return;
            } else {
                Logger.d(Logger.PROTOCOL_TAG, "invalid " + str + ": " + objOpt);
                return;
            }
        }
        if ((obj instanceof String) && ((String) obj).length() == 0) {
            Logger.d(Logger.PROTOCOL_TAG, "empty " + str + " is required input");
        } else if ((obj instanceof JSONArray) && ((JSONArray) obj).length() == 0) {
            Logger.d(Logger.PROTOCOL_TAG, "empty array " + str + " is required input");
        }
    }
}
