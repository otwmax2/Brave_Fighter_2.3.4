package com.vungle.publisher;

import java.lang.invoke.LambdaForm;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class a implements Runnable {
    private final InitializationEventListener a;

    private a(InitializationEventListener initializationEventListener) {
        this.a = initializationEventListener;
    }

    public static Runnable a(InitializationEventListener initializationEventListener) {
        return new a(initializationEventListener);
    }

    @Override // java.lang.Runnable
    @LambdaForm.Hidden
    public void run() {
        this.a.a();
    }
}
