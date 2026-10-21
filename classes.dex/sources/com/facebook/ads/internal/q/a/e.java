package com.facebook.ads.internal.q.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.annotation.VisibleForTesting;
import java.io.IOException;
import java.util.concurrent.Executors;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private static int b = -1;
    public static volatile a a = a.NOT_INITIALIZED;

    enum a {
        NOT_INITIALIZED,
        INITIALIZING,
        INITIALIZED
    }

    @VisibleForTesting(otherwise = 2)
    public static int a(XmlPullParser xmlPullParser) {
        while (xmlPullParser.next() != 1) {
            if (xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals("uses-sdk")) {
                for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
                    if (xmlPullParser.getAttributeName(i).equals("minSdkVersion")) {
                        return Integer.parseInt(xmlPullParser.getAttributeValue(i));
                    }
                }
            }
        }
        return 0;
    }

    public static void a(Context context) {
        if (a()) {
            return;
        }
        e(context);
    }

    public static boolean a() {
        return a == a.INITIALIZED;
    }

    public static int b(Context context) {
        if (a == a.NOT_INITIALIZED) {
            a(context);
        }
        return b;
    }

    public static int c(Context context) {
        try {
            return a(context.getAssets().openXmlResourceParser("AndroidManifest.xml"));
        } catch (IOException | XmlPullParserException e) {
            return 0;
        }
    }

    private static void e(final Context context) {
        if (a != a.NOT_INITIALIZED) {
            return;
        }
        a = a.INITIALIZING;
        Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: com.facebook.ads.internal.q.a.e.1
            @Override // java.lang.Runnable
            public void run() {
                if (e.a == a.INITIALIZED) {
                    return;
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences("FBAdPrefs", 0);
                int i = sharedPreferences.getInt("AppMinSdkVersion", -1);
                if (i != -1) {
                    int unused = e.b = i;
                    e.a = a.INITIALIZED;
                } else {
                    int iF = Build.VERSION.SDK_INT >= 24 ? e.f(context) : e.c(context);
                    int unused2 = e.b = iF;
                    sharedPreferences.edit().putInt("AppMinSdkVersion", iF).commit();
                    e.a = a.INITIALIZED;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int f(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).minSdkVersion;
        } catch (PackageManager.NameNotFoundException e) {
            return 0;
        }
    }
}
