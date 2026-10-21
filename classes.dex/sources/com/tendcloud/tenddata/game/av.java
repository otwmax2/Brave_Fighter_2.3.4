package com.tendcloud.tenddata.game;

import android.database.sqlite.SQLiteDatabase;
import com.tendcloud.tenddata.TalkingDataGA;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class av {
    static final int a = 100;
    static final int b = 10;
    static final String d = "_id";
    static final String e = "event_data";
    static final String f = "event_hash_key";
    static final String g = "normal_event";
    static final String h = "exception_event";
    static final String i = "CREATE TABLE normal_event (_id INTEGER PRIMARY KEY autoincrement,event_data TEXT)";
    static final String j = "CREATE TABLE exception_event (_id INTEGER PRIMARY KEY autoincrement,event_data TEXT,event_hash_key TEXT)";
    ar c = new ar(TalkingDataGA.a);

    private void a(aq aqVar) {
        SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
        writableDatabase.beginTransaction();
        aqVar.a(writableDatabase);
        aqVar.run();
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        writableDatabase.close();
    }

    private void b(aq aqVar) {
        SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
        aqVar.a(readableDatabase);
        aqVar.run();
        readableDatabase.close();
    }

    synchronized List a() {
        ax axVar;
        axVar = new ax();
        b(axVar);
        return axVar.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    synchronized void a(bz bzVar) {
        String strC = bzVar.c();
        bp.a("Save event data:", strC);
        if (strC != null) {
            if (bzVar.f()) {
                a(new bj(strC, ((cp) bzVar).g()));
            } else {
                a(new bk(strC));
            }
        }
    }

    synchronized void a(List list) {
        if (list != null) {
            if (list.size() != 0) {
                a(new as(list));
                list.clear();
            }
        }
    }
}
