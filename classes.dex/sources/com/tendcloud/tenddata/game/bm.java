package com.tendcloud.tenddata.game;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Handler;
import android.os.Process;
import android.util.Log;
import com.chartboost.sdk.CBLocation;
import com.tendcloud.tenddata.TalkingDataGA;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.Random;
import java.util.TreeMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class bm {
    private static Handler b = null;
    private static final int c = 120000;
    private static final int d = 1800000;
    private static final int e = 3000;
    private static final int f = 3000;
    private static final int g = 1;
    private static final int h = 2;
    private static final int i = 3;
    private static final int j = 4;
    private static final String[] k = {"unknow", "Loop", "Resume", CBLocation.LOCATION_PAUSE, "Right Now"};
    static Random a = new Random();

    static {
        b = null;
        b = new bn(TalkingDataGA.k.getLooper());
    }

    bm() {
    }

    public static void a() {
        if (b(TalkingDataGA.getContext())) {
            b(d);
            if (bp.b) {
                Log.i("TDGA", "init SERVICE_SEND_MESSAGE_INTERVAL");
                return;
            }
            return;
        }
        b(c);
        if (bp.b) {
            Log.i("TDGA", "init NORMAL_SEND_MESSAGE_INTERVAL");
        }
    }

    static void b() {
        b(c);
        b.removeMessages(3);
        b.sendEmptyMessageDelayed(2, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void b(int i2) {
        if (!b.hasMessages(1)) {
            b.sendEmptyMessageDelayed(1, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            String str = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).processName;
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (Process.myPid() == runningAppProcessInfo.pid && runningAppProcessInfo.processName.contains(":")) {
                        return true;
                    }
                }
            }
        } catch (Exception e2) {
        }
        return false;
    }

    static void c() {
        b.sendEmptyMessageDelayed(3, 3000L);
    }

    public static void d() {
        b.sendEmptyMessage(4);
    }

    public static void e() {
        int i2 = Calendar.getInstance().get(11);
        int i3 = 950;
        if (i2 >= 1 && i2 <= 6) {
            i3 = 200;
        }
        int iNextInt = a.nextInt(1000);
        if (iNextInt > i3) {
            return;
        }
        TreeMap treeMap = new TreeMap();
        treeMap.put("loc", z.b(TalkingDataGA.getContext()));
        treeMap.put("net", o.r(TalkingDataGA.getContext()).toString());
        if (iNextInt % 4 == 0) {
            Long[][] lArrF = z.f(TalkingDataGA.getContext());
            treeMap.put("ruas", Arrays.toString(lArrF[0]));
            treeMap.put("ras", Arrays.toString(lArrF[1]));
        }
        TalkingDataGA.onEvent("__tx.env", treeMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h() {
        try {
            try {
                if (!o.c(TalkingDataGA.a)) {
                    bp.a("Network is not connected!");
                    e();
                    return;
                }
                if (TalkingDataGA.a == null) {
                    bp.a("TalkingDataGA.sContext is null...");
                    e();
                    return;
                }
                List listA = aw.a();
                ay ayVar = new ay();
                if (listA == null && !o.g(TalkingDataGA.a)) {
                    e();
                    return;
                }
                String strA = ayVar.a(listA);
                boolean zA = bo.a(strA);
                if (zA) {
                    ayVar.b(listA);
                    if (bp.b) {
                        bp.a("success post:\n" + new JSONObject(strA).toString(4));
                    }
                } else {
                    ayVar.c(listA);
                }
                bp.b("Send success : " + zA);
                if (zA) {
                    return;
                }
                e();
            } catch (Throwable th) {
                bp.c("Send error : " + th.getMessage());
                if (bp.b) {
                    th.printStackTrace();
                }
                if (0 == 0) {
                    e();
                }
            }
        } catch (Throwable th2) {
            if (0 == 0) {
                e();
            }
            throw th2;
        }
    }
}
