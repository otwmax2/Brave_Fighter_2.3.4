package com.tendcloud.tenddata.game;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes.dex */
abstract class aq implements Runnable {
    protected SQLiteDatabase a;

    aq() {
    }

    public void a(SQLiteDatabase sQLiteDatabase) {
        this.a = sQLiteDatabase;
    }

    protected void a(String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_data", str);
        this.a.insert("normal_event", null, contentValues);
    }

    protected void a(String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_data", str);
        contentValues.put("event_hash_key", str2);
        this.a.insert("exception_event", null, contentValues);
    }

    @Override // java.lang.Runnable
    public abstract void run();
}
