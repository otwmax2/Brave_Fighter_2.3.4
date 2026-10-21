package com.tendcloud.tenddata.game;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.nfc.NfcAdapter;
import android.nfc.NfcManager;
import android.nfc.cardemulation.CardEmulation;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class j {
    private static final int a = 3600000;

    public static class a {
        static final int a = 0;
        static final int b = 1;
        static final int c = 2;
        static final int d = 3;
    }

    private static int a(String str) {
        try {
            Matcher matcher = Pattern.compile("([0-9]+)").matcher(str);
            return Integer.valueOf(matcher.find() ? matcher.toMatchResult().group(0) : "").intValue();
        } catch (Exception e) {
            return 0;
        }
    }

    public static String a() {
        return "Android+" + Build.VERSION.RELEASE;
    }

    private static String a(String str, String str2) {
        try {
            String lowerCase = str.toLowerCase();
            if (!lowerCase.startsWith("unknown") && !lowerCase.startsWith("alps") && !lowerCase.startsWith("android") && !lowerCase.startsWith("sprd") && !lowerCase.startsWith("spreadtrum") && !lowerCase.startsWith("rockchip") && !lowerCase.startsWith("wondermedia") && !lowerCase.startsWith("mtk") && !lowerCase.startsWith("mt65") && !lowerCase.startsWith("nvidia") && !lowerCase.startsWith("brcm") && !lowerCase.startsWith("marvell")) {
                if (!str2.toLowerCase().contains(lowerCase)) {
                    return str;
                }
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.util.List a(android.content.Context r7, int r8) throws java.lang.Throwable {
        /*
            android.content.pm.PackageManager r1 = r7.getPackageManager()
            java.util.List r0 = r1.getInstalledPackages(r8)     // Catch: java.lang.Throwable -> L9
        L8:
            return r0
        L9:
            r0 = move-exception
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r3 = 0
            java.lang.Runtime r2 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L5f java.lang.Throwable -> L6e
            java.lang.String r4 = "pm list packages"
            java.lang.Process r4 = r2.exec(r4)     // Catch: java.lang.Throwable -> L5f java.lang.Throwable -> L6e
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L5f java.lang.Throwable -> L6e
            java.io.InputStreamReader r5 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L5f java.lang.Throwable -> L6e
            java.io.InputStream r6 = r4.getInputStream()     // Catch: java.lang.Throwable -> L5f java.lang.Throwable -> L6e
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L5f java.lang.Throwable -> L6e
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L5f java.lang.Throwable -> L6e
        L28:
            java.lang.String r3 = r2.readLine()     // Catch: java.lang.Throwable -> L42 java.lang.Throwable -> L6b
            if (r3 == 0) goto L51
            r5 = 58
            int r5 = r3.indexOf(r5)     // Catch: java.lang.Throwable -> L42 java.lang.Throwable -> L6b
            int r5 = r5 + 1
            java.lang.String r3 = r3.substring(r5)     // Catch: java.lang.Throwable -> L42 java.lang.Throwable -> L6b
            android.content.pm.PackageInfo r3 = r1.getPackageInfo(r3, r8)     // Catch: java.lang.Throwable -> L42 java.lang.Throwable -> L6b
            r0.add(r3)     // Catch: java.lang.Throwable -> L42 java.lang.Throwable -> L6b
            goto L28
        L42:
            r1 = move-exception
        L43:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L6b
            if (r2 == 0) goto L8
            r2.close()     // Catch: java.lang.Throwable -> L4c
            goto L8
        L4c:
            r1 = move-exception
            r1.printStackTrace()
            goto L8
        L51:
            r4.waitFor()     // Catch: java.lang.Throwable -> L42 java.lang.Throwable -> L6b
            if (r2 == 0) goto L8
            r2.close()     // Catch: java.lang.Throwable -> L5a
            goto L8
        L5a:
            r1 = move-exception
            r1.printStackTrace()
            goto L8
        L5f:
            r0 = move-exception
        L60:
            if (r3 == 0) goto L65
            r3.close()     // Catch: java.lang.Throwable -> L66
        L65:
            throw r0
        L66:
            r1 = move-exception
            r1.printStackTrace()
            goto L65
        L6b:
            r0 = move-exception
            r3 = r2
            goto L60
        L6e:
            r1 = move-exception
            r2 = r3
            goto L43
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.game.j.a(android.content.Context, int):java.util.List");
    }

    public static JSONObject a(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("nfc-status", b(context));
            jSONObject.put("appsRegistedHCE", d(context));
            jSONObject.put("ssMode", e(context));
            return jSONObject;
        } catch (Throwable th) {
            return null;
        }
    }

    public static int b(Context context) {
        if (context == null) {
            return 0;
        }
        NfcAdapter defaultAdapter = ((NfcManager) context.getSystemService("nfc")).getDefaultAdapter();
        return defaultAdapter != null ? !defaultAdapter.isEnabled() ? 1 : (aa.a(19) && context.getPackageManager().hasSystemFeature("android.hardware.nfc.hce")) ? 3 : 2 : 0;
    }

    public static String b() {
        return Build.MANUFACTURER.trim();
    }

    private static String b(String str) {
        FileReader fileReader;
        char[] cArr;
        BufferedReader bufferedReader;
        String str2 = null;
        try {
            fileReader = new FileReader(str);
            try {
                cArr = new char[1024];
                bufferedReader = new BufferedReader(fileReader, 1024);
            } catch (IOException e) {
            }
        } catch (Throwable th) {
        }
        while (true) {
            int i = bufferedReader.read(cArr, 0, 1024);
            if (-1 == i) {
                break;
            }
            str2 = str2 + new String(cArr, 0, i);
            return str2;
        }
        bufferedReader.close();
        fileReader.close();
        return str2;
    }

    public static String c() {
        return Build.BRAND.trim();
    }

    public static String c(Context context) {
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            if (displayMetrics != null) {
                int i = displayMetrics.widthPixels;
                int i2 = displayMetrics.heightPixels;
                return Math.min(i, i2) + "*" + Math.max(i, i2) + "*" + displayMetrics.densityDpi;
            }
        } catch (Throwable th) {
        }
        return "";
    }

    public static String d() {
        return Build.MODEL.trim();
    }

    private static JSONArray d(Context context) {
        if (!aa.a(19)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            for (PackageInfo packageInfo : a(context, 4)) {
                ServiceInfo[] serviceInfoArr = packageInfo.services;
                if (serviceInfoArr != null) {
                    for (ServiceInfo serviceInfo : serviceInfoArr) {
                        Bundle bundle = serviceInfo.metaData;
                        if (bundle != null && bundle.containsKey("android.nfc.cardemulation.host_apdu_service")) {
                            jSONArray.put(packageInfo.packageName);
                        }
                    }
                }
            }
            return jSONArray;
        } catch (Throwable th) {
            return null;
        }
    }

    public static int e() {
        return TimeZone.getDefault().getRawOffset() / a;
    }

    private static int e(Context context) {
        try {
            if (aa.a(19)) {
                return CardEmulation.getInstance(((NfcManager) context.getSystemService("nfc")).getDefaultAdapter()).getSelectionModeForCategory("payment");
            }
            return -1;
        } catch (Throwable th) {
            return -1;
        }
    }

    public static String f() {
        try {
            String strTrim = Build.MODEL.trim();
            String strA = a(Build.MANUFACTURER.trim(), strTrim);
            if (TextUtils.isEmpty(strA)) {
                strA = a(Build.BRAND.trim(), strTrim);
            }
            if (strA == null) {
                strA = "";
            }
            return strA + ":" + strTrim;
        } catch (Throwable th) {
            return "";
        }
    }

    public static int g() {
        return Build.VERSION.SDK_INT;
    }

    public static String h() {
        return Build.VERSION.RELEASE;
    }

    public static String i() {
        return Locale.getDefault().getLanguage();
    }

    public static String j() {
        return Locale.getDefault().getCountry();
    }

    public static String[] k() {
        boolean z;
        String[] strArr = new String[4];
        for (int i = 0; i < 4; i++) {
            strArr[i] = "";
        }
        ArrayList arrayList = new ArrayList();
        try {
            FileReader fileReader = new FileReader("/proc/cpuinfo");
            BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        arrayList.add(line);
                    } else {
                        try {
                            break;
                        } catch (IOException e) {
                            z = true;
                        } catch (Throwable th) {
                            z = true;
                        }
                    }
                } catch (Throwable th2) {
                    try {
                        bufferedReader.close();
                        fileReader.close();
                        z = false;
                    } catch (IOException e2) {
                        z = false;
                    }
                }
            }
            bufferedReader.close();
            fileReader.close();
            z = true;
        } catch (Throwable th3) {
            z = false;
        }
        String[] strArr2 = {"Processor\\s*:\\s*(.*)", "CPU\\s*variant\\s*:\\s*0x(.*)", "Hardware\\s*:\\s*(.*)"};
        if (z) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < 3; i2++) {
                Pattern patternCompile = Pattern.compile(strArr2[i2]);
                for (int i3 = 0; i3 < size; i3++) {
                    Matcher matcher = patternCompile.matcher((String) arrayList.get(i3));
                    if (matcher.find()) {
                        strArr[i2] = matcher.toMatchResult().group(1);
                    }
                }
            }
        }
        strArr[3] = b("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq");
        return strArr;
    }

    public static String[] l() {
        return null;
    }

    public static int[] m() {
        int[] iArr = {0, 0};
        int[] iArr2 = new int[4];
        for (int i = 0; i < 4; i++) {
            iArr2[i] = 0;
        }
        try {
            FileReader fileReader = new FileReader("/proc/meminfo");
            BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
            for (int i2 = 0; i2 < 4; i2++) {
                try {
                    iArr2[i2] = a(bufferedReader.readLine());
                } catch (IOException e) {
                    try {
                        bufferedReader.close();
                        fileReader.close();
                    } catch (IOException e2) {
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                        fileReader.close();
                    } catch (IOException e3) {
                    }
                    throw th;
                }
            }
            iArr[0] = iArr2[0];
            iArr[1] = iArr2[3] + iArr2[1] + iArr2[2];
            try {
                bufferedReader.close();
                fileReader.close();
            } catch (IOException e4) {
            }
        } catch (Throwable th2) {
        }
        return iArr;
    }

    public static int[] n() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
            int availableBlocks = statFs.getAvailableBlocks();
            StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
            return new int[]{(statFs.getBlockCount() * (statFs.getBlockSize() / 512)) / 2, ((statFs.getBlockSize() / 512) * availableBlocks) / 2, (statFs2.getBlockCount() * (statFs2.getBlockSize() / 512)) / 2, ((statFs2.getBlockSize() / 512) * statFs2.getAvailableBlocks()) / 2};
        } catch (Throwable th) {
            return null;
        }
    }

    public static int o() {
        try {
            Matcher matcher = Pattern.compile("\\s*([0-9]+)").matcher(b("/sys/class/power_supply/battery/full_bat"));
            if (matcher.find()) {
                return Integer.valueOf(matcher.toMatchResult().group(0)).intValue();
            }
            return 0;
        } catch (Exception e) {
            return 0;
        }
    }
}
