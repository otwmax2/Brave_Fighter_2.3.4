package com.vungle.publisher;

import com.vungle.publisher.log.Logger;
import java.lang.invoke.LambdaForm;
import rx.functions.Action1;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class xs implements Action1 {
    private static final xs a = new xs();

    private xs() {
    }

    public static Action1 a() {
        return a;
    }

    @Override // rx.functions.Action1
    @LambdaForm.Hidden
    public void call(Object obj) {
        Logger.w(Logger.PREPARE_TAG, "could not prepare viewable after multiple retries");
    }
}
