package com.tendcloud.tenddata.game;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.regex.Pattern;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class i {
    static TelephonyManager a = null;
    static String b = null;
    private static final String c = "pref.deviceid.key";
    private static final String d = "00:00:00:00:00:00";
    private static final String h = ".tcookieid";
    private static final Pattern e = Pattern.compile("^([0-9A-F]{2}:){5}([0-9A-F]{2})$");
    private static final Pattern f = Pattern.compile("[0-3][0-9a-f]{24,32}");
    private static final Pattern g = Pattern.compile("[0-3][0-9a-f]{32}");
    private static String i = null;

    public static final String a() {
        try {
            if (aa.a(9)) {
                return Build.SERIAL;
            }
        } catch (Throwable th) {
        }
        return null;
    }

    static String a(Context context, boolean z) {
        if (aa.a(23) && context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
            return null;
        }
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            return "";
        }
        String strA = a(new File(Environment.getExternalStorageDirectory(), z ? h : h + k(context)));
        return aa.b(strA) ? a(new File(Environment.getExternalStorageDirectory(), ".tid" + k(context))) : strA;
    }

    private static String a(File file) {
        try {
            if (file.exists() && file.canRead()) {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[128];
                int i2 = fileInputStream.read(bArr);
                fileInputStream.close();
                return new String(bArr, 0, i2);
            }
        } catch (Throwable th) {
        }
        return null;
    }

    public static void a(Context context) {
        a = (TelephonyManager) context.getSystemService("phone");
    }

    private static void a(Context context, String str) {
        File[] fileArrListFiles = new File("/").listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (file.isDirectory() && !"/sdcard".equals(file.getAbsolutePath())) {
                if (file.canWrite() && !new File(file, h + k(context)).exists()) {
                    a(new File(file, h), str);
                }
                if (file.listFiles() != null) {
                    File[] fileArrListFiles2 = file.listFiles();
                    for (File file2 : fileArrListFiles2) {
                        if (file2.isDirectory() && file2.canWrite() && !new File(file2, h + k(context)).exists()) {
                            a(new File(file2, h), str);
                        }
                    }
                }
            }
        }
    }

    private static void a(Context context, String str, boolean z) {
        a(new File(Environment.getExternalStorageDirectory(), z ? h : h + k(context)), str);
    }

    private static void a(File file, String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(str.getBytes());
            fileOutputStream.close();
            if (aa.a(9)) {
                file.getClass().getMethod("setReadable", Boolean.TYPE, Boolean.TYPE).invoke(file, true, false);
            } else {
                Runtime.getRuntime().exec("chmod 444 " + file.getAbsolutePath());
            }
        } catch (Throwable th) {
        }
    }

    static String b() {
        String strA = null;
        File[] fileArrListFiles = new File("/").listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length != 0) {
            loop0: for (File file : fileArrListFiles) {
                if (file.isDirectory() && !"/sdcard".equals(file.getAbsolutePath())) {
                    if (file.canWrite()) {
                        strA = a(new File(file, h));
                        if (!aa.b(strA)) {
                            break;
                        }
                    }
                    if (file.listFiles() != null) {
                        File[] fileArrListFiles2 = file.listFiles();
                        for (File file2 : fileArrListFiles2) {
                            if (file2.isDirectory()) {
                                strA = a(new File(file2, h));
                                if (!aa.b(strA)) {
                                    break loop0;
                                }
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return strA;
    }

    public static synchronized String b(Context context) {
        if (b == null) {
            b = l(context);
        }
        return b;
    }

    private static void b(Context context, String str) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("tdid", 0);
            if (sharedPreferences != null) {
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putString(c, str);
                editorEdit.commit();
            }
        } catch (Throwable th) {
        }
    }

    public static String c(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable th) {
            return null;
        }
    }

    static boolean c() {
        boolean zBooleanValue;
        try {
            zBooleanValue = aa.a(9) ? ((Boolean) Environment.class.getMethod("isExternalStorageRemovable", new Class[0]).invoke(null, new Object[0])).booleanValue() : true;
        } catch (Throwable th) {
            zBooleanValue = true;
        }
        return !zBooleanValue;
    }

    public static String d(Context context) {
        String string;
        try {
            if (aa.a(23) && context.checkSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
                return null;
            }
            if (aa.b(context, "android.permission.READ_PHONE_STATE")) {
                if (a == null) {
                    a(context);
                }
                JSONArray jSONArrayY = o.y(context);
                if (jSONArrayY == null || jSONArrayY.length() != 2) {
                    string = null;
                } else {
                    try {
                        string = jSONArrayY.getJSONObject(1).getString("imei");
                    } catch (Exception e2) {
                        string = null;
                    }
                }
                return string == null ? a.getDeviceId() : string;
            }
        } catch (Throwable th) {
        }
        return null;
    }

    public static String e(Context context) {
        try {
            if ((aa.a(23) && context.checkSelfPermission("android.permission.READ_PHONE_STATE") != 0) || !aa.b(context, "android.permission.READ_PHONE_STATE")) {
                return null;
            }
            if (a == null) {
                a(context);
            }
            return a.getSimSerialNumber();
        } catch (Throwable th) {
            return null;
        }
    }

    public static String f(Context context) {
        try {
            if ((aa.a(23) && context.checkSelfPermission("android.permission.READ_PHONE_STATE") != 0) || !aa.b(context, "android.permission.READ_PHONE_STATE")) {
                return null;
            }
            if (a == null) {
                a(context);
            }
            return a.getSubscriberId();
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String g(android.content.Context r3) {
        /*
            r1 = 0
            boolean r0 = com.tendcloud.tenddata.game.aa.b
            if (r0 != 0) goto L6
        L5:
            return r1
        L6:
            java.lang.String r0 = "android.permission.ACCESS_WIFI_STATE"
            boolean r0 = com.tendcloud.tenddata.game.aa.b(r3, r0)     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L4c
            java.lang.String r0 = "wifi"
            java.lang.Object r0 = r3.getSystemService(r0)     // Catch: java.lang.Throwable -> L47
            android.net.wifi.WifiManager r0 = (android.net.wifi.WifiManager) r0     // Catch: java.lang.Throwable -> L47
            boolean r2 = r0.isWifiEnabled()     // Catch: java.lang.Throwable -> L47
            if (r2 == 0) goto L4c
            android.net.wifi.WifiInfo r0 = r0.getConnectionInfo()     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L4c
            java.lang.String r0 = r0.getMacAddress()     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L45
            java.lang.String r2 = r0.toUpperCase()     // Catch: java.lang.Throwable -> L4a
            java.lang.String r0 = r2.trim()     // Catch: java.lang.Throwable -> L4a
            java.lang.String r2 = "00:00:00:00:00:00"
            boolean r2 = r2.equals(r0)     // Catch: java.lang.Throwable -> L4a
            if (r2 != 0) goto L44
            java.util.regex.Pattern r2 = com.tendcloud.tenddata.game.i.e     // Catch: java.lang.Throwable -> L4a
            java.util.regex.Matcher r2 = r2.matcher(r0)     // Catch: java.lang.Throwable -> L4a
            boolean r2 = r2.matches()     // Catch: java.lang.Throwable -> L4a
            if (r2 != 0) goto L45
        L44:
            r0 = r1
        L45:
            r1 = r0
            goto L5
        L47:
            r0 = move-exception
            r0 = r1
            goto L45
        L4a:
            r1 = move-exception
            goto L45
        L4c:
            r0 = r1
            goto L45
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.game.i.g(android.content.Context):java.lang.String");
    }

    public static final String h(Context context) {
        try {
            return (String) Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("getId", new Class[0]).invoke(Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", Context.class).invoke(null, context), new Object[0]);
        } catch (Throwable th) {
            return null;
        }
    }

    public static final String i(Context context) {
        String strG = g(context);
        if (!TextUtils.isEmpty(strG)) {
            strG = String.valueOf(Long.parseLong(strG.replaceAll(":", ""), 16));
        }
        return "2|" + strG + "|" + c(context) + "|" + d(context) + "|" + f(context) + "|" + e(context) + "|" + b(context) + "|" + h(context) + "|" + a();
    }

    static String j(Context context) {
        String strB = t.b(context, "tdid", c, (String) null);
        return aa.b(strB) ? PreferenceManager.getDefaultSharedPreferences(context).getString(c, null) : strB;
    }

    static String k(Context context) {
        if (i == null) {
            try {
                Sensor[] sensorArr = new Sensor[64];
                for (Sensor sensor : ((SensorManager) context.getSystemService("sensor")).getSensorList(-1)) {
                    if (sensor.getType() < sensorArr.length && sensor.getType() >= 0) {
                        sensorArr[sensor.getType()] = sensor;
                    }
                }
                StringBuffer stringBuffer = new StringBuffer();
                for (int i2 = 0; i2 < sensorArr.length; i2++) {
                    if (sensorArr[i2] != null) {
                        stringBuffer.append(i2).append('.').append(sensorArr[i2].getVendor()).append('-').append(sensorArr[i2].getName()).append('-').append(sensorArr[i2].getVersion()).append('\n');
                    }
                }
                i = String.valueOf(stringBuffer.toString().hashCode());
            } catch (Throwable th) {
            }
        }
        return i;
    }

    private static String l(Context context) {
        String strM;
        int i2 = 0;
        String strJ = j(context);
        String strB = b();
        boolean zC = c();
        String strA = a(context, zC);
        String[] strArr = {strJ, strB, strA};
        int length = strArr.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                strM = null;
                break;
            }
            strM = strArr[i3];
            if (!aa.b(strM) && g.matcher(strM).matches()) {
                break;
            }
            i3++;
        }
        if (aa.b(strM) && !aa.b(strJ) && Math.random() < 0.99d) {
            int length2 = strArr.length;
            while (true) {
                if (i2 >= length2) {
                    break;
                }
                String str = strArr[i2];
                if (!aa.b(str) && f.matcher(str).matches()) {
                    strM = str;
                    break;
                }
                i2++;
            }
        }
        if (aa.b(strM)) {
            strM = m(context);
        }
        if (!strM.equals(strJ)) {
            b(context, strM);
        }
        if (!strM.equals(strA)) {
            a(context, strM, zC);
        }
        if (!strM.equals(strB)) {
            a(context, strM);
        }
        return strM;
    }

    private static String m(Context context) {
        return "3" + aa.c(n(context));
    }

    private static String n(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(d(context)).append('-').append(g(context)).append('-').append(c(context));
        return sb.toString();
    }
}
