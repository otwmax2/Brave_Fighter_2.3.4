package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import com.facebook.share.internal.ShareConstants;
import com.vungle.publisher.dp;
import com.vungle.publisher.log.Logger;
import java.io.File;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class df extends dp<Integer> {
    ej<?, ?> a;
    String b;
    Integer c;

    @Inject
    a d;

    @Inject
    df() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.d;
    }

    @Override // com.vungle.publisher.dp
    protected String c() {
        return "archive_entry";
    }

    ej<?, ?> e() {
        return this.a;
    }

    Integer h() {
        if (this.a == null) {
            return null;
        }
        return this.a.c_();
    }

    File i() {
        String strN = n();
        if (strN == null) {
            return null;
        }
        return new File(strN);
    }

    String m() {
        return e().z();
    }

    String n() {
        return qr.a(m(), this.b);
    }

    boolean r() {
        return b(false);
    }

    boolean b(boolean z) {
        File fileI = i();
        if (this.c == null) {
            if (z) {
                zExists = fileI.exists();
                if (zExists) {
                    Logger.v(Logger.PREPARE_TAG, fileI + " exists");
                } else {
                    Logger.i(Logger.PREPARE_TAG, fileI + " doesn't exist");
                }
            }
            Logger.w(Logger.PREPARE_TAG, fileI + " size is null");
            return zExists;
        }
        int length = (int) fileI.length();
        int iIntValue = this.c.intValue();
        zExists = length == iIntValue;
        if (zExists) {
            Logger.v(Logger.PREPARE_TAG, fileI + " size verified " + length);
            return zExists;
        }
        Logger.d(Logger.PREPARE_TAG, fileI + " size " + length + " doesn't match expected " + iIntValue);
        return fileI.exists();
    }

    @Override // com.vungle.publisher.dp, com.vungle.publisher.gj
    public int f_() {
        if (this.u == 0) {
            Integer numH = h();
            String str = this.b;
            Logger.d(Logger.DATABASE_TAG, "updating archive_entry by viewable_id " + numH + ", relative_path " + str);
            int iUpdateWithOnConflict = this.v.getWritableDatabase().updateWithOnConflict("archive_entry", a(false), "viewable_id = ? AND relative_path = ?", new String[]{String.valueOf(numH), str}, 3);
            A();
            return iUpdateWithOnConflict;
        }
        return super.f_();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (this.u != 0) {
            contentValues.put(ShareConstants.WEB_DIALOG_PARAM_ID, (Integer) this.u);
        }
        contentValues.put("viewable_id", h());
        contentValues.put("relative_path", this.b);
        contentValues.put("size", this.c);
        return contentValues;
    }

    @Override // com.vungle.publisher.dp
    protected StringBuilder p() {
        StringBuilder sbP = super.p();
        a(sbP, "viewable_id", h());
        a(sbP, "relative_path", this.b);
        a(sbP, "size", this.c);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends dp.a<df, Integer> {

        @Inject
        Provider<df> a;

        @Override // com.vungle.publisher.dp.a
        public /* bridge */ /* synthetic */ int a(List list) {
            return super.a(list);
        }

        @Override // com.vungle.publisher.dp.a
        public /* bridge */ /* synthetic */ List a(String str, String[] strArr) {
            return super.a(str, strArr);
        }

        @Inject
        a() {
        }

        public df a(ej<?, ?> ejVar, File file, String str, int i) {
            df dfVarG_ = g_();
            dfVarG_.a = ejVar;
            dfVarG_.b = str;
            dfVarG_.c = Integer.valueOf(i);
            return dfVarG_;
        }

        int a(Integer num) {
            if (num == null) {
                throw new IllegalArgumentException("null viewable_id");
            }
            int iDelete = this.d.getWritableDatabase().delete("archive_entry", "viewable_id = ?", new String[]{String.valueOf(num)});
            Logger.d(Logger.DATABASE_TAG, "deleted " + iDelete + " archive_entry rows for viewable_id " + num);
            return iDelete;
        }

        df[] a(ej<?, ?> ejVar) throws Throwable {
            Cursor cursorQuery;
            if (ejVar == null) {
                throw new IllegalArgumentException("null archive");
            }
            Integer numM = ejVar.c_();
            if (numM == null) {
                throw new IllegalArgumentException("null viewable_id");
            }
            try {
                Logger.d(Logger.DATABASE_TAG, "fetching archive_entry records by viewable_id " + numM);
                cursorQuery = this.d.getReadableDatabase().query("archive_entry", null, "viewable_id = ?", new String[]{String.valueOf(numM)}, null, null, null);
            } catch (Throwable th) {
                th = th;
                cursorQuery = null;
            }
            try {
                df[] dfVarArr = new df[cursorQuery.getCount()];
                int i = 0;
                while (cursorQuery.moveToNext()) {
                    df dfVarA = a(g_(), ejVar, cursorQuery);
                    dfVarArr[i] = dfVarA;
                    Logger.v(Logger.DATABASE_TAG, "fetched " + dfVarA);
                    i++;
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return dfVarArr;
            } catch (Throwable th2) {
                th = th2;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        }

        df a(df dfVar, ej<?, ?> ejVar, Cursor cursor) {
            b(dfVar, cursor, false);
            dfVar.a = ejVar;
            return dfVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r0v1, types: [I, java.lang.Integer] */
        @Override // com.vungle.publisher.dp.a
        public df a(df dfVar, Cursor cursor, boolean z) {
            dfVar.u = ce.c(cursor, ShareConstants.WEB_DIALOG_PARAM_ID);
            dfVar.b = ce.e(cursor, "relative_path");
            dfVar.c = ce.c(cursor, "size");
            return dfVar;
        }

        @Override // com.vungle.publisher.dp.a
        protected String c() {
            return "archive_entry";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public df[] d(int i) {
            return new df[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Integer[] b(int i) {
            return new Integer[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public df g_() {
            return this.a.get();
        }
    }
}
