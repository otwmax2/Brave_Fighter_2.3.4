package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.support.annotation.BinderThread;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzt;
import com.google.android.gms.common.internal.zzu;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzd<T extends IInterface> {
    public static final String[] xt = {"service_esmobile", "service_googleme"};
    private final Context mContext;
    final Handler mHandler;
    private final com.google.android.gms.common.zzc tp;
    private int xb;
    private long xc;
    private long xd;
    private int xe;
    private long xf;
    private final zzm xg;
    private final Object xh;
    private zzu xi;
    private zzf xj;
    private T xk;
    private final ArrayList<zze<?>> xl;
    private zzh xm;
    private int xn;
    private final zzb xo;
    private final zzc xp;
    private final int xq;
    private final String xr;
    protected AtomicInteger xs;
    private final Looper zzahv;
    private final Object zzail;

    private abstract class zza extends zze<Boolean> {
        public final int statusCode;
        public final Bundle xu;

        @BinderThread
        protected zza(int i, Bundle bundle) {
            super(true);
            this.statusCode = i;
            this.xu = bundle;
        }

        protected abstract boolean zzarz();

        @Override // com.google.android.gms.common.internal.zzd.zze
        protected void zzasa() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.internal.zzd.zze
        /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
        public void zzx(Boolean bool) {
            if (bool == null) {
                zzd.this.zzb(1, null);
                return;
            }
            switch (this.statusCode) {
                case 0:
                    if (zzarz()) {
                        return;
                    }
                    zzd.this.zzb(1, null);
                    zzl(new ConnectionResult(8, null));
                    return;
                case 10:
                    zzd.this.zzb(1, null);
                    throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
                default:
                    zzd.this.zzb(1, null);
                    zzl(new ConnectionResult(this.statusCode, this.xu != null ? (PendingIntent) this.xu.getParcelable("pendingIntent") : null));
                    return;
            }
        }

        protected abstract void zzl(ConnectionResult connectionResult);
    }

    public interface zzb {
        void onConnected(@Nullable Bundle bundle);

        void onConnectionSuspended(int i);
    }

    public interface zzc {
        void onConnectionFailed(@NonNull ConnectionResult connectionResult);
    }

    /* JADX INFO: renamed from: com.google.android.gms.common.internal.zzd$zzd, reason: collision with other inner class name */
    final class HandlerC0072zzd extends Handler {
        public HandlerC0072zzd(Looper looper) {
            super(looper);
        }

        private void zza(Message message) {
            zze zzeVar = (zze) message.obj;
            zzeVar.zzasa();
            zzeVar.unregister();
        }

        private boolean zzb(Message message) {
            return message.what == 2 || message.what == 1 || message.what == 5;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (zzd.this.xs.get() != message.arg1) {
                if (zzb(message)) {
                    zza(message);
                    return;
                }
                return;
            }
            if ((message.what == 1 || message.what == 5) && !zzd.this.isConnecting()) {
                zza(message);
                return;
            }
            if (message.what == 3) {
                ConnectionResult connectionResult = new ConnectionResult(message.arg2, message.obj instanceof PendingIntent ? (PendingIntent) message.obj : null);
                zzd.this.xj.zzh(connectionResult);
                zzd.this.onConnectionFailed(connectionResult);
                return;
            }
            if (message.what == 4) {
                zzd.this.zzb(4, null);
                if (zzd.this.xo != null) {
                    zzd.this.xo.onConnectionSuspended(message.arg2);
                }
                zzd.this.onConnectionSuspended(message.arg2);
                zzd.this.zza(4, 1, (IInterface) null);
                return;
            }
            if (message.what == 2 && !zzd.this.isConnected()) {
                zza(message);
            } else if (zzb(message)) {
                ((zze) message.obj).zzasb();
            } else {
                Log.wtf("GmsClient", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
            }
        }
    }

    protected abstract class zze<TListener> {
        private TListener mListener;
        private boolean xw = false;

        public zze(TListener tlistener) {
            this.mListener = tlistener;
        }

        public void unregister() {
            zzasc();
            synchronized (zzd.this.xl) {
                zzd.this.xl.remove(this);
            }
        }

        protected abstract void zzasa();

        public void zzasb() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.mListener;
                if (this.xw) {
                    String strValueOf = String.valueOf(this);
                    Log.w("GmsClient", new StringBuilder(String.valueOf(strValueOf).length() + 47).append("Callback proxy ").append(strValueOf).append(" being reused. This is not safe.").toString());
                }
            }
            if (tlistener != null) {
                try {
                    zzx(tlistener);
                } catch (RuntimeException e) {
                    zzasa();
                    throw e;
                }
            } else {
                zzasa();
            }
            synchronized (this) {
                this.xw = true;
            }
            unregister();
        }

        public void zzasc() {
            synchronized (this) {
                this.mListener = null;
            }
        }

        protected abstract void zzx(TListener tlistener);
    }

    public interface zzf {
        void zzh(@NonNull ConnectionResult connectionResult);
    }

    public static final class zzg extends zzt.zza {
        private zzd xx;
        private final int xy;

        public zzg(@NonNull zzd zzdVar, int i) {
            this.xx = zzdVar;
            this.xy = i;
        }

        private void zzasd() {
            this.xx = null;
        }

        @Override // com.google.android.gms.common.internal.zzt
        @BinderThread
        public void zza(int i, @NonNull IBinder iBinder, @Nullable Bundle bundle) {
            zzab.zzb(this.xx, "onPostInitComplete can be called only once per call to getRemoteService");
            this.xx.zza(i, iBinder, bundle, this.xy);
            zzasd();
        }

        @Override // com.google.android.gms.common.internal.zzt
        @BinderThread
        public void zzb(int i, @Nullable Bundle bundle) {
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        }
    }

    public final class zzh implements ServiceConnection {
        private final int xy;

        public zzh(int i) {
            this.xy = i;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            zzab.zzb(iBinder, "Expecting a valid IBinder");
            synchronized (zzd.this.xh) {
                zzd.this.xi = zzu.zza.zzdt(iBinder);
            }
            zzd.this.zza(0, (Bundle) null, this.xy);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (zzd.this.xh) {
                zzd.this.xi = null;
            }
            zzd.this.mHandler.sendMessage(zzd.this.mHandler.obtainMessage(4, this.xy, 1));
        }
    }

    protected class zzi implements zzf {
        public zzi() {
        }

        @Override // com.google.android.gms.common.internal.zzd.zzf
        public void zzh(@NonNull ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                zzd.this.zza((zzq) null, zzd.this.zzary());
            } else if (zzd.this.xp != null) {
                zzd.this.xp.onConnectionFailed(connectionResult);
            }
        }
    }

    protected final class zzj extends zza {
        public final IBinder xz;

        @BinderThread
        public zzj(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            this.xz = iBinder;
        }

        @Override // com.google.android.gms.common.internal.zzd.zza
        protected boolean zzarz() {
            try {
                String interfaceDescriptor = this.xz.getInterfaceDescriptor();
                if (!zzd.this.zzrb().equals(interfaceDescriptor)) {
                    String strValueOf = String.valueOf(zzd.this.zzrb());
                    Log.e("GmsClient", new StringBuilder(String.valueOf(strValueOf).length() + 34 + String.valueOf(interfaceDescriptor).length()).append("service descriptor mismatch: ").append(strValueOf).append(" vs. ").append(interfaceDescriptor).toString());
                    return false;
                }
                IInterface iInterfaceZzbb = zzd.this.zzbb(this.xz);
                if (iInterfaceZzbb == null || !zzd.this.zza(2, 3, iInterfaceZzbb)) {
                    return false;
                }
                Bundle bundleZzamc = zzd.this.zzamc();
                if (zzd.this.xo != null) {
                    zzd.this.xo.onConnected(bundleZzamc);
                }
                return true;
            } catch (RemoteException e) {
                Log.w("GmsClient", "service probably died");
                return false;
            }
        }

        @Override // com.google.android.gms.common.internal.zzd.zza
        protected void zzl(ConnectionResult connectionResult) {
            if (zzd.this.xp != null) {
                zzd.this.xp.onConnectionFailed(connectionResult);
            }
            zzd.this.onConnectionFailed(connectionResult);
        }
    }

    protected final class zzk extends zza {
        @BinderThread
        public zzk(int i, Bundle bundle) {
            super(i, bundle);
        }

        @Override // com.google.android.gms.common.internal.zzd.zza
        protected boolean zzarz() {
            zzd.this.xj.zzh(ConnectionResult.qR);
            return true;
        }

        @Override // com.google.android.gms.common.internal.zzd.zza
        protected void zzl(ConnectionResult connectionResult) {
            zzd.this.xj.zzh(connectionResult);
            zzd.this.onConnectionFailed(connectionResult);
        }
    }

    protected zzd(Context context, Looper looper, int i, zzb zzbVar, zzc zzcVar, String str) {
        this(context, looper, zzm.zzce(context), com.google.android.gms.common.zzc.zzand(), i, (zzb) zzab.zzaa(zzbVar), (zzc) zzab.zzaa(zzcVar), str);
    }

    protected zzd(Context context, Looper looper, zzm zzmVar, com.google.android.gms.common.zzc zzcVar, int i, zzb zzbVar, zzc zzcVar2, String str) {
        this.zzail = new Object();
        this.xh = new Object();
        this.xl = new ArrayList<>();
        this.xn = 1;
        this.xs = new AtomicInteger(0);
        this.mContext = (Context) zzab.zzb(context, "Context must not be null");
        this.zzahv = (Looper) zzab.zzb(looper, "Looper must not be null");
        this.xg = (zzm) zzab.zzb(zzmVar, "Supervisor must not be null");
        this.tp = (com.google.android.gms.common.zzc) zzab.zzb(zzcVar, "API availability must not be null");
        this.mHandler = new HandlerC0072zzd(looper);
        this.xq = i;
        this.xo = zzbVar;
        this.xp = zzcVar2;
        this.xr = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zza(int i, int i2, T t) {
        boolean z;
        synchronized (this.zzail) {
            if (this.xn != i) {
                z = false;
            } else {
                zzb(i2, t);
                z = true;
            }
        }
        return z;
    }

    private void zzarr() {
        if (this.xm != null) {
            String strValueOf = String.valueOf(zzra());
            String strValueOf2 = String.valueOf(zzarp());
            Log.e("GmsClient", new StringBuilder(String.valueOf(strValueOf).length() + 70 + String.valueOf(strValueOf2).length()).append("Calling connect() while still connected, missing disconnect() for ").append(strValueOf).append(" on ").append(strValueOf2).toString());
            this.xg.zzb(zzra(), zzarp(), this.xm, zzarq());
            this.xs.incrementAndGet();
        }
        this.xm = new zzh(this.xs.get());
        if (this.xg.zza(zzra(), zzarp(), this.xm, zzarq())) {
            return;
        }
        String strValueOf3 = String.valueOf(zzra());
        String strValueOf4 = String.valueOf(zzarp());
        Log.e("GmsClient", new StringBuilder(String.valueOf(strValueOf3).length() + 34 + String.valueOf(strValueOf4).length()).append("unable to connect to service: ").append(strValueOf3).append(" on ").append(strValueOf4).toString());
        zza(16, (Bundle) null, this.xs.get());
    }

    private void zzars() {
        if (this.xm != null) {
            this.xg.zzb(zzra(), zzarp(), this.xm, zzarq());
            this.xm = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(int i, T t) {
        zzab.zzbn((i == 3) == (t != null));
        synchronized (this.zzail) {
            this.xn = i;
            this.xk = t;
            zzc(i, t);
            switch (i) {
                case 1:
                    zzars();
                    break;
                case 2:
                    zzarr();
                    break;
                case 3:
                    zza(t);
                    break;
            }
        }
    }

    public void disconnect() {
        this.xs.incrementAndGet();
        synchronized (this.xl) {
            int size = this.xl.size();
            for (int i = 0; i < size; i++) {
                this.xl.get(i).zzasc();
            }
            this.xl.clear();
        }
        synchronized (this.xh) {
            this.xi = null;
        }
        zzb(1, null);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        T t;
        synchronized (this.zzail) {
            i = this.xn;
            t = this.xk;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        switch (i) {
            case 1:
                printWriter.print("DISCONNECTED");
                break;
            case 2:
                printWriter.print("CONNECTING");
                break;
            case 3:
                printWriter.print("CONNECTED");
                break;
            case 4:
                printWriter.print("DISCONNECTING");
                break;
            default:
                printWriter.print("UNKNOWN");
                break;
        }
        printWriter.append(" mService=");
        if (t == null) {
            printWriter.println("null");
        } else {
            printWriter.append((CharSequence) zzrb()).append("@").println(Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.xd > 0) {
            PrintWriter printWriterAppend = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j = this.xd;
            String strValueOf = String.valueOf(simpleDateFormat.format(new Date(this.xd)));
            printWriterAppend.println(new StringBuilder(String.valueOf(strValueOf).length() + 21).append(j).append(" ").append(strValueOf).toString());
        }
        if (this.xc > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            switch (this.xb) {
                case 1:
                    printWriter.append("CAUSE_SERVICE_DISCONNECTED");
                    break;
                case 2:
                    printWriter.append("CAUSE_NETWORK_LOST");
                    break;
                default:
                    printWriter.append((CharSequence) String.valueOf(this.xb));
                    break;
            }
            PrintWriter printWriterAppend2 = printWriter.append(" lastSuspendedTime=");
            long j2 = this.xc;
            String strValueOf2 = String.valueOf(simpleDateFormat.format(new Date(this.xc)));
            printWriterAppend2.println(new StringBuilder(String.valueOf(strValueOf2).length() + 21).append(j2).append(" ").append(strValueOf2).toString());
        }
        if (this.xf > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) CommonStatusCodes.getStatusCodeString(this.xe));
            PrintWriter printWriterAppend3 = printWriter.append(" lastFailedTime=");
            long j3 = this.xf;
            String strValueOf3 = String.valueOf(simpleDateFormat.format(new Date(this.xf)));
            printWriterAppend3.println(new StringBuilder(String.valueOf(strValueOf3).length() + 21).append(j3).append(" ").append(strValueOf3).toString());
        }
    }

    public Account getAccount() {
        return null;
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final Looper getLooper() {
        return this.zzahv;
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.zzail) {
            z = this.xn == 3;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.zzail) {
            z = this.xn == 2;
        }
        return z;
    }

    @CallSuper
    protected void onConnectionFailed(ConnectionResult connectionResult) {
        this.xe = connectionResult.getErrorCode();
        this.xf = System.currentTimeMillis();
    }

    @CallSuper
    protected void onConnectionSuspended(int i) {
        this.xb = i;
        this.xc = System.currentTimeMillis();
    }

    protected void zza(int i, @Nullable Bundle bundle, int i2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(5, i2, -1, new zzk(i, bundle)));
    }

    @BinderThread
    protected void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, i2, -1, new zzj(i, iBinder, bundle)));
    }

    @CallSuper
    protected void zza(@NonNull T t) {
        this.xd = System.currentTimeMillis();
    }

    public void zza(@NonNull zzf zzfVar) {
        this.xj = (zzf) zzab.zzb(zzfVar, "Connection progress callbacks cannot be null.");
        zzb(2, null);
    }

    public void zza(zzf zzfVar, ConnectionResult connectionResult) {
        this.xj = (zzf) zzab.zzb(zzfVar, "Connection progress callbacks cannot be null.");
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, this.xs.get(), connectionResult.getErrorCode(), connectionResult.getResolution()));
    }

    @WorkerThread
    public void zza(zzq zzqVar, Set<Scope> set) {
        try {
            GetServiceRequest getServiceRequestZzn = new GetServiceRequest(this.xq).zzhm(this.mContext.getPackageName()).zzn(zzaeu());
            if (set != null) {
                getServiceRequestZzn.zzf(set);
            }
            if (zzafk()) {
                getServiceRequestZzn.zzd(zzaru()).zzb(zzqVar);
            } else if (zzarx()) {
                getServiceRequestZzn.zzd(getAccount());
            }
            synchronized (this.xh) {
                if (this.xi != null) {
                    this.xi.zza(new zzg(this, this.xs.get()), getServiceRequestZzn);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e) {
            Log.w("GmsClient", "service died");
            zzfy(1);
        } catch (RemoteException e2) {
            Log.w("GmsClient", "Remote exception occurred", e2);
        }
    }

    protected Bundle zzaeu() {
        return new Bundle();
    }

    public boolean zzafk() {
        return false;
    }

    public boolean zzafz() {
        return false;
    }

    public Intent zzaga() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    public Bundle zzamc() {
        return null;
    }

    public boolean zzanr() {
        return true;
    }

    @Nullable
    public IBinder zzans() {
        IBinder iBinderAsBinder;
        synchronized (this.xh) {
            iBinderAsBinder = this.xi == null ? null : this.xi.asBinder();
        }
        return iBinderAsBinder;
    }

    protected String zzarp() {
        return "com.google.android.gms";
    }

    @Nullable
    protected final String zzarq() {
        return this.xr == null ? this.mContext.getClass().getName() : this.xr;
    }

    public void zzart() {
        int iIsGooglePlayServicesAvailable = this.tp.isGooglePlayServicesAvailable(this.mContext);
        if (iIsGooglePlayServicesAvailable == 0) {
            zza(new zzi());
            return;
        }
        zzb(1, null);
        this.xj = new zzi();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, this.xs.get(), iIsGooglePlayServicesAvailable));
    }

    public final Account zzaru() {
        return getAccount() != null ? getAccount() : new Account("<<default account>>", "com.google");
    }

    protected final void zzarv() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public final T zzarw() throws DeadObjectException {
        T t;
        synchronized (this.zzail) {
            if (this.xn == 4) {
                throw new DeadObjectException();
            }
            zzarv();
            zzab.zza(this.xk != null, "Client is connected but service is null");
            t = this.xk;
        }
        return t;
    }

    public boolean zzarx() {
        return false;
    }

    protected Set<Scope> zzary() {
        return Collections.EMPTY_SET;
    }

    @Nullable
    protected abstract T zzbb(IBinder iBinder);

    void zzc(int i, T t) {
    }

    public void zzfy(int i) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, this.xs.get(), i));
    }

    @NonNull
    protected abstract String zzra();

    @NonNull
    protected abstract String zzrb();
}
