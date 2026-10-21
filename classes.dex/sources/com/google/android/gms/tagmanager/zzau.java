package com.google.android.gms.tagmanager;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
class zzau extends Thread implements zzat {
    private static zzau awu;
    private final LinkedBlockingQueue<Runnable> awt;
    private volatile zzav awv;
    private volatile boolean mClosed;
    private final Context mContext;
    private volatile boolean zzbti;

    private zzau(Context context) {
        super("GAThread");
        this.awt = new LinkedBlockingQueue<>();
        this.zzbti = false;
        this.mClosed = false;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        } else {
            this.mContext = context;
        }
        start();
    }

    static zzau zzdz(Context context) {
        if (awu == null) {
            awu = new zzau(context);
        }
        return awu;
    }

    private String zze(Throwable th) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        th.printStackTrace(printStream);
        printStream.flush();
        return new String(byteArrayOutputStream.toByteArray());
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (!this.mClosed) {
            try {
                try {
                    Runnable runnableTake = this.awt.take();
                    if (!this.zzbti) {
                        runnableTake.run();
                    }
                } catch (InterruptedException e) {
                    zzbn.zzcx(e.toString());
                }
            } catch (Throwable th) {
                String strValueOf = String.valueOf(zze(th));
                zzbn.e(strValueOf.length() != 0 ? "Error on Google TagManager Thread: ".concat(strValueOf) : new String("Error on Google TagManager Thread: "));
                zzbn.e("Google TagManager is shutting down.");
                this.zzbti = true;
            }
        }
    }

    void zzl(final String str, final long j) {
        zzo(new Runnable() { // from class: com.google.android.gms.tagmanager.zzau.1
            @Override // java.lang.Runnable
            public void run() {
                if (zzau.this.awv == null) {
                    zzdb zzdbVarZzccy = zzdb.zzccy();
                    zzdbVarZzccy.zza(zzau.this.mContext, this);
                    zzau.this.awv = zzdbVarZzccy.zzcdb();
                }
                zzau.this.awv.zzg(j, str);
            }
        });
    }

    @Override // com.google.android.gms.tagmanager.zzat
    public void zzo(Runnable runnable) {
        this.awt.add(runnable);
    }

    @Override // com.google.android.gms.tagmanager.zzat
    public void zzof(String str) {
        zzl(str, System.currentTimeMillis());
    }
}
