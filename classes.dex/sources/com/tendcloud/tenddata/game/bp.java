package com.tendcloud.tenddata.game;

import android.os.Environment;
import android.util.Log;
import com.tendcloud.tenddata.TalkingDataGA;
import java.io.File;
import java.text.SimpleDateFormat;

/* JADX INFO: loaded from: classes.dex */
public final class bp {
    private static final String c = ".tdga_log_";
    public static boolean a = false;
    public static boolean b = false;
    private static final SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd 'at' HH:mm:ss.SSS");

    bp() {
    }

    private static File a() {
        return Environment.getExternalStorageState().equals("mounted") ? b() : c();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0052 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void a(java.lang.String r4) throws java.lang.Throwable {
        /*
            r2 = 0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4f
            r0.<init>()     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4f
            java.lang.String r1 = ".tdga_log_"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4f
            android.content.Context r1 = com.tendcloud.tenddata.TalkingDataGA.a     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4f
            java.lang.String r1 = r1.getPackageName()     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4f
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4f
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4f
            java.io.File r3 = new java.io.File     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4f
            java.io.File r1 = a()     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4f
            r3.<init>(r1, r0)     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4f
            java.io.FileWriter r1 = new java.io.FileWriter     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4f
            r0 = 1
            r1.<init>(r3, r0)     // Catch: java.lang.Exception -> L3f java.lang.Throwable -> L4f
            r1.write(r4)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            java.lang.String r0 = "\r\n"
            r1.write(r0)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            r1.flush()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            if (r1 == 0) goto L39
            r1.close()     // Catch: java.io.IOException -> L3a
        L39:
            return
        L3a:
            r0 = move-exception
            r0.printStackTrace()
            goto L39
        L3f:
            r0 = move-exception
            r1 = r2
        L41:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L5b
            if (r1 == 0) goto L39
            r1.close()     // Catch: java.io.IOException -> L4a
            goto L39
        L4a:
            r0 = move-exception
            r0.printStackTrace()
            goto L39
        L4f:
            r0 = move-exception
        L50:
            if (r2 == 0) goto L55
            r2.close()     // Catch: java.io.IOException -> L56
        L55:
            throw r0
        L56:
            r1 = move-exception
            r1.printStackTrace()
            goto L55
        L5b:
            r0 = move-exception
            r2 = r1
            goto L50
        L5e:
            r0 = move-exception
            goto L41
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.game.bp.a(java.lang.String):void");
    }

    public static void a(String... strArr) {
    }

    private static File b() {
        return Environment.getExternalStorageDirectory();
    }

    public static void b(String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            sb.append(str);
        }
        String string = sb.toString();
        if (a) {
            return;
        }
        Log.i("TDGA", string);
    }

    private static File c() {
        return TalkingDataGA.a.getFilesDir();
    }

    public static void c(String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            sb.append(str);
        }
        Log.e("TDGA", sb.toString());
    }
}
