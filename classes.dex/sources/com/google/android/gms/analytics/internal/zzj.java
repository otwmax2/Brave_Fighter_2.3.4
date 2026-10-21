package com.google.android.gms.analytics.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import com.ironsource.sdk.precache.DownloadManager;
import java.io.Closeable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class zzj extends zzd implements Closeable {
    private static final String zzcxz = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id");
    private static final String zzcya = String.format("SELECT MAX(%s) FROM %s WHERE 1;", "hit_time", "hits2");
    private final zza zzcyb;
    private final zzal zzcyc;
    private final zzal zzcyd;

    class zza extends SQLiteOpenHelper {
        zza(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        }

        private void zza(SQLiteDatabase sQLiteDatabase) {
            Set<String> setZzc = zzc(sQLiteDatabase, "hits2");
            String[] strArr = {"hit_id", "hit_string", "hit_time", "hit_url"};
            for (int i = 0; i < 4; i++) {
                String str = strArr[i];
                if (!setZzc.remove(str)) {
                    String strValueOf = String.valueOf(str);
                    throw new SQLiteException(strValueOf.length() != 0 ? "Database hits2 is missing required column: ".concat(strValueOf) : new String("Database hits2 is missing required column: "));
                }
            }
            boolean z = setZzc.remove("hit_app_id") ? false : true;
            if (!setZzc.isEmpty()) {
                throw new SQLiteException("Database hits2 has extra columns");
            }
            if (z) {
                sQLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id INTEGER");
            }
        }

        private void zzb(SQLiteDatabase sQLiteDatabase) {
            Set<String> setZzc = zzc(sQLiteDatabase, "properties");
            String[] strArr = {"app_uid", "cid", "tid", NativeProtocol.WEB_DIALOG_PARAMS, "adid", "hits_count"};
            for (int i = 0; i < 6; i++) {
                String str = strArr[i];
                if (!setZzc.remove(str)) {
                    String strValueOf = String.valueOf(str);
                    throw new SQLiteException(strValueOf.length() != 0 ? "Database properties is missing required column: ".concat(strValueOf) : new String("Database properties is missing required column: "));
                }
            }
            if (!setZzc.isEmpty()) {
                throw new SQLiteException("Database properties table has extra columns");
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private boolean zzb(android.database.sqlite.SQLiteDatabase r11, java.lang.String r12) throws java.lang.Throwable {
            /*
                r10 = this;
                r8 = 0
                r9 = 0
                java.lang.String r1 = "SQLITE_MASTER"
                r0 = 1
                java.lang.String[] r2 = new java.lang.String[r0]     // Catch: android.database.sqlite.SQLiteException -> L26 java.lang.Throwable -> L36
                r0 = 0
                java.lang.String r3 = "name"
                r2[r0] = r3     // Catch: android.database.sqlite.SQLiteException -> L26 java.lang.Throwable -> L36
                java.lang.String r3 = "name=?"
                r0 = 1
                java.lang.String[] r4 = new java.lang.String[r0]     // Catch: android.database.sqlite.SQLiteException -> L26 java.lang.Throwable -> L36
                r0 = 0
                r4[r0] = r12     // Catch: android.database.sqlite.SQLiteException -> L26 java.lang.Throwable -> L36
                r5 = 0
                r6 = 0
                r7 = 0
                r0 = r11
                android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: android.database.sqlite.SQLiteException -> L26 java.lang.Throwable -> L36
                boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L3d android.database.sqlite.SQLiteException -> L40
                if (r1 == 0) goto L25
                r1.close()
            L25:
                return r0
            L26:
                r0 = move-exception
                r1 = r9
            L28:
                com.google.android.gms.analytics.internal.zzj r2 = com.google.android.gms.analytics.internal.zzj.this     // Catch: java.lang.Throwable -> L3d
                java.lang.String r3 = "Error querying for table"
                r2.zzc(r3, r12, r0)     // Catch: java.lang.Throwable -> L3d
                if (r1 == 0) goto L34
                r1.close()
            L34:
                r0 = r8
                goto L25
            L36:
                r0 = move-exception
            L37:
                if (r9 == 0) goto L3c
                r9.close()
            L3c:
                throw r0
            L3d:
                r0 = move-exception
                r9 = r1
                goto L37
            L40:
                r0 = move-exception
                goto L28
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zzj.zza.zzb(android.database.sqlite.SQLiteDatabase, java.lang.String):boolean");
        }

        private Set<String> zzc(SQLiteDatabase sQLiteDatabase, String str) {
            HashSet hashSet = new HashSet();
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery(new StringBuilder(String.valueOf(str).length() + 22).append("SELECT * FROM ").append(str).append(" LIMIT 0").toString(), null);
            try {
                for (String str2 : cursorRawQuery.getColumnNames()) {
                    hashSet.add(str2);
                }
                return hashSet;
            } finally {
                cursorRawQuery.close();
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public SQLiteDatabase getWritableDatabase() {
            if (!zzj.this.zzcyd.zzx(3600000L)) {
                throw new SQLiteException("Database open failed");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e) {
                zzj.this.zzcyd.start();
                zzj.this.zzem("Opening the database failed, dropping the table and recreating it");
                zzj.this.getContext().getDatabasePath(zzj.this.zzaab()).delete();
                try {
                    SQLiteDatabase writableDatabase = super.getWritableDatabase();
                    zzj.this.zzcyd.clear();
                    return writableDatabase;
                } catch (SQLiteException e2) {
                    zzj.this.zze("Failed to open freshly created database", e2);
                    throw e2;
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            zzx.zzet(sQLiteDatabase.getPath());
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (Build.VERSION.SDK_INT < 15) {
                Cursor cursorRawQuery = sQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
                try {
                    cursorRawQuery.moveToFirst();
                } finally {
                    cursorRawQuery.close();
                }
            }
            if (zzb(sQLiteDatabase, "hits2")) {
                zza(sQLiteDatabase);
            } else {
                sQLiteDatabase.execSQL(zzj.zzcxz);
            }
            if (zzb(sQLiteDatabase, "properties")) {
                zzb(sQLiteDatabase);
            } else {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS properties ( app_uid INTEGER NOT NULL, cid TEXT NOT NULL, tid TEXT NOT NULL, params TEXT NOT NULL, adid INTEGER NOT NULL, hits_count INTEGER NOT NULL, PRIMARY KEY (app_uid, cid, tid)) ;");
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    zzj(zzf zzfVar) {
        super(zzfVar);
        this.zzcyc = new zzal(zzyw());
        this.zzcyd = new zzal(zzyw());
        this.zzcyb = new zza(zzfVar.getContext(), zzaab());
    }

    private long zza(String str, String[] strArr, long j) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = getWritableDatabase().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    j = cursorRawQuery.getLong(0);
                } else if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                zzd("Database error", str, e);
                throw e;
            }
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    private void zzaaa() throws Throwable {
        int iZzaca = zzyy().zzaca();
        long jZzzr = zzzr();
        if (jZzzr > iZzaca - 1) {
            List<Long> listZzq = zzq((jZzzr - ((long) iZzaca)) + 1);
            zzd("Store full, deleting hits to make room, count", Integer.valueOf(listZzq.size()));
            zzq(listZzq);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String zzaab() {
        if (zzyy().zzabc() && !zzyy().zzabd()) {
            return zzyy().zzacd();
        }
        return zzyy().zzacc();
    }

    private static String zzap(Map<String, String> map) {
        com.google.android.gms.common.internal.zzab.zzaa(map);
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builder.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String encodedQuery = builder.build().getEncodedQuery();
        return encodedQuery == null ? "" : encodedQuery;
    }

    private long zzb(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = getWritableDatabase().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j = cursorRawQuery.getLong(0);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                zzd("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private String zzd(zzab zzabVar) {
        return zzabVar.zzadb() ? zzyy().zzabq() : zzyy().zzabr();
    }

    private static String zze(zzab zzabVar) {
        com.google.android.gms.common.internal.zzab.zzaa(zzabVar);
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry<String, String> entry : zzabVar.zzm().entrySet()) {
            String key = entry.getKey();
            if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key)) {
                builder.appendQueryParameter(key, entry.getValue());
            }
        }
        String encodedQuery = builder.build().getEncodedQuery();
        return encodedQuery == null ? "" : encodedQuery;
    }

    public void beginTransaction() {
        zzzg();
        getWritableDatabase().beginTransaction();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.zzcyb.close();
        } catch (SQLiteException e) {
            zze("Sql error closing database", e);
        } catch (IllegalStateException e2) {
            zze("Error closing database", e2);
        }
    }

    public void endTransaction() {
        zzzg();
        getWritableDatabase().endTransaction();
    }

    SQLiteDatabase getWritableDatabase() {
        try {
            return this.zzcyb.getWritableDatabase();
        } catch (SQLiteException e) {
            zzd("Error opening database", e);
            throw e;
        }
    }

    boolean isEmpty() {
        return zzzr() == 0;
    }

    public void setTransactionSuccessful() {
        zzzg();
        getWritableDatabase().setTransactionSuccessful();
    }

    public void zza(long j, String str) {
        com.google.android.gms.common.internal.zzab.zzhs(str);
        zzzg();
        zzwu();
        int iDelete = getWritableDatabase().delete("properties", "app_uid=? AND cid<>?", new String[]{String.valueOf(j), str});
        if (iDelete > 0) {
            zza("Deleted property records", Integer.valueOf(iDelete));
        }
    }

    public long zzb(long j, String str, String str2) {
        com.google.android.gms.common.internal.zzab.zzhs(str);
        com.google.android.gms.common.internal.zzab.zzhs(str2);
        zzzg();
        zzwu();
        return zza("SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?", new String[]{String.valueOf(j), str, str2}, 0L);
    }

    public void zzb(zzh zzhVar) {
        com.google.android.gms.common.internal.zzab.zzaa(zzhVar);
        zzzg();
        zzwu();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String strZzap = zzap(zzhVar.zzm());
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_uid", Long.valueOf(zzhVar.zzzo()));
        contentValues.put("cid", zzhVar.zzwb());
        contentValues.put("tid", zzhVar.zzzp());
        contentValues.put("adid", Integer.valueOf(zzhVar.zzzq() ? 1 : 0));
        contentValues.put("hits_count", Long.valueOf(zzhVar.zzzr()));
        contentValues.put(NativeProtocol.WEB_DIALOG_PARAMS, strZzap);
        try {
            if (writableDatabase.insertWithOnConflict("properties", null, contentValues, 5) == -1) {
                zzem("Failed to insert/update a property (got -1)");
            }
        } catch (SQLiteException e) {
            zze("Error storing a property", e);
        }
    }

    public void zzc(zzab zzabVar) throws Throwable {
        com.google.android.gms.common.internal.zzab.zzaa(zzabVar);
        zzwu();
        zzzg();
        String strZze = zze(zzabVar);
        if (strZze.length() > 8192) {
            zzyx().zza(zzabVar, "Hit length exceeds the maximum allowed size");
            return;
        }
        zzaaa();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_string", strZze);
        contentValues.put("hit_time", Long.valueOf(zzabVar.zzacz()));
        contentValues.put("hit_app_id", Integer.valueOf(zzabVar.zzacx()));
        contentValues.put("hit_url", zzd(zzabVar));
        try {
            long jInsert = writableDatabase.insert("hits2", null, contentValues);
            if (jInsert == -1) {
                zzem("Failed to insert a hit (got -1)");
            } else {
                zzb("Hit saved to database. db-id, hit", Long.valueOf(jInsert), zzabVar);
            }
        } catch (SQLiteException e) {
            zze("Error storing a hit", e);
        }
    }

    Map<String, String> zzen(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            if (!str.startsWith("?")) {
                String strValueOf = String.valueOf(str);
                str = strValueOf.length() != 0 ? "?".concat(strValueOf) : new String("?");
            }
            return com.google.android.gms.common.util.zzn.zza(new URI(str), DownloadManager.UTF8_CHARSET);
        } catch (URISyntaxException e) {
            zze("Error parsing hit parameters", e);
            return new HashMap(0);
        }
    }

    Map<String, String> zzeo(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            String strValueOf = String.valueOf(str);
            return com.google.android.gms.common.util.zzn.zza(new URI(strValueOf.length() != 0 ? "?".concat(strValueOf) : new String("?")), DownloadManager.UTF8_CHARSET);
        } catch (URISyntaxException e) {
            zze("Error parsing property parameters", e);
            return new HashMap(0);
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0073: MOVE (r10 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:25:0x0073 */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<java.lang.Long> zzq(long r14) throws java.lang.Throwable {
        /*
            r13 = this;
            r10 = 0
            r13.zzwu()
            r13.zzzg()
            r0 = 0
            int r0 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            if (r0 > 0) goto L12
            java.util.List r0 = java.util.Collections.emptyList()
        L11:
            return r0
        L12:
            android.database.sqlite.SQLiteDatabase r0 = r13.getWritableDatabase()
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            java.lang.String r1 = "hits2"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: android.database.sqlite.SQLiteException -> L5e java.lang.Throwable -> L6b
            r3 = 0
            java.lang.String r4 = "hit_id"
            r2[r3] = r4     // Catch: android.database.sqlite.SQLiteException -> L5e java.lang.Throwable -> L6b
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            java.lang.String r7 = "%s ASC"
            r8 = 1
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch: android.database.sqlite.SQLiteException -> L5e java.lang.Throwable -> L6b
            r11 = 0
            java.lang.String r12 = "hit_id"
            r8[r11] = r12     // Catch: android.database.sqlite.SQLiteException -> L5e java.lang.Throwable -> L6b
            java.lang.String r7 = java.lang.String.format(r7, r8)     // Catch: android.database.sqlite.SQLiteException -> L5e java.lang.Throwable -> L6b
            java.lang.String r8 = java.lang.Long.toString(r14)     // Catch: android.database.sqlite.SQLiteException -> L5e java.lang.Throwable -> L6b
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: android.database.sqlite.SQLiteException -> L5e java.lang.Throwable -> L6b
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteException -> L75
            if (r0 == 0) goto L57
        L45:
            r0 = 0
            long r2 = r1.getLong(r0)     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteException -> L75
            java.lang.Long r0 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteException -> L75
            r9.add(r0)     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteException -> L75
            boolean r0 = r1.moveToNext()     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteException -> L75
            if (r0 != 0) goto L45
        L57:
            if (r1 == 0) goto L5c
            r1.close()
        L5c:
            r0 = r9
            goto L11
        L5e:
            r0 = move-exception
            r1 = r10
        L60:
            java.lang.String r2 = "Error selecting hit ids"
            r13.zzd(r2, r0)     // Catch: java.lang.Throwable -> L72
            if (r1 == 0) goto L5c
            r1.close()
            goto L5c
        L6b:
            r0 = move-exception
        L6c:
            if (r10 == 0) goto L71
            r10.close()
        L71:
            throw r0
        L72:
            r0 = move-exception
            r10 = r1
            goto L6c
        L75:
            r0 = move-exception
            goto L60
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zzj.zzq(long):java.util.List");
    }

    public void zzq(List<Long> list) {
        com.google.android.gms.common.internal.zzab.zzaa(list);
        zzwu();
        zzzg();
        if (list.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder("hit_id");
        sb.append(" in (");
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                sb.append(")");
                String string = sb.toString();
                try {
                    SQLiteDatabase writableDatabase = getWritableDatabase();
                    zza("Deleting dispatched hits. count", Integer.valueOf(list.size()));
                    int iDelete = writableDatabase.delete("hits2", string, null);
                    if (iDelete != list.size()) {
                        zzb("Deleted fewer hits then expected", Integer.valueOf(list.size()), Integer.valueOf(iDelete), string);
                        return;
                    }
                    return;
                } catch (SQLiteException e) {
                    zze("Error deleting hits", e);
                    throw e;
                }
            }
            Long l = list.get(i2);
            if (l == null || l.longValue() == 0) {
                break;
            }
            if (i2 > 0) {
                sb.append(",");
            }
            sb.append(l);
            i = i2 + 1;
        }
        throw new SQLiteException("Invalid hit id");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<com.google.android.gms.analytics.internal.zzab> zzr(long r14) {
        /*
            r13 = this;
            r0 = 1
            r1 = 0
            r9 = 0
            r2 = 0
            int r2 = (r14 > r2 ? 1 : (r14 == r2 ? 0 : -1))
            if (r2 < 0) goto L8f
        L9:
            com.google.android.gms.common.internal.zzab.zzbn(r0)
            r13.zzwu()
            r13.zzzg()
            android.database.sqlite.SQLiteDatabase r0 = r13.getWritableDatabase()
            java.lang.String r1 = "hits2"
            r2 = 5
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            r3 = 0
            java.lang.String r4 = "hit_id"
            r2[r3] = r4     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            r3 = 1
            java.lang.String r4 = "hit_time"
            r2[r3] = r4     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            r3 = 2
            java.lang.String r4 = "hit_string"
            r2[r3] = r4     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            r3 = 3
            java.lang.String r4 = "hit_url"
            r2[r3] = r4     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            r3 = 4
            java.lang.String r4 = "hit_app_id"
            r2[r3] = r4     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            java.lang.String r7 = "%s ASC"
            r8 = 1
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            r10 = 0
            java.lang.String r11 = "hit_id"
            r8[r10] = r11     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            java.lang.String r7 = java.lang.String.format(r7, r8)     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            java.lang.String r8 = java.lang.Long.toString(r14)     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            android.database.Cursor r9 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            java.util.ArrayList r10 = new java.util.ArrayList     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            r10.<init>()     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            boolean r0 = r9.moveToFirst()     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            if (r0 == 0) goto L89
        L59:
            r0 = 0
            long r6 = r9.getLong(r0)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            r0 = 1
            long r3 = r9.getLong(r0)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            r0 = 2
            java.lang.String r0 = r9.getString(r0)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            r1 = 3
            java.lang.String r1 = r9.getString(r1)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            r2 = 4
            int r8 = r9.getInt(r2)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            java.util.Map r2 = r13.zzen(r0)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            boolean r5 = com.google.android.gms.analytics.internal.zzao.zzfd(r1)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            com.google.android.gms.analytics.internal.zzab r0 = new com.google.android.gms.analytics.internal.zzab     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            r1 = r13
            r0.<init>(r1, r2, r3, r5, r6, r8)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            r10.add(r0)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            boolean r0 = r9.moveToNext()     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            if (r0 != 0) goto L59
        L89:
            if (r9 == 0) goto L8e
            r9.close()
        L8e:
            return r10
        L8f:
            r0 = r1
            goto L9
        L92:
            r0 = move-exception
            r1 = r9
        L94:
            java.lang.String r2 = "Error loading hits from the database"
            r13.zze(r2, r0)     // Catch: java.lang.Throwable -> L9a
            throw r0     // Catch: java.lang.Throwable -> L9a
        L9a:
            r0 = move-exception
            r9 = r1
        L9c:
            if (r9 == 0) goto La1
            r9.close()
        La1:
            throw r0
        La2:
            r0 = move-exception
            goto L9c
        La4:
            r0 = move-exception
            r1 = r9
            goto L94
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zzj.zzr(long):java.util.List");
    }

    public void zzs(long j) {
        zzwu();
        zzzg();
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Long.valueOf(j));
        zza("Deleting hit, id", Long.valueOf(j));
        zzq(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<com.google.android.gms.analytics.internal.zzh> zzt(long r14) throws java.lang.Throwable {
        /*
            r13 = this;
            r13.zzzg()
            r13.zzwu()
            android.database.sqlite.SQLiteDatabase r0 = r13.getWritableDatabase()
            r9 = 0
            r1 = 5
            java.lang.String[] r2 = new java.lang.String[r1]     // Catch: java.lang.Throwable -> Lb8 android.database.sqlite.SQLiteException -> Lba
            r1 = 0
            java.lang.String r3 = "cid"
            r2[r1] = r3     // Catch: java.lang.Throwable -> Lb8 android.database.sqlite.SQLiteException -> Lba
            r1 = 1
            java.lang.String r3 = "tid"
            r2[r1] = r3     // Catch: java.lang.Throwable -> Lb8 android.database.sqlite.SQLiteException -> Lba
            r1 = 2
            java.lang.String r3 = "adid"
            r2[r1] = r3     // Catch: java.lang.Throwable -> Lb8 android.database.sqlite.SQLiteException -> Lba
            r1 = 3
            java.lang.String r3 = "hits_count"
            r2[r1] = r3     // Catch: java.lang.Throwable -> Lb8 android.database.sqlite.SQLiteException -> Lba
            r1 = 4
            java.lang.String r3 = "params"
            r2[r1] = r3     // Catch: java.lang.Throwable -> Lb8 android.database.sqlite.SQLiteException -> Lba
            com.google.android.gms.analytics.internal.zzr r1 = r13.zzyy()     // Catch: java.lang.Throwable -> Lb8 android.database.sqlite.SQLiteException -> Lba
            int r10 = r1.zzacb()     // Catch: java.lang.Throwable -> Lb8 android.database.sqlite.SQLiteException -> Lba
            java.lang.String r8 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> Lb8 android.database.sqlite.SQLiteException -> Lba
            java.lang.String r3 = "app_uid=?"
            r1 = 1
            java.lang.String[] r4 = new java.lang.String[r1]     // Catch: java.lang.Throwable -> Lb8 android.database.sqlite.SQLiteException -> Lba
            r1 = 0
            java.lang.String r5 = java.lang.String.valueOf(r14)     // Catch: java.lang.Throwable -> Lb8 android.database.sqlite.SQLiteException -> Lba
            r4[r1] = r5     // Catch: java.lang.Throwable -> Lb8 android.database.sqlite.SQLiteException -> Lba
            java.lang.String r1 = "properties"
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r9 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> Lb8 android.database.sqlite.SQLiteException -> Lba
            java.util.ArrayList r11 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            r11.<init>()     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            boolean r0 = r9.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            if (r0 == 0) goto L8b
        L53:
            r0 = 0
            java.lang.String r3 = r9.getString(r0)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            r0 = 1
            java.lang.String r4 = r9.getString(r0)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            r0 = 2
            int r0 = r9.getInt(r0)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            if (r0 == 0) goto L9c
            r5 = 1
        L65:
            r0 = 3
            int r0 = r9.getInt(r0)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            long r6 = (long) r0     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            r0 = 4
            java.lang.String r0 = r9.getString(r0)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            java.util.Map r8 = r13.zzeo(r0)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            boolean r0 = android.text.TextUtils.isEmpty(r3)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            if (r0 != 0) goto L80
            boolean r0 = android.text.TextUtils.isEmpty(r4)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            if (r0 == 0) goto L9e
        L80:
            java.lang.String r0 = "Read property with empty client id or tracker id"
            r13.zzc(r0, r3, r4)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
        L85:
            boolean r0 = r9.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            if (r0 != 0) goto L53
        L8b:
            int r0 = r11.size()     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            if (r0 < r10) goto L96
            java.lang.String r0 = "Sending hits to too many properties. Campaign report might be incorrect"
            r13.zzel(r0)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
        L96:
            if (r9 == 0) goto L9b
            r9.close()
        L9b:
            return r11
        L9c:
            r5 = 0
            goto L65
        L9e:
            com.google.android.gms.analytics.internal.zzh r0 = new com.google.android.gms.analytics.internal.zzh     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            r1 = r14
            r0.<init>(r1, r3, r4, r5, r6, r8)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            r11.add(r0)     // Catch: android.database.sqlite.SQLiteException -> La8 java.lang.Throwable -> Lb8
            goto L85
        La8:
            r0 = move-exception
            r1 = r9
        Laa:
            java.lang.String r2 = "Error loading hits from the database"
            r13.zze(r2, r0)     // Catch: java.lang.Throwable -> Lb0
            throw r0     // Catch: java.lang.Throwable -> Lb0
        Lb0:
            r0 = move-exception
            r9 = r1
        Lb2:
            if (r9 == 0) goto Lb7
            r9.close()
        Lb7:
            throw r0
        Lb8:
            r0 = move-exception
            goto Lb2
        Lba:
            r0 = move-exception
            r1 = r9
            goto Laa
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zzj.zzt(long):java.util.List");
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzwv() {
    }

    public long zzzr() {
        zzwu();
        zzzg();
        return zzb("SELECT COUNT(*) FROM hits2", (String[]) null);
    }

    public void zzzw() {
        zzwu();
        zzzg();
        getWritableDatabase().delete("hits2", null, null);
    }

    public void zzzx() {
        zzwu();
        zzzg();
        getWritableDatabase().delete("properties", null, null);
    }

    public int zzzy() {
        zzwu();
        zzzg();
        if (!this.zzcyc.zzx(86400000L)) {
            return 0;
        }
        this.zzcyc.start();
        zzei("Deleting stale hits (if any)");
        int iDelete = getWritableDatabase().delete("hits2", "hit_time < ?", new String[]{Long.toString(zzyw().currentTimeMillis() - 2592000000L)});
        zza("Deleted stale hits, count", Integer.valueOf(iDelete));
        return iDelete;
    }

    public long zzzz() {
        zzwu();
        zzzg();
        return zza(zzcya, (String[]) null, 0L);
    }
}
