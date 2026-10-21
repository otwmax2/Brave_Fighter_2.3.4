package com.vungle.publisher;

import java.lang.invoke.LambdaForm;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class vg implements Runnable {
    private final vc a;

    private vg(vc vcVar) {
        this.a = vcVar;
    }

    public static Runnable a(vc vcVar) {
        return new vg(vcVar);
    }

    @Override // java.lang.Runnable
    @LambdaForm.Hidden
    public void run() {
        this.a.d();
    }
}
