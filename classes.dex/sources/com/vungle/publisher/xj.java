package com.vungle.publisher;

import java.lang.invoke.LambdaForm;
import rx.functions.Func1;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class xj implements Func1 {
    private static final xj a = new xj();

    private xj() {
    }

    public static Func1 a() {
        return a;
    }

    @Override // rx.functions.Func1
    @LambdaForm.Hidden
    public Object call(Object obj) {
        return Boolean.valueOf(((wc) obj) != null);
    }
}
