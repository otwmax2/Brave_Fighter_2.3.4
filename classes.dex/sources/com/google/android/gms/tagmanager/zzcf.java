package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.tagmanager.zzde;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class zzcf implements zzav {
    private static final String zzcxz = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL,'%s' INTEGER NOT NULL);", "gtm_hits", "hit_id", "hit_time", "hit_url", "hit_first_send_time");
    private final zzb awX;
    private volatile zzac awY;
    private final zzaw awZ;
    private final String axa;
    private long axb;
    private final int axc;
    private final Context mContext;
    private com.google.android.gms.common.util.zze zzaoa;

    class zza implements zzde.zza {
        zza() {
        }

        @Override // com.google.android.gms.tagmanager.zzde.zza
        public void zza(zzar zzarVar) {
            zzcf.this.zzs(zzarVar.zzcbn());
        }

        @Override // com.google.android.gms.tagmanager.zzde.zza
        public void zzb(zzar zzarVar) {
            zzcf.this.zzs(zzarVar.zzcbn());
            zzbn.v(new StringBuilder(57).append("Permanent failure dispatching hitId: ").append(zzarVar.zzcbn()).toString());
        }

        @Override // com.google.android.gms.tagmanager.zzde.zza
        public void zzc(zzar zzarVar) {
            long jZzcbo = zzarVar.zzcbo();
            if (jZzcbo == 0) {
                zzcf.this.zzh(zzarVar.zzcbn(), zzcf.this.zzaoa.currentTimeMillis());
            } else if (jZzcbo + 14400000 < zzcf.this.zzaoa.currentTimeMillis()) {
                zzcf.this.zzs(zzarVar.zzcbn());
                zzbn.v(new StringBuilder(47).append("Giving up on failed hitId: ").append(zzarVar.zzcbn()).toString());
            }
        }
    }

    class zzb extends SQLiteOpenHelper {
        private boolean axe;
        private long axf;

        zzb(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
            this.axf = 0L;
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private boolean zza(java.lang.String r11, android.database.sqlite.SQLiteDatabase r12) throws java.lang.Throwable {
            /*
                r10 = this;
                r8 = 0
                r9 = 0
                java.lang.String r1 = "SQLITE_MASTER"
                r0 = 1
                java.lang.String[] r2 = new java.lang.String[r0]     // Catch: android.database.sqlite.SQLiteException -> L26 java.lang.Throwable -> L51
                r0 = 0
                java.lang.String r3 = "name"
                r2[r0] = r3     // Catch: android.database.sqlite.SQLiteException -> L26 java.lang.Throwable -> L51
                java.lang.String r3 = "name=?"
                r0 = 1
                java.lang.String[] r4 = new java.lang.String[r0]     // Catch: android.database.sqlite.SQLiteException -> L26 java.lang.Throwable -> L51
                r0 = 0
                r4[r0] = r11     // Catch: android.database.sqlite.SQLiteException -> L26 java.lang.Throwable -> L51
                r5 = 0
                r6 = 0
                r7 = 0
                r0 = r12
                android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: android.database.sqlite.SQLiteException -> L26 java.lang.Throwable -> L51
                boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L53 android.database.sqlite.SQLiteException -> L56
                if (r1 == 0) goto L25
                r1.close()
            L25:
                return r0
            L26:
                r0 = move-exception
                r0 = r9
            L28:
                java.lang.String r2 = "Error querying for table "
                java.lang.String r1 = java.lang.String.valueOf(r11)     // Catch: java.lang.Throwable -> L48
                int r3 = r1.length()     // Catch: java.lang.Throwable -> L48
                if (r3 == 0) goto L42
                java.lang.String r1 = r2.concat(r1)     // Catch: java.lang.Throwable -> L48
            L38:
                com.google.android.gms.tagmanager.zzbn.zzcy(r1)     // Catch: java.lang.Throwable -> L48
                if (r0 == 0) goto L40
                r0.close()
            L40:
                r0 = r8
                goto L25
            L42:
                java.lang.String r1 = new java.lang.String     // Catch: java.lang.Throwable -> L48
                r1.<init>(r2)     // Catch: java.lang.Throwable -> L48
                goto L38
            L48:
                r1 = move-exception
                r9 = r0
                r0 = r1
            L4b:
                if (r9 == 0) goto L50
                r9.close()
            L50:
                throw r0
            L51:
                r0 = move-exception
                goto L4b
            L53:
                r0 = move-exception
                r9 = r1
                goto L4b
            L56:
                r0 = move-exception
                r0 = r1
                goto L28
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzcf.zzb.zza(java.lang.String, android.database.sqlite.SQLiteDatabase):boolean");
        }

        private void zzc(SQLiteDatabase sQLiteDatabase) {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT * FROM gtm_hits WHERE 0", null);
            HashSet hashSet = new HashSet();
            try {
                for (String str : cursorRawQuery.getColumnNames()) {
                    hashSet.add(str);
                }
                cursorRawQuery.close();
                if (!hashSet.remove("hit_id") || !hashSet.remove("hit_url") || !hashSet.remove("hit_time") || !hashSet.remove("hit_first_send_time")) {
                    throw new SQLiteException("Database column missing");
                }
                if (!hashSet.isEmpty()) {
                    throw new SQLiteException("Database has extra columns");
                }
            } catch (Throwable th) {
                cursorRawQuery.close();
                throw th;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public SQLiteDatabase getWritableDatabase() {
            if (this.axe && this.axf + 3600000 > zzcf.this.zzaoa.currentTimeMillis()) {
                throw new SQLiteException("Database creation failed");
            }
            SQLiteDatabase writableDatabase = null;
            this.axe = true;
            this.axf = zzcf.this.zzaoa.currentTimeMillis();
            try {
                writableDatabase = super.getWritableDatabase();
            } catch (SQLiteException e) {
                zzcf.this.mContext.getDatabasePath(zzcf.this.axa).delete();
            }
            if (writableDatabase == null) {
                writableDatabase = super.getWritableDatabase();
            }
            this.axe = false;
            return writableDatabase;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            zzam.zzet(sQLiteDatabase.getPath());
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
            if (zza("gtm_hits", sQLiteDatabase)) {
                zzc(sQLiteDatabase);
            } else {
                sQLiteDatabase.execSQL(zzcf.zzcxz);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    zzcf(zzaw zzawVar, Context context) {
        this(zzawVar, context, "gtm_urls.db", 2000);
    }

    zzcf(zzaw zzawVar, Context context, String str, int i) {
        this.mContext = context.getApplicationContext();
        this.axa = str;
        this.awZ = zzawVar;
        this.zzaoa = com.google.android.gms.common.util.zzh.zzavi();
        this.awX = new zzb(this.mContext, this.axa);
        this.awY = new zzde(this.mContext, new zza());
        this.axb = 0L;
        this.axc = i;
    }

    private void zzcca() throws Throwable {
        int iZzccb = (zzccb() - this.axc) + 1;
        if (iZzccb > 0) {
            List<String> listZzyd = zzyd(iZzccb);
            zzbn.v(new StringBuilder(51).append("Store full, deleting ").append(listZzyd.size()).append(" hits to make room.").toString());
            zzg((String[]) listZzyd.toArray(new String[0]));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzh(long j, long j2) {
        SQLiteDatabase sQLiteDatabaseZzoa = zzoa("Error opening database for getNumStoredHits.");
        if (sQLiteDatabaseZzoa == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_first_send_time", Long.valueOf(j2));
        try {
            sQLiteDatabaseZzoa.update("gtm_hits", contentValues, "hit_id=?", new String[]{String.valueOf(j)});
        } catch (SQLiteException e) {
            zzbn.zzcy(new StringBuilder(69).append("Error setting HIT_FIRST_DISPATCH_TIME for hitId: ").append(j).toString());
            zzs(j);
        }
    }

    private void zzh(long j, String str) {
        SQLiteDatabase sQLiteDatabaseZzoa = zzoa("Error opening database for putHit");
        if (sQLiteDatabaseZzoa == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_time", Long.valueOf(j));
        contentValues.put("hit_url", str);
        contentValues.put("hit_first_send_time", (Integer) 0);
        try {
            sQLiteDatabaseZzoa.insert("gtm_hits", null, contentValues);
            this.awZ.zzcg(false);
        } catch (SQLiteException e) {
            zzbn.zzcy("Error storing hit");
        }
    }

    private SQLiteDatabase zzoa(String str) {
        try {
            return this.awX.getWritableDatabase();
        } catch (SQLiteException e) {
            zzbn.zzcy(str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzs(long j) {
        zzg(new String[]{String.valueOf(j)});
    }

    @Override // com.google.android.gms.tagmanager.zzav
    public void dispatch() throws Throwable {
        zzbn.v("GTM Dispatch running...");
        if (this.awY.zzcbc()) {
            List<zzar> listZzye = zzye(40);
            if (listZzye.isEmpty()) {
                zzbn.v("...nothing to dispatch");
                this.awZ.zzcg(true);
            } else {
                this.awY.zzai(listZzye);
                if (zzccc() > 0) {
                    zzdb.zzccy().dispatch();
                }
            }
        }
    }

    int zzccb() {
        Cursor cursorRawQuery = null;
        SQLiteDatabase sQLiteDatabaseZzoa = zzoa("Error opening database for getNumStoredHits.");
        try {
            if (sQLiteDatabaseZzoa != null) {
                try {
                    cursorRawQuery = sQLiteDatabaseZzoa.rawQuery("SELECT COUNT(*) from gtm_hits", null);
                    i = cursorRawQuery.moveToFirst() ? (int) cursorRawQuery.getLong(0) : 0;
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                } catch (SQLiteException e) {
                    zzbn.zzcy("Error getting numStoredHits");
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                }
            }
            return i;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    int zzccc() throws java.lang.Throwable {
        /*
            r10 = this;
            r8 = 0
            r9 = 0
            java.lang.String r0 = "Error opening database for getNumStoredHits."
            android.database.sqlite.SQLiteDatabase r0 = r10.zzoa(r0)
            if (r0 != 0) goto Lb
        La:
            return r8
        Lb:
            java.lang.String r1 = "gtm_hits"
            r2 = 2
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: android.database.sqlite.SQLiteException -> L2f java.lang.Throwable -> L3d
            r3 = 0
            java.lang.String r4 = "hit_id"
            r2[r3] = r4     // Catch: android.database.sqlite.SQLiteException -> L2f java.lang.Throwable -> L3d
            r3 = 1
            java.lang.String r4 = "hit_first_send_time"
            r2[r3] = r4     // Catch: android.database.sqlite.SQLiteException -> L2f java.lang.Throwable -> L3d
            java.lang.String r3 = "hit_first_send_time=0"
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: android.database.sqlite.SQLiteException -> L2f java.lang.Throwable -> L3d
            int r0 = r1.getCount()     // Catch: java.lang.Throwable -> L44 android.database.sqlite.SQLiteException -> L4b
            if (r1 == 0) goto L2d
            r1.close()
        L2d:
            r8 = r0
            goto La
        L2f:
            r0 = move-exception
            r0 = r9
        L31:
            java.lang.String r1 = "Error getting num untried hits"
            com.google.android.gms.tagmanager.zzbn.zzcy(r1)     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L4e
            r0.close()
            r0 = r8
            goto L2d
        L3d:
            r0 = move-exception
        L3e:
            if (r9 == 0) goto L43
            r9.close()
        L43:
            throw r0
        L44:
            r0 = move-exception
            r9 = r1
            goto L3e
        L47:
            r1 = move-exception
            r9 = r0
            r0 = r1
            goto L3e
        L4b:
            r0 = move-exception
            r0 = r1
            goto L31
        L4e:
            r0 = r8
            goto L2d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzcf.zzccc():int");
    }

    @Override // com.google.android.gms.tagmanager.zzav
    public void zzg(long j, String str) throws Throwable {
        zzzy();
        zzcca();
        zzh(j, str);
    }

    void zzg(String[] strArr) {
        SQLiteDatabase sQLiteDatabaseZzoa;
        if (strArr == null || strArr.length == 0 || (sQLiteDatabaseZzoa = zzoa("Error opening database for deleteHits.")) == null) {
            return;
        }
        try {
            sQLiteDatabaseZzoa.delete("gtm_hits", String.format("HIT_ID in (%s)", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))), strArr);
            this.awZ.zzcg(zzccb() == 0);
        } catch (SQLiteException e) {
            zzbn.zzcy("Error deleting hits");
        }
    }

    List<String> zzyd(int i) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        ArrayList arrayList = new ArrayList();
        if (i <= 0) {
            zzbn.zzcy("Invalid maxHits specified. Skipping");
            return arrayList;
        }
        SQLiteDatabase sQLiteDatabaseZzoa = zzoa("Error opening database for peekHitIds.");
        try {
            if (sQLiteDatabaseZzoa == null) {
                return arrayList;
            }
            try {
                cursorQuery = sQLiteDatabaseZzoa.query("gtm_hits", new String[]{"hit_id"}, null, null, null, null, String.format("%s ASC", "hit_id"), Integer.toString(i));
                try {
                    if (cursorQuery.moveToFirst()) {
                        do {
                            arrayList.add(String.valueOf(cursorQuery.getLong(0)));
                        } while (cursorQuery.moveToNext());
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (SQLiteException e) {
                    e = e;
                    String strValueOf = String.valueOf(e.getMessage());
                    zzbn.zzcy(strValueOf.length() != 0 ? "Error in peekHits fetching hitIds: ".concat(strValueOf) : new String("Error in peekHits fetching hitIds: "));
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            } catch (SQLiteException e2) {
                e = e2;
                cursorQuery = null;
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<com.google.android.gms.tagmanager.zzar> zzye(int r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 391
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzcf.zzye(int):java.util.List");
    }

    int zzzy() {
        long jCurrentTimeMillis = this.zzaoa.currentTimeMillis();
        if (jCurrentTimeMillis <= this.axb + 86400000) {
            return 0;
        }
        this.axb = jCurrentTimeMillis;
        SQLiteDatabase sQLiteDatabaseZzoa = zzoa("Error opening database for deleteStaleHits.");
        if (sQLiteDatabaseZzoa == null) {
            return 0;
        }
        int iDelete = sQLiteDatabaseZzoa.delete("gtm_hits", "HIT_TIME < ?", new String[]{Long.toString(this.zzaoa.currentTimeMillis() - 2592000000L)});
        this.awZ.zzcg(zzccb() == 0);
        return iDelete;
    }
}
