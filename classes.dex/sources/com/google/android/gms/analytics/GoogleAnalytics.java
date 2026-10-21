package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.RequiresPermission;
import android.util.Log;
import com.google.android.gms.analytics.internal.zzae;
import com.google.android.gms.analytics.internal.zzam;
import com.google.android.gms.analytics.internal.zzan;
import com.google.android.gms.analytics.internal.zzap;
import com.google.android.gms.analytics.internal.zzy;
import com.google.android.gms.common.internal.zzab;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class GoogleAnalytics extends com.google.android.gms.analytics.zza {
    private static List<Runnable> zzcsj = new ArrayList();
    private boolean zzamr;
    private Set<zza> zzcsk;
    private boolean zzcsl;
    private boolean zzcsm;
    private volatile boolean zzcsn;
    private boolean zzcso;

    interface zza {
        void zzo(Activity activity);

        void zzp(Activity activity);
    }

    @TargetApi(14)
    class zzb implements Application.ActivityLifecycleCallbacks {
        zzb() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            GoogleAnalytics.this.zzm(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            GoogleAnalytics.this.zzn(activity);
        }
    }

    public GoogleAnalytics(com.google.android.gms.analytics.internal.zzf zzfVar) {
        super(zzfVar);
        this.zzcsk = new HashSet();
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public static GoogleAnalytics getInstance(Context context) {
        return com.google.android.gms.analytics.internal.zzf.zzay(context).zzzk();
    }

    public static void zzwa() {
        synchronized (GoogleAnalytics.class) {
            if (zzcsj != null) {
                Iterator<Runnable> it = zzcsj.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
                zzcsj = null;
            }
        }
    }

    private com.google.android.gms.analytics.internal.zzb zzwd() {
        return zzvq().zzwd();
    }

    private zzap zzwe() {
        return zzvq().zzwe();
    }

    public void dispatchLocalHits() {
        zzwd().zzyp();
    }

    @TargetApi(14)
    public void enableAutoActivityReports(Application application) {
        if (Build.VERSION.SDK_INT < 14 || this.zzcsl) {
            return;
        }
        application.registerActivityLifecycleCallbacks(new zzb());
        this.zzcsl = true;
    }

    public boolean getAppOptOut() {
        return this.zzcsn;
    }

    @Deprecated
    public Logger getLogger() {
        return zzae.getLogger();
    }

    public void initialize() {
        zzvz();
        this.zzamr = true;
    }

    public boolean isDryRunEnabled() {
        return this.zzcsm;
    }

    public boolean isInitialized() {
        return this.zzamr;
    }

    public Tracker newTracker(int i) {
        Tracker tracker;
        zzan zzanVarZzbx;
        synchronized (this) {
            tracker = new Tracker(zzvq(), null, null);
            if (i > 0 && (zzanVarZzbx = new zzam(zzvq()).zzbx(i)) != null) {
                tracker.zza(zzanVarZzbx);
            }
            tracker.initialize();
        }
        return tracker;
    }

    public Tracker newTracker(String str) {
        Tracker tracker;
        synchronized (this) {
            tracker = new Tracker(zzvq(), str, null);
            tracker.initialize();
        }
        return tracker;
    }

    public void reportActivityStart(Activity activity) {
        if (this.zzcsl) {
            return;
        }
        zzm(activity);
    }

    public void reportActivityStop(Activity activity) {
        if (this.zzcsl) {
            return;
        }
        zzn(activity);
    }

    public void setAppOptOut(boolean z) {
        this.zzcsn = z;
        if (this.zzcsn) {
            zzwd().zzyo();
        }
    }

    public void setDryRun(boolean z) {
        this.zzcsm = z;
    }

    public void setLocalDispatchPeriod(int i) {
        zzwd().setLocalDispatchPeriod(i);
    }

    @Deprecated
    public void setLogger(Logger logger) {
        zzae.setLogger(logger);
        if (this.zzcso) {
            return;
        }
        String str = zzy.zzczr.get();
        String str2 = zzy.zzczr.get();
        Log.i(str, new StringBuilder(String.valueOf(str2).length() + 112).append("GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.").append(str2).append(" DEBUG").toString());
        this.zzcso = true;
    }

    void zza(zza zzaVar) {
        this.zzcsk.add(zzaVar);
        Context context = zzvq().getContext();
        if (context instanceof Application) {
            enableAutoActivityReports((Application) context);
        }
    }

    void zzb(zza zzaVar) {
        this.zzcsk.remove(zzaVar);
    }

    void zzm(Activity activity) {
        Iterator<zza> it = this.zzcsk.iterator();
        while (it.hasNext()) {
            it.next().zzo(activity);
        }
    }

    void zzn(Activity activity) {
        Iterator<zza> it = this.zzcsk.iterator();
        while (it.hasNext()) {
            it.next().zzp(activity);
        }
    }

    void zzvz() {
        Logger logger;
        zzap zzapVarZzwe = zzwe();
        if (zzapVarZzwe.zzacr()) {
            getLogger().setLogLevel(zzapVarZzwe.getLogLevel());
        }
        if (zzapVarZzwe.zzacv()) {
            setDryRun(zzapVarZzwe.zzacw());
        }
        if (!zzapVarZzwe.zzacr() || (logger = zzae.getLogger()) == null) {
            return;
        }
        logger.setLogLevel(zzapVarZzwe.getLogLevel());
    }

    public String zzwb() {
        zzab.zzhk("getClientId can not be called from the main thread");
        return zzvq().zzzn().zzaav();
    }

    void zzwc() {
        zzwd().zzyq();
    }
}
