package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.internal.zzab;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class zza implements ServiceConnection {
    boolean qP = false;
    private final BlockingQueue<IBinder> qQ = new LinkedBlockingQueue();

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.qQ.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }

    public IBinder zza(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        zzab.zzhk("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (this.qP) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.qP = true;
        IBinder iBinderPoll = this.qQ.poll(j, timeUnit);
        if (iBinderPoll == null) {
            throw new TimeoutException("Timed out waiting for the service connection");
        }
        return iBinderPoll;
    }

    public IBinder zzanc() throws InterruptedException {
        zzab.zzhk("BlockingServiceConnection.getService() called on main thread");
        if (this.qP) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.qP = true;
        return this.qQ.take();
    }
}
