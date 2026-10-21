package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import com.vungle.publisher.ei;
import com.vungle.publisher.ge;
import com.vungle.publisher.iz;
import com.vungle.publisher.jm;
import com.vungle.publisher.jn;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class dk extends jm<jn> implements ge.b<jn> {
    ge a;
    String b;
    String c;
    iz d;

    @Inject
    jn.a e;

    @Inject
    a f;

    @Inject
    dk() {
    }

    @Override // com.vungle.publisher.ge.b
    public String a() {
        return this.c + "." + h();
    }

    @Override // com.vungle.publisher.gd
    public String e() {
        return this.a.c();
    }

    public void a(String str) {
        this.a.a(str);
    }

    @Override // com.vungle.publisher.gd
    public void a(Integer num) {
        this.a.a(num);
    }

    public String h() {
        return this.b;
    }

    @Override // com.vungle.publisher.gd
    public String i() {
        return this.a.f();
    }

    @Override // com.vungle.publisher.gd
    public boolean m() {
        return this.a.j();
    }

    @Override // com.vungle.publisher.gd
    public boolean n() {
        return this.a.l();
    }

    @Override // com.vungle.publisher.gd
    public boolean r() {
        return this.a.e();
    }

    @Override // com.vungle.publisher.gd
    public int s() {
        return super.q();
    }

    @Override // com.vungle.publisher.ge.b
    public boolean t() {
        return true;
    }

    @Override // com.vungle.publisher.ge.b
    public boolean u() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.jm
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public jn.a y() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.f;
    }

    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public Integer d_() {
        Integer num = (Integer) super.d_();
        if (this.d != null) {
            this.d.d_();
        }
        return num;
    }

    @Override // com.vungle.publisher.jm, com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValuesA = super.a(z);
        this.a.a(contentValuesA);
        contentValuesA.put("name", this.c);
        contentValuesA.put("extension", this.b);
        return contentValuesA;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends jm.a<jn, dk, wr> {

        @Inject
        Provider<dk> a;

        @Inject
        ge.a b;

        @Inject
        iz.a c;

        @Inject
        a() {
        }

        dk a(jn jnVar, wr wrVar, wy wyVar) {
            dk dkVarA;
            if (wrVar == null) {
                dkVarA = null;
            } else if (wyVar != null) {
                dkVarA = a((dk) super.a(jnVar, wrVar), wyVar);
            } else {
                throw new IllegalArgumentException("cannot create asset with null url");
            }
            dkVarA.d = this.c.a(jnVar.c_(), dkVarA.c, dkVarA.i());
            return dkVarA;
        }

        public List<dk> a(jn jnVar, wr wrVar) {
            Collection<wy> collectionA = wrVar.p().a();
            ArrayList arrayList = new ArrayList();
            Iterator<wy> it = collectionA.iterator();
            while (it.hasNext()) {
                arrayList.add(a(jnVar, wrVar, it.next()));
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.jm.a
        public dk a(dk dkVar, Cursor cursor, boolean z) {
            super.a(dkVar, cursor, z);
            dkVar.b = ce.e(cursor, "extension");
            dkVar.c = ce.e(cursor, "name");
            dkVar.a.a(cursor);
            return dkVar;
        }

        dk a(dk dkVar, wy wyVar) {
            dkVar.r = ei.b.asset;
            String strB = wyVar.b();
            String strA = wyVar.a();
            String strC = wyVar.c();
            if (strB == null) {
                throw new IllegalArgumentException("asset object must have a non-null url");
            }
            if (strA == null) {
                throw new IllegalArgumentException("asset object must have a non-null extension");
            }
            if (strC == null) {
                throw new IllegalArgumentException("asset object must have a non-null name");
            }
            dkVar.c = strC;
            dkVar.b = strA;
            dkVar.a(strB);
            return dkVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public dk g_() {
            dk dkVar = this.a.get();
            dkVar.a = this.b.a(dkVar);
            return dkVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public dk[] d(int i) {
            return new dk[i];
        }
    }
}
