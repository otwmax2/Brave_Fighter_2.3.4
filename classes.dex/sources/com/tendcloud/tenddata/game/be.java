package com.tendcloud.tenddata.game;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.ShareConstants;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.constants.LocationConst;
import com.tendcloud.tenddata.TDGAAccount;
import com.tendcloud.tenddata.TalkingDataGA;
import java.io.File;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Calendar;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class be {
    static final int a = 1;
    static final int b = 2;
    static final String d = "inappversion";
    static final String e = "inappbody";
    static final String f = "showcountkey";
    static final String j = "TalkingData_Push_SharedPreferences";
    private static String l = "http://10.10.32.105:9092/api/inappMsg/";
    static boolean c = true;
    static JSONObject g = null;
    static JSONObject h = null;
    private static Handler k = new bf(TalkingDataGA.sPushMessage.getLooper());
    static String i = be.class.getSimpleName();

    be() {
    }

    static String a(Context context, String str) {
        return context.getSharedPreferences(j, 0).getString(str, "-1");
    }

    private static JSONObject a(boolean z) {
        JSONObject jSONObject;
        Throwable th;
        try {
            JSONObject jSONObject2 = new JSONObject(a(TalkingDataGA.a, e));
            if (!jSONObject2.has("msgs") || !jSONObject2.get("msgs").getClass().equals(JSONArray.class)) {
                return null;
            }
            JSONArray jSONArray = jSONObject2.getJSONArray("msgs");
            jSONObject = new JSONObject();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    try {
                        jSONObject.put(jSONArray.getJSONObject(i2).getJSONObject("rule").getString("event"), jSONArray.getJSONObject(i2));
                        if (z) {
                            new bs(TalkingDataGA.a, null).execute(jSONArray.getJSONObject(i2).getJSONObject("msg").getString("url"), TalkingDataGA.a.getFilesDir().getAbsolutePath() + "/tdwebdata/" + jSONArray.getJSONObject(i2).getJSONObject("rule").getInt(ShareConstants.WEB_DIALOG_PARAM_ID));
                        }
                    } catch (Throwable th2) {
                        if (bp.b) {
                            th2.printStackTrace();
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            return jSONObject;
        } catch (Throwable th4) {
            jSONObject = null;
            th = th4;
        }
        if (!bp.b) {
            return jSONObject;
        }
        bp.c("generateInAppMessageRuleObj()#" + th.getMessage());
        return jSONObject;
    }

    public static void a() {
        k.sendEmptyMessage(1);
    }

    private static void a(int i2) {
        JSONObject jSONObject;
        JSONArray jSONArray = null;
        try {
            jSONObject = new JSONObject(a(TalkingDataGA.a, f));
        } catch (JSONException e2) {
            jSONObject = null;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String strValueOf = String.valueOf(i2);
        if (jSONObject.has(strValueOf)) {
            try {
                jSONArray = jSONObject.getJSONArray(strValueOf);
            } catch (JSONException e3) {
            }
        }
        if (jSONArray == null) {
            jSONArray = new JSONArray();
        }
        if (jSONArray.length() > 50) {
            jSONArray.remove(0);
        }
        jSONArray.put(System.currentTimeMillis());
        try {
            jSONObject.put(strValueOf, jSONArray);
        } catch (JSONException e4) {
        }
        b(TalkingDataGA.a, f, jSONObject.toString());
    }

    protected static void a(bz bzVar) {
        if (bzVar == null || g == null) {
            return;
        }
        try {
            String strB = bzVar.b();
            if (strB.equals("G8")) {
                strB = ((cb) bzVar).g();
            }
            if (!g.has(strB)) {
                bp.a("handleEventOccorMessage#" + strB + "()--> has not the rule");
                return;
            }
            JSONObject jSONObject = g.getJSONObject(strB).getJSONObject("rule");
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jSONObject.getJSONObject(LocationConst.TIME).getLong("from") > jCurrentTimeMillis || jSONObject.getJSONObject(LocationConst.TIME).getLong("until") < jCurrentTimeMillis) {
                bp.a("handleEventOccorMessage#" + strB + "()--> not at the right time");
                return;
            }
            if (!a(jSONObject.getJSONArray("system")) || !a(bzVar, jSONObject.getJSONArray(NativeProtocol.WEB_DIALOG_PARAMS)) || !a(jSONObject.getInt(ShareConstants.WEB_DIALOG_PARAM_ID) + "", jSONObject.getJSONArray("intervals"))) {
                bp.a("handleEventOccorMessage#" + strB + "()--> not compare the rule");
                return;
            }
            JSONObject jSONObject2 = g.getJSONObject(strB).getJSONObject("msg");
            String strB2 = b(jSONObject.getInt(ShareConstants.WEB_DIALOG_PARAM_ID));
            if (strB2 == null) {
                a(jSONObject2.getString("sign"));
                return;
            }
            jSONObject2.put("url", strB2);
            a(jSONObject.getInt(ShareConstants.WEB_DIALOG_PARAM_ID));
            az.a(az.a, jSONObject2, true);
        } catch (JSONException e2) {
            bp.c(e2.toString());
        } catch (Throwable th) {
            if (bp.b) {
                bp.c(th.toString());
            }
        }
    }

    private static void a(String str) {
    }

    static boolean a(Context context, String str, String str2) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(j, 0);
        if (sharedPreferences.getString(str, "-1").equalsIgnoreCase(str2)) {
            return false;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(str, str2);
        editorEdit.commit();
        return true;
    }

    private static boolean a(bz bzVar, JSONArray jSONArray) throws JSONException {
        Map mapE = bzVar.e();
        boolean zA = false;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i2);
            String string = jSONObject.getString(Constants.ParametersKeys.KEY);
            String string2 = jSONObject.getString("op");
            JSONArray jSONArray2 = jSONObject.getJSONArray("val");
            if (mapE.containsKey(string) && !(zA = a(mapE.get(string), string2, jSONArray2))) {
                break;
            }
        }
        if (!zA) {
        }
        return zA;
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x0164  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean a(java.lang.Object r8, java.lang.String r9, org.json.JSONArray r10) {
        /*
            Method dump skipped, instruction units count: 367
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.game.be.a(java.lang.Object, java.lang.String, org.json.JSONArray):boolean");
    }

    private static boolean a(String str, JSONArray jSONArray) {
        JSONObject jSONObject;
        boolean z = true;
        boolean z2 = false;
        if (jSONArray == null || jSONArray.length() == 0) {
            return false;
        }
        String strA = a(TalkingDataGA.a, f);
        bp.a("PushIdReceiverAndInnerRules#checkInterval()getPreferences-->" + strA);
        try {
            jSONObject = new JSONObject(strA);
        } catch (JSONException e2) {
            jSONObject = null;
        }
        if (jSONObject != null) {
            try {
                JSONArray jSONArray2 = jSONObject.getJSONArray(str);
                int i2 = 0;
                while (true) {
                    if (i2 >= jSONArray.length()) {
                        z2 = true;
                        break;
                    }
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                    int i3 = jSONObject2.getInt("count");
                    int length = jSONArray2.length();
                    if (length >= i3) {
                        String string = jSONObject2.getString(Constants.ParametersKeys.KEY);
                        int i4 = jSONObject2.getInt("val");
                        long j2 = jSONArray2.getLong(length - i3);
                        if (string.equals("hour")) {
                            if (System.currentTimeMillis() - j2 <= i4 * 3600000) {
                                bp.a("PushIdReceiverAndInnerRules#checkInterval()-->" + string.toString() + ":false");
                                break;
                            }
                        } else if (string.equals("day")) {
                            Calendar calendar = Calendar.getInstance();
                            Calendar calendar2 = Calendar.getInstance();
                            calendar2.setTimeInMillis(j2);
                            if (((calendar.get(6) - calendar2.get(6)) + 365) % 365 < i4) {
                                bp.a("PushIdReceiverAndInnerRules#checkInterval()-->" + string.toString() + ":false");
                                break;
                            }
                        } else if (string.equals("week")) {
                            Calendar calendar3 = Calendar.getInstance();
                            Calendar calendar4 = Calendar.getInstance();
                            calendar4.setTimeInMillis(j2);
                            if (((calendar3.get(3) - calendar4.get(3)) + 52) % 52 < i4) {
                                bp.a("PushIdReceiverAndInnerRules#checkInterval()-->" + string.toString() + ":false");
                                break;
                            }
                        } else {
                            continue;
                        }
                    }
                    i2++;
                }
                z = z2;
            } catch (Exception e3) {
            }
        }
        return !z ? z : z;
    }

    private static boolean a(JSONArray jSONArray) {
        boolean zA = false;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                String string = jSONObject.getString(Constants.ParametersKeys.KEY);
                String string2 = jSONObject.getString("op");
                JSONArray jSONArray2 = jSONObject.getJSONArray("val");
                if (string.equals(ao.f)) {
                    zA = a(Integer.valueOf(TDGAAccount.a.getLevel()), string2, jSONArray2);
                } else if (string.equals("partner")) {
                    zA = a(TalkingDataGA.getPartnerId(TalkingDataGA.getContext()), string2, jSONArray2);
                } else if (string.equals(ao.j)) {
                    zA = a(TDGAAccount.a.getGameServer(), string2, jSONArray2);
                } else if (string.equals("platform")) {
                    zA = a("android", string2, jSONArray2);
                }
            } catch (Throwable th) {
                if (bp.b) {
                    th.printStackTrace();
                }
            }
            if (!zA) {
                break;
            }
        }
        if (!zA) {
        }
        return zA;
    }

    private static String b(int i2) {
        String str = TalkingDataGA.a.getFilesDir().getAbsolutePath() + "/tdwebdata/" + i2 + "/index.html";
        if (new File(str).exists()) {
            return "file://" + str;
        }
        return null;
    }

    private static void b() {
        g = a(false);
        if (o.c(TalkingDataGA.a) && c) {
            c = false;
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(l + TalkingDataGA.b + "/" + a(TalkingDataGA.a, d)).openConnection();
                httpURLConnection.setRequestProperty("Accept-Encoding", "");
                httpURLConnection.setRequestProperty("Content-Type", "");
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() == 200) {
                    GZIPInputStream gZIPInputStream = new GZIPInputStream(httpURLConnection.getInputStream());
                    StringBuilder sb = new StringBuilder();
                    for (byte[] bArr = new byte[100]; -1 != gZIPInputStream.read(bArr); bArr = new byte[100]) {
                        sb.append(new String(bArr, AudienceNetworkActivity.WEBVIEW_ENCODING));
                    }
                    try {
                        JSONObject jSONObject = new JSONObject(sb.toString());
                        if (jSONObject != null && jSONObject.has("code") && jSONObject.getInt("code") == 101) {
                            bp.a("fetch push rule--->" + sb.toString());
                            if (jSONObject.has("data")) {
                                a(TalkingDataGA.a, d, jSONObject.getJSONObject("data").getInt("version") + "");
                                b(TalkingDataGA.a, e, jSONObject.getJSONObject("data").toString());
                                g = a(true);
                            }
                        }
                    } catch (JSONException e2) {
                    }
                }
            } catch (Throwable th) {
                if (bp.b) {
                    th.printStackTrace();
                }
            }
        }
        c = true;
    }

    static void b(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(j, 0).edit();
        editorEdit.putString(str, str2);
        editorEdit.commit();
    }

    static void b(bz bzVar) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 2;
        messageObtain.obj = bzVar;
        k.sendMessage(messageObtain);
    }
}
