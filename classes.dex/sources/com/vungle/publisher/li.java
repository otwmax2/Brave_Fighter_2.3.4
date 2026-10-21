package com.vungle.publisher;

import android.os.Bundle;
import com.vungle.publisher.lf;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class li extends lf {
    private String a;
    private String b;

    @Inject
    li() {
    }

    @Override // com.vungle.publisher.lf
    public boolean c() {
        return this.a != null;
    }

    @Override // com.vungle.publisher.lf
    public String d() {
        if (this.b == null) {
            this.b = zk.d(this.a);
        }
        return this.b;
    }

    @Override // com.vungle.publisher.lf
    public void a(Bundle bundle) {
        bundle.putString("webViewRootContentString", this.a);
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends lf.a {

        @Inject
        Provider<li> a;

        @Inject
        a() {
        }

        public li a(String str) {
            li liVar = this.a.get();
            liVar.a = str;
            return liVar;
        }

        public lf a(Bundle bundle) {
            return a(bundle.getString("webViewRootContentString"));
        }
    }
}
