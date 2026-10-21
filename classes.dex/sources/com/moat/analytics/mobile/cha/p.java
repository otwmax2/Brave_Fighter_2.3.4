package com.moat.analytics.mobile.cha;

import android.support.annotation.VisibleForTesting;
import com.moat.analytics.mobile.cha.base.asserts.Asserts;
import com.moat.analytics.mobile.cha.base.functional.Optional;
import com.moat.analytics.mobile.cha.t;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.LinkedList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class p<T> implements InvocationHandler {

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static final Object[] f145 = new Object[0];

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private final c<T> f146;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private boolean f147;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private final LinkedList<p<T>.d> f148;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private final Class<T> f149;

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private T f150;

    interface c<T> {
        /* JADX INFO: renamed from: ˋ */
        Optional<T> mo11() throws o;
    }

    class d {

        /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
        private final WeakReference[] f152;

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        private final Method f153;

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        private final LinkedList<Object> f154;

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        private /* synthetic */ p f155;

        /* synthetic */ d(p pVar, Method method, Object[] objArr, byte b) {
            this(pVar, method, objArr);
        }

        private d(p pVar, Method method, Object... objArr) {
            int i = 0;
            this.f155 = pVar;
            this.f154 = new LinkedList<>();
            objArr = objArr == null ? p.f145 : objArr;
            WeakReference[] weakReferenceArr = new WeakReference[objArr.length];
            int length = objArr.length;
            int i2 = 0;
            while (i < length) {
                Object obj = objArr[i];
                if ((obj instanceof Map) || (obj instanceof Integer) || (obj instanceof Double)) {
                    this.f154.add(obj);
                }
                weakReferenceArr[i2] = new WeakReference(obj);
                i++;
                i2++;
            }
            this.f152 = weakReferenceArr;
            this.f153 = method;
        }
    }

    @VisibleForTesting
    private p(c<T> cVar, Class<T> cls) throws o {
        Asserts.checkNotNull(cVar);
        Asserts.checkNotNull(cls);
        this.f146 = cVar;
        this.f149 = cls;
        this.f148 = new LinkedList<>();
        t.m165().m170(new t.b() { // from class: com.moat.analytics.mobile.cha.p.1
            @Override // com.moat.analytics.mobile.cha.t.b
            /* JADX INFO: renamed from: ˎ */
            public final void mo54() throws o {
                p.this.m135();
            }
        });
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    static <T> T m134(c<T> cVar, Class<T> cls) throws o {
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new p(cVar, cls));
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static Boolean m133(Method method) {
        try {
            if (Boolean.TYPE.equals(method.getReturnType())) {
                return true;
            }
        } catch (Exception e) {
            o.m131(e);
        }
        return null;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        try {
            Class<?> declaringClass = method.getDeclaringClass();
            t tVarM165 = t.m165();
            if (Object.class.equals(declaringClass)) {
                String name = method.getName();
                if ("getClass".equals(name)) {
                    return this.f149;
                }
                if ("toString".equals(name)) {
                    Object objInvoke = method.invoke(this, objArr);
                    return String.valueOf(objInvoke).replace(p.class.getName(), this.f149.getName());
                }
                return method.invoke(this, objArr);
            }
            if (this.f147 && this.f150 == null) {
                this.f148.clear();
                return m133(method);
            }
            if (tVarM165.f183 == t.a.f194) {
                m135();
                if (this.f150 != null) {
                    return method.invoke(this.f150, objArr);
                }
            }
            if (tVarM165.f183 == t.a.f195 && (!this.f147 || this.f150 != null)) {
                if (this.f148.size() >= 15) {
                    this.f148.remove(5);
                }
                this.f148.add(new d(this, method, objArr, (byte) 0));
            }
            return m133(method);
        } catch (Exception e) {
            o.m131(e);
            return m133(method);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    public void m135() throws o {
        if (!this.f147) {
            try {
                this.f150 = this.f146.mo11().orElse(null);
            } catch (Exception e) {
                a.m17("OnOffTrackerProxy", this, "Could not create instance", e);
                o.m131(e);
            }
            this.f147 = true;
        }
        if (this.f150 != null) {
            for (p<T>.d dVar : this.f148) {
                try {
                    Object[] objArr = new Object[((d) dVar).f152.length];
                    WeakReference[] weakReferenceArr = ((d) dVar).f152;
                    int length = weakReferenceArr.length;
                    int i = 0;
                    int i2 = 0;
                    while (i < length) {
                        objArr[i2] = weakReferenceArr[i].get();
                        i++;
                        i2++;
                    }
                    ((d) dVar).f153.invoke(this.f150, objArr);
                } catch (Exception e2) {
                    o.m131(e2);
                }
            }
            this.f148.clear();
        }
    }
}
