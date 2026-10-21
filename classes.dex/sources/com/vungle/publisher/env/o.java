package com.vungle.publisher.env;

import android.content.SharedPreferences;
import com.vungle.publisher.VungleAdEventListener;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.pj;
import com.vungle.publisher.qi;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class o {

    @Inject
    pj.a b;

    @Inject
    SharedPreferences c;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private int i;
    private int j;
    private String k;
    final Map<VungleAdEventListener, qi> a = new HashMap();
    private String d = "isExceptionReportingEnabled";
    private List<com.vungle.publisher.s> l = new ArrayList();
    private ArrayList<String> m = new ArrayList<>();

    @Inject
    o() {
    }

    public void a(VungleAdEventListener... vungleAdEventListenerArr) {
        if (vungleAdEventListenerArr != null) {
            for (VungleAdEventListener vungleAdEventListener : vungleAdEventListenerArr) {
                a(vungleAdEventListener);
            }
        }
    }

    boolean a(VungleAdEventListener vungleAdEventListener) {
        if (vungleAdEventListener == null) {
            Logger.d(Logger.EVENT_TAG, "ignoring add null event listener");
        } else {
            z = this.a.containsKey(vungleAdEventListener) ? false : true;
            if (z) {
                Logger.d(Logger.EVENT_TAG, "adding event listener " + vungleAdEventListener);
                pj pjVarA = this.b.a(vungleAdEventListener);
                this.a.put(vungleAdEventListener, pjVarA);
                pjVarA.registerSticky();
            } else {
                Logger.d(Logger.EVENT_TAG, "already added event listener " + vungleAdEventListener);
            }
        }
        return z;
    }

    public void a() {
        Iterator<qi> it = this.a.values().iterator();
        while (it.hasNext()) {
            it.next().unregister();
        }
        this.a.clear();
    }

    public void b(VungleAdEventListener... vungleAdEventListenerArr) {
        if (vungleAdEventListenerArr != null) {
            for (VungleAdEventListener vungleAdEventListener : vungleAdEventListenerArr) {
                b(vungleAdEventListener);
            }
        }
    }

    boolean b(VungleAdEventListener vungleAdEventListener) {
        qi qiVarRemove = this.a.remove(vungleAdEventListener);
        boolean z = qiVarRemove != null;
        if (z) {
            Logger.d(Logger.CONFIG_TAG, "removing event listener " + vungleAdEventListener);
            qiVarRemove.unregister();
        } else {
            Logger.d(Logger.CONFIG_TAG, "event listener not found for remove " + vungleAdEventListener);
        }
        return z;
    }

    public void c(VungleAdEventListener... vungleAdEventListenerArr) {
        a();
        a(vungleAdEventListenerArr);
    }

    public boolean b() {
        return this.e;
    }

    public void a(boolean z) {
        Logger.d(Logger.CONFIG_TAG, (z ? "enabling" : "disabling") + " call to willPlayAd");
        this.e = z;
    }

    public int c() {
        Logger.d(Logger.CONFIG_TAG, "willPlayAd response timeout config " + this.i + " ms");
        return this.i;
    }

    public void a(int i) {
        Logger.d(Logger.CONFIG_TAG, "setting willPlayAd response timeout " + i + " ms");
        this.i = i;
    }

    public void b(boolean z) {
        Logger.d(Logger.CONFIG_TAG, "setting exception reporting enabled: " + z);
        this.c.edit().putBoolean(this.d, z).apply();
    }

    public void b(int i) {
        this.j = i;
    }

    public void a(String str) {
        this.k = str;
    }

    public void a(List<com.vungle.publisher.s> list) {
        this.l = list;
    }

    public com.vungle.publisher.s b(String str) {
        if (str != null) {
            for (com.vungle.publisher.s sVar : this.l) {
                if (str.equals(sVar.a)) {
                    return sVar;
                }
            }
        }
        return null;
    }

    public void b(List<String> list) {
        this.m.clear();
        this.m.addAll(list);
    }

    public ArrayList<String> d() {
        return this.m;
    }

    public String e() {
        for (com.vungle.publisher.s sVar : this.l) {
            if (sVar.b) {
                return sVar.a;
            }
        }
        return null;
    }

    public List<com.vungle.publisher.s> f() {
        return this.l;
    }

    public void a(Boolean bool) {
        this.f = bool.booleanValue();
    }

    public boolean g() {
        return this.f;
    }

    public void c(boolean z) {
        this.g = z;
    }

    public boolean h() {
        return this.g;
    }

    public boolean i() {
        return this.h;
    }

    public void b(Boolean bool) {
        this.h = bool.booleanValue();
    }
}
