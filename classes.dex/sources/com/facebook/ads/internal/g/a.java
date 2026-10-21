package com.facebook.ads.internal.g;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Environment;
import android.os.StatFs;
import com.facebook.appevents.AppEventsConstants;
import com.tendcloud.tenddata.game.ao;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static volatile float[] d;
    private static volatile float[] e;
    private static SensorEventListener h;
    private static SensorEventListener i;
    private static SensorManager a = null;
    private static Sensor b = null;
    private static Sensor c = null;
    private static Map<String, String> f = new ConcurrentHashMap();
    private static String[] g = {"x", "y", "z"};

    /* JADX INFO: renamed from: com.facebook.ads.internal.g.a$a, reason: collision with other inner class name */
    private static class C0012a implements SensorEventListener {
        private C0012a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            float[] unused = a.d = sensorEvent.values;
            a.d();
        }
    }

    private static class b implements SensorEventListener {
        private b() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            float[] unused = a.e = sensorEvent.values;
            a.e();
        }
    }

    public static Map<String, String> a() {
        HashMap map = new HashMap();
        map.putAll(f);
        a(map);
        return map;
    }

    public static synchronized void a(Context context) {
        b(context);
        c(context);
        d(context);
        if (a == null) {
            a = (SensorManager) context.getSystemService("sensor");
            if (a != null) {
            }
        }
        if (b == null) {
            b = a.getDefaultSensor(1);
        }
        if (c == null) {
            c = a.getDefaultSensor(4);
        }
        if (h == null) {
            h = new C0012a();
            if (b != null) {
                a.registerListener(h, b, 3);
            }
        }
        if (i == null) {
            i = new b();
            if (c != null) {
                a.registerListener(i, c, 3);
            }
        }
    }

    private static void a(Map<String, String> map) {
        float[] fArr = d;
        float[] fArr2 = e;
        if (fArr != null) {
            int iMin = Math.min(g.length, fArr.length);
            for (int i2 = 0; i2 < iMin; i2++) {
                map.put("accelerometer_" + g[i2], String.valueOf(fArr[i2]));
            }
        }
        if (fArr2 != null) {
            int iMin2 = Math.min(g.length, fArr2.length);
            for (int i3 = 0; i3 < iMin2; i3++) {
                map.put("rotation_" + g[i3], String.valueOf(fArr2[i3]));
            }
        }
    }

    private static void b(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        f.put("available_memory", String.valueOf(memoryInfo.availMem));
    }

    private static void c(Context context) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        f.put("free_space", String.valueOf(((long) statFs.getAvailableBlocks()) * statFs.getBlockSize()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void d() {
        if (a != null) {
            a.unregisterListener(h);
        }
        h = null;
    }

    private static void d(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            return;
        }
        int intExtra = intentRegisterReceiver.getIntExtra(ao.f, -1);
        int intExtra2 = intentRegisterReceiver.getIntExtra("scale", -1);
        int intExtra3 = intentRegisterReceiver.getIntExtra("status", -1);
        boolean z = intExtra3 == 2 || intExtra3 == 5;
        f.put("battery", String.valueOf(intExtra2 > 0 ? (intExtra / intExtra2) * 100.0f : 0.0f));
        f.put("charging", z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void e() {
        if (a != null) {
            a.unregisterListener(i);
        }
        i = null;
    }
}
