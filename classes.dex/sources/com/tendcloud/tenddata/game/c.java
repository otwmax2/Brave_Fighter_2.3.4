package com.tendcloud.tenddata.game;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static volatile c a = null;
    private PackageInfo b = null;

    private c() {
    }

    public static c a() {
        if (a == null) {
            synchronized (c.class) {
                if (a == null) {
                    a = new c();
                }
            }
        }
        return a;
    }

    private synchronized boolean i(Context context) {
        boolean z;
        try {
            if (this.b == null) {
                this.b = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            }
            z = true;
        } catch (Throwable th) {
            z = false;
        }
        return z;
    }

    public String a(Context context) {
        if (context == null) {
            return null;
        }
        i(context);
        return context.getPackageName();
    }

    public int b(Context context) {
        if (context == null) {
            return -1;
        }
        try {
            if (i(context)) {
                return this.b.versionCode;
            }
            return -1;
        } catch (Throwable th) {
            return -1;
        }
    }

    public String c(Context context) {
        if (context == null) {
            return "unknown";
        }
        try {
            return !i(context) ? "unknown" : this.b.versionName;
        } catch (Throwable th) {
            return "unknown";
        }
    }

    public long d(Context context) {
        if (context == null) {
            return -1L;
        }
        try {
            if (i(context) && aa.a(9)) {
                return this.b.firstInstallTime;
            }
            return -1L;
        } catch (Throwable th) {
            return -1L;
        }
    }

    public long e(Context context) {
        if (context == null) {
            return -1L;
        }
        try {
            if (i(context) && aa.a(9)) {
                return this.b.lastUpdateTime;
            }
            return -1L;
        } catch (Throwable th) {
            return -1L;
        }
    }

    public long f(Context context) {
        if (context == null) {
            return -1L;
        }
        try {
            i(context);
            return new File(context.getApplicationInfo().sourceDir).length();
        } catch (Throwable th) {
            return -1L;
        }
    }

    public String g(Context context) {
        if (context == null) {
            return null;
        }
        try {
            if (!i(context)) {
                return null;
            }
            Signature[] signatureArr = this.b.signatures;
            if (signatureArr.length < 1) {
                return null;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(signatureArr[0].toCharsString());
            return stringBuffer.toString();
        } catch (Throwable th) {
            return null;
        }
    }

    public String h(Context context) {
        if (context == null) {
            return null;
        }
        try {
            i(context);
            return context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
        } catch (Throwable th) {
            return null;
        }
    }
}
