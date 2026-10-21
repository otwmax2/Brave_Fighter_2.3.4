package com.vungle.publisher;

import java.lang.invoke.LambdaForm;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class qa implements Runnable {
    private final py a;
    private final qj b;

    private qa(py pyVar, qj qjVar) {
        this.a = pyVar;
        this.b = qjVar;
    }

    public static Runnable a(py pyVar, qj qjVar) {
        return new qa(pyVar, qjVar);
    }

    @Override // java.lang.Runnable
    @LambdaForm.Hidden
    public void run() {
        this.a.a(this.b);
    }
}
