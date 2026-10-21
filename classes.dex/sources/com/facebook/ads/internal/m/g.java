package com.facebook.ads.internal.m;

import android.content.Context;
import android.database.Cursor;
import android.support.annotation.VisibleForTesting;
import com.facebook.ads.internal.m.b;
import com.facebook.ads.internal.q.a.r;
import com.facebook.share.internal.ShareConstants;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import com.ironsource.sdk.constants.LocationConst;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class g implements b.a {
    private static final String a = g.class.getSimpleName();
    private Context b;
    private com.facebook.ads.internal.e.d c;

    @VisibleForTesting
    public g(Context context, com.facebook.ads.internal.e.d dVar) {
        this.b = context;
        this.c = dVar;
    }

    private static JSONArray a(JSONArray jSONArray, JSONArray jSONArray2) {
        int length = jSONArray != null ? 0 + jSONArray.length() : 0;
        if (jSONArray2 != null) {
            length += jSONArray2.length();
        }
        return a(jSONArray, jSONArray2, length);
    }

    private static JSONArray a(JSONArray jSONArray, JSONArray jSONArray2, int i) {
        int i2;
        double d;
        JSONObject jSONObject;
        int i3;
        JSONObject jSONObject2;
        JSONObject jSONObject3;
        double d2;
        JSONObject jSONObject4;
        JSONObject jSONObject5;
        double d3;
        if (jSONArray == null) {
            return jSONArray2;
        }
        if (jSONArray2 == null) {
            return jSONArray;
        }
        int length = jSONArray.length();
        int length2 = jSONArray2.length();
        JSONArray jSONArray3 = new JSONArray();
        JSONObject jSONObject6 = null;
        double d4 = Double.MAX_VALUE;
        double d5 = Double.MAX_VALUE;
        JSONObject jSONObject7 = null;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if ((i5 >= length && i4 >= length2) || i <= 0) {
                break;
            }
            if (i5 >= length || jSONObject6 != null) {
                i2 = i5;
            } else {
                try {
                    jSONObject5 = jSONArray.getJSONObject(i5);
                    d3 = jSONObject5.getDouble(LocationConst.TIME);
                } catch (JSONException e) {
                    jSONObject5 = null;
                    d3 = Double.MAX_VALUE;
                }
                d4 = d3;
                i2 = i5 + 1;
                jSONObject6 = jSONObject5;
            }
            if (i4 >= length2 || jSONObject7 != null) {
                d = d5;
                jSONObject = jSONObject7;
                i3 = i4;
            } else {
                try {
                    jSONObject4 = jSONArray2.getJSONObject(i4);
                    d = jSONObject4.getDouble(LocationConst.TIME);
                } catch (JSONException e2) {
                    jSONObject4 = null;
                    d = Double.MAX_VALUE;
                }
                jSONObject = jSONObject4;
                i3 = i4 + 1;
            }
            if (jSONObject6 == null && jSONObject == null) {
                d5 = d;
                i4 = i3;
                jSONObject7 = jSONObject;
                i5 = i2;
            } else {
                if (jSONObject6 == null || d < d4) {
                    jSONArray3.put(jSONObject);
                    d = Double.MAX_VALUE;
                    double d6 = d4;
                    jSONObject2 = null;
                    jSONObject3 = jSONObject6;
                    d2 = d6;
                } else {
                    jSONArray3.put(jSONObject6);
                    d2 = Double.MAX_VALUE;
                    jSONObject3 = null;
                    jSONObject2 = jSONObject;
                }
                i--;
                d5 = d;
                i4 = i3;
                i5 = i2;
                jSONObject7 = jSONObject2;
                jSONObject6 = jSONObject3;
                d4 = d2;
            }
        }
        if (i > 0) {
            if (jSONObject6 != null) {
                jSONArray3.put(jSONObject6);
            } else if (jSONObject7 != null) {
                jSONArray3.put(jSONObject7);
            }
        }
        return jSONArray3;
    }

    private JSONObject a(int i) throws Throwable {
        Cursor cursorA;
        Cursor cursorD;
        Cursor cursor;
        Cursor cursor2;
        JSONArray jSONArrayC;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        JSONArray jSONArrayA;
        try {
            cursorD = this.c.d();
            try {
                cursorA = this.c.a(i);
            } catch (JSONException e) {
                cursor = null;
                cursor2 = cursorD;
            } catch (Throwable th) {
                th = th;
                cursorA = null;
            }
        } catch (JSONException e2) {
            cursor = null;
            cursor2 = null;
        } catch (Throwable th2) {
            th = th2;
            cursorA = null;
            cursorD = null;
        }
        try {
            if (cursorA.getCount() > 0) {
                JSONObject jSONObjectA = a(cursorA);
                jSONArrayC = c(cursorA);
                jSONObject = jSONObjectA;
            } else {
                jSONArrayC = null;
                jSONObject = null;
            }
            JSONArray jSONArrayA2 = (!com.facebook.ads.internal.l.a.g(this.b) || (jSONArrayA = com.facebook.ads.internal.f.e.a(this.b, i)) == null || jSONArrayA.length() <= 0) ? jSONArrayC : a(jSONArrayA, jSONArrayC, i);
            if (jSONArrayA2 != null) {
                jSONObject2 = new JSONObject();
                if (jSONObject != null) {
                    jSONObject2.put("tokens", jSONObject);
                }
                jSONObject2.put(DataBaseEventsStorage.EventEntry.TABLE_NAME, jSONArrayA2);
            } else {
                jSONObject2 = null;
            }
            if (cursorD != null) {
                cursorD.close();
            }
            if (cursorA == null) {
                return jSONObject2;
            }
            cursorA.close();
            return jSONObject2;
        } catch (JSONException e3) {
            cursor = cursorA;
            cursor2 = cursorD;
            if (cursor2 != null) {
                cursor2.close();
            }
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            if (cursorD != null) {
                cursorD.close();
            }
            if (cursorA != null) {
                cursorA.close();
            }
            throw th;
        }
    }

    private JSONObject a(Cursor cursor) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        while (cursor.moveToNext()) {
            jSONObject.put(cursor.getString(0), cursor.getString(1));
        }
        return jSONObject;
    }

    private void a(String str) {
        if (com.facebook.ads.internal.f.e.c(str)) {
            com.facebook.ads.internal.f.e.a(str);
        } else {
            this.c.a(str);
        }
    }

    private JSONArray b(Cursor cursor) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        cursor.moveToPosition(-1);
        while (cursor.moveToNext()) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ShareConstants.WEB_DIALOG_PARAM_ID, cursor.getString(com.facebook.ads.internal.e.c.a.a));
            jSONObject.put("token_id", cursor.getString(com.facebook.ads.internal.e.c.b.a));
            jSONObject.put("type", cursor.getString(com.facebook.ads.internal.e.c.d.a));
            jSONObject.put(LocationConst.TIME, r.a(cursor.getDouble(com.facebook.ads.internal.e.c.e.a)));
            jSONObject.put("session_time", r.a(cursor.getDouble(com.facebook.ads.internal.e.c.f.a)));
            jSONObject.put("session_id", cursor.getString(com.facebook.ads.internal.e.c.g.a));
            String string = cursor.getString(com.facebook.ads.internal.e.c.h.a);
            jSONObject.put("data", string != null ? new JSONObject(string) : new JSONObject());
            jSONObject.put("attempt", cursor.getString(com.facebook.ads.internal.e.c.i.a));
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    private JSONArray c(Cursor cursor) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        cursor.moveToPosition(-1);
        while (cursor.moveToNext()) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ShareConstants.WEB_DIALOG_PARAM_ID, cursor.getString(2));
            jSONObject.put("token_id", cursor.getString(0));
            jSONObject.put("type", cursor.getString(4));
            jSONObject.put(LocationConst.TIME, r.a(cursor.getDouble(5)));
            jSONObject.put("session_time", r.a(cursor.getDouble(6)));
            jSONObject.put("session_id", cursor.getString(7));
            String string = cursor.getString(8);
            jSONObject.put("data", string != null ? new JSONObject(string) : new JSONObject());
            jSONObject.put("attempt", cursor.getString(9));
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    private JSONObject d() throws Throwable {
        Cursor cursorE;
        Cursor cursorF;
        Cursor cursor;
        Cursor cursor2;
        JSONArray jSONArrayB;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        JSONArray jSONArrayA;
        try {
            cursorF = this.c.f();
            try {
                cursorE = this.c.e();
                try {
                    if (cursorF.getCount() <= 0 || cursorE.getCount() <= 0) {
                        jSONArrayB = null;
                        jSONObject = null;
                    } else {
                        JSONObject jSONObjectA = a(cursorF);
                        jSONArrayB = b(cursorE);
                        jSONObject = jSONObjectA;
                    }
                    JSONArray jSONArrayA2 = (!com.facebook.ads.internal.l.a.g(this.b) || (jSONArrayA = com.facebook.ads.internal.f.e.a(this.b)) == null || jSONArrayA.length() <= 0) ? jSONArrayB : a(jSONArrayA, jSONArrayB);
                    if (jSONArrayA2 != null) {
                        jSONObject2 = new JSONObject();
                        if (jSONObject != null) {
                            jSONObject2.put("tokens", jSONObject);
                        }
                        jSONObject2.put(DataBaseEventsStorage.EventEntry.TABLE_NAME, jSONArrayA2);
                    } else {
                        jSONObject2 = null;
                    }
                    if (cursorF != null) {
                        cursorF.close();
                    }
                    if (cursorE == null) {
                        return jSONObject2;
                    }
                    cursorE.close();
                    return jSONObject2;
                } catch (JSONException e) {
                    cursor = cursorE;
                    cursor2 = cursorF;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    if (cursorF != null) {
                        cursorF.close();
                    }
                    if (cursorE != null) {
                        cursorE.close();
                    }
                    throw th;
                }
            } catch (JSONException e2) {
                cursor = null;
                cursor2 = cursorF;
            } catch (Throwable th2) {
                th = th2;
                cursorE = null;
            }
        } catch (JSONException e3) {
            cursor = null;
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            cursorE = null;
            cursorF = null;
        }
    }

    @Override // com.facebook.ads.internal.m.b.a
    public JSONObject a() {
        int iJ = com.facebook.ads.internal.l.a.j(this.b);
        return iJ > 0 ? a(iJ) : d();
    }

    @Override // com.facebook.ads.internal.m.b.a
    public boolean a(JSONArray jSONArray) {
        boolean zG = com.facebook.ads.internal.l.a.g(this.b);
        boolean z = true;
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString(ShareConstants.WEB_DIALOG_PARAM_ID);
                int i2 = jSONObject.getInt("code");
                if (i2 == 1) {
                    if (!this.c.b(string) && zG) {
                        com.facebook.ads.internal.f.e.b(string);
                    }
                } else if (i2 >= 1000 && i2 < 2000) {
                    a(string);
                    z = false;
                } else if (i2 >= 2000 && i2 < 3000 && !this.c.b(string) && zG) {
                    com.facebook.ads.internal.f.e.b(string);
                }
            } catch (JSONException e) {
            }
        }
        return z;
    }

    @Override // com.facebook.ads.internal.m.b.a
    public void b() {
        this.c.g();
        this.c.b();
        com.facebook.ads.internal.f.e.c(this.b);
    }

    @Override // com.facebook.ads.internal.m.b.a
    public void b(JSONArray jSONArray) {
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            try {
                a(jSONArray.getJSONObject(i).getString(ShareConstants.WEB_DIALOG_PARAM_ID));
            } catch (JSONException e) {
            }
        }
    }

    @Override // com.facebook.ads.internal.m.b.a
    public boolean c() throws Throwable {
        Cursor cursor;
        Cursor cursorD;
        int iJ = com.facebook.ads.internal.l.a.j(this.b);
        if (iJ < 1) {
            return false;
        }
        try {
            cursorD = this.c.d();
        } catch (Throwable th) {
            th = th;
            cursor = null;
        }
        try {
            boolean z = (cursorD.moveToFirst() ? cursorD.getInt(0) : 0) + com.facebook.ads.internal.f.e.b(this.b) > iJ;
            if (cursorD != null) {
                cursorD.close();
            }
            return z;
        } catch (Throwable th2) {
            th = th2;
            cursor = cursorD;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }
}
