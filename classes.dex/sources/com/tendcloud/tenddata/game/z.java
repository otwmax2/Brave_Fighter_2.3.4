package com.tendcloud.tenddata.game;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.constants.LocationConst;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class z {
    private static long a(String str) {
        long jCharAt = 1125899906842597L;
        int length = str.length();
        for (int i = 0; i < length; i++) {
            jCharAt = (jCharAt * 131) + ((long) str.charAt(i));
        }
        return jCharAt;
    }

    public static List a(Context context) {
        ArrayList arrayList = new ArrayList();
        if (!aa.b) {
            return arrayList;
        }
        if (aa.a(23) && context.checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0) {
            return arrayList;
        }
        try {
            if ((aa.b(context, "android.permission.ACCESS_FINE_LOCATION") || aa.b(context, "android.permission.ACCESS_COARSE_LOCATION")) && (aa.d || aa.e)) {
                ((LocationManager) context.getSystemService("location")).getProviders(true);
            }
        } catch (Throwable th) {
        }
        return arrayList;
    }

    public static String b(Context context) {
        List<Location> listA = a(context);
        StringBuffer stringBuffer = new StringBuffer();
        for (Location location : listA) {
            stringBuffer.append(location.getLatitude()).append(',').append(location.getLongitude()).append(',').append(location.hasAltitude() ? Double.valueOf(location.getAltitude()) : "").append(',').append(location.getTime()).append(',').append(location.hasAccuracy() ? Float.valueOf(location.getAccuracy()) : "").append(',').append(location.hasBearing() ? Float.valueOf(location.getBearing()) : "").append(',').append(location.hasSpeed() ? Float.valueOf(location.getSpeed()) : "").append(',').append(location.getProvider()).append(':');
        }
        return stringBuffer.toString();
    }

    public static JSONArray c(Context context) {
        List<Location> listA = a(context);
        JSONArray jSONArray = new JSONArray();
        for (Location location : listA) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("lat", location.getLatitude());
                jSONObject.put("lng", location.getLongitude());
                jSONObject.put("ts", location.getTime());
                if (aa.a(17)) {
                    jSONObject.put("elapsed", location.getElapsedRealtimeNanos());
                }
                if (location.hasAltitude()) {
                    jSONObject.put(LocationConst.ALTITUDE, location.getAltitude());
                }
                if (location.hasAccuracy()) {
                    jSONObject.put("accurate", location.getAccuracy());
                }
                if (location.hasBearing()) {
                    jSONObject.put(LocationConst.BEARING, location.getBearing());
                }
                if (location.hasSpeed()) {
                    jSONObject.put(LocationConst.SPEED, location.getSpeed());
                }
                jSONObject.put(LocationConst.PROVIDER, location.getProvider());
                jSONArray.put(jSONObject);
            } catch (Throwable th) {
            }
        }
        return jSONArray;
    }

    public static JSONArray d(Context context) {
        JSONArray jSONArray = new JSONArray();
        Account[] accountArrE = e(context);
        if (accountArrE != null) {
            for (Account account : accountArrE) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("type", account.type);
                    jSONObject.put("name", account.name);
                    jSONArray.put(jSONObject);
                } catch (Throwable th) {
                }
            }
        }
        try {
            JSONArray jSONArrayY = o.y(context);
            for (int i = 0; i < jSONArrayY.length(); i++) {
                JSONObject jSONObject2 = jSONArrayY.getJSONObject(i);
                String string = jSONObject2.getString("simSerialNumber");
                if (string != null) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("type", "sim");
                    jSONObject3.put("name", string);
                    jSONObject3.put("displayName", jSONObject2.optString("subscriberId"));
                    jSONObject3.put("extra1", jSONObject2.optString(Constants.RequestParameters.SIM_OPERATOR));
                    jSONObject3.put("extra2", jSONObject2.optString("simOperatorName"));
                    jSONObject3.put("extra3", o.o(context));
                    jSONObject3.put("extra4", jSONObject2.optString("simCountryIso"));
                    jSONObject3.put("extra6", jSONObject2.optString("imei"));
                    jSONArray.put(jSONObject3);
                }
            }
        } catch (Throwable th2) {
        }
        if (jSONArray.length() > 0) {
            return jSONArray;
        }
        return null;
    }

    public static Account[] e(Context context) {
        if (aa.b(context, "android.permission.GET_ACCOUNTS")) {
            try {
                return AccountManager.get(context).getAccounts();
            } catch (Throwable th) {
            }
        }
        return null;
    }

    public static Long[][] f(Context context) {
        return new Long[3][];
    }

    public static List g(Context context) {
        return new ArrayList();
    }
}
