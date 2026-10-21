package com.tendcloud.tenddata.game;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import com.facebook.share.internal.ShareConstants;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.Proxy;
import java.nio.channels.FileChannel;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.zip.InflaterInputStream;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class aa {
    static final boolean a = false;
    public static boolean b = false;
    public static String c = null;
    public static boolean d = false;
    public static boolean e = false;
    static final /* synthetic */ boolean f;
    private static final String g = "UTF-8";
    private static String h = null;
    private static String i = null;
    private static String j = null;
    private static final ExecutorService k;
    private static final byte l = 61;
    private static final String m = "US-ASCII";
    private static final byte[] n;
    private static byte[] o;

    static {
        f = !aa.class.desiredAssertionStatus();
        b = true;
        c = "TDLog";
        d = false;
        e = false;
        h = "ge";
        i = "tp";
        j = "rop";
        k = Executors.newSingleThreadExecutor();
        n = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
        o = new byte[]{1, 2, 3, 4, 5, 6, 7, 8};
    }

    public static String a() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(h + i + j).getInputStream(), "UTF-8"));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return sb.toString();
                }
                sb.append(line).append("\n");
            }
        } catch (Throwable th) {
            return null;
        }
    }

    public static String a(Context context, String str) {
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            byte[] bArr = new byte[inputStreamOpen.available()];
            inputStreamOpen.read(bArr);
            inputStreamOpen.close();
            return new JSONObject(new String(bArr)).getString("td_channel_id");
        } catch (Throwable th) {
            return null;
        }
    }

    private static String a(Bundle bundle, String str) {
        if (bundle == null) {
            return null;
        }
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            if (it.next().equalsIgnoreCase(str)) {
                return String.valueOf(bundle.get(str));
            }
        }
        return null;
    }

    public static final String a(String str) {
        return str.length() > 256 ? str.substring(0, 256) : str;
    }

    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            int i2 = b2 & 255;
            if (i2 < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(i2));
        }
        return sb.toString();
    }

    public static String a(byte[] bArr, int i2, int i3) {
        byte[] bArrB = b(bArr, i2, i3);
        try {
            return new String(bArrB, m);
        } catch (UnsupportedEncodingException e2) {
            return new String(bArrB);
        }
    }

    public static void a(Class cls, v vVar, String str, String str2) throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        Object obj = declaredField.get(null);
        Class<?> cls2 = Class.forName(str2);
        declaredField.set(null, Proxy.newProxyInstance(cls.getClass().getClassLoader(), new Class[]{cls2}, new ac(vVar, obj)));
    }

    public static void a(Object obj, v vVar, String str, String str2) throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException {
        Field declaredField = obj.getClass().getDeclaredField(str);
        declaredField.setAccessible(true);
        Object obj2 = declaredField.get(obj);
        Class<?> cls = Class.forName(str2);
        declaredField.set(obj, Proxy.newProxyInstance(obj.getClass().getClassLoader(), new Class[]{cls}, new ab(vVar, obj2)));
    }

    public static void a(Runnable runnable) {
        k.execute(runnable);
    }

    public static boolean a(int i2) {
        return Build.VERSION.SDK_INT >= i2;
    }

    public static boolean a(Context context) {
        if (b(context, "android.permission.GET_TASKS")) {
            if (c(context).contains(d(context).getRunningTasks(1).get(0).baseActivity.getPackageName())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static byte[] a(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) {
        byte[] bArr3 = n;
        int i5 = (i3 > 2 ? (bArr[i2 + 2] << 24) >>> 24 : 0) | (i3 > 1 ? (bArr[i2 + 1] << 24) >>> 16 : 0) | (i3 > 0 ? (bArr[i2] << 24) >>> 8 : 0);
        switch (i3) {
            case 1:
                bArr2[i4] = bArr3[i5 >>> 18];
                bArr2[i4 + 1] = bArr3[(i5 >>> 12) & 63];
                bArr2[i4 + 2] = l;
                bArr2[i4 + 3] = l;
                return bArr2;
            case 2:
                bArr2[i4] = bArr3[i5 >>> 18];
                bArr2[i4 + 1] = bArr3[(i5 >>> 12) & 63];
                bArr2[i4 + 2] = bArr3[(i5 >>> 6) & 63];
                bArr2[i4 + 3] = l;
                return bArr2;
            case 3:
                bArr2[i4] = bArr3[i5 >>> 18];
                bArr2[i4 + 1] = bArr3[(i5 >>> 12) & 63];
                bArr2[i4 + 2] = bArr3[(i5 >>> 6) & 63];
                bArr2[i4 + 3] = bArr3[i5 & 63];
                return bArr2;
            default:
                return bArr2;
        }
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, IOException, InvalidAlgorithmParameterException {
        SecureRandom secureRandom = new SecureRandom();
        SecretKey secretKeyGenerateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(bArr));
        Cipher cipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
        cipher.init(2, secretKeyGenerateSecret, new IvParameterSpec(new byte[]{1, 2, 3, 4, 5, 6, 7, 8}), secureRandom);
        InflaterInputStream inflaterInputStream = new InflaterInputStream(new ByteArrayInputStream(cipher.doFinal(bArr2)));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i2 = inflaterInputStream.read();
            if (i2 == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(i2);
        }
    }

    public static byte[] a(int[] iArr, int[] iArr2) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = ((iArr[i2] * iArr2[(iArr2.length - 1) - i2]) - (iArr[(iArr.length - 1) - i2] * iArr2[i2])) + "kiG9w0BAQUFADCBqjELMAkGA0JFSUpJTkcxEDAOBgNVBAcMB0JFSUpJTkcxFjAUBgNVB".charAt(i2);
            iArr2[i2] = ((iArr2[i2] * iArr[(iArr.length - 1) - i2]) + (iArr2[(iArr2.length - 1) - i2] * iArr[i2])) - "kiG9w0BAQUFADCBqjELMAkGA0JFSUpJTkcxEDAOBgNVBAcMB0JFSUpJTkcxFjAUBgNVB".charAt(("kiG9w0BAQUFADCBqjELMAkGA0JFSUpJTkcxEDAOBgNVBAcMB0JFSUpJTkcxFjAUBgNVB".length() - 1) - i2);
        }
        return (Arrays.toString(iArr) + Arrays.hashCode(iArr2)).getBytes();
    }

    public static String b(Context context) {
        if (a(23) && context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
            return null;
        }
        try {
            byte[] bArr = {84, 101, 110, 99, 101, 110, 116, 47, 77, 105, 99, 114, 111, 77, 115, 103};
            File file = new File(Environment.getExternalStorageDirectory(), new String(bArr));
            if (file == null || !file.isDirectory()) {
                bArr[0] = 116;
                file = new File(Environment.getExternalStorageDirectory(), new String(bArr));
                if (file == null || !file.isDirectory()) {
                    return null;
                }
            }
            JSONArray jSONArray = new JSONArray();
            for (File file2 : file.listFiles()) {
                if (file2.isDirectory() && file2.getName().length() == 32) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(ShareConstants.WEB_DIALOG_PARAM_ID, file2.getName());
                    jSONObject.put("modifiedTime", file2.lastModified());
                    jSONArray.put(jSONObject);
                }
            }
            return jSONArray.toString();
        } catch (Throwable th) {
            return null;
        }
    }

    public static String b(byte[] bArr) {
        String strA = null;
        try {
            strA = a(bArr, 0, bArr.length);
        } catch (IOException e2) {
            if (!f) {
                throw new AssertionError(e2.getMessage());
            }
        }
        if (f || strA != null) {
            return strA;
        }
        throw new AssertionError();
    }

    public static boolean b(Context context, String str) {
        try {
            return context.checkCallingOrSelfPermission(str) == 0;
        } catch (Throwable th) {
            return false;
        }
    }

    public static final boolean b(String str) {
        return str == null || "".equals(str.trim());
    }

    public static byte[] b(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            throw new NullPointerException("Cannot serialize a null array.");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Cannot have negative offset: " + i2);
        }
        if (i3 < 0) {
            throw new IllegalArgumentException("Cannot have length offset: " + i3);
        }
        if (i2 + i3 > bArr.length) {
            throw new IllegalArgumentException(String.format("Cannot have offset of %d and length of %d with array of length %d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(bArr.length)));
        }
        byte[] bArr2 = new byte[(i3 % 3 > 0 ? 4 : 0) + ((i3 / 3) * 4)];
        int i4 = i3 - 2;
        int i5 = 0;
        int i6 = 0;
        while (i6 < i4) {
            a(bArr, i6 + i2, 3, bArr2, i5);
            i6 += 3;
            i5 += 4;
        }
        if (i6 < i3) {
            a(bArr, i6 + i2, i3 - i6, bArr2, i5);
            i5 += 4;
        }
        if (i5 > bArr2.length - 1) {
            return bArr2;
        }
        byte[] bArr3 = new byte[i5];
        System.arraycopy(bArr2, 0, bArr3, 0, i5);
        return bArr3;
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) {
        try {
            SecretKey secretKeyGenerateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(bArr2));
            Cipher cipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
            cipher.init(1, secretKeyGenerateSecret, new IvParameterSpec(o));
            return cipher.doFinal(bArr);
        } catch (Exception e2) {
            return null;
        }
    }

    public static String c(Context context, String str) {
        try {
            return a(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData, str);
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    public static String c(String str) {
        try {
            return a(MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8")));
        } catch (Exception e2) {
            return null;
        }
    }

    private static List c(Context context) {
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 65536)) {
            if (resolveInfo.activityInfo != null) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
        }
        return arrayList;
    }

    public static byte[] c(byte[] bArr, byte[] bArr2) {
        try {
            SecretKey secretKeyGenerateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(bArr2));
            Cipher cipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
            cipher.init(2, secretKeyGenerateSecret, new IvParameterSpec(o));
            return cipher.doFinal(bArr);
        } catch (Exception e2) {
            return null;
        }
    }

    private static ActivityManager d(Context context) {
        return (ActivityManager) context.getSystemService("activity");
    }

    public static String d(String str) {
        if (str == null) {
            return null;
        }
        try {
            return a(MessageDigest.getInstance("SHA-256").digest(str.getBytes("UTF-8")));
        } catch (Exception e2) {
            return null;
        }
    }

    public static FileChannel d(Context context, String str) {
        RandomAccessFile randomAccessFile;
        try {
            File file = new File(context.getFilesDir(), str + "td.lock");
            if (!file.exists()) {
                file.createNewFile();
            }
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                return randomAccessFile.getChannel();
            } catch (Throwable th) {
                try {
                    randomAccessFile.close();
                    return null;
                } catch (Exception e2) {
                    return null;
                }
            }
        } catch (Throwable th2) {
            randomAccessFile = null;
        }
    }
}
