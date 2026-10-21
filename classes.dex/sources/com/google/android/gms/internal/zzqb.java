package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.BinderThread;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzqf;
import com.google.android.gms.signin.internal.SignInResponse;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes.dex */
public class zzqb implements zzqe {
    private final Context mContext;
    private final Api.zza<? extends zzvx, zzvy> rY;
    private com.google.android.gms.common.internal.zzq tA;
    private boolean tB;
    private boolean tC;
    private final com.google.android.gms.common.internal.zzg tD;
    private final Map<Api<?>, Integer> tE;
    private final Lock th;
    private final zzqf tm;
    private final com.google.android.gms.common.zzc tp;
    private ConnectionResult tq;
    private int tr;
    private int tt;
    private zzvx tw;
    private int tx;
    private boolean ty;
    private boolean tz;
    private int ts = 0;
    private final Bundle tu = new Bundle();
    private final Set<Api.zzc> tv = new HashSet();
    private ArrayList<Future<?>> tF = new ArrayList<>();

    private static class zza implements zzd.zzf {
        private final Api<?> pD;
        private final int sV;
        private final WeakReference<zzqb> tH;

        public zza(zzqb zzqbVar, Api<?> api, int i) {
            this.tH = new WeakReference<>(zzqbVar);
            this.pD = api;
            this.sV = i;
        }

