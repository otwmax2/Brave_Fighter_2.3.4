package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import com.facebook.share.internal.ShareConstants;
import com.vungle.publisher.dp;
import com.vungle.publisher.log.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class eh extends dp<Integer> {
    String a;
    String b;
    jf c;

    @Override // com.vungle.publisher.dp
    protected String c() {
        return "event_tracking";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(ShareConstants.WEB_DIALOG_PARAM_ID, (Integer) this.u);
        contentValues.put("ad_id", this.b);
        contentValues.put("event", this.c.toString());
        contentValues.put("url", this.a);
        return contentValues;
    }

    @Override // com.vungle.publisher.dp
    public StringBuilder p() {
        StringBuilder sbP = super.p();
        a(sbP, "ad_id", this.b);
        a(sbP, "event", this.c);
        a(sbP, "url", this.a);
        return sbP;
    }

    public String a() {
        return this.a;
    }

    /* JADX INFO: compiled from: vungle */
    static abstract class a<E extends eh, T extends wu, R extends wc> extends dp.a<E, Integer> {
        abstract Map<jf, List<E>> a(String str, T t);

        a() {
        }

        void a(String str) {
            Logger.v(Logger.DATABASE_TAG, "deleted " + this.d.getWritableDatabase().delete("event_tracking", "ad_id = ?", new String[]{str}) + " expired event_tracking records for adId: " + str);
        }

        Map<jf, List<E>> a(R r) {
            String strG = r.g();
            a(strG);
            Map<jf, List<E>> mapA = a(strG, r.e());
            a((Map) mapA);
            return mapA;
        }

        void a(Map<jf, List<E>> map) {
            if (map != null) {
                for (List<E> list : map.values()) {
                    if (list != null) {
                        Iterator<E> it = list.iterator();
                        while (it.hasNext()) {
                            it.next().d_();
                        }
                    }
                }
            }
        }

        Map<jf, List<E>> b(String str) throws Throwable {
            HashMap map;
            Cursor cursor = null;
            if (str == null) {
                Logger.w(Logger.DATABASE_TAG, "failed to fetch event_tracking records by ad_id: " + str);
                return null;
            }
            try {
                Logger.d(Logger.DATABASE_TAG, "fetching event_tracking records by ad_id: " + str);
                Cursor cursorQuery = this.d.getReadableDatabase().query("event_tracking", null, "ad_id = ?", new String[]{str}, null, null, null);
                try {
                    int count = cursorQuery.getCount();
                    Logger.v(Logger.DATABASE_TAG, count + " event_tracking for ad_id: " + str);
                    if (count > 0) {
                        HashMap map2 = new HashMap();
                        while (cursorQuery.moveToNext()) {
                            E eG_ = g_();
                            b(eG_, cursorQuery, false);
                            a(map2, eG_);
                        }
                        map = map2;
                    } else {
                        map = null;
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        return map;
                    }
                    return map;
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        void a(String str, Map<jf, List<E>> map, jf jfVar, List<String> list) {
            List<E> listA;
            if (list != null && list.size() > 0 && (listA = a(str, jfVar, list)) != null && !listA.isEmpty()) {
                map.put(jfVar, listA);
            }
        }

        void a(Map<jf, List<E>> map, E e) {
            if (e != null) {
                jf jfVar = e.c;
                List<E> arrayList = map.get(jfVar);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    map.put(jfVar, arrayList);
                }
                arrayList.add(e);
            }
        }

        List<E> a(String str, jf jfVar, List<String> list) {
            ArrayList arrayList;
            if (list == null || list.size() <= 0) {
                arrayList = null;
            } else {
                ArrayList arrayList2 = new ArrayList();
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    eh ehVarA = a(str, jfVar, it.next());
                    if (ehVarA != null) {
                        arrayList2.add(ehVarA);
                    }
                }
                arrayList = arrayList2;
            }
            if (arrayList == null || arrayList.isEmpty()) {
                return null;
            }
            return arrayList;
        }

        E a(String str, jf jfVar, String str2) {
            if (jfVar == null || str2 == null) {
                return null;
            }
            E eG_ = g_();
            eG_.b = str;
            eG_.c = jfVar;
            eG_.a = str2;
            return eG_;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r0v1, types: [I, java.lang.Integer] */
        @Override // com.vungle.publisher.dp.a
        public E a(E e, Cursor cursor, boolean z) {
            e.u = ce.c(cursor, ShareConstants.WEB_DIALOG_PARAM_ID);
            e.b = ce.e(cursor, "ad_id");
            e.a = ce.e(cursor, "url");
            return e;
        }

        @Override // com.vungle.publisher.dp.a
        protected String c() {
            return "event_tracking";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer[] b(int i) {
            return new Integer[i];
        }
    }
}
