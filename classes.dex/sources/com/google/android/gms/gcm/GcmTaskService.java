package com.google.android.gms.gcm;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.support.annotation.CallSuper;
import android.util.Log;
import com.facebook.applinks.AppLinkData;
import com.google.android.gms.gcm.zzb;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class GcmTaskService extends Service {
    public static final String SERVICE_ACTION_EXECUTE_TASK = "com.google.android.gms.gcm.ACTION_TASK_READY";
    public static final String SERVICE_ACTION_INITIALIZE = "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE";
    public static final String SERVICE_PERMISSION = "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE";
    private final Set<String> aaH = new HashSet();
    private int aaI;

    private class zza extends Thread {
        private final zzb aaJ;
        private final Bundle mExtras;
        private final String mTag;

        zza(String str, IBinder iBinder, Bundle bundle) {
            super(String.valueOf(str).concat(" GCM Task"));
            this.mTag = str;
            this.aaJ = zzb.zza.zzgm(iBinder);
            this.mExtras = bundle;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            try {
                this.aaJ.zzsj(GcmTaskService.this.onRunTask(new TaskParams(this.mTag, this.mExtras)));
            } catch (RemoteException e) {
                String strValueOf = String.valueOf(this.mTag);
                Log.e("GcmTaskService", strValueOf.length() != 0 ? "Error reporting result of operation to scheduler for ".concat(strValueOf) : new String("Error reporting result of operation to scheduler for "));
            } finally {
                GcmTaskService.this.zzkd(this.mTag);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzkd(String str) {
        synchronized (this.aaH) {
            this.aaH.remove(str);
            if (this.aaH.size() == 0) {
                stopSelf(this.aaI);
            }
        }
    }

    private void zzsi(int i) {
        synchronized (this.aaH) {
            this.aaI = i;
            if (this.aaH.size() == 0) {
                stopSelf(this.aaI);
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onInitializeTasks() {
    }

    public abstract int onRunTask(TaskParams taskParams);

    @Override // android.app.Service
    @CallSuper
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null) {
            try {
                intent.setExtrasClassLoader(PendingCallback.class.getClassLoader());
                String action = intent.getAction();
                if (SERVICE_ACTION_EXECUTE_TASK.equals(action)) {
                    String stringExtra = intent.getStringExtra("tag");
                    Parcelable parcelableExtra = intent.getParcelableExtra("callback");
                    Bundle bundle = (Bundle) intent.getParcelableExtra(AppLinkData.ARGUMENTS_EXTRAS_KEY);
                    if (parcelableExtra == null || !(parcelableExtra instanceof PendingCallback)) {
                        String strValueOf = String.valueOf(getPackageName());
                        Log.e("GcmTaskService", new StringBuilder(String.valueOf(strValueOf).length() + 47 + String.valueOf(stringExtra).length()).append(strValueOf).append(" ").append(stringExtra).append(": Could not process request, invalid callback.").toString());
                    } else {
                        synchronized (this.aaH) {
                            this.aaH.add(stringExtra);
                        }
                        new zza(stringExtra, ((PendingCallback) parcelableExtra).getIBinder(), bundle).start();
                    }
                } else if (SERVICE_ACTION_INITIALIZE.equals(action)) {
                    onInitializeTasks();
                } else {
                    Log.e("GcmTaskService", new StringBuilder(String.valueOf(action).length() + 37).append("Unknown action received ").append(action).append(", terminating").toString());
                }
            } finally {
                zzsi(i2);
            }
        }
        return 2;
    }
}
