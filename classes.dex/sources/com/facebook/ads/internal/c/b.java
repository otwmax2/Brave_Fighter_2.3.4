package com.facebook.ads.internal.c;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.ads.internal.c.a;
import com.facebook.ads.internal.c.c;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static String a = "";
    public static String b = "";
    public static boolean c = false;
    public static String d = "";

    public static void a(Context context) throws Throwable {
        c.a aVarA;
        a aVarA2;
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("SDKIDFA", 0);
            if (sharedPreferences.contains("attributionId")) {
                a = sharedPreferences.getString("attributionId", "");
            }
            if (sharedPreferences.contains("advertisingId")) {
                b = sharedPreferences.getString("advertisingId", "");
                c = sharedPreferences.getBoolean("limitAdTracking", c);
                d = a.c.SHARED_PREFS.name();
            }
            try {
                aVarA = c.a(context.getContentResolver());
            } catch (Exception e) {
                com.facebook.ads.internal.j.b.a(com.facebook.ads.internal.j.a.a(e, "Error retrieving attribution id from fb4a"));
                aVarA = null;
            }
            if (aVarA != null && aVarA.a != null) {
                a = aVarA.a;
            }
            if (com.facebook.ads.internal.q.a.b.a() && com.facebook.ads.internal.q.a.b.b("aid_override")) {
                a = com.facebook.ads.internal.q.a.b.a("aid_override");
            }
            try {
                aVarA2 = a.a(context, aVarA);
            } catch (Exception e2) {
                com.facebook.ads.internal.j.b.a(com.facebook.ads.internal.j.a.a(e2, "Error retrieving advertising id from Google Play Services"));
                aVarA2 = null;
            }
            if (aVarA2 != null) {
                String strA = aVarA2.a();
                Boolean boolValueOf = Boolean.valueOf(aVarA2.b());
                if (strA != null) {
                    b = strA;
                    c = boolValueOf.booleanValue();
                    d = aVarA2.c().name();
                }
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString("attributionId", a);
            editorEdit.putString("advertisingId", b);
            editorEdit.putBoolean("limitAdTracking", c);
            editorEdit.apply();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
