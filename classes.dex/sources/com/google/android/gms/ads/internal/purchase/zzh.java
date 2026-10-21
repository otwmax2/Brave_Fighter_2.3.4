package com.google.android.gms.ads.internal.purchase;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemClock;
import com.google.android.gms.internal.zzir;
import com.google.android.gms.internal.zzkh;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
@zzir
public class zzh {
    private static zzh zzbxq;
    private final zza zzbxp;
    private static final String zzbxo = String.format(Locale.US, "CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)", "InAppPurchase", "purchase_id", "product_id", "developer_payload", "record_time");
    private static final Object zzail = new Object();

    public class zza extends SQLiteOpenHelper {
        public zza(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 4);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(zzh.zzbxo);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            zzkh.zzcx(new StringBuilder(64).append("Database updated from version ").append(i).append(" to version ").append(i2).toString());
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS InAppPurchase");
            onCreate(sQLiteDatabase);
        }
    }

    zzh(Context context) {
        this.zzbxp = new zza(context, "google_inapp_purchase.db");
    }

    public static zzh zzs(Context context) {
        zzh zzhVar;
        synchronized (zzail) {
            if (zzbxq == null) {
                zzbxq = new zzh(context);
            }
            zzhVar = zzbxq;
        }
        return zzhVar;
    }

    public int getRecordCount() {
        Cursor cursorRawQuery = null;
        int i = 0;
        synchronized (zzail) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            try {
                if (writableDatabase != null) {
                    try {
                        cursorRawQuery = writableDatabase.rawQuery("select count(*) from InAppPurchase", null);
                        if (cursorRawQuery.moveToFirst()) {
                            i = cursorRawQuery.getInt(0);
                        } else if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                    } catch (SQLiteException e) {
                        String strValueOf = String.valueOf(e.getMessage());
                        zzkh.zzcy(strValueOf.length() != 0 ? "Error getting record count".concat(strValueOf) : new String("Error getting record count"));
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                    }
                }
            } finally {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            }
        }
        return i;
    }

    public SQLiteDatabase getWritableDatabase() {
        try {
            return this.zzbxp.getWritableDatabase();
        } catch (SQLiteException e) {
            zzkh.zzcy("Error opening writable conversion tracking database");
            return null;
        }
    }

    public zzf zza(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        return new zzf(cursor.getLong(0), cursor.getString(1), cursor.getString(2));
    }

    public void zza(zzf zzfVar) {
        if (zzfVar == null) {
            return;
        }
        synchronized (zzail) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.delete("InAppPurchase", String.format(Locale.US, "%s = %d", "purchase_id", Long.valueOf(zzfVar.zzbxj)), null);
            }
        }
    }

    public void zzb(zzf zzfVar) {
        if (zzfVar == null) {
            return;
        }
        synchronized (zzail) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("product_id", zzfVar.zzbxl);
            contentValues.put("developer_payload", zzfVar.zzbxk);
            contentValues.put("record_time", Long.valueOf(SystemClock.elapsedRealtime()));
            zzfVar.zzbxj = writableDatabase.insert("InAppPurchase", null, contentValues);
            if (getRecordCount() > 20000) {
                zzpu();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0072 A[Catch: all -> 0x0066, TRY_ENTER, TryCatch #3 {, blocks: (B:4:0x0004, B:6:0x000f, B:9:0x0012, B:11:0x0018, B:19:0x0041, B:20:0x0044, B:37:0x0072, B:38:0x0075, B:29:0x0062), top: B:45:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<com.google.android.gms.ads.internal.purchase.zzf> zzg(long r14) {
        /*
            r13 = this;
            r10 = 0
            java.lang.Object r11 = com.google.android.gms.ads.internal.purchase.zzh.zzail
            monitor-enter(r11)
            java.util.LinkedList r9 = new java.util.LinkedList     // Catch: java.lang.Throwable -> L66
            r9.<init>()     // Catch: java.lang.Throwable -> L66
            r0 = 0
            int r0 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            if (r0 > 0) goto L12
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L66
            r0 = r9
        L11:
            return r0
        L12:
            android.database.sqlite.SQLiteDatabase r0 = r13.getWritableDatabase()     // Catch: java.lang.Throwable -> L66
            if (r0 != 0) goto L1b
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L66
            r0 = r9
            goto L11
        L1b:
            java.lang.String r7 = "record_time ASC"
            java.lang.String r1 = "InAppPurchase"
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            java.lang.String r8 = java.lang.String.valueOf(r14)     // Catch: android.database.sqlite.SQLiteException -> L47 java.lang.Throwable -> L76
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: android.database.sqlite.SQLiteException -> L47 java.lang.Throwable -> L76
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L6f android.database.sqlite.SQLiteException -> L79
            if (r0 == 0) goto L3f
        L32:
            com.google.android.gms.ads.internal.purchase.zzf r0 = r13.zza(r1)     // Catch: java.lang.Throwable -> L6f android.database.sqlite.SQLiteException -> L79
            r9.add(r0)     // Catch: java.lang.Throwable -> L6f android.database.sqlite.SQLiteException -> L79
            boolean r0 = r1.moveToNext()     // Catch: java.lang.Throwable -> L6f android.database.sqlite.SQLiteException -> L79
            if (r0 != 0) goto L32
        L3f:
            if (r1 == 0) goto L44
            r1.close()     // Catch: java.lang.Throwable -> L66
        L44:
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L66
            r0 = r9
            goto L11
        L47:
            r0 = move-exception
            r1 = r10
        L49:
            java.lang.String r2 = "Error extracing purchase info: "
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L6f
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: java.lang.Throwable -> L6f
            int r3 = r0.length()     // Catch: java.lang.Throwable -> L6f
            if (r3 == 0) goto L69
            java.lang.String r0 = r2.concat(r0)     // Catch: java.lang.Throwable -> L6f
        L5d:
            com.google.android.gms.internal.zzkh.zzcy(r0)     // Catch: java.lang.Throwable -> L6f
            if (r1 == 0) goto L44
            r1.close()     // Catch: java.lang.Throwable -> L66
            goto L44
        L66:
            r0 = move-exception
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L66
            throw r0
        L69:
            java.lang.String r0 = new java.lang.String     // Catch: java.lang.Throwable -> L6f
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L6f
            goto L5d
        L6f:
            r0 = move-exception
        L70:
            if (r1 == 0) goto L75
            r1.close()     // Catch: java.lang.Throwable -> L66
        L75:
            throw r0     // Catch: java.lang.Throwable -> L66
        L76:
            r0 = move-exception
            r1 = r10
            goto L70
        L79:
            r0 = move-exception
            goto L49
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.purchase.zzh.zzg(long):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x005c A[Catch: all -> 0x0031, TRY_ENTER, TryCatch #1 {, blocks: (B:4:0x0004, B:6:0x000a, B:14:0x002c, B:15:0x002f, B:33:0x005c, B:34:0x005f, B:27:0x004f), top: B:39:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void zzpu() {
        /*
            r11 = this;
            r9 = 0
            java.lang.Object r10 = com.google.android.gms.ads.internal.purchase.zzh.zzail
            monitor-enter(r10)
            android.database.sqlite.SQLiteDatabase r0 = r11.getWritableDatabase()     // Catch: java.lang.Throwable -> L31
            if (r0 != 0) goto Lc
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L31
        Lb:
            return
        Lc:
            java.lang.String r7 = "record_time ASC"
            java.lang.String r1 = "InAppPurchase"
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            java.lang.String r8 = "1"
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: android.database.sqlite.SQLiteException -> L34 java.lang.Throwable -> L60
            if (r1 == 0) goto L2a
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L63
            if (r0 == 0) goto L2a
            com.google.android.gms.ads.internal.purchase.zzf r0 = r11.zza(r1)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L63
            r11.zza(r0)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L63
        L2a:
            if (r1 == 0) goto L2f
            r1.close()     // Catch: java.lang.Throwable -> L31
        L2f:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L31
            goto Lb
        L31:
            r0 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L31
            throw r0
        L34:
            r0 = move-exception
            r1 = r9
        L36:
            java.lang.String r2 = "Error remove oldest record"
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L59
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: java.lang.Throwable -> L59
            int r3 = r0.length()     // Catch: java.lang.Throwable -> L59
            if (r3 == 0) goto L53
            java.lang.String r0 = r2.concat(r0)     // Catch: java.lang.Throwable -> L59
        L4a:
            com.google.android.gms.internal.zzkh.zzcy(r0)     // Catch: java.lang.Throwable -> L59
            if (r1 == 0) goto L2f
            r1.close()     // Catch: java.lang.Throwable -> L31
            goto L2f
        L53:
            java.lang.String r0 = new java.lang.String     // Catch: java.lang.Throwable -> L59
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L59
            goto L4a
        L59:
            r0 = move-exception
        L5a:
            if (r1 == 0) goto L5f
            r1.close()     // Catch: java.lang.Throwable -> L31
        L5f:
            throw r0     // Catch: java.lang.Throwable -> L31
        L60:
            r0 = move-exception
            r1 = r9
            goto L5a
        L63:
            r0 = move-exception
            goto L36
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.purchase.zzh.zzpu():void");
    }
}
