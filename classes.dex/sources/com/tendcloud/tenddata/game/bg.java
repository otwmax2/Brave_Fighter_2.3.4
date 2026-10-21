package com.tendcloud.tenddata.game;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.ads.AudienceNetworkActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class bg {
    static m a = null;
    static String b = "td_database_push";
    static String c = AudienceNetworkActivity.WEBVIEW_ENCODING;
    static byte[] d = null;
    static final String e = "pref_file";
    static final String f = "pref.accountid.key";
    static SharedPreferences g = null;
    private static final String h = "LAST_SENT_PUSH_TIME";
    private static final String i = "appcontext_push";

    static {
        try {
            a = new m(az.a, b);
            g = az.a.getSharedPreferences("talkingdata_file_prefence", 0);
            String strC = aa.c(az.a.getPackageName());
            if (az.a == null || strC == null) {
                d = az.class.getSimpleName().getBytes();
            } else {
                d = strC.getBytes();
            }
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
    }

    bg() {
    }

    protected static String a(Context context) {
        return context.getSharedPreferences(e, 0).getString(f, "-1");
    }

    static synchronized List a() {
        ArrayList arrayList;
        arrayList = null;
        try {
            List listA = a.a(100);
            if (listA.size() > 0) {
                ArrayList arrayList2 = new ArrayList();
                try {
                    Iterator it = listA.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(new String(aa.c((byte[]) it.next(), d)));
                    }
                    arrayList = arrayList2;
                } catch (Throwable th) {
                    arrayList = arrayList2;
                    th = th;
                    if (bp.b) {
                        th.printStackTrace();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return arrayList;
    }

    static void a(long j) {
        SharedPreferences.Editor editorEdit = g.edit();
        editorEdit.putLong(h, j);
        editorEdit.commit();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000c A[Catch: all -> 0x0034, TRY_LEAVE, TryCatch #1 {, blocks: (B:5:0x0006, B:10:0x0015, B:13:0x002c, B:15:0x0030, B:7:0x000c), top: B:22:0x0006, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static synchronized boolean a(java.lang.String r4) {
        /*
            r0 = 0
            java.lang.Class<com.tendcloud.tenddata.game.bg> r2 = com.tendcloud.tenddata.game.bg.class
            monitor-enter(r2)
            if (r4 == 0) goto Lc
            int r1 = r4.length()     // Catch: java.lang.Throwable -> L34
            if (r1 > 0) goto L15
        Lc:
            java.lang.String r1 = "TDGA"
            java.lang.String r3 = "PushStoreManager storeMessage()# message is null or empty"
            android.util.Log.e(r1, r3)     // Catch: java.lang.Throwable -> L34
        L13:
            monitor-exit(r2)
            return r0
        L15:
            byte[] r1 = r4.getBytes()     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L34
            byte[] r3 = com.tendcloud.tenddata.game.bg.d     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L34
            byte[] r1 = com.tendcloud.tenddata.game.aa.b(r1, r3)     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L34
            com.tendcloud.tenddata.game.m r3 = com.tendcloud.tenddata.game.bg.a     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L34
            r3.a(r1)     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L34
            com.tendcloud.tenddata.game.m r1 = com.tendcloud.tenddata.game.bg.a     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L34
            r1.b()     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L34
            r0 = 1
            goto L13
        L2b:
            r1 = move-exception
            boolean r3 = com.tendcloud.tenddata.game.bp.b     // Catch: java.lang.Throwable -> L34
            if (r3 == 0) goto L13
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L34
            goto L13
        L34:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.game.bg.a(java.lang.String):boolean");
    }

    static void b() {
        try {
            a.a();
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
    }

    static void b(String str) {
        SharedPreferences.Editor editorEdit = g.edit();
        editorEdit.putString(i, str);
        editorEdit.commit();
    }

    static void c() {
    }

    static Long d() {
        return Long.valueOf(g.getLong(h, System.currentTimeMillis()));
    }

    static String e() {
        return g.getString(i, "");
    }
}
