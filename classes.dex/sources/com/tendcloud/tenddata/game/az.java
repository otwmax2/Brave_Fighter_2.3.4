package com.tendcloud.tenddata.game;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.os.Build;
import android.os.Message;
import android.os.PowerManager;
import android.os.Vibrator;
import android.text.Html;
import android.util.Log;
import com.facebook.share.internal.ShareConstants;
import com.ironsource.mediationsdk.utils.ServerResponseWrapper;
import com.ironsource.sdk.constants.Constants;
import com.tendcloud.tenddata.AlertActivity;
import com.tendcloud.tenddata.TalkingDataGA;
import com.tendcloud.tenddata.TalkingDataMessageReceiver;
import com.tendcloud.tenddata.game.bb;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class az {
    static final String b = "xdrig.com";
    static final String d = "https://xdrig.com/push";
    static final String f = "push";
    static final String g = "deviceToken";
    static final String h = "message";
    static final long i = 864000000;
    private static final String j = "game";
    public static Context a = null;
    static String c = "211.151.164.168";
    static String e = "v1";
    private static volatile az k = null;

    az() {
    }

    static az a() {
        if (k == null) {
            synchronized (az.class) {
                if (k == null) {
                    k = new az();
                }
            }
        }
        return k;
    }

    static void a(long j2, Context context) {
        try {
            if (aa.b(context, "android.permission.WAKE_LOCK")) {
                ((PowerManager) context.getSystemService("power")).newWakeLock(805306394, "TDAcquireWakeLock").acquire(j2);
            }
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
    }

    public static void a(Context context) {
        try {
            a = context;
            Message messageObtain = Message.obtain();
            messageObtain.what = 101;
            bc.a().sendMessage(messageObtain);
            if (Math.abs(System.currentTimeMillis() - bg.d().longValue()) > i) {
                e();
                if (bp.b) {
                    bp.b("sendPushDeviceTokenInterval start");
                }
            }
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
    }

    private static void a(Context context, int i2) {
        try {
            if (aa.b(context, "android.permission.VIBRATE")) {
                ((Vibrator) context.getSystemService("vibrator")).vibrate(i2);
            }
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
    }

    static void a(Context context, String str) {
        try {
            Message messageObtain = Message.obtain();
            messageObtain.what = 103;
            messageObtain.obj = new bb(str, null, bb.a.UNSHOWN, 0);
            bc.a().sendMessage(messageObtain);
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
    }

    public static void a(Context context, JSONObject jSONObject) {
        Notification notificationBuild;
        try {
            if (bp.b) {
                Log.i("TDGA", " msgBody  " + jSONObject.toString());
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("msg");
            String string = jSONObject2.getJSONObject("title").getString("val");
            String string2 = jSONObject2.getJSONObject("content").getString("val");
            String string3 = jSONObject.getString("sign");
            a(string3, false);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            int iCurrentTimeMillis = (int) System.currentTimeMillis();
            if (Build.VERSION.SDK_INT < 23) {
                notificationBuild = new Notification(0, Html.fromHtml(string), System.currentTimeMillis());
                notificationBuild.icon = c(context);
                notificationBuild.flags = 16;
            } else {
                notificationBuild = new Notification.Builder(context).setContentTitle(Html.fromHtml(string)).setContentText(Html.fromHtml(string2)).setSmallIcon(c(context)).build();
                notificationBuild.flags = 16;
            }
            Intent intent = new Intent(TalkingDataMessageReceiver.a);
            intent.putExtra("sign", string3);
            intent.putExtra("appkey", TalkingDataGA.getAppId(context));
            if (jSONObject2.has("config") && jSONObject2.getJSONObject("config") != null) {
                JSONObject jSONObject3 = jSONObject2.getJSONObject("config");
                if (jSONObject3.has("sound") && jSONObject3.getInt("sound") > 0) {
                    notificationBuild.defaults |= 1;
                }
                if (jSONObject3.has("vibrate") && jSONObject3.getInt("vibrate") > 0) {
                    notificationBuild.defaults |= 2;
                }
                if (jSONObject3.has("wakeup") && jSONObject3.getInt("wakeup") > 0) {
                    a(2000L, context);
                }
                if (jSONObject3.has("clearable") && jSONObject3.getInt("clearable") == 0) {
                    notificationBuild.flags = 32;
                    intent.putExtra(ShareConstants.WEB_DIALOG_PARAM_ID, iCurrentTimeMillis);
                }
            }
            if (!jSONObject.isNull("custom")) {
                intent.putExtra("custom", jSONObject.getJSONObject("custom").toString());
            }
            PendingIntent broadcast = PendingIntent.getBroadcast(context, iCurrentTimeMillis + 1, intent, 268435456);
            Intent intent2 = new Intent(TalkingDataMessageReceiver.b);
            intent2.putExtra("sign", string3);
            intent2.putExtra("appkey", t.b(context, TalkingDataGA.getAppId(context), "appkey", (String) null));
            PendingIntent broadcast2 = PendingIntent.getBroadcast(context, iCurrentTimeMillis + 2, intent2, 1073741824);
            if (Build.VERSION.SDK_INT < 23) {
                notificationBuild.getClass().getMethod("setLatestEventInfo", Context.class, CharSequence.class, CharSequence.class, PendingIntent.class).invoke(notificationBuild, context, Html.fromHtml(string), Html.fromHtml(string2), null);
            }
            notificationBuild.contentIntent = broadcast;
            notificationBuild.deleteIntent = broadcast2;
            notificationManager.notify(iCurrentTimeMillis, notificationBuild);
        } catch (Throwable th) {
            if (bp.b) {
                Log.e("TalkingDataGA ", "TalkingDataPushUtils" + th.getMessage());
            }
        }
    }

    public static void a(Context context, JSONObject jSONObject, boolean z) {
        try {
            if (!aa.a(context) && !z) {
                a(context, jSONObject.getString("sign"));
                return;
            }
            a(jSONObject.getString("sign"), z);
            if (jSONObject.has("config") && jSONObject.getJSONObject("config") != null) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("config");
                if (jSONObject2.has("sound") && jSONObject2.getInt("sound") > 0) {
                    e(context);
                }
                if (jSONObject2.has("vibrate") && jSONObject2.getInt("vibrate") > 0) {
                    a(context, 300);
                }
                if (jSONObject2.has("wakeup") && jSONObject2.getInt("wakeup") > 0) {
                    a(2000L, context);
                }
            }
            Intent intent = new Intent(context, (Class<?>) AlertActivity.class);
            intent.setFlags(268435456);
            intent.putExtra(AlertActivity.a, jSONObject.toString());
            intent.putExtra(AlertActivity.b, z);
            context.startActivity(intent);
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
    }

    private static void a(String str, String str2, String str3) {
        boolean z = false;
        JSONArray jSONArray = new JSONArray();
        try {
            String strE = bg.e();
            if (strE.equals("")) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("3rdAppId", str);
                jSONObject.put("channel", str2);
                jSONObject.put("dt", str3);
                jSONArray.put(jSONObject);
                bg.b(jSONArray.toString());
                return;
            }
            JSONArray jSONArray2 = new JSONArray(strE);
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                JSONObject jSONObject2 = jSONArray2.getJSONObject(i2);
                String string = jSONObject2.getString("channel");
                String string2 = jSONObject2.getString("dt");
                String string3 = jSONObject2.getString("3rdAppId");
                if (string.equals(str2)) {
                    z = true;
                    if (!string3.equals(str)) {
                        jSONObject2.put("3rdAppId", str);
                    }
                    if (!string2.equals(str3)) {
                        jSONObject2.put("dt", str3);
                    }
                }
                jSONArray.put(jSONObject2);
            }
            if (!z) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("channel", str2);
                jSONObject3.put("3rdAppId", str);
                jSONObject3.put("dt", str3);
                jSONArray.put(jSONObject3);
            }
            bg.b(jSONArray.toString());
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
    }

    static void a(String str, boolean z) {
        try {
            Message messageObtain = Message.obtain();
            messageObtain.what = 103;
            messageObtain.obj = new bb(str, null, z ? bb.a.INAPP_SHOW : bb.a.SHOW, 0);
            bc.a().sendMessage(messageObtain);
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
    }

    private static void a(JSONObject jSONObject) {
        try {
            ba.a(null, new JSONObject().put("accountId", bg.a(a)), null, bg.e());
            if (bg.a(ba.a(jSONObject))) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 0;
                bh.a().sendMessage(messageObtain);
            }
        } catch (Throwable th) {
        }
    }

    protected static boolean b(Context context) {
        if (!aa.b(context, "android.permission.GET_TASKS")) {
            return false;
        }
        try {
            if (((ActivityManager) context.getSystemService("activity")).getRunningTasks(1).get(0).baseActivity.getPackageName().equals(context.getPackageName())) {
                return true;
            }
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
        return false;
    }

    private static int c(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).icon;
        } catch (Throwable th) {
            if (!bp.b) {
                return 0;
            }
            th.printStackTrace();
            return 0;
        }
    }

    private static int d(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).uid;
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
            return 12089;
        }
    }

    public static void e() {
        try {
            String strE = bg.e();
            if (strE.equals("")) {
                return;
            }
            JSONArray jSONArray = new JSONArray(strE);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                Message messageObtain = Message.obtain();
                messageObtain.what = 102;
                messageObtain.obj = new bb(jSONObject.getString("3rdAppId"), jSONObject.getString("dt"), jSONObject.getString("channel"));
                bc.a().sendMessage(messageObtain);
                bg.a(System.currentTimeMillis());
            }
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
    }

    private static void e(Context context) {
        try {
            Ringtone ringtone = RingtoneManager.getRingtone(context, RingtoneManager.getDefaultUri(2));
            if (ringtone == null || ringtone.isPlaying()) {
                return;
            }
            ringtone.play();
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
    }

    void a(bb bbVar) {
        if (bbVar != null) {
            try {
                if (bbVar.equals("")) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(Constants.RequestParameters.DOMAIN, f);
                jSONObject.put("name", "message");
                TreeMap treeMap = new TreeMap();
                if (bbVar.e() == null) {
                    treeMap.put("msgSign", bbVar.d());
                    treeMap.put("action", Integer.valueOf(bbVar.f().a()));
                } else {
                    treeMap.put("msgSign", bbVar.d());
                    treeMap.put("action", Integer.valueOf(bbVar.f().a()));
                    treeMap.put("url", bbVar.e());
                }
                if (bbVar.g() > 0) {
                    treeMap.put(ao.n, Integer.valueOf(bbVar.g()));
                }
                jSONObject.put("data", new JSONObject(treeMap));
                a(jSONObject);
            } catch (Throwable th) {
                if (bp.b) {
                    th.printStackTrace();
                }
            }
        }
    }

    void b() {
        try {
            ba.c();
            ba.a();
            ba.b();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ServerResponseWrapper.APP_KEY_FIELD, ba.k);
            jSONObject.put("service", j);
            ba.f.put(ServerResponseWrapper.APP_KEY_FIELD, new JSONArray().put(jSONObject));
            bh.a().sendEmptyMessage(2);
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
    }

    void b(bb bbVar) {
        if (bbVar != null) {
            try {
                if (bbVar.equals("")) {
                    return;
                }
                a(bbVar.b(), bbVar.c(), bbVar.a());
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(Constants.RequestParameters.DOMAIN, f);
                jSONObject.put("name", g);
                TreeMap treeMap = new TreeMap();
                treeMap.put("channel", bbVar.c());
                treeMap.put("appId", bbVar.b());
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("dt", bbVar.a());
                treeMap.put(g, jSONObject2);
                jSONObject.put("data", new JSONObject(treeMap));
                a(jSONObject);
                bg.a(System.currentTimeMillis());
            } catch (Throwable th) {
                if (bp.b) {
                    th.printStackTrace();
                }
            }
        }
    }

    void c() {
        bg.b();
    }

    void d() {
        bg.c();
    }
}
