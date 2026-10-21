package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.support.annotation.NonNull;
import com.facebook.share.internal.ShareConstants;
import com.vungle.publisher.log.Logger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class dp<I> implements gj<I> {
    Class<I> t;
    protected I u;

    @Inject
    protected ci v;

    protected abstract ContentValues a(boolean z);

    protected abstract <T extends dp<I>> a<T, I> b_();

    protected abstract String c();

    static void a(StringBuilder sb, String str, Object obj) {
        a(sb, str, obj, false);
    }

    static void a(StringBuilder sb, String str, Object obj, boolean z) {
        if (!z) {
            sb.append(", ");
        }
        sb.append(str).append(": ").append(obj);
    }

    public I c_() {
        return this.u;
    }

    protected void a(I i) {
        this.u = i;
    }

    protected String h_() {
        return ShareConstants.WEB_DIALOG_PARAM_ID;
    }

    protected boolean i_() {
        return true;
    }

    public I d_() {
        I iC_ = c_();
        if (i_() && iC_ != null) {
            throw new SQLException("attempt to insert with non-auto generated id " + B());
        }
        Logger.d(Logger.DATABASE_TAG, "inserting " + this);
        long jA = this.v.a(c(), null, a(true));
        if (this.t == null || Integer.class.equals(this.t)) {
            a(Integer.valueOf((int) jA));
        } else if (Long.class.equals(this.t)) {
            a(Long.valueOf(jA));
        }
        Logger.d(Logger.DATABASE_TAG, "inserted " + c_());
        return c_();
    }

    public void A() {
        c(false);
    }

    public void c(boolean z) {
        b_().a(this, z);
    }

    public I e_() {
        if (c_() == null || b_().a(c_()) == null) {
            return d_();
        }
        if (f_() != 1) {
            return null;
        }
        return c_();
    }

    @Override // com.vungle.publisher.gj
    public int f_() {
        String strH_ = h_();
        I iC_ = c_();
        if (iC_ == null) {
            throw new IllegalArgumentException("null " + strH_);
        }
        String strC = c();
        String str = strH_ + " " + iC_;
        int iA = this.v.a(strC, a(false), h_() + " = ?", new String[]{iC_.toString()}, 3);
        switch (iA) {
            case 0:
                Logger.d(Logger.DATABASE_TAG, "no " + strC + " rows updated by " + str);
                return iA;
            case 1:
                Logger.d(Logger.DATABASE_TAG, "update successful " + B());
                return iA;
            default:
                Logger.w(Logger.DATABASE_TAG, "updated " + iA + " " + strC + " records for " + str);
                return iA;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected int q() {
        return b_().a(c_());
    }

    @Override // com.vungle.publisher.gj
    public String B() {
        return j_().append('}').toString();
    }

    protected StringBuilder j_() {
        StringBuilder sb = new StringBuilder();
        sb.append('{').append(C()).append(":: ");
        a(sb, h_(), c_(), true);
        return sb;
    }

    protected String C() {
        return c();
    }

    public String toString() {
        return p().append('}').toString();
    }

    protected StringBuilder p() {
        return j_();
    }

    /* JADX INFO: compiled from: vungle */
    protected static abstract class a<T extends dp<I>, I> {

        @Inject
        protected ci d;

        protected abstract T a(T t, Cursor cursor, boolean z);

        protected abstract I[] b(int i);

        protected abstract String c();

        protected abstract T[] d(int i);

        protected abstract T g_();

        protected a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int a(I... iArr) {
            int i = 0;
            int length = iArr == 0 ? 0 : iArr.length;
            if (length == 0) {
                Logger.d(Logger.DATABASE_TAG, "no " + c() + " records requested for delete");
                return 0;
            }
            dp dpVarG_ = g_();
            boolean z = iArr instanceof String[];
            String[] strArr = z ? (String[]) iArr : new String[length];
            if (!z) {
                int length2 = iArr.length;
                int i2 = 0;
                while (i < length2) {
                    strArr[i2] = String.valueOf(iArr[i]);
                    i++;
                    i2++;
                }
            }
            int iDelete = this.d.getWritableDatabase().delete(c(), dpVarG_.h_() + " IN (" + ce.a(length) + ")", strArr);
            if (iDelete == length) {
                Logger.d(Logger.DATABASE_TAG, "deleted " + iDelete + " " + c() + " records by " + dpVarG_.h_() + " in " + zk.b(iArr));
                return iDelete;
            }
            Logger.w(Logger.DATABASE_TAG, "deleted " + iDelete + " of " + length + " requested records by " + dpVarG_.h_() + " in " + zk.b(iArr));
            return iDelete;
        }

        public int a(List<T> list) {
            return b(list == null ? null : (dp[]) list.toArray(d(list.size())));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int b(T... tArr) {
            int i = 0;
            Object[] objArrB = null;
            if (tArr != null) {
                objArrB = b(tArr.length);
                int length = tArr.length;
                int i2 = 0;
                while (i < length) {
                    objArrB[i2] = tArr[i].c_();
                    i++;
                    i2++;
                }
            }
            return a(objArrB);
        }

        public List<T> a(String str, String[] strArr) {
            return a(str, strArr, (String) null);
        }

        public T a(I i) {
            return (T) a((Object) i, false);
        }

        public T a(I i, boolean z) {
            return (T) a(i, (String) null, (String[]) null, z);
        }

        public T a(I i, String str, String[] strArr, boolean z) {
            dp dpVarG_ = g_();
            dpVarG_.a(i);
            return (T) a(dpVarG_, str, strArr, z);
        }

        protected T a(T t, boolean z) {
            return (T) a((dp) t, (String) null, (String[]) null, z);
        }

        protected T a(T t, String str, String[] strArr, boolean z) throws Throwable {
            if (t == null) {
                throw new IllegalArgumentException("null model");
            }
            String strH_ = t.h_();
            if (strH_ == null) {
                throw new IllegalArgumentException("null id name");
            }
            Object objC_ = t.c_();
            if (objC_ == null) {
                throw new IllegalArgumentException("null " + strH_);
            }
            StringBuilder sbAppend = new StringBuilder().append(strH_).append(" = ?");
            ArrayList arrayList = new ArrayList();
            arrayList.add(String.valueOf(objC_));
            if (str != null) {
                sbAppend.append(" AND ").append(str);
                if (strArr != null) {
                    arrayList.addAll(Arrays.asList(strArr));
                }
            }
            String string = sbAppend.toString();
            List<T> listA = a(string, (String[]) arrayList.toArray(new String[arrayList.size()]), (String) null, (String) null);
            int size = listA.size();
            switch (size) {
                case 0:
                    return null;
                case 1:
                    return listA.get(0);
                default:
                    throw new SQLException(size + " " + c() + " records found for query: " + string + ", parameters: " + zk.a(arrayList));
            }
        }

        protected List<T> a(String str, String[] strArr, String str2) {
            return a(str, strArr, str2, (String) null);
        }

        protected List<T> a(String str, String[] strArr, String str2, String str3) throws Throwable {
            Cursor cursor;
            try {
                String strC = c();
                Logger.d(Logger.DATABASE_TAG, "fetching " + (str == null ? "all " + strC + " records" : strC + " records by " + str + " " + zk.b(strArr)));
                Cursor cursorQuery = this.d.getReadableDatabase().query(strC, null, str, strArr, null, null, str2, str3);
                try {
                    int count = cursorQuery.getCount();
                    Logger.v(Logger.DATABASE_TAG, (count == 0 ? "no " : "fetched " + count + " ") + strC + " records by " + str + " " + zk.b(strArr));
                    List<T> listB = b(cursorQuery);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return listB;
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
                cursor = null;
            }
        }

        protected boolean b(String str, String[] strArr) {
            boolean z = false;
            Cursor cursorRawQuery = null;
            try {
                cursorRawQuery = this.d.getWritableDatabase().rawQuery("SELECT EXISTS (SELECT 1 FROM " + c() + " WHERE " + str + " LIMIT 1)", strArr);
                if (cursorRawQuery.moveToFirst()) {
                    if (cursorRawQuery.getInt(0) != 0) {
                        z = true;
                    }
                }
                return z;
            } finally {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            }
        }

        protected List<I> a(T... tArr) {
            ArrayList arrayList = new ArrayList(tArr.length);
            for (T t : tArr) {
                arrayList.add(t.d_());
            }
            return arrayList;
        }

        protected List<T> b(Cursor cursor) {
            return a(cursor, false);
        }

        protected List<T> a(Cursor cursor, boolean z) {
            ArrayList arrayList = new ArrayList(cursor.getCount());
            while (cursor.moveToNext()) {
                arrayList.add(b(g_(), cursor, z));
            }
            return arrayList;
        }

        protected final T b(T t, Cursor cursor, boolean z) {
            a(t, cursor, z);
            Logger.v(Logger.DATABASE_TAG, "fetched " + t);
            return t;
        }

        protected final List<T> b(@NonNull List<String> list) {
            List<T> listA = a("id NOT IN (" + ce.a(list.size()) + ")", (String[]) list.toArray(new String[list.size()]), (String) null);
            Logger.v(Logger.DATABASE_TAG, "getAllExcept count: " + listA.size());
            return listA;
        }

        protected final List<T> c(@NonNull List<String> list) {
            List<T> listA = a("id IN (" + ce.a(list.size()) + ")", (String[]) list.toArray(new String[list.size()]), (String) null);
            Logger.v(Logger.DATABASE_TAG, "getAll count: " + listA.size());
            return listA;
        }
    }
}
