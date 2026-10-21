package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpr;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class zzrd {
    private static final zzpr.zza<?, ?>[] vt = new zzpr.zza[0];
    private final Map<Api.zzc<?>, Api.zze> tY;
    final Set<zzpr.zza<?, ?>> vu;
    private final zzb vv;

    private static class zza implements IBinder.DeathRecipient, zzb {
        private final WeakReference<zzpr.zza<?, ?>> vx;
        private final WeakReference<com.google.android.gms.common.api.zzd> vy;
        private final WeakReference<IBinder> vz;

        private zza(zzpr.zza<?, ?> zzaVar, com.google.android.gms.common.api.zzd zzdVar, IBinder iBinder) {
            this.vy = new WeakReference<>(zzdVar);
            this.vx = new WeakReference<>(zzaVar);
            this.vz = new WeakReference<>(iBinder);
        }

        private void zzaqd() {
            zzpr.zza<?, ?> zzaVar = this.vx.get();
            com.google.android.gms.common.api.zzd zzdVar = this.vy.get();
            if (zzdVar != null && zzaVar != null) {
                zzdVar.remove(zzaVar.zzaog().intValue());
            }
            IBinder iBinder = this.vz.get();
            if (this.vz != null) {
                iBinder.unlinkToDeath(this, 0);
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            zzaqd();
        }

        @Override // com.google.android.gms.internal.zzrd.zzb
        public void zzh(zzpr.zza<?, ?> zzaVar) {
            zzaqd();
        }
    }

    interface zzb {
        void zzh(zzpr.zza<?, ?> zzaVar);
    }

    public zzrd(Api.zzc<?> zzcVar, Api.zze zzeVar) {
        this.vu = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
        this.vv = new zzb() { // from class: com.google.android.gms.internal.zzrd.1
            @Override // com.google.android.gms.internal.zzrd.zzb
            public void zzh(zzpr.zza<?, ?> zzaVar) {
                zzrd.this.vu.remove(zzaVar);
                if (zzaVar.zzaog() == null || zzrd.zza(zzrd.this) == null) {
                    return;
                }
                zzrd.zza(zzrd.this).remove(zzaVar.zzaog().intValue());
            }
        };
        this.tY = new ArrayMap();
        this.tY.put(zzcVar, zzeVar);
    }

    public zzrd(Map<Api.zzc<?>, Api.zze> map) {
        this.vu = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
        this.vv = new zzb() { // from class: com.google.android.gms.internal.zzrd.1
            @Override // com.google.android.gms.internal.zzrd.zzb
            public void zzh(zzpr.zza<?, ?> zzaVar) {
                zzrd.this.vu.remove(zzaVar);
                if (zzaVar.zzaog() == null || zzrd.zza(zzrd.this) == null) {
                    return;
                }
                zzrd.zza(zzrd.this).remove(zzaVar.zzaog().intValue());
            }
        };
        this.tY = map;
    }

    static /* synthetic */ com.google.android.gms.common.api.zzd zza(zzrd zzrdVar) {
        return null;
    }

    private static void zza(zzpr.zza<?, ?> zzaVar, com.google.android.gms.common.api.zzd zzdVar, IBinder iBinder) {
        if (zzaVar.isReady()) {
            zzaVar.zza(new zza(zzaVar, zzdVar, iBinder));
            return;
        }
        if (iBinder == null || !iBinder.isBinderAlive()) {
            zzaVar.zza((zzb) null);
            zzaVar.cancel();
            zzdVar.remove(zzaVar.zzaog().intValue());
        } else {
            zza zzaVar2 = new zza(zzaVar, zzdVar, iBinder);
            zzaVar.zza(zzaVar2);
            try {
                iBinder.linkToDeath(zzaVar2, 0);
            } catch (RemoteException e) {
                zzaVar.cancel();
                zzdVar.remove(zzaVar.zzaog().intValue());
            }
        }
    }

    public void dump(PrintWriter printWriter) {
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.vu.size());
    }

    public void release() {
        for (zzpr.zza zzaVar : (zzpr.zza[]) this.vu.toArray(vt)) {
            zzaVar.zza((zzb) null);
            if (zzaVar.zzaog() != null) {
                zzaVar.zzaoo();
                zza(zzaVar, null, this.tY.get(zzaVar.zzanp()).zzans());
                this.vu.remove(zzaVar);
            } else if (zzaVar.zzaos()) {
                this.vu.remove(zzaVar);
            }
        }
    }

    public void zzaqv() {
        for (zzpr.zza zzaVar : (zzpr.zza[]) this.vu.toArray(vt)) {
            zzaVar.zzaa(new Status(8, "The connection to Google Play services was lost"));
        }
    }

    public boolean zzaqw() {
        for (zzpr.zza zzaVar : (zzpr.zza[]) this.vu.toArray(vt)) {
            if (!zzaVar.isReady()) {
                return true;
            }
        }
        return false;
    }

    <A extends Api.zzb> void zzg(zzpr.zza<? extends Result, A> zzaVar) {
        this.vu.add(zzaVar);
        zzaVar.zza(this.vv);
    }
}
