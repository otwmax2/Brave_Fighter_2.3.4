package com.tendcloud.tenddata.game;

import android.content.ContentValues;
import android.database.Cursor;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class bj extends aq {
    private String b;
    private String c;

    public bj(String str, String str2) {
        this.b = str;
        this.c = str2;
    }

    private static String b(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = jSONObject.getJSONObject(bz.a);
            int i = jSONObject2.getInt(cc.g);
            jSONObject2.remove(cc.g);
            jSONObject2.put(cc.g, i + 1);
            return jSONObject.toString();
        } catch (JSONException e) {
            return null;
        }
    }

    @Override // com.tendcloud.tenddata.game.aq, java.lang.Runnable
    public void run() {
        Cursor cursor = null;
        try {
            Cursor cursorRawQuery = this.a.rawQuery("SELECT _id,event_data,event_hash_key from exception_event where event_hash_key =?", new String[]{this.c});
            if (cursorRawQuery.moveToFirst()) {
                String string = cursorRawQuery.getString(1);
                int i = cursorRawQuery.getInt(0);
                String strB = b(string);
                if (strB != null) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("event_data", strB);
                    this.a.update("exception_event", contentValues, "_id=?", new String[]{String.valueOf(i)});
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                        return;
                    }
                    return;
                }
            }
            a(this.b, this.c);
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }
}
