package com.vungle.publisher;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.vungle.publisher.lf;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.mj;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class mm<W extends mj> extends mf {
    protected lf e;
    protected W f;
    protected String g;
    protected p h;
    protected x i;

    @Inject
    com.vungle.publisher.env.i j;

    @Inject
    qg k;

    @Inject
    lf.b l;

    @Inject
    Context m;

    protected abstract W a(String str, p pVar, x xVar);

    @Override // android.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        try {
            super.onCreate(savedInstanceState);
            if (savedInstanceState != null) {
                this.e = this.l.a(savedInstanceState);
                this.g = savedInstanceState.getString(VungleAdActivity.AD_ID_EXTRA_KEY);
                this.i = x.a(savedInstanceState.getString("templateType"));
            }
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onCreate", e);
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        this.f.onConfigurationChanged(newConfig);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RelativeLayout relativeLayout;
        Exception e;
        W w;
        try {
            w = (W) a(this.g, this.h, this.i);
            this.f = w;
            w.a(this.e);
            this.j.a(w);
            zo.a((View) w);
            relativeLayout = new RelativeLayout(this.m);
        } catch (Exception e2) {
            relativeLayout = null;
            e = e2;
        }
        try {
            relativeLayout.addView(w);
            ViewGroup.LayoutParams layoutParams = w.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
        } catch (Exception e3) {
            e = e3;
            Logger.w(Logger.AD_TAG, "exception in onCreateView", e);
        }
        return relativeLayout;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        Logger.d(Logger.AD_TAG, "webview fragment onDestroy()");
        super.onDestroy();
        if (this.f != null) {
            this.f.destroy();
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        outState.putString(VungleAdActivity.AD_ID_EXTRA_KEY, this.g);
        outState.putString("templateType", this.i.name());
        this.e.a(outState);
        super.onSaveInstanceState(outState);
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes2.dex */
    public static abstract class a<A extends mm<?>> {
        protected abstract A a();

        protected abstract String b();

        a() {
        }

        public A a(Activity activity, String str, lf lfVar, p pVar, boolean z, x xVar) {
            mm mmVarA = a(activity);
            if (mmVarA == null) {
                mmVarA = a();
            }
            return (A) a(mmVarA, str, lfVar, pVar, z, xVar);
        }

        private A a(A a, String str, lf lfVar, p pVar, boolean z, x xVar) {
            a.e = lfVar;
            a.g = str;
            a.h = pVar;
            a.c = z;
            a.i = xVar;
            return a;
        }

        private A a(Activity activity) {
            return (A) activity.getFragmentManager().findFragmentByTag(b());
        }
    }
}
