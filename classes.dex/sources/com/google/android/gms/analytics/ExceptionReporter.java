package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.internal.zzae;
import java.lang.Thread;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ExceptionReporter implements Thread.UncaughtExceptionHandler {
    private final Context mContext;
    private final Thread.UncaughtExceptionHandler zzcsf;
    private final Tracker zzcsg;
    private ExceptionParser zzcsh;
    private GoogleAnalytics zzcsi;

    public ExceptionReporter(Tracker tracker, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Context context) {
        if (tracker == null) {
            throw new NullPointerException("tracker cannot be null");
        }
        if (context == null) {
            throw new NullPointerException("context cannot be null");
        }
        this.zzcsf = uncaughtExceptionHandler;
        this.zzcsg = tracker;
        this.zzcsh = new StandardExceptionParser(context, new ArrayList());
        this.mContext = context.getApplicationContext();
        String strValueOf = String.valueOf(uncaughtExceptionHandler == null ? "null" : uncaughtExceptionHandler.getClass().getName());
        zzae.v(strValueOf.length() != 0 ? "ExceptionReporter created, original handler is ".concat(strValueOf) : new String("ExceptionReporter created, original handler is "));
    }

    public ExceptionParser getExceptionParser() {
        return this.zzcsh;
    }

    public void setExceptionParser(ExceptionParser exceptionParser) {
        this.zzcsh = exceptionParser;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        String description = "UncaughtException";
        if (this.zzcsh != null) {
            description = this.zzcsh.getDescription(thread != null ? thread.getName() : null, th);
        }
        String strValueOf = String.valueOf(description);
        zzae.v(strValueOf.length() != 0 ? "Reporting uncaught exception: ".concat(strValueOf) : new String("Reporting uncaught exception: "));
        this.zzcsg.send(new HitBuilders.ExceptionBuilder().setDescription(description).setFatal(true).build());
        GoogleAnalytics googleAnalyticsZzvx = zzvx();
        googleAnalyticsZzvx.dispatchLocalHits();
        googleAnalyticsZzvx.zzwc();
        if (this.zzcsf != null) {
            zzae.v("Passing exception to the original handler");
            this.zzcsf.uncaughtException(thread, th);
        }
    }

    GoogleAnalytics zzvx() {
        if (this.zzcsi == null) {
            this.zzcsi = GoogleAnalytics.getInstance(this.mContext);
        }
        return this.zzcsi;
    }

    Thread.UncaughtExceptionHandler zzvy() {
        return this.zzcsf;
    }
}
