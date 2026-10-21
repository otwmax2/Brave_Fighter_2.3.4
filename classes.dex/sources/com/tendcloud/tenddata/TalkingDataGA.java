package com.tendcloud.tenddata;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.tendcloud.tenddata.game.aa;
import com.tendcloud.tenddata.game.az;
import com.tendcloud.tenddata.game.be;
import com.tendcloud.tenddata.game.bl;
import com.tendcloud.tenddata.game.bm;
import com.tendcloud.tenddata.game.bp;
import com.tendcloud.tenddata.game.bq;
import com.tendcloud.tenddata.game.br;
import com.tendcloud.tenddata.game.bt;
import com.tendcloud.tenddata.game.bu;
import com.tendcloud.tenddata.game.bv;
import com.tendcloud.tenddata.game.cb;
import com.tendcloud.tenddata.game.i;
import com.tendcloud.tenddata.game.t;
import com.tendcloud.tenddata.game.v;
import com.tendcloud.tenddata.game.w;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class TalkingDataGA {
    public static final boolean DEBUG = false;
    public static final int PLATFORM_TYPE_AIR = 3;
    public static final int PLATFORM_TYPE_COCOS2DX = 1;
    public static final int PLATFORM_TYPE_NATIVE = 0;
    public static final int PLATFORM_TYPE_PHONEGAP = 4;
    public static final int PLATFORM_TYPE_UNITY = 2;
    public static Context a = null;
    public static String b = null;
    static String c = null;
    static String d = null;
    static Handler f = null;
    static final String i = "TDGA";
    static final long j = 300000;
    private static final String m = "TDGA_APP_ID";
    private static final String n = "TDGA_CHANNEL_ID";
    public static int sPlatformType = 0;
    static boolean e = false;
    public static AtomicBoolean sSDKInitialized = new AtomicBoolean(false);
    public static boolean g = false;
    static boolean h = false;
    private static boolean o = false;
    public static HandlerThread k = new HandlerThread("Controller Message Processing Thread");
    public static HandlerThread sPushMessage = new HandlerThread("Controller sPushMessage Processing Thread");
    protected static final Map l = new TreeMap();

    static {
        k.start();
        sPushMessage.start();
    }

    private static String a(Bundle bundle, String str) {
        if (bundle == null) {
            return "";
        }
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            if (it.next().equalsIgnoreCase(str)) {
                return String.valueOf(bundle.get(str));
            }
        }
        return "";
    }

    protected static final void a(Activity activity, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            bp.c("APP ID not allow empty. Please check it.");
            return;
        }
        try {
            if (o) {
                return;
            }
            if (!a() && !g) {
                init(activity, str, str2);
            }
            bp.b("TalkingDataGA.onResume# " + activity.getLocalClassName());
            a(activity.getApplicationContext(), activity.getLocalClassName());
            if (o) {
                return;
            }
            b(activity);
        } catch (Exception e2) {
            bp.c("TalkingDataGA.onResume#", e2.getMessage());
        }
    }

    protected static void a(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            String strA = a(bundle, m);
            String strA2 = aa.a(a, "tdconfig.json");
            bp.b(i, "Channel id from assets json is: " + strA2);
            if (strA2 == null || strA2.equals("")) {
                strA2 = a(bundle, n);
            }
            if (TextUtils.isEmpty(strA)) {
                bp.c("TalkingDataGA.initSDK()#TDGA_APP_ID not found in AndroidManifest.xml!");
                return;
            }
            if (strA2 == null) {
                strA2 = "TalkingData";
            }
            init(context, strA, strA2);
        } catch (Throwable th) {
            bp.c("TalkingDataGA.initSDK()#Failed to load meta-data");
        }
    }

    public static final void a(Context context, String str) {
        b(context, str, 1);
    }

    public static boolean a() {
        return sSDKInitialized.get();
    }

    private static void b(Context context) {
        if (!aa.a(14)) {
            if (o) {
                return;
            }
            try {
                aa.a((Class) Class.forName("android.app.ActivityManagerNative"), (v) new bu(), "gDefault", "android.app.IActivityManager");
                o = true;
                return;
            } catch (Throwable th) {
                Log.e(i, "registerActivityLifecycleListener " + th.getMessage());
                return;
            }
        }
        try {
            Application application = context instanceof Activity ? ((Activity) context).getApplication() : context instanceof Application ? (Application) context : null;
            if (application == null || o) {
                return;
            }
            application.getClass().getMethod("registerActivityLifecycleCallbacks", Class.forName("android.app.Application$ActivityLifecycleCallbacks")).invoke(application, Class.forName(bl.class.getCanonicalName()).newInstance());
            o = true;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static final void b(Context context, String str) {
        b(context, str, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Context context, String str, int i2) {
        a = context.getApplicationContext();
        Handler handlerA = bv.a();
        handlerA.sendMessage(Message.obtain(handlerA, i2, str));
    }

    private static boolean c(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            String str = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).processName;
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (Process.myPid() == runningAppProcessInfo.pid && runningAppProcessInfo.processName.equals(str)) {
                        return true;
                    }
                }
            }
        } catch (Exception e2) {
        }
        return false;
    }

    public static String callNullMethod() {
        Log.d(i, "null method called");
        return null;
    }

    private static void d(Context context) {
    }

    public static final String getAppId(Context context) {
        if (aa.b(b)) {
            b = t.b(context, "td_pefercen_profile", "appkey", "");
        }
        return b;
    }

    public static final Context getContext() {
        return a;
    }

    public static String getDeviceId() {
        if (a != null) {
            return i.b(a);
        }
        return null;
    }

    public static String getDeviceId(Context context) {
        bp.a("TalkingDataGA.getDeviceId#Called.");
        if (context == null) {
            return null;
        }
        return i.b(context);
    }

    public static final String getGameAppId(Context context) {
        if (aa.b(d)) {
            d = t.b(context, "td_pefercen_profile", "gameappkey", "");
        }
        return d;
    }

    public static final String getPartnerId(Context context) {
        if (aa.b(c)) {
            c = t.b(context, "td_pefercen_profile", "partnerId", "");
        }
        return c;
    }

    public static synchronized void init(Context context, String str, String str2) {
        String str3;
        if (!sSDKInitialized.get()) {
            g = true;
            a = context.getApplicationContext();
            if (aa.b(context, "android.permission.INTERNET")) {
                if (aa.b(str) || !str.contains("-")) {
                    b = str;
                } else {
                    try {
                        str3 = str.split("-")[1];
                    } catch (Throwable th) {
                        if (bp.b) {
                            th.printStackTrace();
                        }
                        str3 = null;
                    }
                    b = str3;
                }
                d = "game-" + b;
                String strA = aa.a(a, "tdconfig.json");
                bp.b(i, "Channel id from assets json is: " + strA);
                if (strA == null || strA.equals("")) {
                }
                c = "play.google.com";
                bp.b("TalkingData Game Analytics Android_Native_SDK SDK Init:\nSDK version is3.2.7 gp\nApp ID is :" + str + "\nChannel is :" + c);
                t.a(context, "td_pefercen_profile", "appkey", b);
                t.a(context, "td_pefercen_profile", "gameappkey", d);
                t.a(context, "td_pefercen_profile", "partnerId", c);
            } else {
                bp.c("stop working...application do not have permission to send data, you must add <uses-permission android:name=\"android.permission.INTERNET\"/> to your AndroidManifest.xml.");
            }
            bq.a(a);
            bm.a();
            az.a(context);
            TDGAAccount.a = TDGAAccount.a(a);
            h = c(context);
            if (h) {
                b(context);
                if (!e) {
                    d(a);
                    be.a();
                }
                Handler handlerA = bv.a();
                handlerA.sendMessage(Message.obtain(handlerA, 100));
                w.a(a).a(new bt());
            }
            g = false;
            sSDKInitialized.set(true);
            bp.b("TalkingDataGA.init()# TDGA Initialized Completed.");
        }
    }

    public static void onEvent(Context context, String str, Map map) {
        try {
            if (TextUtils.isEmpty(str)) {
                bp.c("TalkingDataGA.onEvent()# event id is empty.");
                return;
            }
            a = context.getApplicationContext();
            if (l.size() > 0) {
                TreeMap treeMap = new TreeMap();
                treeMap.putAll(l);
                if (map != null && map.size() > 0) {
                    treeMap.putAll(map);
                }
                map = treeMap;
            }
            if (!bp.a && str != null && !str.startsWith("__")) {
                StringBuilder sb = new StringBuilder();
                sb.append("TalkingDataGA.onEvent()# eventid:" + str);
                if (map != null && map.size() > 0) {
                    sb.append(" map size:" + map.size());
                }
                bp.b(sb.toString());
            }
            cb cbVar = new cb(br.a, TDGAAccount.a, str, map);
            Handler handlerA = bv.a();
            handlerA.sendMessage(Message.obtain(handlerA, 5, cbVar));
        } catch (Exception e2) {
            bp.c("TalkingDataGA.onEvent#", e2.getMessage());
        }
    }

    public static void onEvent(String str) {
        onEvent(str, null);
    }

    public static void onEvent(String str, Map map) {
        try {
            if (a() || g) {
                onEvent(a, str, map);
            } else {
                bp.c("TalkingDataGA.onEvent()#SDK not initialized. ");
            }
        } catch (Exception e2) {
            bp.c("TalkingDataGA.onEvent#", e2.getMessage());
        }
    }

    public static final void onKill() {
        try {
            if (a() || !g) {
                br.b();
                bm.d();
            } else {
                bp.c("TalkingDataGA.onKill()#SDK not initialized.");
            }
        } catch (Exception e2) {
            bp.c("TalkingDataGA.onKill() #" + e2.getMessage());
            e2.printStackTrace();
        }
    }

    public static final void onPause(Activity activity) {
        try {
            if (!o) {
                if (a() || g) {
                    bp.b("TalkingDataGA.onResume# " + activity.getLocalClassName());
                    b(activity.getApplicationContext(), activity.getLocalClassName());
                    if (!o) {
                        b(activity);
                    }
                } else {
                    bp.c("TalkingDataGA.onPause()#SDK not initialized");
                }
            }
        } catch (Exception e2) {
            bp.c("TalkingDataGA.onPause#", e2.getMessage());
        }
    }

    public static final void onResume(Activity activity) {
        try {
            if (o && bl.a) {
                return;
            }
            if (!a() && !g) {
                a(activity);
            }
            bp.b("TalkingDataGA.onResume# " + activity.getLocalClassName());
            a(activity.getApplicationContext(), activity.getLocalClassName());
            if (o) {
                return;
            }
            b(activity);
        } catch (Exception e2) {
            bp.b("TalkingDataGA.onResume# " + e2.getMessage());
        }
    }

    public static void removeGlobalKV(String str) {
        if (str != null) {
            bp.b("TalkingDataGA.removeGlobalKV# key:" + str);
        }
        l.remove(str);
    }

    public static void setGlobalKV(String str, Object obj) {
        if (str != null && obj != null) {
            bp.b("TalkingDataGA.setGlobalKV# key:" + str + " value:" + obj.toString());
        }
        l.put(str, obj);
    }

    public static void setPushDisabled() {
        e = true;
    }

    public static void setVerboseLogDisabled() {
        bp.a = true;
    }
}
