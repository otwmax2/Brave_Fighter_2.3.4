package com.vungle.publisher;

import android.content.Context;
import com.vungle.publisher.mj;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class om extends mj {
    private om(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a extends mj.b<om> {

        @Inject
        lz c;

        @Inject
        lw d;

        @Inject
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.mj.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public om a(Context context) {
            return new om(context);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.mj.b
        public void a(String str, om omVar, p pVar, boolean z, x xVar) {
            omVar.setWebViewClient(this.c);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.mj.b
        public void a(om omVar) {
            omVar.setWebChromeClient(this.d);
        }
    }
}
