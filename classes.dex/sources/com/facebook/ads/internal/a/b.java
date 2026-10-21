package com.facebook.ads.internal.a;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.ironsource.sdk.constants.Constants;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static final String a = b.class.getSimpleName();

    @Nullable
    public static a a(Context context, com.facebook.ads.internal.m.c cVar, String str, Uri uri, Map<String, String> map) {
        String queryParameter;
        if (uri == null) {
            return null;
        }
        String authority = uri.getAuthority();
        queryParameter = uri.getQueryParameter("video_url");
        if (!TextUtils.isEmpty(uri.getQueryParameter("data"))) {
            try {
                JSONObject jSONObject = new JSONObject(uri.getQueryParameter("data"));
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject.getString(next));
                }
            } catch (JSONException e) {
                Log.w(a, "Unable to parse json data in AdActionFactory.", e);
            }
        }
        switch (authority) {
            case "store":
                if (queryParameter != null) {
                    return null;
                }
                return new e(context, cVar, str, uri, map);
            case "open_link":
                return new g(context, cVar, str, uri, map);
            case "passthrough":
                return new h(context, cVar, str, uri, map);
            default:
                return new i(context, cVar, str, uri);
        }
    }

    public static boolean a(String str) {
        return Constants.ParametersKeys.STORE.equalsIgnoreCase(str) || "open_link".equalsIgnoreCase(str);
    }
}
