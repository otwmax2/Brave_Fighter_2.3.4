package com.vungle.publisher;

import com.google.gson.JsonObject;
import java.lang.invoke.LambdaForm;
import rx.functions.Func1;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class qy implements Func1 {
    private static final qy a = new qy();

    private qy() {
    }

    public static Func1 a() {
        return a;
    }

    @Override // rx.functions.Func1
    @LambdaForm.Hidden
    public Object call(Object obj) {
        return ((JsonObject) obj).toString();
    }
}