        @Override // com.google.android.gms.common.internal.zzd.zzf
        public void zzh(@NonNull ConnectionResult connectionResult) {
            zzqb zzqbVar = this.tH.get();
            if (zzqbVar == null) {
                return;
            }
            com.google.android.gms.common.internal.zzab.zza(Looper.myLooper() == zzqbVar.tm.sX.getLooper(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
            zzqbVar.th.lock();
            try {
                if (zzqbVar.zzfg(0)) {
                    if (!connectionResult.isSuccess()) {
                        zzqbVar.zzb(connectionResult, this.pD, this.sV);
                    }
                    if (zzqbVar.zzapj()) {
                        zzqbVar.zzapk();
                    }
                }
            } finally {
                zzqbVar.th.unlock();
            }
        }
    }

    private class zzb extends zzf {
        private final Map<Api.zze, zza> tI;

        public zzb(Map<Api.zze, zza> map) {
            super();
            this.tI = map;
        }

        @Override // com.google.android.gms.internal.zzqb.zzf
        @WorkerThread
        public void zzapi() {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4 = true;
            Iterator<Api.zze> it = this.tI.keySet().iterator();
            boolean z5 = true;
            boolean z6 = false;
            while (true) {
                if (!it.hasNext()) {
                    z4 = z6;
                    z = false;
                    break;
                }
                Api.zze next = it.next();
                if (!next.zzanr()) {
                    z2 = false;
                    z3 = z6;
                } else if (this.tI.get(next).sV == 0) {
                    z = true;
                    break;
                } else {
                    z2 = z5;
                    z3 = true;
                }
                z6 = z3;
                z5 = z2;
            }
            int iIsGooglePlayServicesAvailable = z4 ? zzqb.this.tp.isGooglePlayServicesAvailable(zzqb.this.mContext) : 0;
            if (iIsGooglePlayServicesAvailable != 0 && (z || z5)) {
                final ConnectionResult connectionResult = new ConnectionResult(iIsGooglePlayServicesAvailable, null);
                zzqb.this.tm.zza(new zzqf.zza(zzqb.this) { // from class: com.google.android.gms.internal.zzqb.zzb.1
                    @Override // com.google.android.gms.internal.zzqf.zza
                    public void zzapi() {
                        zzqb.this.zzg(connectionResult);
                    }
                });
                return;
            }
            if (zzqb.this.ty) {
                zzqb.this.tw.connect();
            }
            for (Api.zze zzeVar : this.tI.keySet()) {
                final zza zzaVar = this.tI.get(zzeVar);
                if (!zzeVar.zzanr() || iIsGooglePlayServicesAvailable == 0) {
                    zzeVar.zza(zzaVar);
                } else {
                    zzqb.this.tm.zza(new zzqf.zza(zzqb.this) { // from class: com.google.android.gms.internal.zzqb.zzb.2
                        @Override // com.google.android.gms.internal.zzqf.zza
                        public void zzapi() {
                            zzaVar.zzh(new ConnectionResult(16, null));
                        }
                    });
                }
            }
        }
    }

    private class zzc extends zzf {
        private final ArrayList<Api.zze> tM;

        public zzc(ArrayList<Api.zze> arrayList) {
            super();
            this.tM = arrayList;
        }

        @Override // com.google.android.gms.internal.zzqb.zzf
        @WorkerThread
        public void zzapi() {
            zzqb.this.tm.sX.tZ = zzqb.this.zzapp();
            Iterator<Api.zze> it = this.tM.iterator();
            while (it.hasNext()) {
                it.next().zza(zzqb.this.tA, zzqb.this.tm.sX.tZ);
            }
        }
    }

    private static class zzd extends com.google.android.gms.signin.internal.zzb {
        private final WeakReference<zzqb> tH;

        zzd(zzqb zzqbVar) {
            this.tH = new WeakReference<>(zzqbVar);
        }

        @Override // com.google.android.gms.signin.internal.zzb, com.google.android.gms.signin.internal.zzd
        @BinderThread
        public void zzb(final SignInResponse signInResponse) {
            final zzqb zzqbVar = this.tH.get();
            if (zzqbVar == null) {
                return;
            }
            zzqbVar.tm.zza(new zzqf.zza(zzqbVar) { // from class: com.google.android.gms.internal.zzqb.zzd.1
                @Override // com.google.android.gms.internal.zzqf.zza
                public void zzapi() {
                    zzqbVar.zza(signInResponse);
                }
            });
        }
    }

    private class zze implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
        private zze() {
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            zzqb.this.tw.zza(new zzd(zzqb.this));
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
            zzqb.this.th.lock();
            try {
                if (zzqb.this.zzf(connectionResult)) {
                    zzqb.this.zzapn();
                    zzqb.this.zzapk();
                } else {
                    zzqb.this.zzg(connectionResult);
                }
            } finally {
                zzqb.this.th.unlock();
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
        }
    }

    private abstract class zzf implements Runnable {
        private zzf() {
        }

        @Override // java.lang.Runnable
        @WorkerThread
        public void run() {
            zzqb.this.th.lock();
            try {
                if (Thread.interrupted()) {
                    return;
                }
                zzapi();
                return;
            } catch (RuntimeException e) {
                zzqb.this.tm.zza(e);
                return;
            } finally {
                zzqb.this.th.unlock();
            }
            zzqb.this.th.unlock();
        }

        @WorkerThread
        protected abstract void zzapi();
    }

    public zzqb(zzqf zzqfVar, com.google.android.gms.common.internal.zzg zzgVar, Map<Api<?>, Integer> map, com.google.android.gms.common.zzc zzcVar, Api.zza<? extends zzvx, zzvy> zzaVar, Lock lock, Context context) {
        this.tm = zzqfVar;
        this.tD = zzgVar;
        this.tE = map;
        this.tp = zzcVar;
        this.rY = zzaVar;
        this.th = lock;
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(SignInResponse signInResponse) {
        if (zzfg(0)) {
            ConnectionResult connectionResultZzatd = signInResponse.zzatd();
            if (!connectionResultZzatd.isSuccess()) {
                if (!zzf(connectionResultZzatd)) {
                    zzg(connectionResultZzatd);
                    return;
                } else {
                    zzapn();
                    zzapk();
                    return;
                }
            }
            ResolveAccountResponse resolveAccountResponseZzbzv = signInResponse.zzbzv();
            ConnectionResult connectionResultZzatd2 = resolveAccountResponseZzbzv.zzatd();
            if (!connectionResultZzatd2.isSuccess()) {
                String strValueOf = String.valueOf(connectionResultZzatd2);
                Log.wtf("GoogleApiClientConnecting", new StringBuilder(String.valueOf(strValueOf).length() + 48).append("Sign-in succeeded with resolve account failure: ").append(strValueOf).toString(), new Exception());
                zzg(connectionResultZzatd2);
            } else {
                this.tz = true;
                this.tA = resolveAccountResponseZzbzv.zzatc();
                this.tB = resolveAccountResponseZzbzv.zzate();
                this.tC = resolveAccountResponseZzbzv.zzatf();
                zzapk();
            }
        }
    }

    private boolean zza(int i, int i2, ConnectionResult connectionResult) {
        if (i2 != 1 || zze(connectionResult)) {
            return this.tq == null || i < this.tr;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzapj() {
        this.tt--;
        if (this.tt > 0) {
            return false;
        }
        if (this.tt < 0) {
            Log.i("GoogleApiClientConnecting", this.tm.sX.zzapv());
            Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            zzg(new ConnectionResult(8, null));
            return false;
        }
        if (this.tq == null) {
            return true;
        }
        this.tm.uq = this.tr;
        zzg(this.tq);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzapk() {
        if (this.tt != 0) {
            return;
        }
        if (!this.ty || this.tz) {
            zzapl();
        }
    }

    private void zzapl() {
        ArrayList arrayList = new ArrayList();
        this.ts = 1;
        this.tt = this.tm.tY.size();
        for (Api.zzc<?> zzcVar : this.tm.tY.keySet()) {
            if (!this.tm.un.containsKey(zzcVar)) {
                arrayList.add(this.tm.tY.get(zzcVar));
            } else if (zzapj()) {
                zzapm();
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.tF.add(zzqg.zzapz().submit(new zzc(arrayList)));
    }

    private void zzapm() {
        this.tm.zzapx();
        zzqg.zzapz().execute(new Runnable() { // from class: com.google.android.gms.internal.zzqb.1
            @Override // java.lang.Runnable
            public void run() {
                zzqb.this.tp.zzbp(zzqb.this.mContext);
            }
        });
        if (this.tw != null) {
            if (this.tB) {
                this.tw.zza(this.tA, this.tC);
            }
            zzbl(false);
        }
        Iterator<Api.zzc<?>> it = this.tm.un.keySet().iterator();
        while (it.hasNext()) {
            this.tm.tY.get(it.next()).disconnect();
        }
        this.tm.ur.zzm(this.tu.isEmpty() ? null : this.tu);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzapn() {
        this.ty = false;
        this.tm.sX.tZ = Collections.emptySet();
        for (Api.zzc<?> zzcVar : this.tv) {
            if (!this.tm.un.containsKey(zzcVar)) {
                this.tm.un.put(zzcVar, new ConnectionResult(17, null));
            }
        }
    }

    private void zzapo() {
        Iterator<Future<?>> it = this.tF.iterator();
        while (it.hasNext()) {
            it.next().cancel(true);
        }
        this.tF.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Set<Scope> zzapp() {
        if (this.tD == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(this.tD.zzasf());
        Map<Api<?>, zzg.zza> mapZzash = this.tD.zzash();
        for (Api<?> api : mapZzash.keySet()) {
            if (!this.tm.un.containsKey(api.zzanp())) {
                hashSet.addAll(mapZzash.get(api).dY);
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(ConnectionResult connectionResult, Api<?> api, int i) {
        if (i != 2) {
            int priority = api.zzanm().getPriority();
            if (zza(priority, i, connectionResult)) {
                this.tq = connectionResult;
                this.tr = priority;
            }
        }
        this.tm.un.put(api.zzanp(), connectionResult);
    }

    private void zzbl(boolean z) {
        if (this.tw != null) {
            if (this.tw.isConnected() && z) {
                this.tw.zzbzk();
            }
            this.tw.disconnect();
            this.tA = null;
        }
    }

    private boolean zze(ConnectionResult connectionResult) {
        return connectionResult.hasResolution() || this.tp.zzfa(connectionResult.getErrorCode()) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzf(ConnectionResult connectionResult) {
        if (this.tx != 2) {
            return this.tx == 1 && !connectionResult.hasResolution();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzfg(int i) {
        if (this.ts == i) {
            return true;
        }
        Log.i("GoogleApiClientConnecting", this.tm.sX.zzapv());
        String strValueOf = String.valueOf(this);
        Log.i("GoogleApiClientConnecting", new StringBuilder(String.valueOf(strValueOf).length() + 23).append("Unexpected callback in ").append(strValueOf).toString());
        Log.i("GoogleApiClientConnecting", new StringBuilder(33).append("mRemainingConnections=").append(this.tt).toString());
        String strValueOf2 = String.valueOf(zzfh(this.ts));
        String strValueOf3 = String.valueOf(zzfh(i));
        Log.wtf("GoogleApiClientConnecting", new StringBuilder(String.valueOf(strValueOf2).length() + 70 + String.valueOf(strValueOf3).length()).append("GoogleApiClient connecting is in step ").append(strValueOf2).append(" but received callback for step ").append(strValueOf3).toString(), new Exception());
        zzg(new ConnectionResult(8, null));
        return false;
    }

    private String zzfh(int i) {
        switch (i) {
            case 0:
                return "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
            case 1:
                return "STEP_GETTING_REMOTE_SERVICE";
            default:
                return "UNKNOWN";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzg(ConnectionResult connectionResult) {
        zzapo();
        zzbl(!connectionResult.hasResolution());
        this.tm.zzi(connectionResult);
        this.tm.ur.zzd(connectionResult);
    }

    @Override // com.google.android.gms.internal.zzqe
    public void begin() {
        this.tm.un.clear();
        this.ty = false;
        this.tq = null;
        this.ts = 0;
        this.tx = 2;
        this.tz = false;
        this.tB = false;
        HashMap map = new HashMap();
        boolean z = false;
        for (Api<?> api : this.tE.keySet()) {
            Api.zze zzeVar = this.tm.tY.get(api.zzanp());
            int iIntValue = this.tE.get(api).intValue();
            boolean z2 = (api.zzanm().getPriority() == 1) | z;
            if (zzeVar.zzafk()) {
                this.ty = true;
                if (iIntValue < this.tx) {
                    this.tx = iIntValue;
                }
                if (iIntValue != 0) {
                    this.tv.add(api.zzanp());
                }
            }
            map.put(zzeVar, new zza(this, api, iIntValue));
            z = z2;
        }
        if (z) {
            this.ty = false;
        }
        if (this.ty) {
            this.tD.zzc(Integer.valueOf(this.tm.sX.getSessionId()));
            zze zzeVar2 = new zze();
            this.tw = (zzvx) this.rY.zza(this.mContext, this.tm.sX.getLooper(), this.tD, this.tD.zzasl(), zzeVar2, zzeVar2);
        }
        this.tt = this.tm.tY.size();
        this.tF.add(zzqg.zzapz().submit(new zzb(map)));
    }

    @Override // com.google.android.gms.internal.zzqe
    public void connect() {
    }

    @Override // com.google.android.gms.internal.zzqe
    public boolean disconnect() {
        zzapo();
        zzbl(true);
        this.tm.zzi(null);
        return true;
    }

    @Override // com.google.android.gms.internal.zzqe
    public void onConnected(Bundle bundle) {
        if (zzfg(1)) {
            if (bundle != null) {
                this.tu.putAll(bundle);
            }
            if (zzapj()) {
                zzapm();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzqe
    public void onConnectionSuspended(int i) {
        zzg(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.internal.zzqe
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
        if (zzfg(1)) {
            zzb(connectionResult, api, i);
            if (zzapj()) {
                zzapm();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzqe
    public <A extends Api.zzb, R extends Result, T extends zzpr.zza<R, A>> T zzc(T t) {
        this.tm.sX.tS.add(t);
        return t;
    }

    @Override // com.google.android.gms.internal.zzqe
    public <A extends Api.zzb, T extends zzpr.zza<? extends Result, A>> T zzd(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
