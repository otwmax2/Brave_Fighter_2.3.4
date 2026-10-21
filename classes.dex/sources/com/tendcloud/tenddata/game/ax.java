package com.tendcloud.tenddata.game;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class ax extends aq {
    private List b;

    ax() {
    }

    private void a(String str, int i) throws Throwable {
        Cursor cursorQuery;
        try {
            cursorQuery = this.a.query(str, null, null, null, null, null, "_id", String.valueOf(i));
        } catch (Throwable th) {
            th = th;
            cursorQuery = null;
        }
        try {
            if (cursorQuery.moveToFirst()) {
                while (!cursorQuery.isAfterLast()) {
                    ap apVar = new ap();
                    apVar.a = cursorQuery.getInt(0);
                    apVar.b = cursorQuery.getString(1);
                    apVar.c = true;
                    this.b.add(apVar);
                    cursorQuery.moveToNext();
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Throwable th2) {
            th = th2;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public List a() {
        return this.b;
    }

    @Override // com.tendcloud.tenddata.game.aq, java.lang.Runnable
    public void run() throws Throwable {
        this.b = new ArrayList();
        a("normal_event", 100);
        a("exception_event", 10);
    }
}
