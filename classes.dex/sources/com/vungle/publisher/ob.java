package com.vungle.publisher;

import android.os.Bundle;
import android.support.annotation.Nullable;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.mm;
import com.vungle.publisher.om;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class ob extends mm<om> {

    @Inject
    om.a n;

    @Inject
    public ob() {
    }

    @Override // com.vungle.publisher.mf
    public void a() {
        try {
            this.k.a(new ao());
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onBackPressed", e);
        }
    }

    @Override // com.vungle.publisher.mf
    public String b() {
        return "postRollFragment";
    }

    @Override // com.vungle.publisher.mm, android.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // android.app.Fragment
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        if (Injector.getInstance().d()) {
            Injector.c().a(this);
        } else {
            Logger.w(Logger.AD_TAG, "SDK not initialized");
            getActivity().finish();
        }
        super.onActivityCreated(savedInstanceState);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.mm
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public om a(String str, p pVar, x xVar) {
        return this.n.a(str, pVar, this.c, xVar);
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends mm.a<ob> {

        @Inject
        Provider<ob> a;

        @Inject
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.mm.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public ob a() {
            return this.a.get();
        }

        @Override // com.vungle.publisher.mm.a
        protected String b() {
            return "postRollFragment";
        }
    }
}
