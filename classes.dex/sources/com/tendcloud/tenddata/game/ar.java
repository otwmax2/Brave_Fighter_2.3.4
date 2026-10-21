package com.tendcloud.tenddata.game;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes.dex */
final class ar extends SQLiteOpenHelper {
    static final String a = "TDGAtcagentgame.db";
    private static final int b = 1;

    ar(Context context) {
        super(context, a, (SQLiteDatabase.CursorFactory) null, 1);
    }

    ar(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        bp.a("DatabaseUtils", "Creating database " + sQLiteDatabase.getVersion());
        if (!sQLiteDatabase.isOpen()) {
            bp.a("DatabaseUtils", "Database Not Open");
            return;
        }
        sQLiteDatabase.setLockingEnabled(true);
        sQLiteDatabase.beginTransaction();
        sQLiteDatabase.execSQL("CREATE TABLE normal_event (_id INTEGER PRIMARY KEY autoincrement,event_data TEXT)");
        sQLiteDatabase.execSQL("CREATE TABLE exception_event (_id INTEGER PRIMARY KEY autoincrement,event_data TEXT,event_hash_key TEXT)");
        sQLiteDatabase.setTransactionSuccessful();
        sQLiteDatabase.endTransaction();
        sQLiteDatabase.setMaximumSize(1048576L);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
