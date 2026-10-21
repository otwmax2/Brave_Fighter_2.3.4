package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.tagmanager.DataLayer;
import com.ironsource.sdk.constants.Constants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
class zzw implements DataLayer.zzc {
    private static final String avO = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' STRING NOT NULL, '%s' BLOB NOT NULL, '%s' INTEGER NOT NULL);", "datalayer", "ID", Constants.ParametersKeys.KEY, Constants.ParametersKeys.VALUE, "expires");
    private final Executor avP;
    private zza avQ;
    private int avR;
    private final Context mContext;
    private com.google.android.gms.common.util.zze zzaoa;

    class zza extends SQLiteOpenHelper {
        zza(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzw.zza.zza(java.lang.String, android.database.sqlite.SQLiteDatabase):boolean");
        }

        private void zzc(SQLiteDatabase sQLiteDatabase) {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT * FROM datalayer WHERE 0", null);
            HashSet hashSet = new HashSet();
            try {
                for (String str : cursorRawQuery.getColumnNames()) {
                    hashSet.add(str);
                }
                cursorRawQuery.close();
                if (!hashSet.remove(Constants.ParametersKeys.KEY) || !hashSet.remove(Constants.ParametersKeys.VALUE) || !hashSet.remove("ID") || !hashSet.remove("expires")) {
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
            SQLiteDatabase writableDatabase = null;
            try {
                writableDatabase = super.getWritableDatabase();
            } catch (SQLiteException e) {
                zzw.this.mContext.getDatabasePath("google_tagmanager.db").delete();
            }
            return writableDatabase == null ? super.getWritableDatabase() : writableDatabase;
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
            if (zza("datalayer", sQLiteDatabase)) {
                zzc(sQLiteDatabase);
            } else {
                sQLiteDatabase.execSQL(zzw.avO);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    private static class zzb {
        final byte[] avX;
        final String zzaxn;

        zzb(String str, byte[] bArr) {
            this.zzaxn = str;
            this.avX = bArr;
        }

        public String toString() {
            String str = this.zzaxn;
            return new StringBuilder(String.valueOf(str).length() + 54).append("KeyAndSerialized: key = ").append(str).append(" serialized hash = ").append(Arrays.hashCode(this.avX)).toString();
        }
    }

    public zzw(Context context) {
        this(context, com.google.android.gms.common.util.zzh.zzavi(), "google_tagmanager.db", 2000, Executors.newSingleThreadExecutor());
    }

    zzw(Context context, com.google.android.gms.common.util.zze zzeVar, String str, int i, Executor executor) {
        this.mContext = context;
        this.zzaoa = zzeVar;
        this.avR = i;
        this.avP = executor;
        this.avQ = new zza(this.mContext, str);
    }

    private List<DataLayer.zza> zzag(List<zzb> list) {
        ArrayList arrayList = new ArrayList();
        for (zzb zzbVar : list) {
            arrayList.add(new DataLayer.zza(zzbVar.zzaxn, zzak(zzbVar.avX)));
        }
        return arrayList;
    }

    private List<zzb> zzah(List<DataLayer.zza> list) {
        ArrayList arrayList = new ArrayList();
        for (DataLayer.zza zzaVar : list) {
            arrayList.add(new zzb(zzaVar.zzaxn, zzaj(zzaVar.zzcnr)));
        }
        return arrayList;
    }

    private byte[] zzaj(Object obj) throws Throwable {
        ObjectOutputStream objectOutputStream;
        Throwable th;
        byte[] byteArray = null;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeObject(obj);
                byteArray = byteArrayOutputStream.toByteArray();
                if (objectOutputStream != null) {
                    try {
                        objectOutputStream.close();
                    } catch (IOException e) {
                    }
                }
                byteArrayOutputStream.close();
            } catch (IOException e2) {
                if (objectOutputStream != null) {
                    try {
                        objectOutputStream.close();
                    } catch (IOException e3) {
                    }
                }
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th = th2;
                if (objectOutputStream != null) {
                    try {
                        objectOutputStream.close();
                    } catch (IOException e4) {
                        throw th;
                    }
                }
                byteArrayOutputStream.close();
                throw th;
            }
        } catch (IOException e5) {
            objectOutputStream = null;
        } catch (Throwable th3) {
            objectOutputStream = null;
            th = th3;
        }
        return byteArray;
    }

    private Object zzak(byte[] bArr) throws Throwable {
        ObjectInputStream objectInputStream;
        Throwable th;
        Object object = null;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            objectInputStream = new ObjectInputStream(byteArrayInputStream);
            try {
                object = objectInputStream.readObject();
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e) {
                    }
                }
                byteArrayInputStream.close();
            } catch (IOException e2) {
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e3) {
                    }
                }
                byteArrayInputStream.close();
            } catch (ClassNotFoundException e4) {
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e5) {
                    }
                }
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th = th2;
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e6) {
                        throw th;
                    }
                }
                byteArrayInputStream.close();
                throw th;
            }
        } catch (IOException e7) {
            objectInputStream = null;
        } catch (ClassNotFoundException e8) {
            objectInputStream = null;
        } catch (Throwable th3) {
            objectInputStream = null;
            th = th3;
        }
        return object;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void zzb(List<zzb> list, long j) {
        try {
            long jCurrentTimeMillis = this.zzaoa.currentTimeMillis();
            zzbr(jCurrentTimeMillis);
            zzxx(list.size());
            zzc(list, jCurrentTimeMillis + j);
        } finally {
            zzcba();
        }
    }

    private void zzbr(long j) {
        SQLiteDatabase sQLiteDatabaseZzoa = zzoa("Error opening database for deleteOlderThan.");
        if (sQLiteDatabaseZzoa == null) {
            return;
        }
        try {
            zzbn.v(new StringBuilder(33).append("Deleted ").append(sQLiteDatabaseZzoa.delete("datalayer", "expires <= ?", new String[]{Long.toString(j)})).append(" expired items").toString());
        } catch (SQLiteException e) {
            zzbn.zzcy("Error deleting old entries.");
        }
    }

    private void zzc(List<zzb> list, long j) {
        SQLiteDatabase sQLiteDatabaseZzoa = zzoa("Error opening database for writeEntryToDatabase.");
        if (sQLiteDatabaseZzoa == null) {
            return;
        }
        for (zzb zzbVar : list) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("expires", Long.valueOf(j));
            contentValues.put(Constants.ParametersKeys.KEY, zzbVar.zzaxn);
            contentValues.put(Constants.ParametersKeys.VALUE, zzbVar.avX);
            sQLiteDatabaseZzoa.insert("datalayer", null, contentValues);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<DataLayer.zza> zzcax() {
        try {
            zzbr(this.zzaoa.currentTimeMillis());
            return zzag(zzcay());
        } finally {
            zzcba();
        }
    }

    private List<zzb> zzcay() {
        SQLiteDatabase sQLiteDatabaseZzoa = zzoa("Error opening database for loadSerialized.");
        ArrayList arrayList = new ArrayList();
        if (sQLiteDatabaseZzoa == null) {
            return arrayList;
        }
        Cursor cursorQuery = sQLiteDatabaseZzoa.query("datalayer", new String[]{Constants.ParametersKeys.KEY, Constants.ParametersKeys.VALUE}, null, null, null, null, "ID", null);
        while (cursorQuery.moveToNext()) {
            try {
                arrayList.add(new zzb(cursorQuery.getString(0), cursorQuery.getBlob(1)));
            } finally {
                cursorQuery.close();
            }
        }
        return arrayList;
    }

    private int zzcaz() {
        Cursor cursorRawQuery = null;
        SQLiteDatabase sQLiteDatabaseZzoa = zzoa("Error opening database for getNumStoredEntries.");
        try {
            if (sQLiteDatabaseZzoa != null) {
                try {
                    cursorRawQuery = sQLiteDatabaseZzoa.rawQuery("SELECT COUNT(*) from datalayer", null);
                    i = cursorRawQuery.moveToFirst() ? (int) cursorRawQuery.getLong(0) : 0;
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                } catch (SQLiteException e) {
                    zzbn.zzcy("Error getting numStoredEntries");
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

    private void zzcba() {
        try {
            this.avQ.close();
        } catch (SQLiteException e) {
        }
    }

    private void zzf(String[] strArr) {
        SQLiteDatabase sQLiteDatabaseZzoa;
        if (strArr == null || strArr.length == 0 || (sQLiteDatabaseZzoa = zzoa("Error opening database for deleteEntries.")) == null) {
            return;
        }
        try {
            sQLiteDatabaseZzoa.delete("datalayer", String.format("%s in (%s)", "ID", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))), strArr);
        } catch (SQLiteException e) {
            String strValueOf = String.valueOf(Arrays.toString(strArr));
            zzbn.zzcy(strValueOf.length() != 0 ? "Error deleting entries ".concat(strValueOf) : new String("Error deleting entries "));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zznz(String str) {
        SQLiteDatabase sQLiteDatabaseZzoa = zzoa("Error opening database for clearKeysWithPrefix.");
        if (sQLiteDatabaseZzoa == null) {
            return;
        }
        try {
            zzbn.v(new StringBuilder(25).append("Cleared ").append(sQLiteDatabaseZzoa.delete("datalayer", "key = ? OR key LIKE ?", new String[]{str, String.valueOf(str).concat(".%")})).append(" items").toString());
        } catch (SQLiteException e) {
            String strValueOf = String.valueOf(e);
            zzbn.zzcy(new StringBuilder(String.valueOf(str).length() + 44 + String.valueOf(strValueOf).length()).append("Error deleting entries with key prefix: ").append(str).append(" (").append(strValueOf).append(").").toString());
        } finally {
            zzcba();
        }
    }

    private SQLiteDatabase zzoa(String str) {
        try {
            return this.avQ.getWritableDatabase();
        } catch (SQLiteException e) {
            zzbn.zzcy(str);
            return null;
        }
    }

    private void zzxx(int i) throws Throwable {
        int iZzcaz = (zzcaz() - this.avR) + i;
        if (iZzcaz > 0) {
            List<String> listZzxy = zzxy(iZzcaz);
            zzbn.zzcx(new StringBuilder(64).append("DataLayer store full, deleting ").append(listZzxy.size()).append(" entries to make room.").toString());
            zzf((String[]) listZzxy.toArray(new String[0]));
        }
    }

    private List<String> zzxy(int i) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        ArrayList arrayList = new ArrayList();
        if (i <= 0) {
            zzbn.zzcy("Invalid maxEntries specified. Skipping.");
            return arrayList;
        }
        SQLiteDatabase sQLiteDatabaseZzoa = zzoa("Error opening database for peekEntryIds.");
        try {
            if (sQLiteDatabaseZzoa == null) {
                return arrayList;
            }
            try {
                cursorQuery = sQLiteDatabaseZzoa.query("datalayer", new String[]{"ID"}, null, null, null, null, String.format("%s ASC", "ID"), Integer.toString(i));
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
                    zzbn.zzcy(strValueOf.length() != 0 ? "Error in peekEntries fetching entryIds: ".concat(strValueOf) : new String("Error in peekEntries fetching entryIds: "));
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

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public void zza(final DataLayer.zzc.zza zzaVar) {
        this.avP.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.zzw.2
            @Override // java.lang.Runnable
            public void run() {
                zzaVar.zzaf(zzw.this.zzcax());
            }
        });
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public void zza(List<DataLayer.zza> list, final long j) {
        final List<zzb> listZzah = zzah(list);
        this.avP.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.zzw.1
            @Override // java.lang.Runnable
            public void run() {
                zzw.this.zzb(listZzah, j);
            }
        });
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public void zzny(final String str) {
        this.avP.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.zzw.3
            @Override // java.lang.Runnable
            public void run() {
                zzw.this.zznz(str);
            }
        });
    }
}
