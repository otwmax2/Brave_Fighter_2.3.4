package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class zzpp extends zzps {
    private final SparseArray<zza> ss;

    private class zza implements GoogleApiClient.OnConnectionFailedListener {
        public final int st;
        public final GoogleApiClient su;
        public final GoogleApiClient.OnConnectionFailedListener sv;

        public zza(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            this.st = i;
            this.su = googleApiClient;
            this.sv = onConnectionFailedListener;
            googleApiClient.registerConnectionFailedListener(this);
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.append((CharSequence) str).append("GoogleApiClient #").print(this.st);
            printWriter.println(":");
            this.su.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
            String strValueOf = String.valueOf(connectionResult);
            Log.d("AutoManageHelper", new StringBuilder(String.valueOf(strValueOf).length() + 27).append("beginFailureResolution for ").append(strValueOf).toString());
            zzpp.this.zzb(connectionResult, this.st);
        }

        public void zzaom() {
            this.su.unregisterConnectionFailedListener(this);
            this.su.disconnect();
        }
    }

    private zzpp(zzqp zzqpVar) {
        super(zzqpVar);
        this.ss = new SparseArray<>();
        this.va.zza("AutoManageHelper", this);
    }

    public static zzpp zza(zzqn zzqnVar) {
        zzqp zzqpVarZzc = zzc(zzqnVar);
        zzpp zzppVar = (zzpp) zzqpVarZzc.zza("AutoManageHelper", zzpp.class);
        return zzppVar != null ? zzppVar : new zzpp(zzqpVarZzc);
    }

    @Override // com.google.android.gms.internal.zzqo
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.ss.size()) {
                return;
            }
            this.ss.valueAt(i2).dump(str, fileDescriptor, printWriter, strArr);
            i = i2 + 1;
        }
    }

    @Override // com.google.android.gms.internal.zzps, com.google.android.gms.internal.zzqo
    public void onStart() {
        super.onStart();
        boolean z = this.mStarted;
        String strValueOf = String.valueOf(this.ss);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(strValueOf).length() + 14).append("onStart ").append(z).append(" ").append(strValueOf).toString());
        if (this.sB) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.ss.size()) {
                return;
            }
            this.ss.valueAt(i2).su.connect();
            i = i2 + 1;
        }
    }

    @Override // com.google.android.gms.internal.zzps, com.google.android.gms.internal.zzqo
    public void onStop() {
        super.onStop();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.ss.size()) {
                return;
            }
            this.ss.valueAt(i2).su.disconnect();
            i = i2 + 1;
        }
    }

    public void zza(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        com.google.android.gms.common.internal.zzab.zzb(googleApiClient, "GoogleApiClient instance cannot be null");
        com.google.android.gms.common.internal.zzab.zza(this.ss.indexOfKey(i) < 0, new StringBuilder(54).append("Already managing a GoogleApiClient with id ").append(i).toString());
        Log.d("AutoManageHelper", new StringBuilder(54).append("starting AutoManage for client ").append(i).append(" ").append(this.mStarted).append(" ").append(this.sB).toString());
        this.ss.put(i, new zza(i, googleApiClient, onConnectionFailedListener));
        if (!this.mStarted || this.sB) {
            return;
        }
        String strValueOf = String.valueOf(googleApiClient);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(strValueOf).length() + 11).append("connecting ").append(strValueOf).toString());
        googleApiClient.connect();
    }

    @Override // com.google.android.gms.internal.zzps
    protected void zza(ConnectionResult connectionResult, int i) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        zza zzaVar = this.ss.get(i);
        if (zzaVar != null) {
            zzff(i);
            GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = zzaVar.sv;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzps
    protected void zzaol() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.ss.size()) {
                return;
            }
            this.ss.valueAt(i2).su.connect();
            i = i2 + 1;
        }
    }

    public void zzff(int i) {
        zza zzaVar = this.ss.get(i);
        this.ss.remove(i);
        if (zzaVar != null) {
            zzaVar.zzaom();
        }
    }
}
