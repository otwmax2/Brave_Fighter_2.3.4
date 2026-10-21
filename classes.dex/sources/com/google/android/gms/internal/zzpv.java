package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzqm;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes.dex */
final class zzpv implements zzqm {
    private final Context mContext;
    private final zzqd sX;
    private final zzqf sY;
    private final zzqf sZ;
    private final Map<Api.zzc<?>, zzqf> ta;
    private final Api.zze tc;
    private Bundle td;
    private final Lock th;
    private final Looper zzahv;
    private final Set<zzqy> tb = Collections.newSetFromMap(new WeakHashMap());
    private ConnectionResult te = null;
    private ConnectionResult tf = null;
    private boolean tg = false;
    private int ti = 0;

    private class zza implements zzqm.zza {
        private zza() {
        }

        @Override // com.google.android.gms.internal.zzqm.zza
        public void zzc(int i, boolean z) {
            zzpv.this.th.lock();
            try {
                if (zzpv.this.tg || zzpv.this.tf == null || !zzpv.this.tf.isSuccess()) {
                    zzpv.this.tg = false;
                    zzpv.this.zzb(i, z);
                } else {
                    zzpv.this.tg = true;
                    zzpv.this.sZ.onConnectionSuspended(i);
                }
            } finally {
                zzpv.this.th.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzqm.zza
        public void zzd(@NonNull ConnectionResult connectionResult) {
            zzpv.this.th.lock();
            try {
                zzpv.this.te = connectionResult;
                zzpv.this.zzapb();
            } finally {
                zzpv.this.th.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzqm.zza
        public void zzm(@Nullable Bundle bundle) {
            zzpv.this.th.lock();
            try {
                zzpv.this.zzl(bundle);
                zzpv.this.te = ConnectionResult.qR;
                zzpv.this.zzapb();
            } finally {
                zzpv.this.th.unlock();
            }
        }
    }

    private class zzb implements zzqm.zza {
        private zzb() {
        }

        @Override // com.google.android.gms.internal.zzqm.zza
        public void zzc(int i, boolean z) {
            zzpv.this.th.lock();
            try {
                if (zzpv.this.tg) {
                    zzpv.this.tg = false;
                    zzpv.this.zzb(i, z);
                } else {
                    zzpv.this.tg = true;
                    zzpv.this.sY.onConnectionSuspended(i);
                }
            } finally {
                zzpv.this.th.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzqm.zza
        public void zzd(@NonNull ConnectionResult connectionResult) {
            zzpv.this.th.lock();
            try {
                zzpv.this.tf = connectionResult;
                zzpv.this.zzapb();
            } finally {
                zzpv.this.th.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzqm.zza
        public void zzm(@Nullable Bundle bundle) {
            zzpv.this.th.lock();
            try {
                zzpv.this.tf = ConnectionResult.qR;
                zzpv.this.zzapb();
            } finally {
                zzpv.this.th.unlock();
            }
        }
    }

    private zzpv(Context context, zzqd zzqdVar, Lock lock, Looper looper, com.google.android.gms.common.zzc zzcVar, Map<Api.zzc<?>, Api.zze> map, Map<Api.zzc<?>, Api.zze> map2, com.google.android.gms.common.internal.zzg zzgVar, Api.zza<? extends zzvx, zzvy> zzaVar, Api.zze zzeVar, ArrayList<zzpu> arrayList, ArrayList<zzpu> arrayList2, Map<Api<?>, Integer> map3, Map<Api<?>, Integer> map4) {
        this.mContext = context;
        this.sX = zzqdVar;
        this.th = lock;
        this.zzahv = looper;
        this.tc = zzeVar;
        this.sY = new zzqf(context, this.sX, lock, looper, zzcVar, map2, null, map4, null, arrayList2, new zza());
        this.sZ = new zzqf(context, this.sX, lock, looper, zzcVar, map, zzgVar, map3, zzaVar, arrayList, new zzb());
        ArrayMap arrayMap = new ArrayMap();
        Iterator<Api.zzc<?>> it = map2.keySet().iterator();
        while (it.hasNext()) {
            arrayMap.put(it.next(), this.sY);
        }
        Iterator<Api.zzc<?>> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            arrayMap.put(it2.next(), this.sZ);
        }
        this.ta = Collections.unmodifiableMap(arrayMap);
    }

    public static zzpv zza(Context context, zzqd zzqdVar, Lock lock, Looper looper, com.google.android.gms.common.zzc zzcVar, Map<Api.zzc<?>, Api.zze> map, com.google.android.gms.common.internal.zzg zzgVar, Map<Api<?>, Integer> map2, Api.zza<? extends zzvx, zzvy> zzaVar, ArrayList<zzpu> arrayList) {
        Api.zze zzeVar = null;
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        for (Map.Entry<Api.zzc<?>, Api.zze> entry : map.entrySet()) {
            Api.zze value = entry.getValue();
            if (value.zzafz()) {
                zzeVar = value;
            }
            if (value.zzafk()) {
                arrayMap.put(entry.getKey(), value);
            } else {
                arrayMap2.put(entry.getKey(), value);
            }
        }
        com.google.android.gms.common.internal.zzab.zza(!arrayMap.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (Api<?> api : map2.keySet()) {
            Api.zzc<?> zzcVarZzanp = api.zzanp();
            if (arrayMap.containsKey(zzcVarZzanp)) {
                arrayMap3.put(api, map2.get(api));
            } else {
                if (!arrayMap2.containsKey(zzcVarZzanp)) {
                    throw new IllegalStateException("Each API in the apiTypeMap must have a corresponding client in the clients map.");
                }
                arrayMap4.put(api, map2.get(api));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (zzpu zzpuVar : arrayList) {
            if (arrayMap3.containsKey(zzpuVar.pD)) {
                arrayList2.add(zzpuVar);
            } else {
                if (!arrayMap4.containsKey(zzpuVar.pD)) {
                    throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the apiTypeMap");
                }
                arrayList3.add(zzpuVar);
            }
        }
        return new zzpv(context, zzqdVar, lock, looper, zzcVar, arrayMap, arrayMap2, zzgVar, zzaVar, zzeVar, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    private void zzapa() {
        this.tf = null;
        this.te = null;
        this.sY.connect();
        this.sZ.connect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzapb() {
        if (zzc(this.te)) {
            if (zzc(this.tf) || zzape()) {
                zzapc();
                return;
            }
            if (this.tf != null) {
                if (this.ti == 1) {
                    zzapd();
                    return;
                } else {
                    zzb(this.tf);
                    this.sY.disconnect();
                    return;
                }
            }
            return;
        }
        if (this.te != null && zzc(this.tf)) {
            this.sZ.disconnect();
            zzb(this.te);
        } else {
            if (this.te == null || this.tf == null) {
                return;
            }
            ConnectionResult connectionResult = this.te;
            if (this.sZ.uq < this.sY.uq) {
                connectionResult = this.tf;
            }
            zzb(connectionResult);
        }
    }

    private void zzapc() {
        switch (this.ti) {
            case 2:
                this.sX.zzm(this.td);
            case 1:
                zzapd();
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                break;
        }
        this.ti = 0;
    }

    private void zzapd() {
        Iterator<zzqy> it = this.tb.iterator();
        while (it.hasNext()) {
            it.next().zzafy();
        }
        this.tb.clear();
    }

    private boolean zzape() {
        return this.tf != null && this.tf.getErrorCode() == 4;
    }

    @Nullable
    private PendingIntent zzapf() {
        if (this.tc == null) {
            return null;
        }
        return PendingIntent.getActivity(this.mContext, this.sX.getSessionId(), this.tc.zzaga(), 134217728);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(int i, boolean z) {
        this.sX.zzc(i, z);
        this.tf = null;
        this.te = null;
    }

    private void zzb(ConnectionResult connectionResult) {
        switch (this.ti) {
            case 2:
                this.sX.zzd(connectionResult);
            case 1:
                zzapd();
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                break;
        }
        this.ti = 0;
    }

    private static boolean zzc(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    private boolean zze(zzpr.zza<? extends Result, ? extends Api.zzb> zzaVar) {
        Object objZzanp = zzaVar.zzanp();
        com.google.android.gms.common.internal.zzab.zzb(this.ta.containsKey(objZzanp), "GoogleApiClient is not configured to use the API required for this call.");
        return this.ta.get(objZzanp).equals(this.sZ);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzl(Bundle bundle) {
        if (this.td == null) {
            this.td = bundle;
        } else if (bundle != null) {
            this.td.putAll(bundle);
        }
    }

    @Override // com.google.android.gms.internal.zzqm
    public ConnectionResult blockingConnect() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.zzqm
    public ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.zzqm
    public void connect() {
        this.ti = 2;
        this.tg = false;
        zzapa();
    }

    @Override // com.google.android.gms.internal.zzqm
    public void disconnect() {
        this.tf = null;
        this.te = null;
        this.ti = 0;
        this.sY.disconnect();
        this.sZ.disconnect();
        zzapd();
    }

    @Override // com.google.android.gms.internal.zzqm
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.sZ.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.sY.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.internal.zzqm
    @Nullable
    public ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        return this.ta.get(api.zzanp()).equals(this.sZ) ? zzape() ? new ConnectionResult(4, zzapf()) : this.sZ.getConnectionResult(api) : this.sY.getConnectionResult(api);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    @Override // com.google.android.gms.internal.zzqm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isConnected() {
        /*
            r2 = this;
            r0 = 1
            java.util.concurrent.locks.Lock r1 = r2.th
            r1.lock()
            com.google.android.gms.internal.zzqf r1 = r2.sY     // Catch: java.lang.Throwable -> L26
            boolean r1 = r1.isConnected()     // Catch: java.lang.Throwable -> L26
            if (r1 == 0) goto L24
            boolean r1 = r2.zzaoz()     // Catch: java.lang.Throwable -> L26
            if (r1 != 0) goto L1e
            boolean r1 = r2.zzape()     // Catch: java.lang.Throwable -> L26
            if (r1 != 0) goto L1e
            int r1 = r2.ti     // Catch: java.lang.Throwable -> L26
            if (r1 != r0) goto L24
        L1e:
            java.util.concurrent.locks.Lock r1 = r2.th
            r1.unlock()
            return r0
        L24:
            r0 = 0
            goto L1e
        L26:
            r0 = move-exception
            java.util.concurrent.locks.Lock r1 = r2.th
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzpv.isConnected():boolean");
    }

    @Override // com.google.android.gms.internal.zzqm
    public boolean isConnecting() {
        this.th.lock();
        try {
            return this.ti == 2;
        } finally {
            this.th.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzqm
    public boolean zza(zzqy zzqyVar) {
        this.th.lock();
        try {
            if ((!isConnecting() && !isConnected()) || zzaoz()) {
                this.th.unlock();
                return false;
            }
            this.tb.add(zzqyVar);
            if (this.ti == 0) {
                this.ti = 1;
            }
            this.tf = null;
            this.sZ.connect();
            return true;
        } finally {
            this.th.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzqm
    public void zzaoc() {
        this.th.lock();
        try {
            boolean zIsConnecting = isConnecting();
            this.sZ.disconnect();
            this.tf = new ConnectionResult(4);
            if (zIsConnecting) {
                new Handler(this.zzahv).post(new Runnable() { // from class: com.google.android.gms.internal.zzpv.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zzpv.this.th.lock();
                        try {
                            zzpv.this.zzapb();
                        } finally {
                            zzpv.this.th.unlock();
                        }
                    }
                });
            } else {
                zzapd();
            }
        } finally {
            this.th.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzqm
    public void zzaoy() {
        this.sY.zzaoy();
        this.sZ.zzaoy();
    }

    public boolean zzaoz() {
        return this.sZ.isConnected();
    }

    @Override // com.google.android.gms.internal.zzqm
    public <A extends Api.zzb, R extends Result, T extends zzpr.zza<R, A>> T zzc(@NonNull T t) {
        if (!zze((zzpr.zza<? extends Result, ? extends Api.zzb>) t)) {
            return (T) this.sY.zzc(t);
        }
        if (!zzape()) {
            return (T) this.sZ.zzc(t);
        }
        t.zzz(new Status(4, null, zzapf()));
        return t;
    }

    @Override // com.google.android.gms.internal.zzqm
    public <A extends Api.zzb, T extends zzpr.zza<? extends Result, A>> T zzd(@NonNull T t) {
        if (!zze((zzpr.zza<? extends Result, ? extends Api.zzb>) t)) {
            return (T) this.sY.zzd(t);
        }
        if (!zzape()) {
            return (T) this.sZ.zzd(t);
        }
        t.zzz(new Status(4, null, zzapf()));
        return t;
    }
}
