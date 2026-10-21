package com.facebook.ads.internal.e;

import android.content.ContentValues;
import android.database.Cursor;
import android.support.annotation.WorkerThread;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import com.ironsource.sdk.constants.LocationConst;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c extends g {
    public static final b a = new b(0, "event_id", "TEXT PRIMARY KEY");
    public static final b b = new b(1, "token_id", "TEXT REFERENCES tokens ON UPDATE CASCADE ON DELETE RESTRICT");
    public static final b c = new b(2, "priority", "INTEGER");
    public static final b d = new b(3, "type", "TEXT");
    public static final b e = new b(4, LocationConst.TIME, "REAL");
    public static final b f = new b(5, "session_time", "REAL");
    public static final b g = new b(6, "session_id", "TEXT");
    public static final b h = new b(7, "data", "TEXT");
    public static final b i = new b(8, "attempt", "INTEGER");
    public static final b[] j = {a, b, c, d, e, f, g, h, i};
    private static final String l = a(DataBaseEventsStorage.EventEntry.TABLE_NAME, j);

    public c(d dVar) {
        super(dVar);
    }

    @Override // com.facebook.ads.internal.e.g
    public String a() {
        return DataBaseEventsStorage.EventEntry.TABLE_NAME;
    }

    @WorkerThread
    String a(String str, int i2, String str2, double d2, double d3, String str3, Map<String, String> map) {
        String string = UUID.randomUUID().toString();
        ContentValues contentValues = new ContentValues(9);
        contentValues.put(a.b, string);
        contentValues.put(b.b, str);
        contentValues.put(c.b, Integer.valueOf(i2));
        contentValues.put(d.b, str2);
        contentValues.put(e.b, Double.valueOf(d2));
        contentValues.put(f.b, Double.valueOf(d3));
        contentValues.put(g.b, str3);
        contentValues.put(h.b, map != null ? new JSONObject(map).toString() : null);
        contentValues.put(i.b, (Integer) 0);
        f().insertOrThrow(DataBaseEventsStorage.EventEntry.TABLE_NAME, null, contentValues);
        return string;
    }

    boolean a(String str) {
        return f().delete(DataBaseEventsStorage.EventEntry.TABLE_NAME, new StringBuilder().append(a.b).append(" = ?").toString(), new String[]{str}) > 0;
    }

    @Override // com.facebook.ads.internal.e.g
    public b[] b() {
        return j;
    }

    @WorkerThread
    Cursor c() {
        return f().rawQuery("SELECT count(*) FROM events", null);
    }

    @WorkerThread
    Cursor d() {
        return f().rawQuery(l, null);
    }
}
