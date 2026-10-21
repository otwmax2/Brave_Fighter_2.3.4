package com.chartboost.sdk.Libraries;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    private c() {
    }

    public static synchronized byte[] a(byte[] bArr) {
        byte[] bArrDigest = null;
        synchronized (c.class) {
            if (bArr != null) {
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                    messageDigest.update(bArr);
                    bArrDigest = messageDigest.digest();
                } catch (NoSuchAlgorithmException e) {
                    com.chartboost.sdk.Tracking.a.a(c.class, "sha1", e);
                } catch (Exception e2) {
                    com.chartboost.sdk.Tracking.a.a(c.class, "sha1", e2);
                }
            }
        }
        return bArrDigest;
    }

    public static String b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return String.format(Locale.US, "%0" + (bArr.length << 1) + "x", new BigInteger(1, bArr));
    }
}
