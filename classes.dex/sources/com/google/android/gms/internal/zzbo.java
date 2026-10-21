package com.google.android.gms.internal;

import com.google.android.gms.internal.zzau;
import com.ironsource.sdk.precache.DownloadManager;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class zzbo {
    protected static final String TAG = zzbo.class.getSimpleName();
    private final String className;
    private final zzax zzaey;
    private final String zzahf;
    private List<Class> zzahi;
    private final int zzahg = 2;
    private volatile Method zzahh = null;
    private CountDownLatch zzahj = new CountDownLatch(1);

    public zzbo(zzax zzaxVar, String str, String str2, List<Class> list) {
        this.zzaey = zzaxVar;
        this.className = str;
        this.zzahf = str2;
        this.zzahi = new ArrayList(list);
        this.zzaey.zzce().submit(new Runnable() { // from class: com.google.android.gms.internal.zzbo.1
            @Override // java.lang.Runnable
            public void run() {
                zzbo.this.zzcz();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzcz() {
        try {
            Class clsLoadClass = this.zzaey.zzcf().loadClass(zzd(this.zzaey.zzch(), this.className));
            if (clsLoadClass == null) {
                return;
            }
            this.zzahh = clsLoadClass.getMethod(zzd(this.zzaey.zzch(), this.zzahf), (Class[]) this.zzahi.toArray(new Class[this.zzahi.size()]));
            if (this.zzahh == null) {
            }
        } catch (zzau.zza e) {
        } catch (UnsupportedEncodingException e2) {
        } catch (ClassNotFoundException e3) {
        } catch (NoSuchMethodException e4) {
        } catch (NullPointerException e5) {
        } finally {
            this.zzahj.countDown();
        }
    }

    private String zzd(byte[] bArr, String str) throws zzau.zza, UnsupportedEncodingException {
        return new String(this.zzaey.zzcg().zzc(bArr, str), DownloadManager.UTF8_CHARSET);
    }

    public Method zzda() {
        if (this.zzahh != null) {
            return this.zzahh;
        }
        try {
            if (this.zzahj.await(2L, TimeUnit.SECONDS)) {
                return this.zzahh;
            }
            return null;
        } catch (InterruptedException e) {
            return null;
        }
    }
}
