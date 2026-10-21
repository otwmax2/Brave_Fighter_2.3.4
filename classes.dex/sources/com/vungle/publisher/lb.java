package com.vungle.publisher;

import android.os.Bundle;
import com.vungle.publisher.lf;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class lb extends lf {
    private String a;

    @Inject
    lb() {
    }

    @Override // com.vungle.publisher.lf
    public boolean a() {
        return this.a != null;
    }

    @Override // com.vungle.publisher.lf
    public String b() {
        return this.a;
    }

    @Override // com.vungle.publisher.lf
    public void a(Bundle bundle) {
        bundle.putString("webViewRootContentIndexFile", this.a);
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends lf.a {

        @Inject
        Provider<lb> a;

        @Inject
        a() {
        }

        public lb a(String str) {
            lb lbVar = this.a.get();
            lbVar.a = str;
            return lbVar;
        }

        public lf a(Bundle bundle) {
            return a(bundle.getString("webViewRootContentIndexFile"));
        }
    }
}
