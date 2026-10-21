package com.chartboost.sdk.Libraries;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.provider.Settings;
import android.util.Base64;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private final SharedPreferences a;
    private a b = null;
    private int c = -1;
    private String d = null;
    private String e = null;

    public d(SharedPreferences sharedPreferences) {
        this.a = sharedPreferences;
    }

    public void a() {
        if (!f()) {
            try {
                throw new ClassNotFoundException("Google play services library is missing. Unable to find class com.google.android.gms.ads.identifier.AdvertisingIdClient");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
                CBLogging.b("CBIdentity", "WARNING: It looks like you've forgotten to include the Google Play Services library in your project. Please review the SDK documentation for more details.");
            }
        }
    }

    public static class a {
        public final int a;
        public final String b;
        public final String c;
        public final String d;

        public a(int i, String str, String str2, String str3) {
            this.a = i;
            this.b = str;
            this.c = str2;
            this.d = str3;
        }
    }

    public synchronized a b() {
        String str;
        String str2;
        a aVar;
        boolean z = false;
        synchronized (this) {
            if (this.b != null && this.b.c != null) {
                str = this.b.c;
            } else {
                String strC = c();
                if (strC == null || "9774d56d682e549c".equals(strC)) {
                    strC = d();
                }
                str = strC;
                z = true;
            }
            e();
            if (this.b != null && this.b.d != null && this.b.d.equals(this.d)) {
                str2 = this.b.d;
            } else {
                str2 = this.d;
                z = true;
            }
            if (((this.b == null || this.b.a == this.c) ? z : true) || this.b == null) {
                JSONObject jSONObject = new JSONObject();
                if (str != null && !com.chartboost.sdk.i.x) {
                    e.a(jSONObject, "uuid", str);
                }
                if (str2 != null && !com.chartboost.sdk.i.x) {
                    e.a(jSONObject, "gaid", str2);
                }
                int i = this.c;
                String strEncodeToString = Base64.encodeToString(jSONObject.toString().getBytes(), 0);
                if (com.chartboost.sdk.i.x) {
                    str2 = "000000000";
                }
                this.b = new a(i, strEncodeToString, str, str2);
            }
            aVar = this.b;
        }
        return aVar;
    }

    public String c() {
        return Settings.Secure.getString(com.chartboost.sdk.i.m.getContentResolver(), "android_id");
    }

    private String d() {
        if (this.e == null && this.a != null) {
            this.e = this.a.getString("cbUUID", null);
            if (this.e == null) {
                this.e = UUID.randomUUID().toString();
                SharedPreferences.Editor editorEdit = this.a.edit();
                editorEdit.putString("cbUUID", this.e);
                editorEdit.apply();
            }
        }
        return this.e;
    }

    private void e() {
        Context context = com.chartboost.sdk.i.m;
        if ("Amazon".equals(Build.MANUFACTURER)) {
            b(context);
            return;
        }
        a(context);
        if (this.d == null) {
            b(context);
        }
    }

    private void a(Context context) {
        if (f()) {
            com.chartboost.sdk.Libraries.a aVar = new com.chartboost.sdk.Libraries.a(context);
            this.c = aVar.a;
            this.d = aVar.b;
        }
    }

    private void b(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", 2);
        if (i == 0) {
            this.c = 0;
            this.d = Settings.Secure.getString(contentResolver, "advertising_id");
        } else if (i == 2) {
            this.c = -1;
            this.d = null;
        } else {
            this.c = 1;
            this.d = null;
        }
    }

    private boolean f() {
        Class<?> cls = null;
        try {
            cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
        } catch (ClassNotFoundException e) {
        }
        return cls != null;
    }
}
