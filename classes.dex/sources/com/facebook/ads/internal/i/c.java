package com.facebook.ads.internal.i;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.Nullable;
import com.facebook.ads.internal.f.e;
import com.facebook.ads.internal.q.a.f;
import com.facebook.ads.internal.q.a.g;
import com.facebook.ads.internal.q.a.h;
import com.facebook.ads.internal.q.a.j;
import com.facebook.ads.internal.q.a.m;
import com.facebook.ads.internal.q.a.r;
import com.facebook.ads.internal.q.a.v;
import com.facebook.ads.internal.q.c.d;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.facebook.ads.internal.settings.AdSdkVersion;
import com.ironsource.sdk.constants.Constants;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static final AtomicInteger a = new AtomicInteger(0);
    private static String b = null;
    private static final f.a c = f.a();
    private final Context d;
    private final com.facebook.ads.internal.g.b e;

    public c(Context context, boolean z) {
        this.d = context;
        this.e = new com.facebook.ads.internal.g.b(context);
        a(context, z);
    }

    private static void a(final Context context, boolean z) {
        if (a.compareAndSet(0, 1)) {
            try {
                m.a();
                final SharedPreferences sharedPreferences = context.getSharedPreferences("FBAdPrefs", 0);
                final String str = "AFP;" + new com.facebook.ads.internal.g.b(context).g();
                b = sharedPreferences.getString(str, null);
                FutureTask futureTask = new FutureTask(new Callable<Boolean>() { // from class: com.facebook.ads.internal.i.c.1
                    @Override // java.util.concurrent.Callable
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Boolean call() {
                        String unused = c.b = c.b(context, context.getPackageName());
                        sharedPreferences.edit().putString(str, c.b).apply();
                        c.a.set(2);
                        return true;
                    }
                });
                Executors.newSingleThreadExecutor().submit(futureTask);
                if (z) {
                    futureTask.get();
                }
            } catch (Exception e) {
                a.set(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static String b(Context context, String str) {
        try {
            return h.a(context.getPackageManager().getApplicationInfo(str, 0).sourceDir);
        } catch (Exception e) {
            e.a(e, context, new c(context, false).b());
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0057 A[Catch: IOException -> 0x0060, TryCatch #5 {IOException -> 0x0060, blocks: (B:21:0x0052, B:23:0x0057, B:25:0x005c), top: B:45:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005c A[Catch: IOException -> 0x0060, TRY_LEAVE, TryCatch #5 {IOException -> 0x0060, blocks: (B:21:0x0052, B:23:0x0057, B:25:0x005c), top: B:45:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0052 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String a() throws java.lang.Throwable {
        /*
            r6 = this;
            r2 = 0
            android.content.Context r0 = r6.d
            r1 = 1
            a(r0, r1)
            java.io.ByteArrayOutputStream r4 = new java.io.ByteArrayOutputStream     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L62
            r4.<init>()     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L62
            android.util.Base64OutputStream r3 = new android.util.Base64OutputStream     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L70
            r0 = 0
            r3.<init>(r4, r0)     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L70
            java.util.zip.DeflaterOutputStream r1 = new java.util.zip.DeflaterOutputStream     // Catch: java.lang.Throwable -> L6b java.io.IOException -> L74
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L6b java.io.IOException -> L74
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            java.util.Map r2 = r6.b()     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            byte[] r0 = r0.getBytes()     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            r1.write(r0)     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            r1.close()     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            if (r1 == 0) goto L37
            r1.close()     // Catch: java.io.IOException -> L7d
        L37:
            if (r3 == 0) goto L3c
            r3.close()     // Catch: java.io.IOException -> L7d
        L3c:
            if (r4 == 0) goto L41
            r4.close()     // Catch: java.io.IOException -> L7d
        L41:
            return r0
        L42:
            r0 = move-exception
            r1 = r2
            r3 = r2
        L45:
            java.lang.RuntimeException r4 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L4d
            java.lang.String r5 = "Failed to build user token"
            r4.<init>(r5, r0)     // Catch: java.lang.Throwable -> L4d
            throw r4     // Catch: java.lang.Throwable -> L4d
        L4d:
            r0 = move-exception
            r4 = r3
            r3 = r2
        L50:
            if (r1 == 0) goto L55
            r1.close()     // Catch: java.io.IOException -> L60
        L55:
            if (r3 == 0) goto L5a
            r3.close()     // Catch: java.io.IOException -> L60
        L5a:
            if (r4 == 0) goto L5f
            r4.close()     // Catch: java.io.IOException -> L60
        L5f:
            throw r0
        L60:
            r1 = move-exception
            goto L5f
        L62:
            r0 = move-exception
            r1 = r2
            r3 = r2
            r4 = r2
            goto L50
        L67:
            r0 = move-exception
            r1 = r2
            r3 = r2
            goto L50
        L6b:
            r0 = move-exception
            r1 = r2
            goto L50
        L6e:
            r0 = move-exception
            goto L50
        L70:
            r0 = move-exception
            r1 = r2
            r3 = r4
            goto L45
        L74:
            r0 = move-exception
            r1 = r2
            r2 = r3
            r3 = r4
            goto L45
        L79:
            r0 = move-exception
            r2 = r3
            r3 = r4
            goto L45
        L7d:
            r1 = move-exception
            goto L41
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.i.c.a():java.lang.String");
    }

    public Map<String, String> b() {
        a(this.d, false);
        com.facebook.ads.internal.g.a.a(this.d);
        HashMap map = new HashMap();
        map.put("SDK", "android");
        map.put("SDK_VERSION", AdSdkVersion.BUILD);
        map.put("LOCALE", Locale.getDefault().toString());
        float f = v.b;
        int i = this.d.getResources().getDisplayMetrics().widthPixels;
        int i2 = this.d.getResources().getDisplayMetrics().heightPixels;
        map.put("DENSITY", String.valueOf(f));
        map.put("SCREEN_WIDTH", String.valueOf((int) (i / f)));
        map.put("SCREEN_HEIGHT", String.valueOf((int) (i2 / f)));
        map.put("ATTRIBUTION_ID", com.facebook.ads.internal.c.b.a);
        map.put("ID_SOURCE", com.facebook.ads.internal.c.b.d);
        map.put("OS", Constants.JAVASCRIPT_INTERFACE_NAME);
        map.put("OSVERS", com.facebook.ads.internal.g.b.a);
        map.put("BUNDLE", this.e.f());
        map.put("APPNAME", this.e.d());
        map.put("APPVERS", this.e.g());
        map.put("APPBUILD", String.valueOf(this.e.h()));
        map.put("CARRIER", this.e.c());
        map.put("MAKE", this.e.a());
        map.put("MODEL", this.e.b());
        map.put("ROOTED", String.valueOf(c.d));
        map.put("INSTALLER", this.e.e());
        map.put("SDK_CAPABILITY", com.facebook.ads.internal.q.a.c.b());
        map.put("NETWORK_TYPE", String.valueOf(d.c(this.d).g));
        map.put("SESSION_TIME", r.a(m.b()));
        map.put("SESSION_ID", m.c());
        if (b != null) {
            map.put("AFP", b);
        }
        String strA = f.a(this.d);
        if (strA != null) {
            map.put("ASHAS", strA);
        }
        map.put("UNITY", String.valueOf(g.a(this.d)));
        String mediationService = AdInternalSettings.getMediationService();
        if (mediationService != null) {
            map.put("MEDIATION_SERVICE", mediationService);
        }
        map.put("ACCESSIBILITY_ENABLED", String.valueOf(this.e.i()));
        if (this.e.j() != -1) {
            map.put("APP_MIN_SDK_VERSION", String.valueOf(this.e.j()));
        }
        map.put("VALPARAMS", b.a());
        map.put("ANALOG", j.a(com.facebook.ads.internal.g.a.a()));
        return map;
    }
}
