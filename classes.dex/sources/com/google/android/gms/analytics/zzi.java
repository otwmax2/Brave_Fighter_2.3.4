package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import com.google.android.gms.analytics.internal.zzao;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzly;
import com.google.android.gms.internal.zzmd;
import java.lang.Thread;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class zzi {
    private static volatile zzi zzctl;
    private final Context mContext;
    private final List<zzj> zzctm;
    private final zzd zzctn;
    private final zza zzcto;
    private volatile zzly zzctp;
    private Thread.UncaughtExceptionHandler zzctq;

    private class zza extends ThreadPoolExecutor {
        public zza() {
            super(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
            setThreadFactory(new zzb());
        }

        @Override // java.util.concurrent.AbstractExecutorService
        protected <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
            return new FutureTask<T>(runnable, t) { // from class: com.google.android.gms.analytics.zzi.zza.1
                @Override // java.util.concurrent.FutureTask
                protected void setException(Throwable th) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler = zzi.this.zzctq;
                    if (uncaughtExceptionHandler != null) {
                        uncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
                    } else if (Log.isLoggable("GAv4", 6)) {
                        String strValueOf = String.valueOf(th);
                        Log.e("GAv4", new StringBuilder(String.valueOf(strValueOf).length() + 37).append("MeasurementExecutor: job failed with ").append(strValueOf).toString());
                    }
                    super.setException(th);
                }
            };
        }
    }

    private static class zzb implements ThreadFactory {
        private static final AtomicInteger zzctu = new AtomicInteger();

        private zzb() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new zzc(runnable, new StringBuilder(23).append("measurement-").append(zzctu.incrementAndGet()).toString());
        }
    }

    private static class zzc extends Thread {
        zzc(Runnable runnable, String str) {
            super(runnable, str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    zzi(Context context) {
        Context applicationContext = context.getApplicationContext();
        zzab.zzaa(applicationContext);
        this.mContext = applicationContext;
        this.zzcto = new zza();
        this.zzctm = new CopyOnWriteArrayList();
        this.zzctn = new zzd();
    }

    public static zzi zzax(Context context) {
        zzab.zzaa(context);
        if (zzctl == null) {
            synchronized (zzi.class) {
                if (zzctl == null) {
                    zzctl = new zzi(context);
                }
            }
        }
        return zzctl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(zze zzeVar) {
        zzab.zzhk("deliver should be called from worker thread");
        zzab.zzb(zzeVar.zzwk(), "Measurement must be submitted");
        List<zzk> listZzwh = zzeVar.zzwh();
        if (listZzwh.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (zzk zzkVar : listZzwh) {
            Uri uriZzvu = zzkVar.zzvu();
            if (!hashSet.contains(uriZzvu)) {
                hashSet.add(uriZzvu);
                zzkVar.zzb(zzeVar);
            }
        }
    }

    public static void zzwu() {
        if (!(Thread.currentThread() instanceof zzc)) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public void zza(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzctq = uncaughtExceptionHandler;
    }

    public <V> Future<V> zzc(Callable<V> callable) {
        zzab.zzaa(callable);
        if (!(Thread.currentThread() instanceof zzc)) {
            return this.zzcto.submit(callable);
        }
        FutureTask futureTask = new FutureTask(callable);
        futureTask.run();
        return futureTask;
    }

    void zze(zze zzeVar) {
        if (zzeVar.zzwo()) {
            throw new IllegalStateException("Measurement prototype can't be submitted");
        }
        if (zzeVar.zzwk()) {
            throw new IllegalStateException("Measurement can only be submitted once");
        }
        final zze zzeVarZzwf = zzeVar.zzwf();
        zzeVarZzwf.zzwl();
        this.zzcto.execute(new Runnable() { // from class: com.google.android.gms.analytics.zzi.1
            @Override // java.lang.Runnable
            public void run() {
                zzeVarZzwf.zzwm().zza(zzeVarZzwf);
                Iterator it = zzi.this.zzctm.iterator();
                while (it.hasNext()) {
                    ((zzj) it.next()).zza(zzeVarZzwf);
                }
                zzi.this.zzb(zzeVarZzwf);
            }
        });
    }

    public void zzf(Runnable runnable) {
        zzab.zzaa(runnable);
        this.zzcto.submit(runnable);
    }

    public zzly zzws() {
        if (this.zzctp == null) {
            synchronized (this) {
                if (this.zzctp == null) {
                    zzly zzlyVar = new zzly();
                    PackageManager packageManager = this.mContext.getPackageManager();
                    String packageName = this.mContext.getPackageName();
                    zzlyVar.setAppId(packageName);
                    zzlyVar.setAppInstallerId(packageManager.getInstallerPackageName(packageName));
                    String str = null;
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(this.mContext.getPackageName(), 0);
                        if (packageInfo != null) {
                            CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                            if (!TextUtils.isEmpty(applicationLabel)) {
                                packageName = applicationLabel.toString();
                            }
                            str = packageInfo.versionName;
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        String strValueOf = String.valueOf(packageName);
                        Log.e("GAv4", strValueOf.length() != 0 ? "Error retrieving package info: appName set to ".concat(strValueOf) : new String("Error retrieving package info: appName set to "));
                    }
                    zzlyVar.setAppName(packageName);
                    zzlyVar.setAppVersion(str);
                    this.zzctp = zzlyVar;
                }
            }
        }
        return this.zzctp;
    }

    public zzmd zzwt() {
        DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
        zzmd zzmdVar = new zzmd();
        zzmdVar.setLanguage(zzao.zza(Locale.getDefault()));
        zzmdVar.zzbq(displayMetrics.widthPixels);
        zzmdVar.zzbr(displayMetrics.heightPixels);
        return zzmdVar;
    }
}
