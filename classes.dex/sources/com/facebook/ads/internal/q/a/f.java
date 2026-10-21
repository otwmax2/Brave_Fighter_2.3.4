package com.facebook.ads.internal.q.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.Signature;
import android.os.Build;
import android.support.annotation.Nullable;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.security.MessageDigest;
import java.security.PublicKey;
import java.security.cert.CertificateFactory;

/* JADX INFO: loaded from: classes.dex */
public class f {
    private static final String a = f.class.getSimpleName();

    public enum a {
        UNKNOWN(0),
        UNROOTED(1),
        ROOTED(2);

        public final int d;

        a(int i) {
            this.d = i;
        }
    }

    public static a a() {
        try {
            return c() || b() || a("su") ? a.ROOTED : a.UNROOTED;
        } catch (Throwable th) {
            return a.UNKNOWN;
        }
    }

    @Nullable
    public static String a(Context context) {
        try {
            return b(context);
        } catch (Exception e) {
            return null;
        }
    }

    private static PublicKey a(Signature signature) {
        return CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signature.toByteArray())).getPublicKey();
    }

    private static boolean a(String str) {
        File[] fileArrListFiles;
        for (String str2 : System.getenv("PATH").split(":")) {
            File file = new File(str2);
            if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2.getName().equals(str)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    private static String b(Context context) {
        StringBuilder sb = new StringBuilder();
        for (Signature signature : context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures) {
            sb.append(h.a(MessageDigest.getInstance("SHA1").digest(a(signature).getEncoded())));
            sb.append(";");
        }
        return sb.toString();
    }

    private static boolean b() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    private static boolean c() {
        return new File("/system/app/Superuser.apk").exists();
    }
}
