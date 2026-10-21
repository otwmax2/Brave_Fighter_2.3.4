package com.facebook.ads.internal.q.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.facebook.ads.internal.settings.AdSdkVersion;
import com.facebook.internal.AnalyticsEvents;
import com.ironsource.sdk.constants.Constants;
import java.lang.reflect.Constructor;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private static String a = null;
    private static final Set<String> b = new HashSet(1);
    private static final Set<String> c = new HashSet(2);

    public enum a {
        UNKNOWN(0),
        NONE(0),
        MOBILE_INTERNET(1),
        MOBILE_2G(2),
        MOBILE_3G(3),
        MOBILE_4G(4);

        public final int g;

        a(int i) {
            this.g = i;
        }
    }

    static {
        b.add("1ww8E0AYsR2oX5lndk2hwp2Uosk=\n");
        c.add("toZ2GRnRjC9P5VVUdCpOrFH8lfQ=\n");
        c.add("3lKvjNsfmrn+WmfDhvr2iVh/yRs=\n");
        c.add("B08QtE4yLCdli4rptyqAEczXOeA=\n");
        c.add("XZXI6anZbdKf+taURdnyUH5ipgM=\n");
    }

    public static com.facebook.ads.internal.p.a.a a(Context context) {
        return a(context, true);
    }

    public static com.facebook.ads.internal.p.a.a a(Context context, boolean z) {
        com.facebook.ads.internal.p.a.a aVar = new com.facebook.ads.internal.p.a.a();
        a(context, aVar, z);
        return aVar;
    }

    private static String a(Context context, String str, String str2) throws NoSuchMethodException, ClassNotFoundException {
        Class<?> cls = Class.forName(str);
        Constructor<?> declaredConstructor = cls.getDeclaredConstructor(Context.class, Class.forName(str2));
        declaredConstructor.setAccessible(true);
        try {
            return (String) cls.getMethod("getUserAgentString", new Class[0]).invoke(declaredConstructor.newInstance(context, null), new Object[0]);
        } finally {
            declaredConstructor.setAccessible(false);
        }
    }

    private static void a(Context context, com.facebook.ads.internal.p.a.a aVar, boolean z) {
        com.facebook.ads.internal.g.b bVar = new com.facebook.ads.internal.g.b(context);
        aVar.c(30000);
        aVar.b(3);
        aVar.a("user-agent", c(context, z) + " [FBAN/AudienceNetworkForAndroid;FBSN/" + Constants.JAVASCRIPT_INTERFACE_NAME + ";FBSV/" + com.facebook.ads.internal.g.b.a + ";FBAB/" + bVar.f() + ";FBAV/" + bVar.g() + ";FBBV/" + bVar.h() + ";FBVS/" + AdSdkVersion.BUILD + ";FBLC/" + Locale.getDefault().toString() + Constants.RequestParameters.RIGHT_BRACKETS);
    }

    public static boolean a() {
        String urlPrefix = AdInternalSettings.getUrlPrefix();
        return !TextUtils.isEmpty(urlPrefix) && urlPrefix.endsWith(".sb");
    }

    public static com.facebook.ads.internal.p.a.a b(Context context) {
        return b(context, true);
    }

    public static com.facebook.ads.internal.p.a.a b(Context context, boolean z) {
        com.facebook.ads.internal.p.a.a aVar = new com.facebook.ads.internal.p.a.a();
        a(context, aVar, z);
        if (!a()) {
            aVar.b(c);
            aVar.a(b);
        }
        return aVar;
    }

    public static a c(Context context) {
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
            return a.UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return a.NONE;
        }
        if (activeNetworkInfo.getType() != 0) {
            return a.MOBILE_INTERNET;
        }
        switch (activeNetworkInfo.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return a.MOBILE_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return a.MOBILE_3G;
            case 13:
                return a.MOBILE_4G;
            default:
                return a.UNKNOWN;
        }
    }

    private static String c(Context context, boolean z) {
        if (context == null) {
            return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        }
        if (z) {
            return System.getProperty("http.agent");
        }
        if (a != null) {
            return a;
        }
        synchronized (d.class) {
            if (a != null) {
                return a;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                try {
                    a = d(context);
                    return a;
                } catch (Exception e) {
                }
            }
            try {
                a = a(context, "android.webkit.WebSettings", "android.webkit.WebView");
            } catch (Exception e2) {
                try {
                    a = a(context, "android.webkit.WebSettingsClassic", "android.webkit.WebViewClassic");
                } catch (Exception e3) {
                    WebView webView = new WebView(context.getApplicationContext());
                    a = webView.getSettings().getUserAgentString();
                    webView.destroy();
                }
            }
            return a;
        }
    }

    @TargetApi(17)
    private static String d(Context context) {
        return WebSettings.getDefaultUserAgent(context);
    }
}
