package com.facebook.ads.internal.q.a;

import android.support.annotation.Nullable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes.dex */
public class h {
    @Nullable
    public static String a(File file) throws Exception {
        FileInputStream fileInputStream;
        int i;
        try {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    byte[] bArr = new byte[1024];
                    do {
                        i = fileInputStream.read(bArr);
                        if (i > 0) {
                            messageDigest.update(bArr, 0, i);
                        }
                    } while (i != -1);
                    return b(messageDigest.digest());
                } catch (IOException e) {
                    throw new Exception("IO exception.");
                } catch (NoSuchAlgorithmException e2) {
                    throw new Exception("No such algorithm.");
                }
            } catch (FileNotFoundException e3) {
                throw new Exception("File not found or not accessible.");
            }
        } finally {
            try {
                fileInputStream.close();
            } catch (IOException e4) {
            }
        }
    }

    @Nullable
    public static final String a(String str) {
        return a(new File(str));
    }

    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            int i = (b >>> 4) & 15;
            int i2 = 0;
            while (true) {
                sb.append((i < 0 || i > 9) ? (char) ((i - 10) + 97) : (char) (i + 48));
                int i3 = b & 15;
                int i4 = i2 + 1;
                if (i2 >= 1) {
                    break;
                }
                i2 = i4;
                i = i3;
            }
        }
        return sb.toString();
    }

    private static String b(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(Integer.toString((b & 255) + 256, 16).substring(1));
        }
        return sb.toString();
    }
}
