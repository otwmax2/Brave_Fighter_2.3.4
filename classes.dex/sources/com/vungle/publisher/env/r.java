package com.vungle.publisher.env;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.vungle.publisher.VunglePubBase;
import com.vungle.publisher.as;
import com.vungle.publisher.bw;
import com.vungle.publisher.cf;
import com.vungle.publisher.ct;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.lp;
import com.vungle.publisher.qg;
import com.vungle.publisher.ql;
import com.vungle.publisher.ta;
import com.vungle.publisher.yy;
import com.vungle.publisher.zl;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class r {

    @Inject
    zl c;

    @Inject
    cf d;

    @Inject
    i e;

    @Inject
    qg f;

    @Inject
    lp g;

    @Inject
    ta h;

    @Inject
    bw i;

    @Inject
    k j;

    @Inject
    o k;

    @Inject
    SharedPreferences l;

    @Inject
    ct.a m;

    @Inject
    protected n n;

    @Inject
    protected WrapperFramework o;

    @Inject
    protected String p;
    private String r;
    private String t;
    private String u;
    public final AtomicBoolean a = new AtomicBoolean();
    public final AtomicBoolean b = new AtomicBoolean();
    private ConcurrentLinkedQueue<String> q = new ConcurrentLinkedQueue<>();
    private ConcurrentHashMap<String, String> s = new ConcurrentHashMap<>();
    private ConcurrentHashMap<String, Long> v = new ConcurrentHashMap<>();
    private final AtomicBoolean w = new AtomicBoolean();

    @Inject
    r() {
    }

    public boolean a() {
        boolean z = !TextUtils.isEmpty(yy.a("com.vungle.debug"));
        if (z) {
            Logger.d(Logger.AD_TAG, "in debug mode");
        } else {
            Logger.v(Logger.AD_TAG, "not in debug mode");
        }
        return z;
    }

    public void a(boolean z) {
        this.w.set(z);
    }

    public boolean a(boolean z, boolean z2) {
        return this.w.compareAndSet(z, z2);
    }

    public boolean b() {
        return this.l.getBoolean("IsVgAppInstalled", false);
    }

    public void b(boolean z) {
        this.l.edit().putBoolean("IsVgAppInstalled", z).apply();
    }

    public void c() {
        Logger.d(Logger.AD_TAG, "onDeveloperActivityResume()");
        g();
        d();
    }

    public void d() {
        for (com.vungle.publisher.s sVar : this.k.f()) {
            if (this.m.b(sVar.a).size() > 0) {
                Logger.d(Logger.AD_TAG, "Refreshing ad availability on placement: " + sVar.a);
                this.f.a(new as(sVar.a));
            }
        }
    }

    public void e() {
        Logger.d(Logger.AD_TAG, "onAdActivityResume()");
        g();
        this.j.f();
    }

    public void f() {
        Logger.d(Logger.AD_TAG, "onAdActivityDestroy()");
        this.j.a(false);
    }

    public void g() {
        k();
        this.e.n();
    }

    public void h() {
        Logger.d(Logger.AD_TAG, "onDeveloperActivityPause()");
        j();
    }

    public void i() {
        Logger.d(Logger.AD_TAG, "onAdActivityPause()");
        this.j.a(j());
    }

    long j() {
        long jA = this.c.a();
        l();
        return jA;
    }

    void k() {
        this.g.a();
        this.h.a();
        this.d.a();
    }

    void l() {
        this.g.b();
        this.h.b();
        this.d.b();
    }

    public String m() {
        return this.q.poll();
    }

    public void a(String str) {
        this.q.add(str);
    }

    public boolean n() {
        return this.q.isEmpty();
    }

    public void b(String str) {
        this.r = str;
    }

    public String o() {
        return this.r;
    }

    public long p() {
        long j = Long.parseLong(this.l.getString("VgLoggingBatchId", AppEventsConstants.EVENT_PARAM_VALUE_NO));
        this.l.edit().putString("VgLoggingBatchId", String.valueOf(1 + j)).apply();
        return j;
    }

    public String q() {
        if (this.t == null) {
            if (this.l.contains("VgDeviceGuid")) {
                this.t = this.l.getString("VgDeviceGuid", null);
            } else {
                this.t = UUID.randomUUID().toString();
                this.l.edit().putString("VgDeviceGuid", this.t).apply();
            }
        }
        return this.t;
    }

    public String r() {
        String str = this.u;
        if (str == null) {
            StringBuilder sbAppend = new StringBuilder().append(VunglePubBase.VERSION);
            WrapperFramework wrapperFramework = this.o;
            String str2 = this.p;
            boolean z = (wrapperFramework == null || wrapperFramework.equals(WrapperFramework.none)) ? false : true;
            boolean z2 = (str2 == null || "".equals(str2)) ? false : true;
            if (z || z2) {
                sbAppend.append(';');
                if (z) {
                    sbAppend.append(wrapperFramework);
                }
                if (z2) {
                    sbAppend.append('/');
                    sbAppend.append(str2);
                }
            }
            String string = sbAppend.toString();
            this.u = string;
            return string;
        }
        return str;
    }

    public void a(String str, long j) {
        if (this.l != null) {
            if (this.v == null) {
                Logger.e(Logger.AD_TAG, "Should never happen as we initialize SleepMap after initComplete");
            }
            this.v.put(str, Long.valueOf(this.c.a() + j));
            s();
            this.i.b(s.a(this, str), bw.b.sleepWakeup, j);
            Logger.d(Logger.AD_TAG, "sleepTest: saveSleepMap: " + this.v.toString());
        }
    }

    /* synthetic */ void e(String str) {
        this.v.remove(str);
        s();
        Logger.d(Logger.AD_TAG, "sleepTest: saveSleepMap: remove: " + str + ":" + this.v.toString());
        if (this.k.e().equals(str)) {
            Logger.d(Logger.AD_TAG, "sleepTest: sending SleepWakeupEvent for auto-cache");
            this.f.a(new ql(str));
        }
    }

    public long c(String str) {
        long jLongValue = this.v.get(str) != null ? this.v.get(str).longValue() - this.c.a() : 0L;
        Logger.d(Logger.AD_TAG, "sleepTest: getSleepTimeRemaining: " + jLongValue);
        return Math.max(0L, jLongValue);
    }

    public ConcurrentHashMap<String, Long> a(List<String> list) {
        boolean z;
        try {
            if (this.l != null) {
                String string = this.l.getString("VgPlacementSleepMap", new JSONObject().toString());
                Logger.d(Logger.AD_TAG, "sleepTest: loadPlacementSleepMap: " + this.v.toString());
                Logger.d(Logger.AD_TAG, "sleepTest: loadPlacementSleepMap sharedPref: " + string);
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    long jLongValue = ((Long) jSONObject.get(next)).longValue() - this.c.a();
                    if (list == null || list.isEmpty() || (list.contains(next) && jLongValue >= 1)) {
                        z = false;
                    } else {
                        z = true;
                    }
                    if (z) {
                        this.v.remove(next);
                    } else {
                        this.v.put(next, Long.valueOf(((Long) jSONObject.get(next)).longValue()));
                        this.i.b(t.a(this, next), bw.b.sleepWakeup, jLongValue);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        Logger.d(Logger.AD_TAG, "sleepTest: loadPlacementSleepMap: afterLoad " + this.v.toString());
        s();
        return this.v;
    }

    /* synthetic */ void d(String str) {
        this.v.remove(str);
        s();
        Logger.d(Logger.AD_TAG, "sleepTest: saveSleepMap: remove: " + str + ":" + this.v.toString());
        if (this.k.e().equals(str)) {
            Logger.d(Logger.AD_TAG, "sleepTest: sending SleepWakeupEvent for auto-cache");
            this.f.a(new ql(str));
        }
    }

    private void s() {
        String string = new JSONObject(this.v).toString();
        SharedPreferences.Editor editorEdit = this.l.edit();
        editorEdit.remove("VgPlacementSleepMap").commit();
        editorEdit.putString("VgPlacementSleepMap", string);
        editorEdit.apply();
    }
}
