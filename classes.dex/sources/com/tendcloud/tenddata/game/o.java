package com.tendcloud.tenddata.game;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.CellLocation;
import android.telephony.CellSignalStrength;
import android.telephony.CellSignalStrengthCdma;
import android.telephony.CellSignalStrengthGsm;
import android.telephony.NeighboringCellInfo;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.share.internal.ShareConstants;
import com.ironsource.environment.ConnectivityService;
import com.ironsource.mediationsdk.logger.ServerLogger;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.constants.LocationConst;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class o {
    static TelephonyManager a = null;
    static final String b = "www.talkingdata.net";
    static final int c = 80;
    static final long e = 300000;
    private static final String[] g = {"UNKNOWN", "GPRS", "EDGE", "UMTS", "CDMA", "EVDO_0", "EVDO_A", "1xRTT", "HSDPA", "HSUPA", "HSPA", "IDEN", "EVDO_B", "LTE", "EHRPD", "HSPAP"};
    private static final String[] h = {"NONE", "GSM", "CDMA", "SIP"};
    static boolean d = false;
    static long f = -300000;

    public static Map A(Context context) {
        if (e(context)) {
            try {
                String strB = b(context);
                if (strB != null) {
                    String strSubstring = strB.substring(0, strB.lastIndexOf(46) + 1);
                    int i = Integer.parseInt(strB.substring(strB.lastIndexOf(46) + 1));
                    for (int i2 = i + (-5) >= 1 ? i - 5 : 1; i2 < i + 7; i2++) {
                        if (i2 <= 254) {
                            byte[] bArr = {1};
                            new DatagramSocket().send(new DatagramPacket(bArr, bArr.length, InetAddress.getByName(strSubstring + i2), 80));
                            Thread.sleep(200L);
                        }
                    }
                }
                return b();
            } catch (Throwable th) {
            }
        }
        return null;
    }

    private static JSONArray B(Context context) {
        int i;
        Integer num;
        try {
            JSONArray jSONArray = new JSONArray();
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Class<?> cls = Class.forName("com.android.internal.telephony.Phone");
            try {
                Field field = cls.getField("GEMINI_SIM_1");
                field.setAccessible(true);
                Integer num2 = (Integer) field.get(null);
                Field field2 = cls.getField("GEMINI_SIM_2");
                field2.setAccessible(true);
                i = (Integer) field2.get(null);
                num = num2;
            } catch (Throwable th) {
                i = 1;
                num = 0;
            }
            Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getDeviceIdGemini", Integer.TYPE);
            if (telephonyManager == null || declaredMethod == null) {
                return null;
            }
            String strTrim = ((String) declaredMethod.invoke(telephonyManager, num)).trim();
            String strTrim2 = ((String) declaredMethod.invoke(telephonyManager, i)).trim();
            if (b(strTrim).booleanValue()) {
                jSONArray.put(a(TelephonyManager.class, telephonyManager, num, strTrim, "Gemini"));
            }
            if (b(strTrim2).booleanValue()) {
                jSONArray.put(a(TelephonyManager.class, telephonyManager, i, strTrim2, "Gemini"));
            }
            return jSONArray;
        } catch (Throwable th2) {
            return null;
        }
    }

    private static JSONArray C(Context context) {
        int i;
        int i2;
        JSONObject jSONObjectA;
        JSONObject jSONObjectA2;
        try {
            JSONArray jSONArray = new JSONArray();
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Class<?> cls = Class.forName("com.android.internal.telephony.Phone");
            try {
                Field field = cls.getField("GEMINI_SIM_1");
                field.setAccessible(true);
                i = (Integer) field.get(null);
                Field field2 = cls.getField("GEMINI_SIM_2");
                field2.setAccessible(true);
                i2 = (Integer) field2.get(null);
            } catch (Throwable th) {
                i = 0;
                i2 = 1;
            }
            Method method = TelephonyManager.class.getMethod("getDefault", Integer.TYPE);
            TelephonyManager telephonyManager2 = (TelephonyManager) method.invoke(telephonyManager, i);
            TelephonyManager telephonyManager3 = (TelephonyManager) method.invoke(telephonyManager, i2);
            String strTrim = telephonyManager2.getDeviceId().trim();
            String strTrim2 = telephonyManager3.getDeviceId().trim();
            if (b(strTrim).booleanValue() && (jSONObjectA2 = a(telephonyManager2, strTrim)) != null) {
                jSONArray.put(jSONObjectA2);
            }
            if (b(strTrim2).booleanValue() && (jSONObjectA = a(telephonyManager3, strTrim2)) != null) {
                jSONArray.put(jSONObjectA);
            }
            return jSONArray;
        } catch (Throwable th2) {
            return null;
        }
    }

    private static JSONArray D(Context context) {
        JSONObject jSONObjectA;
        JSONObject jSONObjectA2;
        try {
            JSONArray jSONArray = new JSONArray();
            Class<?> cls = Class.forName("com.android.internal.telephony.PhoneFactory");
            String str = (String) cls.getMethod("getServiceName", String.class, Integer.TYPE).invoke(cls, "phone", 1);
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            String strTrim = telephonyManager.getDeviceId().trim();
            TelephonyManager telephonyManager2 = (TelephonyManager) context.getSystemService(str);
            String strTrim2 = telephonyManager2.getDeviceId().trim();
            if (b(strTrim).booleanValue() && (jSONObjectA2 = a(telephonyManager, strTrim)) != null) {
                jSONArray.put(jSONObjectA2);
            }
            if (b(strTrim2).booleanValue() && (jSONObjectA = a(telephonyManager2, strTrim2)) != null) {
                jSONArray.put(jSONObjectA);
            }
            return jSONArray;
        } catch (Throwable th) {
            return null;
        }
    }

    private static JSONArray E(Context context) {
        try {
            JSONArray jSONArray = new JSONArray();
            Class<?> cls = Class.forName("android.telephony.MSimTelephonyManager");
            Object systemService = context.getSystemService("phone_msim");
            Method method = cls.getMethod("getDeviceId", Integer.TYPE);
            String strTrim = ((String) method.invoke(systemService, 0)).trim();
            String strTrim2 = ((String) method.invoke(systemService, 1)).trim();
            if (b(strTrim).booleanValue()) {
                jSONArray.put(a(cls, systemService, 0, strTrim, ""));
            }
            if (b(strTrim2).booleanValue()) {
                jSONArray.put(a(cls, systemService, 1, strTrim2, ""));
            }
            return jSONArray;
        } catch (Throwable th) {
            return null;
        }
    }

    private static Boolean a(String str) {
        try {
            char cCharAt = str.length() > 0 ? str.charAt(0) : '0';
            for (int i = 0; i < str.length(); i++) {
                if (cCharAt != str.charAt(i)) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    private static String a(int i) {
        return (i < 0 || i >= g.length) ? String.valueOf(i) : g[i];
    }

    private static JSONArray a(BitSet bitSet) {
        int iCardinality = bitSet.cardinality();
        if (bitSet != null && iCardinality >= 1) {
            JSONArray jSONArray = new JSONArray();
            int iNextSetBit = bitSet.nextSetBit(0);
            while (iNextSetBit >= 0) {
                jSONArray.put(iNextSetBit);
                iNextSetBit = bitSet.nextSetBit(iNextSetBit + 1);
            }
        }
        return null;
    }

    public static JSONObject a(int i, int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("lat", i);
            jSONObject.put("lng", i2);
            jSONObject.put("unit", "qd");
        } catch (Throwable th) {
        }
        return jSONObject;
    }

    private static JSONObject a(TelephonyManager telephonyManager, SubscriptionManager subscriptionManager, int i) {
        SubscriptionInfo activeSubscriptionInfoForSimSlotIndex;
        JSONObject jSONObject = new JSONObject();
        try {
            if (aa.a(22) && (activeSubscriptionInfoForSimSlotIndex = subscriptionManager.getActiveSubscriptionInfoForSimSlotIndex(i)) != null) {
                jSONObject.put("simSerialNumber", activeSubscriptionInfoForSimSlotIndex.getIccId() == null ? "" : activeSubscriptionInfoForSimSlotIndex.getIccId());
                jSONObject.put(Constants.RequestParameters.SIM_OPERATOR, activeSubscriptionInfoForSimSlotIndex.getMcc() + AppEventsConstants.EVENT_PARAM_VALUE_NO + activeSubscriptionInfoForSimSlotIndex.getMnc());
                jSONObject.put("simOperatorName", activeSubscriptionInfoForSimSlotIndex.getCarrierName() == null ? "" : activeSubscriptionInfoForSimSlotIndex.getCarrierName());
                jSONObject.put("simCountryIso", activeSubscriptionInfoForSimSlotIndex.getCountryIso() == null ? "" : activeSubscriptionInfoForSimSlotIndex.getCountryIso());
                int subscriptionId = activeSubscriptionInfoForSimSlotIndex.getSubscriptionId();
                Method method = telephonyManager.getClass().getMethod("getSubscriberId", Integer.TYPE);
                method.setAccessible(true);
                Object objInvoke = method.invoke(telephonyManager, Integer.valueOf(subscriptionId));
                if (objInvoke == null) {
                    objInvoke = "";
                }
                jSONObject.put("subscriberId", objInvoke);
            }
        } catch (Throwable th) {
        }
        return jSONObject;
    }

    private static JSONObject a(TelephonyManager telephonyManager, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("imei", str.trim());
            jSONObject.put("subscriberId", telephonyManager.getSubscriberId() == null ? "" : telephonyManager.getSubscriberId());
            jSONObject.put("simSerialNumber", telephonyManager.getSimSerialNumber() == null ? "" : telephonyManager.getSimSerialNumber());
            jSONObject.put("dataState", telephonyManager.getDataState());
            jSONObject.put("networkType", a(telephonyManager.getNetworkType()));
            jSONObject.put("networkOperator", telephonyManager.getNetworkOperator());
            jSONObject.put(Constants.RequestParameters.PHONE_TYPE, b(telephonyManager.getPhoneType()));
            jSONObject.put(Constants.RequestParameters.SIM_OPERATOR, telephonyManager.getSimOperator() == null ? "" : telephonyManager.getSimOperator());
            jSONObject.put("simOperatorName", telephonyManager.getSimOperatorName() == null ? "" : telephonyManager.getSimOperatorName());
            jSONObject.put("simCountryIso", telephonyManager.getSimCountryIso() == null ? "" : telephonyManager.getSimCountryIso());
            return jSONObject;
        } catch (Throwable th) {
            return null;
        }
    }

    private static JSONObject a(Class cls, Object obj, Integer num, String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("imei", str);
        try {
            Method method = cls.getMethod("getSubscriberId" + str2, Integer.TYPE);
            jSONObject.put("subscriberId", method.invoke(obj, num) == null ? "" : ((String) method.invoke(obj, num)).trim());
        } catch (Throwable th) {
        }
        try {
            Method method2 = cls.getMethod("getSimSerialNumber" + str2, Integer.TYPE);
            jSONObject.put("simSerialNumber", method2.invoke(obj, num) == null ? "" : ((String) method2.invoke(obj, num)).trim());
        } catch (Throwable th2) {
        }
        try {
            jSONObject.put("dataState", (Integer) cls.getMethod("getDataState" + str2, Integer.TYPE).invoke(obj, num));
        } catch (Throwable th3) {
        }
        try {
            jSONObject.put("networkType", a(((Integer) cls.getMethod("getNetworkType" + str2, Integer.TYPE).invoke(obj, num)).intValue()));
        } catch (Throwable th4) {
        }
        try {
            jSONObject.put("networkOperator", (String) cls.getMethod("getNetworkOperator" + str2, Integer.TYPE).invoke(obj, num));
        } catch (Throwable th5) {
        }
        try {
            jSONObject.put(Constants.RequestParameters.PHONE_TYPE, b(((Integer) cls.getMethod("getPhoneType" + str2, Integer.TYPE).invoke(obj, num)).intValue()));
        } catch (Throwable th6) {
        }
        try {
            Method method3 = cls.getMethod("getSimOperator" + str2, Integer.TYPE);
            jSONObject.put(Constants.RequestParameters.SIM_OPERATOR, method3.invoke(obj, num) == null ? "" : ((String) method3.invoke(obj, num)).trim());
        } catch (Throwable th7) {
        }
        try {
            Method method4 = cls.getMethod("getSimOperatorName" + str2, Integer.TYPE);
            jSONObject.put("simOperatorName", method4.invoke(obj, num) == null ? "" : ((String) method4.invoke(obj, num)).trim());
        } catch (Throwable th8) {
        }
        return jSONObject;
    }

    static void a(Context context) {
        try {
            a = (TelephonyManager) context.getSystemService("phone");
        } catch (Throwable th) {
        }
    }

    public static boolean a() {
        boolean z = true;
        try {
            if (aa.a(11)) {
                if (TextUtils.isEmpty(System.getProperty("http.proxyHost"))) {
                    z = false;
                }
            } else if (TextUtils.isEmpty(Proxy.getDefaultHost())) {
                z = false;
            }
            return z;
        } catch (Throwable th) {
            return false;
        }
    }

    private static Boolean b(String str) {
        try {
            Integer numValueOf = Integer.valueOf(str.length());
            if (numValueOf.intValue() > 10 && numValueOf.intValue() < 20 && !a(str.trim()).booleanValue()) {
                return true;
            }
        } catch (Throwable th) {
        }
        return false;
    }

    private static String b(int i) {
        return (i < 0 || i >= h.length) ? String.valueOf(i) : h[i];
    }

    public static String b(Context context) {
        Enumeration<NetworkInterface> networkInterfaces;
        try {
            networkInterfaces = NetworkInterface.getNetworkInterfaces();
        } catch (Throwable th) {
        }
        while (networkInterfaces.hasMoreElements()) {
            Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
            while (inetAddresses.hasMoreElements()) {
                InetAddress inetAddressNextElement = inetAddresses.nextElement();
                if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address)) {
                    return inetAddressNextElement.getHostAddress().toString();
                }
                return null;
            }
        }
        return null;
    }

    private static Map b() throws IOException {
        HashMap map = new HashMap();
        BufferedReader bufferedReader = new BufferedReader(new FileReader(new File("/proc/net/arp")));
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                bufferedReader.close();
                return map;
            }
            String[] strArrSplit = line.split("[ ]+");
            if (!strArrSplit[0].matches("IP")) {
                String str = strArrSplit[0];
                String str2 = strArrSplit[3];
                if (!map.containsKey(str) && !str2.equals("00:00:00:00:00:00")) {
                    map.put(str, str2);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[Catch: Throwable -> 0x0086, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #5 {Throwable -> 0x0086, blocks: (B:3:0x0001, B:5:0x0009, B:7:0x0017, B:9:0x001c, B:11:0x0023, B:13:0x002f, B:15:0x003d, B:41:0x0085), top: B:57:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean c(android.content.Context r5) {
        /*
            r1 = 0
            java.lang.String r0 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r0 = com.tendcloud.tenddata.game.aa.b(r5, r0)     // Catch: java.lang.Throwable -> L86
            if (r0 == 0) goto L2f
            java.lang.String r0 = "connectivity"
            java.lang.Object r0 = r5.getSystemService(r0)     // Catch: java.lang.Throwable -> L86
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0     // Catch: java.lang.Throwable -> L86
            android.net.NetworkInfo r2 = r0.getActiveNetworkInfo()     // Catch: java.lang.Throwable -> L86
            if (r2 == 0) goto L1c
            boolean r0 = r2.isConnected()     // Catch: java.lang.Throwable -> L86
        L1b:
            return r0
        L1c:
            r2 = 0
            android.net.NetworkInfo r0 = r0.getNetworkInfo(r2)     // Catch: java.lang.Throwable -> L86
            if (r0 == 0) goto L63
            android.net.NetworkInfo$State r0 = r0.getState()     // Catch: java.lang.Throwable -> L86
            android.net.NetworkInfo$State r2 = android.net.NetworkInfo.State.UNKNOWN     // Catch: java.lang.Throwable -> L86
            boolean r0 = r0.equals(r2)     // Catch: java.lang.Throwable -> L86
            if (r0 == 0) goto L63
        L2f:
            long r0 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L86
            long r2 = com.tendcloud.tenddata.game.o.f     // Catch: java.lang.Throwable -> L86
            long r0 = r0 - r2
            r2 = 300000(0x493e0, double:1.482197E-318)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto L60
            long r0 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L86
            com.tendcloud.tenddata.game.o.f = r0     // Catch: java.lang.Throwable -> L86
            r0 = 0
            boolean r1 = a()     // Catch: java.lang.Throwable -> L70 java.lang.Throwable -> L7c
            if (r1 == 0) goto L65
            java.net.Socket r1 = new java.net.Socket     // Catch: java.lang.Throwable -> L70 java.lang.Throwable -> L7c
            java.lang.String r2 = android.net.Proxy.getDefaultHost()     // Catch: java.lang.Throwable -> L70 java.lang.Throwable -> L7c
            int r3 = android.net.Proxy.getDefaultPort()     // Catch: java.lang.Throwable -> L70 java.lang.Throwable -> L7c
            r1.<init>(r2, r3)     // Catch: java.lang.Throwable -> L70 java.lang.Throwable -> L7c
            r0 = r1
        L58:
            r1 = 1
            com.tendcloud.tenddata.game.o.d = r1     // Catch: java.lang.Throwable -> L70 java.lang.Throwable -> L8c
            if (r0 == 0) goto L60
            r0.close()     // Catch: java.lang.Throwable -> L88
        L60:
            boolean r0 = com.tendcloud.tenddata.game.o.d
            goto L1b
        L63:
            r0 = r1
            goto L1b
        L65:
            java.net.Socket r1 = new java.net.Socket     // Catch: java.lang.Throwable -> L70 java.lang.Throwable -> L7c
            java.lang.String r2 = "www.talkingdata.net"
            r3 = 80
            r1.<init>(r2, r3)     // Catch: java.lang.Throwable -> L70 java.lang.Throwable -> L7c
            r0 = r1
            goto L58
        L70:
            r1 = move-exception
            r1 = 0
            com.tendcloud.tenddata.game.o.d = r1     // Catch: java.lang.Throwable -> L8c
            if (r0 == 0) goto L60
            r0.close()     // Catch: java.lang.Throwable -> L7a
            goto L60
        L7a:
            r0 = move-exception
            goto L60
        L7c:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L80:
            if (r1 == 0) goto L85
            r1.close()     // Catch: java.lang.Throwable -> L8a
        L85:
            throw r0     // Catch: java.lang.Throwable -> L86
        L86:
            r0 = move-exception
            goto L60
        L88:
            r0 = move-exception
            goto L60
        L8a:
            r1 = move-exception
            goto L85
        L8c:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L80
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.game.o.c(android.content.Context):boolean");
    }

    public static boolean d(Context context) {
        try {
            if (aa.b(context, "android.permission.ACCESS_NETWORK_STATE")) {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    if (activeNetworkInfo.isAvailable()) {
                        return true;
                    }
                }
                return false;
            }
        } catch (Throwable th) {
        }
        return false;
    }

    public static boolean e(Context context) {
        try {
            return ((WifiManager) context.getSystemService(ConnectivityService.NETWORK_TYPE_WIFI)).isWifiEnabled();
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean f(Context context) {
        try {
            if (a == null) {
                a(context);
            }
            return a.getSimState() == 5;
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean g(Context context) {
        try {
            if (aa.b(context, "android.permission.ACCESS_NETWORK_STATE")) {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null && 1 == activeNetworkInfo.getType()) {
                    if (activeNetworkInfo.isConnected()) {
                        return true;
                    }
                }
                return false;
            }
        } catch (Throwable th) {
        }
        return false;
    }

    public static boolean h(Context context) {
        try {
            if (a == null) {
                a(context);
            }
            return a.getDataState() == 2;
        } catch (Throwable th) {
            return false;
        }
    }

    public static String i(Context context) {
        return !c(context) ? "OFFLINE" : g(context) ? "WIFI" : j(context);
    }

    public static String j(Context context) {
        String str = g[0];
        try {
            if (a == null) {
                a(context);
            }
            return a(a.getNetworkType());
        } catch (Throwable th) {
            return str;
        }
    }

    public static String k(Context context) {
        try {
            if (a == null) {
                a(context);
            }
            return a.getNetworkOperator();
        } catch (Throwable th) {
            return null;
        }
    }

    public static String l(Context context) {
        try {
            if (a == null) {
                a(context);
            }
            return a.getSimOperator();
        } catch (Throwable th) {
            return null;
        }
    }

    public static String m(Context context) {
        try {
            if (a == null) {
                a(context);
            }
            return a.getNetworkCountryIso();
        } catch (Throwable th) {
            return null;
        }
    }

    public static String n(Context context) {
        try {
            if (a == null) {
                a(context);
            }
            return a.getSimCountryIso();
        } catch (Throwable th) {
            return null;
        }
    }

    public static String o(Context context) {
        try {
            if ((aa.a(23) && context.checkSelfPermission("android.permission.READ_PHONE_STATE") != 0) || !aa.b(context, "android.permission.READ_PHONE_STATE") || Build.VERSION.SDK_INT < 18) {
                return null;
            }
            if (a == null) {
                a(context);
            }
            return a.getGroupIdLevel1();
        } catch (Throwable th) {
            return null;
        }
    }

    public static String p(Context context) {
        try {
            if (a == null) {
                a(context);
            }
            return a.getNetworkOperatorName();
        } catch (Throwable th) {
            return null;
        }
    }

    public static String q(Context context) {
        try {
            if (a == null) {
                a(context);
            }
            return a.getSimOperatorName();
        } catch (Throwable th) {
            return null;
        }
    }

    public static JSONArray r(Context context) {
        JSONArray jSONArray = new JSONArray();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", ConnectivityService.NETWORK_TYPE_WIFI);
            jSONObject.put(Constants.ParametersKeys.AVAILABLE, e(context));
            jSONObject.put("connected", g(context));
            jSONObject.put("current", w(context));
            jSONObject.put("scannable", x(context));
            jSONObject.put("configured", u(context));
            jSONArray.put(jSONObject);
        } catch (Throwable th) {
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("type", "cellular");
            jSONObject2.put(Constants.ParametersKeys.AVAILABLE, f(context));
            jSONObject2.put("connected", h(context));
            jSONObject2.put("current", s(context));
            jSONObject2.put("scannable", t(context));
            jSONArray.put(jSONObject2);
        } catch (Throwable th2) {
        }
        if (jSONArray.length() > 0) {
            return jSONArray;
        }
        return null;
    }

    public static JSONArray s(Context context) {
        CdmaCellLocation cdmaCellLocation;
        try {
            if (!aa.b) {
                return null;
            }
            if (aa.a(23) && context.checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0) {
                return null;
            }
            if (aa.b(context, "android.permission.ACCESS_COARSE_LOCATION") || aa.b(context, "android.permission.ACCESS_FINE_LOCATION")) {
                if (a == null) {
                    a(context);
                }
                JSONObject jSONObject = new JSONObject();
                if (aa.d || aa.e) {
                    CellLocation cellLocation = a.getCellLocation();
                    if (cellLocation instanceof GsmCellLocation) {
                        GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                        if (gsmCellLocation != null) {
                            jSONObject.put("systemId", gsmCellLocation.getLac());
                            jSONObject.put("networkId", gsmCellLocation.getCid());
                            if (aa.a(9)) {
                                jSONObject.put("basestationId", gsmCellLocation.getPsc());
                            }
                        }
                    } else if ((cellLocation instanceof CdmaCellLocation) && (cdmaCellLocation = (CdmaCellLocation) cellLocation) != null) {
                        jSONObject.put("systemId", cdmaCellLocation.getSystemId());
                        jSONObject.put("networkId", cdmaCellLocation.getNetworkId());
                        jSONObject.put("basestationId", cdmaCellLocation.getBaseStationId());
                        jSONObject.put("location", a(cdmaCellLocation.getBaseStationLatitude(), cdmaCellLocation.getBaseStationLongitude()));
                    }
                }
                jSONObject.put("type", j(context));
                jSONObject.put(Constants.RequestParameters.NETWORK_MCC, k(context));
                jSONObject.put("operator", p(context));
                jSONObject.put("country", m(context));
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(jSONObject);
                return jSONArray;
            }
        } catch (Throwable th) {
        }
        return null;
    }

    public static JSONArray t(Context context) {
        List<NeighboringCellInfo> neighboringCellInfo;
        Object obj;
        CellSignalStrength cellSignalStrength;
        int mnc;
        int mcc;
        int ci;
        int pci;
        int tac;
        if (!aa.b) {
            return null;
        }
        if (aa.a(23) && context.checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0) {
            return null;
        }
        if (!aa.b(context, "android.permission.ACCESS_COARSE_LOCATION") && !aa.b(context, "android.permission.ACCESS_FINE_LOCATION")) {
            return null;
        }
        try {
            if (a == null) {
                a(context);
            }
            JSONArray jSONArray = new JSONArray();
            if (aa.a(17)) {
                List<CellInfo> allCellInfo = a.getAllCellInfo();
                if (allCellInfo != null) {
                    for (CellInfo cellInfo : allCellInfo) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("registered", cellInfo.isRegistered());
                            jSONObject.put("ts", cellInfo.getTimeStamp());
                            if (cellInfo instanceof CellInfoGsm) {
                                CellInfoGsm cellInfoGsm = (CellInfoGsm) cellInfo;
                                CellIdentityGsm cellIdentity = cellInfoGsm.getCellIdentity();
                                int lac = cellIdentity.getLac();
                                int cid = cellIdentity.getCid();
                                mcc = cellIdentity.getMcc();
                                mnc = cellIdentity.getMnc();
                                CellSignalStrengthGsm cellSignalStrength2 = cellInfoGsm.getCellSignalStrength();
                                tac = lac;
                                pci = cid;
                                ci = -1;
                                obj = "GSM";
                                cellSignalStrength = cellSignalStrength2;
                            } else if (cellInfo instanceof CellInfoCdma) {
                                CellInfoCdma cellInfoCdma = (CellInfoCdma) cellInfo;
                                CellIdentityCdma cellIdentity2 = cellInfoCdma.getCellIdentity();
                                int systemId = cellIdentity2.getSystemId();
                                int networkId = cellIdentity2.getNetworkId();
                                int basestationId = cellIdentity2.getBasestationId();
                                CellSignalStrengthCdma cellSignalStrength3 = cellInfoCdma.getCellSignalStrength();
                                jSONObject.put("cdmaDbm", cellSignalStrength3.getCdmaDbm());
                                jSONObject.put("cdmaDbm", cellSignalStrength3.getCdmaDbm());
                                jSONObject.put("cdmaEcio", cellSignalStrength3.getCdmaEcio());
                                jSONObject.put("evdoDbm", cellSignalStrength3.getEvdoDbm());
                                jSONObject.put("evdoEcio", cellSignalStrength3.getEvdoEcio());
                                jSONObject.put("evdoSnr", cellSignalStrength3.getEvdoSnr());
                                jSONObject.put("location", a(cellIdentity2.getLatitude(), cellIdentity2.getLongitude()));
                                pci = networkId;
                                tac = systemId;
                                mcc = -1;
                                ci = basestationId;
                                mnc = -1;
                                cellSignalStrength = cellSignalStrength3;
                                obj = "CDMA";
                            } else if (cellInfo instanceof CellInfoWcdma) {
                                CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) cellInfo;
                                CellIdentityWcdma cellIdentity3 = cellInfoWcdma.getCellIdentity();
                                tac = cellIdentity3.getLac();
                                pci = cellIdentity3.getCid();
                                ci = cellIdentity3.getPsc();
                                mcc = cellIdentity3.getMcc();
                                mnc = cellIdentity3.getMnc();
                                cellSignalStrength = cellInfoWcdma.getCellSignalStrength();
                                obj = "WCDMA";
                            } else if (cellInfo instanceof CellInfoLte) {
                                CellInfoLte cellInfoLte = (CellInfoLte) cellInfo;
                                CellIdentityLte cellIdentity4 = cellInfoLte.getCellIdentity();
                                tac = cellIdentity4.getTac();
                                pci = cellIdentity4.getPci();
                                ci = cellIdentity4.getCi();
                                mcc = cellIdentity4.getMcc();
                                mnc = cellIdentity4.getMnc();
                                cellSignalStrength = cellInfoLte.getCellSignalStrength();
                                obj = "LTE";
                            } else {
                                obj = null;
                                cellSignalStrength = null;
                                mnc = -1;
                                mcc = -1;
                                ci = -1;
                                pci = -1;
                                tac = -1;
                            }
                            if (tac != -1) {
                                jSONObject.put("systemId", tac);
                            }
                            if (pci != -1) {
                                jSONObject.put("networkId", pci);
                            }
                            if (ci != -1) {
                                jSONObject.put("basestationId", ci);
                            }
                            if (mcc != -1) {
                                jSONObject.put(Constants.RequestParameters.NETWORK_MCC, mcc);
                            }
                            if (mnc != -1) {
                                jSONObject.put(Constants.RequestParameters.NETWORK_MNC, mnc);
                            }
                            if (cellSignalStrength != null) {
                                jSONObject.put("asuLevel", cellSignalStrength.getAsuLevel());
                                jSONObject.put("dbm", cellSignalStrength.getDbm());
                            }
                            jSONObject.put("type", obj);
                            jSONArray.put(jSONObject);
                        } catch (Throwable th) {
                        }
                    }
                }
            } else if (aa.a(5) && ((aa.d || aa.e) && (neighboringCellInfo = a.getNeighboringCellInfo()) != null)) {
                for (NeighboringCellInfo neighboringCellInfo2 : neighboringCellInfo) {
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("systemId", neighboringCellInfo2.getLac());
                        jSONObject2.put("netId", neighboringCellInfo2.getCid());
                        jSONObject2.put("basestationId", neighboringCellInfo2.getPsc());
                        jSONObject2.put("asuLevel", neighboringCellInfo2.getRssi());
                        jSONObject2.put("type", a(neighboringCellInfo2.getNetworkType()));
                        jSONArray.put(jSONObject2);
                    } catch (Throwable th2) {
                    }
                }
            }
            return jSONArray.length() > 0 ? jSONArray : null;
        } catch (Throwable th3) {
            return null;
        }
    }

    public static JSONArray u(Context context) {
        List<WifiConfiguration> configuredNetworks;
        try {
            if (!aa.b || !aa.b(context, "android.permission.ACCESS_WIFI_STATE") || (configuredNetworks = ((WifiManager) context.getSystemService(ConnectivityService.NETWORK_TYPE_WIFI)).getConfiguredNetworks()) == null) {
                return null;
            }
            JSONArray jSONArray = new JSONArray();
            for (WifiConfiguration wifiConfiguration : configuredNetworks) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("networkId", wifiConfiguration.networkId);
                    jSONObject.put("priority", wifiConfiguration.priority);
                    jSONObject.put("name", wifiConfiguration.SSID);
                    jSONObject.put(ShareConstants.WEB_DIALOG_PARAM_ID, wifiConfiguration.BSSID);
                    jSONObject.put("allowedKeyManagement", a(wifiConfiguration.allowedKeyManagement));
                    jSONObject.put("allowedAuthAlgorithms", a(wifiConfiguration.allowedAuthAlgorithms));
                    jSONObject.put("allowedGroupCiphers", a(wifiConfiguration.allowedGroupCiphers));
                    jSONObject.put("allowedPairwiseCiphers", a(wifiConfiguration.allowedPairwiseCiphers));
                    jSONArray.put(jSONObject);
                } catch (Throwable th) {
                }
            }
            return jSONArray.length() > 0 ? jSONArray : null;
        } catch (Throwable th2) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String v(android.content.Context r3) {
        /*
            r1 = 0
            boolean r0 = com.tendcloud.tenddata.game.aa.b     // Catch: java.lang.Throwable -> L37
            if (r0 != 0) goto L6
        L5:
            return r1
        L6:
            java.lang.String r0 = "android.permission.ACCESS_WIFI_STATE"
            boolean r0 = com.tendcloud.tenddata.game.aa.b(r3, r0)     // Catch: java.lang.Throwable -> L37
            if (r0 == 0) goto L3a
            java.lang.String r0 = "wifi"
            java.lang.Object r0 = r3.getSystemService(r0)     // Catch: java.lang.Throwable -> L37
            android.net.wifi.WifiManager r0 = (android.net.wifi.WifiManager) r0     // Catch: java.lang.Throwable -> L37
            boolean r2 = r0.isWifiEnabled()     // Catch: java.lang.Throwable -> L37
            if (r2 == 0) goto L3a
            boolean r2 = g(r3)     // Catch: java.lang.Throwable -> L37
            if (r2 == 0) goto L3a
            android.net.wifi.WifiInfo r0 = r0.getConnectionInfo()     // Catch: java.lang.Throwable -> L37
            if (r0 == 0) goto L3a
            java.lang.String r2 = r0.getBSSID()     // Catch: java.lang.Throwable -> L37
            if (r2 == 0) goto L3a
            java.lang.String r0 = r0.getSSID()     // Catch: java.lang.Throwable -> L34
        L32:
            r1 = r0
            goto L5
        L34:
            r0 = move-exception
            r0 = r1
            goto L32
        L37:
            r0 = move-exception
            r0 = r1
            goto L32
        L3a:
            r0 = r1
            goto L32
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.game.o.v(android.content.Context):java.lang.String");
    }

    public static JSONArray w(Context context) {
        WifiInfo connectionInfo;
        try {
            if (!aa.b) {
                return null;
            }
            if (aa.b(context, "android.permission.ACCESS_WIFI_STATE")) {
                WifiManager wifiManager = (WifiManager) context.getSystemService(ConnectivityService.NETWORK_TYPE_WIFI);
                if (wifiManager.isWifiEnabled() && (connectionInfo = wifiManager.getConnectionInfo()) != null && connectionInfo.getBSSID() != null) {
                    String bssid = connectionInfo.getBSSID();
                    JSONArray jSONArray = new JSONArray();
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("name", connectionInfo.getSSID());
                        jSONObject.put(ShareConstants.WEB_DIALOG_PARAM_ID, bssid);
                        jSONObject.put(ao.f, connectionInfo.getRssi());
                        jSONObject.put("hidden", connectionInfo.getHiddenSSID());
                        jSONObject.put("ip", connectionInfo.getIpAddress());
                        jSONObject.put(LocationConst.SPEED, connectionInfo.getLinkSpeed());
                        jSONObject.put("networkId", connectionInfo.getNetworkId());
                        jSONObject.put("mac", connectionInfo.getMacAddress());
                        DhcpInfo dhcpInfo = wifiManager.getDhcpInfo();
                        if (dhcpInfo != null) {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("dns1", dhcpInfo.dns1);
                            jSONObject2.put("dns2", dhcpInfo.dns2);
                            jSONObject2.put("gw", dhcpInfo.gateway);
                            jSONObject2.put("ip", dhcpInfo.ipAddress);
                            jSONObject2.put("mask", dhcpInfo.netmask);
                            jSONObject2.put(ServerLogger.NAME, dhcpInfo.serverAddress);
                            jSONObject2.put("leaseDuration", dhcpInfo.leaseDuration);
                            jSONObject.put("dhcp", jSONObject2);
                        }
                    } catch (Throwable th) {
                    }
                    jSONArray.put(jSONObject);
                    return jSONArray;
                }
            }
        } catch (Throwable th2) {
        }
        return null;
    }

    public static JSONArray x(Context context) {
        if (!aa.b || (!aa.d && !aa.e)) {
            return null;
        }
        try {
            if (aa.b(context, "android.permission.ACCESS_WIFI_STATE")) {
                WifiManager wifiManager = (WifiManager) context.getSystemService(ConnectivityService.NETWORK_TYPE_WIFI);
                if (wifiManager.isWifiEnabled() || (Build.VERSION.SDK_INT >= 18 && wifiManager.isScanAlwaysAvailable())) {
                    if (aa.b(context, "android.permission.CHANGE_WIFI_STATE")) {
                        try {
                            Object obj = new Object();
                            context.registerReceiver(new p(obj, context), new IntentFilter("android.net.wifi.SCAN_RESULTS"));
                            wifiManager.startScan();
                            synchronized (obj) {
                                obj.wait(2000L);
                            }
                        } catch (Throwable th) {
                        }
                    }
                    List<ScanResult> scanResults = wifiManager.getScanResults();
                    if (scanResults != null) {
                        JSONArray jSONArray = new JSONArray();
                        for (ScanResult scanResult : scanResults) {
                            if (scanResult.level >= -85) {
                                JSONObject jSONObject = new JSONObject();
                                try {
                                    jSONObject.put(ShareConstants.WEB_DIALOG_PARAM_ID, scanResult.BSSID);
                                    jSONObject.put("name", scanResult.SSID);
                                    jSONObject.put(ao.f, scanResult.level);
                                    jSONObject.put("freq", scanResult.frequency);
                                    if (aa.a(17)) {
                                        jSONObject.put("ts", scanResult.timestamp);
                                    }
                                    jSONArray.put(jSONObject);
                                } catch (Throwable th2) {
                                }
                            }
                        }
                        return jSONArray;
                    }
                }
            }
        } catch (Throwable th3) {
        }
        return null;
    }

    public static JSONArray y(Context context) {
        JSONArray jSONArray = new JSONArray();
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            ArrayList arrayList = new ArrayList();
            if (aa.a(22)) {
                SubscriptionManager subscriptionManager = (SubscriptionManager) context.getSystemService("telephony_subscription_service");
                try {
                    JSONObject jSONObjectA = a(telephonyManager, subscriptionManager, 0);
                    jSONObjectA.put("imei", telephonyManager.getDeviceId());
                    jSONArray.put(jSONObjectA);
                } catch (Throwable th) {
                }
                try {
                    JSONObject jSONObjectA2 = a(telephonyManager, subscriptionManager, 1);
                    jSONObjectA2.put("imei", (aa.a(23) && telephonyManager.getPhoneCount() == 2) ? telephonyManager.getDeviceId(1) : null);
                    if (jSONObjectA2.length() > 0) {
                        jSONArray.put(jSONObjectA2);
                    }
                } catch (Throwable th2) {
                }
            } else {
                String deviceId = telephonyManager.getDeviceId();
                if (b(deviceId.trim()).booleanValue()) {
                    arrayList.add(deviceId.trim());
                    JSONObject jSONObjectA3 = a(telephonyManager, deviceId);
                    if (jSONObjectA3 != null) {
                        jSONArray.put(jSONObjectA3);
                    }
                }
                try {
                    TelephonyManager telephonyManager2 = (TelephonyManager) context.getSystemService("phone1");
                    String deviceId2 = telephonyManager2.getDeviceId();
                    if (deviceId2 != null && b(deviceId2).booleanValue() && !arrayList.contains(deviceId2)) {
                        arrayList.add(deviceId2);
                        JSONObject jSONObjectA4 = a(telephonyManager2, deviceId2);
                        if (jSONObjectA4 != null) {
                            jSONArray.put(jSONObjectA4);
                        }
                    }
                } catch (Throwable th3) {
                }
                try {
                    TelephonyManager telephonyManager3 = (TelephonyManager) context.getSystemService("phone2");
                    String deviceId3 = telephonyManager3.getDeviceId();
                    if (deviceId3 != null && b(deviceId3).booleanValue() && !arrayList.contains(deviceId3)) {
                        arrayList.add(deviceId3);
                        JSONObject jSONObjectA5 = a(telephonyManager3, deviceId3);
                        if (jSONObjectA5 != null) {
                            jSONArray.put(jSONObjectA5);
                        }
                    }
                } catch (Throwable th4) {
                }
                JSONArray jSONArrayE = E(context);
                JSONArray jSONArrayD = D(context);
                if (jSONArrayD == null) {
                    jSONArrayD = jSONArrayE;
                }
                JSONArray jSONArrayC = C(context);
                if (jSONArrayC == null) {
                    jSONArrayC = jSONArrayD;
                }
                JSONArray jSONArrayB = B(context);
                if (jSONArrayB != null) {
                    jSONArrayC = jSONArrayB;
                }
                if (jSONArrayC != null && jSONArrayC.length() > 0) {
                    for (int i = 0; i < jSONArrayC.length(); i++) {
                        JSONObject jSONObject = jSONArrayC.getJSONObject(i);
                        String string = jSONObject.getString("imei");
                        if (!arrayList.contains(string)) {
                            arrayList.add(string);
                            jSONArray.put(jSONObject);
                        }
                    }
                }
            }
        } catch (Throwable th5) {
        }
        return jSONArray;
    }

    public static JSONObject z(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                jSONObject.put("dataState", telephonyManager.getDataState());
                jSONObject.put("networkType", a(telephonyManager.getNetworkType()));
                jSONObject.put("networkOperator", telephonyManager.getNetworkOperator());
                jSONObject.put(Constants.RequestParameters.PHONE_TYPE, b(telephonyManager.getPhoneType()));
                return jSONObject;
            } catch (Throwable th) {
                return jSONObject;
            }
        } catch (Throwable th2) {
            return null;
        }
    }
}
