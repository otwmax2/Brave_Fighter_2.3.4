package com.tendcloud.tenddata.game;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
final class ab implements InvocationHandler {
    final /* synthetic */ v a;
    final /* synthetic */ Object b;

    ab(v vVar, Object obj) {
        this.a = vVar;
        this.b = obj;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws IllegalAccessException, InvocationTargetException {
        this.a.a(obj, method, objArr);
        Object objInvoke = method.invoke(this.b, objArr);
        this.a.a(obj, method, objArr, objInvoke);
        return objInvoke;
    }
}
