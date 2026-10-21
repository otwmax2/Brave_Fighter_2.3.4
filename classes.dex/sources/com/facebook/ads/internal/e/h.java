package com.facebook.ads.internal.e;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class h extends g {
    public static final b a = new b(0, "token_id", "TEXT PRIMARY KEY");
    public static final b b = new b(1, "token", "TEXT");
    public static final b[] c = {a, b};
    private static final String d = h.class.getSimpleName();
    private static final String e = a("tokens", c);
    private static final String f = a("tokens", c, b);
    private static final String g = "DELETE FROM tokens WHERE NOT EXISTS (SELECT 1 FROM events WHERE tokens." + a.b + " = " + DataBaseEventsStorage.EventEntry.TABLE_NAME + "." + c.b.b + ")";

    public h(d dVar) {
        super(dVar);
    }

    @Override // com.facebook.ads.internal.e.g
    public String a() {
        return "tokens";
    }

    @WorkerThread
    String a(String str) throws Throwable {
        Cursor cursorRawQuery;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Invalid token.");
        }
        try {
            cursorRawQuery = f().rawQuery(f, new String[]{str});
        } catch (Throwable th) {
            th = th;
            cursorRawQuery = null;
        }
        try {
            String string = cursorRawQuery.moveToNext() ? cursorRawQuery.getString(a.a) : null;
            if (TextUtils.isEmpty(string)) {
                string = UUID.randomUUID().toString();
                ContentValues contentValues = new ContentValues(2);
                contentValues.put(a.b, string);
                contentValues.put(b.b, str);
                f().insertOrThrow("tokens", null, contentValues);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            } else if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return string;
        } catch (Throwable th2) {
            th = th2;
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    @Override // com.facebook.ads.internal.e.g
    public b[] b() {
        return c;
    }

    @WorkerThread
    Cursor c() {
        return f().rawQuery(e, null);
    }

    @WorkerThread
    public void d() {
        try {
            f().execSQL(g);
        } catch (SQLException e2) {
        }
    }
}
