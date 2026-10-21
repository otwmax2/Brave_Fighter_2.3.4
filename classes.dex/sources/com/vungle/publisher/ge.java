package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import com.vungle.publisher.ei;
import com.vungle.publisher.env.r;
import com.vungle.publisher.log.Logger;
import java.io.File;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class ge {
    b<?> a;
    String b;
    Integer c;

    @Inject
    com.vungle.publisher.env.i d;

    @Inject
    r e;

    /* JADX INFO: compiled from: vungle */
    public interface b<A extends cn> extends gd<A> {
        String a();

        boolean t();

        boolean u();
    }

    @Inject
    ge() {
    }

    String a() {
        return this.a.f();
    }

    String b() {
        return this.a.d();
    }

    String c() {
        return this.b;
    }

    void a(String str) {
        this.b = str;
    }

    void a(Integer num) {
        this.c = num;
    }

    File d() {
        String strF = f();
        if (strF == null) {
            return null;
        }
        return new File(strF);
    }

    boolean e() {
        File fileD = d();
        if (fileD == null) {
            Logger.w(Logger.PREPARE_TAG, "null " + this.a.o() + " file for ad " + a());
            return false;
        }
        if (fileD.exists()) {
            Logger.v(Logger.PREPARE_TAG, fileD.getAbsolutePath() + " exists, " + fileD.length() + " bytes");
            return true;
        }
        Logger.w(Logger.PREPARE_TAG, fileD.getAbsolutePath() + " missing ");
        return false;
    }

    String f() {
        return qr.a(b(), this.a.a());
    }

    ei.b g() {
        return this.a.o();
    }

    int h() {
        this.a.r();
        return this.a.s();
    }

    int i() {
        File fileD = d();
        if (fileD == null) {
            return 0;
        }
        return (int) fileD.length();
    }

    final boolean j() {
        boolean zT = this.a.t();
        if (zT) {
            ei.a aVar = ei.a.ready;
            Logger.i(Logger.PREPARE_TAG, g() + " " + aVar + " for ad_id " + a());
            this.a.b(aVar);
        } else {
            if (this.e.a()) {
                Logger.i(Logger.PREPARE_TAG, "debug mode: post-processing failed for " + this.a.B() + " - not deleting " + f());
            } else {
                Logger.d(Logger.PREPARE_TAG, "post-processing failed for " + this.a.B() + " - deleting " + f());
                this.a.r();
            }
            this.a.b(ei.a.aware);
        }
        return zT;
    }

    boolean k() {
        return l();
    }

    final boolean l() throws qm {
        ei.a aVar;
        boolean zU = this.a.u();
        String strA = a();
        ei.b bVarG = g();
        if (zU) {
            Logger.i(Logger.PREPARE_TAG, bVarG + " verified for ad_id " + strA);
            aVar = ei.a.ready;
        } else {
            Logger.w(Logger.PREPARE_TAG, bVarG + " failed verification; reprocessing ad_id " + strA);
            aVar = ei.a.aware;
        }
        this.a.b(aVar);
        return zU;
    }

    boolean m() throws qm {
        return a(true);
    }

    boolean a(boolean z) throws qm {
        if (!this.d.l()) {
            throw new qm();
        }
        String strA = a();
        ei.b bVarG = g();
        if (this.c == null) {
            String str = bVarG + " size " + this.c + " for ad_id: " + strA;
            if (z) {
                Logger.d(Logger.PREPARE_TAG, str);
                return true;
            }
            Logger.w(Logger.PREPARE_TAG, str);
        } else {
            int i = i();
            if (i == this.c.intValue()) {
                Logger.d(Logger.PREPARE_TAG, bVarG + " disk size matched size " + this.c + " for ad_id: " + strA);
                return true;
            }
            Logger.d(Logger.PREPARE_TAG, bVarG + " disk size " + i + " failed to match size " + this.c + " for ad_id: " + strA);
            if (e()) {
                Logger.d(Logger.PREPARE_TAG, "ignoring " + bVarG + " size mismatch - file exists");
                return true;
            }
        }
        return false;
    }

    boolean n() {
        File fileD = d();
        Logger.d(Logger.PREPARE_TAG, "deleting " + fileD);
        return fileD != null && fileD.delete();
    }

    void a(ContentValues contentValues) {
        contentValues.put("url", this.b);
        contentValues.put("size", this.c);
    }

    void a(Cursor cursor) {
        a(ce.e(cursor, "url"));
        a(ce.c(cursor, "size"));
    }

    void a(StringBuilder sb) {
        dp.a(sb, "url", this.b);
        dp.a(sb, "size", this.c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a {

        @Inject
        Provider<ge> a;

        @Inject
        a() {
        }

        ge a(b<?> bVar) {
            ge geVar = this.a.get();
            geVar.a = bVar;
            return geVar;
        }
    }
}
