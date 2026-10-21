package com.moat.analytics.mobile.iro;

import android.support.annotation.VisibleForTesting;
import com.moat.analytics.mobile.iro.base.asserts.Asserts;
import com.moat.analytics.mobile.iro.base.functional.Optional;
import com.moat.analytics.mobile.iro.t;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.LinkedList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class s<T> implements InvocationHandler {

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static final Object[] f386 = new Object[0];

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private final LinkedList<s<T>.e> f387;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private final Class<T> f388;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private boolean f389;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private final a<T> f390;

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private T f391;

    interface a<T> {
        /* JADX INFO: renamed from: ˏ */
        Optional<T> mo190() throws o;
    }

    class e {

        /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
        private final Method f393;

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        private final LinkedList<Object> f394;

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        private final WeakReference[] f395;

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        private /* synthetic */ s f396;

        /* synthetic */ e(s sVar, Method method, Object[] objArr, byte b) {
            this(sVar, method, objArr);
        }

        private e(s sVar, Method method, Object... objArr) {
            int i = 0;
            this.f396 = sVar;
            this.f394 = new LinkedList<>();
            objArr = objArr == null ? s.f386 : objArr;
            WeakReference[] weakReferenceArr = new WeakReference[objArr.length];
            int length = objArr.length;
            int i2 = 0;
            while (i < length) {
                Object obj = objArr[i];
                if ((obj instanceof Map) || (obj instanceof Integer) || (obj instanceof Double)) {
                    this.f394.add(obj);
                }
                weakReferenceArr[i2] = new WeakReference(obj);
                i++;
                i2++;
            }
            this.f395 = weakReferenceArr;
            this.f393 = method;
        }
    }

    @VisibleForTesting
    private s(a<T> aVar, Class<T> cls) throws o {
        Asserts.checkNotNull(aVar);
        Asserts.checkNotNull(cls);
        this.f390 = aVar;
        this.f388 = cls;
        this.f387 = new LinkedList<>();
        t.m340().m350(new t.a() { // from class: com.moat.analytics.mobile.iro.s.1
            @Override // com.moat.analytics.mobile.iro.t.a
            /* JADX INFO: renamed from: ॱ */
            public final void mo286() throws o {
                s.this.m333();
            }
        });
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    static <T> T m331(a<T> aVar, Class<T> cls) throws o {
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new s(aVar, cls));
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static Boolean m330(Method method) {
        try {
            if (Boolean.TYPE.equals(method.getReturnType())) {
                return true;
            }
        } catch (Exception e2) {
            o.m311(e2);
        }
        return null;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        try {
            Class<?> declaringClass = method.getDeclaringClass();
            t tVarM340 = t.m340();
            if (Object.class.equals(declaringClass)) {
                String name = method.getName();
                if ("getClass".equals(name)) {
                    return this.f388;
                }
                if ("toString".equals(name)) {
                    Object objInvoke = method.invoke(this, objArr);
                    return String.valueOf(objInvoke).replace(s.class.getName(), this.f388.getName());
                }
                return method.invoke(this, objArr);
            }
            if (this.f389 && this.f391 == null) {
                this.f387.clear();
                return m330(method);
            }
            if (tVarM340.f402 == t.c.f419) {
                m333();
                if (this.f391 != null) {
                    return method.invoke(this.f391, objArr);
                }
            }
            if (tVarM340.f402 == t.c.f418 && (!this.f389 || this.f391 != null)) {
                if (this.f387.size() >= 15) {
                    this.f387.remove(5);
                }
                this.f387.add(new e(this, method, objArr, (byte) 0));
            }
            return m330(method);
        } catch (Exception e2) {
            o.m311(e2);
            return m330(method);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    public void m333() throws o {
        if (!this.f389) {
            try {
                this.f391 = this.f390.mo190().orElse(null);
            } catch (Exception e2) {
                b.m199("OnOffTrackerProxy", this, "Could not create instance", e2);
                o.m311(e2);
            }
            this.f389 = true;
        }
        if (this.f391 != null) {
            for (s<T>.e eVar : this.f387) {
                try {
                    Object[] objArr = new Object[((e) eVar).f395.length];
                    WeakReference[] weakReferenceArr = ((e) eVar).f395;
                    int length = weakReferenceArr.length;
                    int i = 0;
                    int i2 = 0;
                    while (i < length) {
                        objArr[i2] = weakReferenceArr[i].get();
                        i++;
                        i2++;
                    }
                    ((e) eVar).f393.invoke(this.f391, objArr);
                } catch (Exception e3) {
                    o.m311(e3);
                }
            }
            this.f387.clear();
        }
    }
}
