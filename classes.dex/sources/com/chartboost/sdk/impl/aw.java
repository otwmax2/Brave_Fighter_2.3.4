package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class aw extends View {
    private boolean a;

    public aw(Context context) {
        super(context);
        this.a = false;
        setFocusable(false);
        setBackgroundColor(-1442840576);
    }

    public void a(av avVar, com.chartboost.sdk.Model.a aVar) {
        if (!this.a) {
            avVar.a(true, (View) this, aVar);
            this.a = true;
        }
    }
}
