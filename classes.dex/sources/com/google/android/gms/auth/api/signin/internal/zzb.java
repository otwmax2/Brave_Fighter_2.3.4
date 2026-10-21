package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.support.v4.content.AsyncTaskLoader;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzqy;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class zzb extends AsyncTaskLoader<Void> implements zzqy {
    private Semaphore eb;
    private Set<GoogleApiClient> ec;

    public zzb(Context context, Set<GoogleApiClient> set) {
        super(context);
        this.eb = new Semaphore(0);
        this.ec = set;
    }

    @Override // android.support.v4.content.Loader
    protected void onStartLoading() {
        this.eb.drainPermits();
        forceLoad();
    }

    @Override // android.support.v4.content.AsyncTaskLoader
    /* JADX INFO: renamed from: zzafx, reason: merged with bridge method [inline-methods] */
    public Void loadInBackground() {
        int i = 0;
        Iterator<GoogleApiClient> it = this.ec.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                try {
                    this.eb.tryAcquire(i2, 5L, TimeUnit.SECONDS);
                    return null;
                } catch (InterruptedException e) {
                    Log.i("GACSignInLoader", "Unexpected InterruptedException", e);
                    Thread.currentThread().interrupt();
                    return null;
                }
            }
            i = it.next().zza(this) ? i2 + 1 : i2;
        }
    }

    @Override // com.google.android.gms.internal.zzqy
    public void zzafy() {
        this.eb.release();
    }
}
