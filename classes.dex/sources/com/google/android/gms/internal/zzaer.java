package com.google.android.gms.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class zzaer {
    private static HashMap<String, String> aLZ;
    private static Object aMa;
    public static final Uri CONTENT_URI = Uri.parse("content://com.google.android.gsf.gservices");
    public static final Uri aLW = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    public static final Pattern aLX = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern aLY = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    private static String[] aMb = new String[0];
    private static Context aMc = null;

    public static long getLong(ContentResolver contentResolver, String str, long j) {
        String string = getString(contentResolver, str);
        if (string == null) {
            return j;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException e) {
            return j;
        }
    }

    public static String getString(ContentResolver contentResolver, String str) {
        return zza(contentResolver, str, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004a A[Catch: all -> 0x0074, TRY_LEAVE, TryCatch #2 {all -> 0x0074, blocks: (B:22:0x0044, B:28:0x0057, B:29:0x005d, B:40:0x0073, B:24:0x004a, B:30:0x005e, B:32:0x0062, B:33:0x0067), top: B:48:0x0044, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String zza(android.content.ContentResolver r8, java.lang.String r9, java.lang.String r10) {
        /*
            r7 = 1
            r3 = 0
            r2 = 0
            java.lang.Class<com.google.android.gms.internal.zzaer> r1 = com.google.android.gms.internal.zzaer.class
            monitor-enter(r1)
            zza(r8)     // Catch: java.lang.Throwable -> L32
            java.lang.Object r6 = com.google.android.gms.internal.zzaer.aMa     // Catch: java.lang.Throwable -> L32
            java.util.HashMap<java.lang.String, java.lang.String> r0 = com.google.android.gms.internal.zzaer.aLZ     // Catch: java.lang.Throwable -> L32
            boolean r0 = r0.containsKey(r9)     // Catch: java.lang.Throwable -> L32
            if (r0 == 0) goto L20
            java.util.HashMap<java.lang.String, java.lang.String> r0 = com.google.android.gms.internal.zzaer.aLZ     // Catch: java.lang.Throwable -> L32
            java.lang.Object r0 = r0.get(r9)     // Catch: java.lang.Throwable -> L32
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L32
            if (r0 == 0) goto L1e
            r10 = r0
        L1e:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L32
        L1f:
            return r10
        L20:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L32
            java.lang.String[] r1 = com.google.android.gms.internal.zzaer.aMb
            int r4 = r1.length
            r0 = r3
        L25:
            if (r0 >= r4) goto L35
            r5 = r1[r0]
            boolean r5 = r9.startsWith(r5)
            if (r5 != 0) goto L1f
            int r0 = r0 + 1
            goto L25
        L32:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L32
            throw r0
        L35:
            android.net.Uri r1 = com.google.android.gms.internal.zzaer.CONTENT_URI
            java.lang.String[] r4 = new java.lang.String[r7]
            r4[r3] = r9
            r0 = r8
            r3 = r2
            r5 = r2
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)
            if (r1 == 0) goto L4a
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L74
            if (r0 != 0) goto L56
        L4a:
            java.util.HashMap<java.lang.String, java.lang.String> r0 = com.google.android.gms.internal.zzaer.aLZ     // Catch: java.lang.Throwable -> L74
            r2 = 0
            r0.put(r9, r2)     // Catch: java.lang.Throwable -> L74
            if (r1 == 0) goto L1f
            r1.close()
            goto L1f
        L56:
            r0 = 1
            java.lang.String r0 = r1.getString(r0)     // Catch: java.lang.Throwable -> L74
            java.lang.Class<com.google.android.gms.internal.zzaer> r2 = com.google.android.gms.internal.zzaer.class
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L74
            java.lang.Object r3 = com.google.android.gms.internal.zzaer.aMa     // Catch: java.lang.Throwable -> L71
            if (r6 != r3) goto L67
            java.util.HashMap<java.lang.String, java.lang.String> r3 = com.google.android.gms.internal.zzaer.aLZ     // Catch: java.lang.Throwable -> L71
            r3.put(r9, r0)     // Catch: java.lang.Throwable -> L71
        L67:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L6b
            r10 = r0
        L6b:
            if (r1 == 0) goto L1f
            r1.close()
            goto L1f
        L71:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L71
            throw r0     // Catch: java.lang.Throwable -> L74
        L74:
            r0 = move-exception
            if (r1 == 0) goto L7a
            r1.close()
        L7a:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaer.zza(android.content.ContentResolver, java.lang.String, java.lang.String):java.lang.String");
    }

    public static Map<String, String> zza(ContentResolver contentResolver, String... strArr) {
        Cursor cursorQuery = contentResolver.query(aLW, null, null, strArr, null);
        TreeMap treeMap = new TreeMap();
        if (cursorQuery != null) {
            while (cursorQuery.moveToNext()) {
                try {
                    treeMap.put(cursorQuery.getString(0), cursorQuery.getString(1));
                } finally {
                    cursorQuery.close();
                }
            }
        }
        return treeMap;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.zzaer$1] */
    private static void zza(final ContentResolver contentResolver) {
        if (aLZ == null) {
            aLZ = new HashMap<>();
            aMa = new Object();
            new Thread("Gservices") { // from class: com.google.android.gms.internal.zzaer.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Looper.prepare();
                    contentResolver.registerContentObserver(zzaer.CONTENT_URI, true, new ContentObserver(new Handler(Looper.myLooper())) { // from class: com.google.android.gms.internal.zzaer.1.1
                        @Override // android.database.ContentObserver
                        public void onChange(boolean z) {
                            synchronized (zzaer.class) {
                                zzaer.aLZ.clear();
                                Object unused = zzaer.aMa = new Object();
                                if (zzaer.aMb.length > 0) {
                                    zzaer.zzb(contentResolver, zzaer.aMb);
                                }
                            }
                        }
                    });
                    Looper.loop();
                }
            }.start();
        }
    }

    public static void zzb(ContentResolver contentResolver, String... strArr) {
        Map<String, String> mapZza = zza(contentResolver, strArr);
        synchronized (zzaer.class) {
            zza(contentResolver);
            aMb = strArr;
            for (Map.Entry<String, String> entry : mapZza.entrySet()) {
                aLZ.put(entry.getKey(), entry.getValue());
            }
        }
    }
}
