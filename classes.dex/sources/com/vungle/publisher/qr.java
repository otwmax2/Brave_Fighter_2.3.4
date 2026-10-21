package com.vungle.publisher;

import com.vungle.publisher.log.Logger;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class qr {
    static final Pattern a = Pattern.compile("[|\\\\?*<\":>'&\\[\\]]");

    public static String a(Object... objArr) {
        if (objArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            Object obj = objArr[i];
            if (obj == null) {
                throw new IllegalArgumentException("null path element at index " + i);
            }
            sb.append(obj);
            int length2 = sb.length();
            if (length2 > 0 && i + 1 < length && sb.charAt(length2 - 1) != File.separatorChar) {
                sb.append(File.separatorChar);
            }
        }
        return sb.toString();
    }

    public static boolean a(String str) {
        return a(new File(str));
    }

    public static boolean a(File file) {
        boolean zB = b(file);
        if (zB) {
            Logger.d(Logger.FILE_TAG, "successfully deleted: " + file);
        } else {
            Logger.w(Logger.FILE_TAG, "could not delete: " + file);
        }
        return zB;
    }

    static boolean b(File file) {
        File[] fileArrListFiles;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(file);
        boolean z = true;
        for (File file2 = (File) arrayDeque.peek(); file2 != null; file2 = (File) arrayDeque.peek()) {
            if (file2.isDirectory() && (fileArrListFiles = file2.listFiles()) != null && fileArrListFiles.length > 0) {
                for (File file3 : fileArrListFiles) {
                    arrayDeque.push(file3);
                }
            } else {
                arrayDeque.pop();
                z = z && (!file2.exists() || file2.delete());
            }
            z = z;
        }
        return z;
    }

    public static boolean c(File file) {
        if (file == null) {
            Logger.w(Logger.FILE_TAG, "null directory path");
            return false;
        }
        if (file.mkdirs()) {
            Logger.d(Logger.FILE_TAG, "created directory: " + file);
            return true;
        }
        if (file.isDirectory()) {
            Logger.v(Logger.FILE_TAG, "directory exists: " + file);
            return true;
        }
        Logger.d(Logger.FILE_TAG, "unable to create directory: " + file);
        return false;
    }

    public static boolean d(File file) {
        File parentFile = file == null ? null : file.getParentFile();
        if (!c(parentFile)) {
            return false;
        }
        boolean zCanWrite = parentFile.canWrite();
        if (zCanWrite) {
            Logger.v(Logger.FILE_TAG, "directory is writeable: " + parentFile);
            return zCanWrite;
        }
        Logger.d(Logger.FILE_TAG, "directory not writeable: " + parentFile);
        return zCanWrite;
    }

    public static boolean b(String str) {
        return !a.matcher(str).find();
    }

    public static String c(String str) {
        Matcher matcher = a.matcher(str);
        if (matcher.find()) {
            String strReplaceAll = matcher.replaceAll("_");
            Logger.i(Logger.FILE_TAG, "Unsafe character(s) found / replaced in filepath: " + str + " --> " + strReplaceAll);
            return strReplaceAll;
        }
        return str;
    }

    public static boolean a(File file, File file2) throws IOException {
        String canonicalPath = file2.getCanonicalPath();
        String canonicalPath2 = file.getCanonicalPath();
        return (canonicalPath == null || canonicalPath.equals(canonicalPath2) || !canonicalPath.startsWith(canonicalPath2)) ? false : true;
    }
}
