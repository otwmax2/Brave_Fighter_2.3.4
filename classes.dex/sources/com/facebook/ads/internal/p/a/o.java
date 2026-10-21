package com.facebook.ads.internal.p.a;

import android.os.Build;
import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes.dex */
public class o {
    private static String a(byte[] bArr, String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.reset();
        return Base64.encodeToString(messageDigest.digest(bArr), 0);
    }

    public static void a(HttpsURLConnection httpsURLConnection, Set<String> set, Set<String> set2) throws Exception {
        if (Build.VERSION.SDK_INT == 15 && "4.0.3".equals(Build.VERSION.RELEASE)) {
            return;
        }
        try {
            for (Certificate certificate : httpsURLConnection.getServerCertificates()) {
                X509Certificate x509Certificate = (X509Certificate) certificate;
                String strA = a(x509Certificate.getEncoded(), "SHA-1");
                if (set != null && set.contains(strA)) {
                    return;
                }
                String strA2 = a(x509Certificate.getPublicKey().getEncoded(), "SHA-1");
                if (set2 != null && set2.contains(strA2)) {
                    return;
                }
            }
            throw new CertificateException("Unable to find valid certificate or public key.");
        } catch (Exception e) {
            throw e;
        }
    }
}
