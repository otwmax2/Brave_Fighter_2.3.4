package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzadx;
import com.google.android.gms.internal.zzady;
import com.google.android.gms.internal.zzadz;
import com.google.android.gms.internal.zzah;
import com.google.android.gms.internal.zzpt;
import com.google.android.gms.tagmanager.zzbm;
import com.google.android.gms.tagmanager.zzci;
import com.google.android.gms.tagmanager.zzo;

/* JADX INFO: loaded from: classes.dex */
public class zzp extends zzpt<ContainerHolder> {
    private final String auZ;
    private long ave;
    private final TagManager avl;
    private final zzd avo;
    private final zzck avp;
    private final int avq;
    private zzf avr;
    private zzady avs;
    private volatile zzo avt;
    private volatile boolean avu;
    private zzah.zzj avv;
    private String avw;
    private zze avx;
    private zza avy;
    private final Context mContext;
    private final Looper zzahv;
    private final com.google.android.gms.common.util.zze zzaoa;

    /* JADX INFO: renamed from: com.google.android.gms.tagmanager.zzp$1, reason: invalid class name */
    class AnonymousClass1 {
    }

    interface zza {
        boolean zzb(Container container);
    }

    private class zzb implements zzbm<zzadx.zza> {
        private zzb() {
        }

        /* synthetic */ zzb(zzp zzpVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.google.android.gms.tagmanager.zzbm
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void onSuccess(zzadx.zza zzaVar) {
            zzah.zzj zzjVar;
            if (zzaVar.aDq != null) {
                zzjVar = zzaVar.aDq;
            } else {
                zzah.zzf zzfVar = zzaVar.zzwq;
                zzjVar = new zzah.zzj();
                zzjVar.zzwq = zzfVar;
                zzjVar.zzwp = null;
                zzjVar.zzwr = zzfVar.version;
            }
            zzp.this.zza(zzjVar, zzaVar.aDp, true);
        }

        @Override // com.google.android.gms.tagmanager.zzbm
        public void zza(zzbm.zza zzaVar) {
            if (zzp.this.avu) {
                return;
            }
            zzp.this.zzbq(0L);
        }

        @Override // com.google.android.gms.tagmanager.zzbm
        public void zzcaq() {
        }
    }

    private class zzc implements zzbm<zzah.zzj> {
        private zzc() {
        }

        /* synthetic */ zzc(zzp zzpVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.google.android.gms.tagmanager.zzbm
        public void zza(zzbm.zza zzaVar) {
            synchronized (zzp.this) {
                if (!zzp.this.isReady()) {
                    if (zzp.this.avt != null) {
                        zzp.this.zzc(zzp.this.avt);
                    } else {
                        zzp.this.zzc(zzp.this.zzc(Status.sj));
                    }
                }
            }
            zzp.this.zzbq(3600000L);
        }

        @Override // com.google.android.gms.tagmanager.zzbm
        /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public void onSuccess(zzah.zzj zzjVar) {
            synchronized (zzp.this) {
                if (zzjVar.zzwq == null) {
                    if (zzp.this.avv.zzwq == null) {
                        zzbn.e("Current resource is null; network resource is also null");
                        zzp.this.zzbq(3600000L);
                        return;
                    }
                    zzjVar.zzwq = zzp.this.avv.zzwq;
                }
                zzp.this.zza(zzjVar, zzp.this.zzaoa.currentTimeMillis(), false);
                zzbn.v(new StringBuilder(58).append("setting refresh time to current time: ").append(zzp.this.ave).toString());
                if (!zzp.this.zzcap()) {
                    zzp.this.zza(zzjVar);
                }
            }
        }

        @Override // com.google.android.gms.tagmanager.zzbm
        public void zzcaq() {
        }
    }

    private class zzd implements zzo.zza {
        private zzd() {
        }

        /* synthetic */ zzd(zzp zzpVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.google.android.gms.tagmanager.zzo.zza
        public String zzcaj() {
            return zzp.this.zzcaj();
        }

        @Override // com.google.android.gms.tagmanager.zzo.zza
        public void zzcal() {
            if (zzp.this.avp.zzade()) {
                zzp.this.zzbq(0L);
            }
        }

        @Override // com.google.android.gms.tagmanager.zzo.zza
        public void zzns(String str) {
            zzp.this.zzns(str);
        }
    }

    interface zze extends Releasable {
        void zza(zzbm<zzah.zzj> zzbmVar);

        void zzf(long j, String str);

        void zznv(String str);
    }

    interface zzf extends Releasable {
        void zza(zzbm<zzadx.zza> zzbmVar);

        void zzb(zzadx.zza zzaVar);

        void zzcar();

        zzadz.zzc zzxw(int i);
    }

    zzp(Context context, TagManager tagManager, Looper looper, String str, int i, zzf zzfVar, zze zzeVar, zzady zzadyVar, com.google.android.gms.common.util.zze zzeVar2, zzck zzckVar) {
        super(looper == null ? Looper.getMainLooper() : looper);
        this.mContext = context;
        this.avl = tagManager;
        this.zzahv = looper == null ? Looper.getMainLooper() : looper;
        this.auZ = str;
        this.avq = i;
        this.avr = zzfVar;
        this.avx = zzeVar;
        this.avs = zzadyVar;
        this.avo = new zzd(this, null);
        this.avv = new zzah.zzj();
        this.zzaoa = zzeVar2;
        this.avp = zzckVar;
        if (zzcap()) {
            zzns(zzci.zzcce().zzccg());
        }
    }

    public zzp(Context context, TagManager tagManager, Looper looper, String str, int i, zzs zzsVar) {
        this(context, tagManager, looper, str, i, new zzcu(context, str), new zzct(context, str, zzsVar), new zzady(context), com.google.android.gms.common.util.zzh.zzavi(), new zzbl(30, 900000L, 5000L, "refreshing", com.google.android.gms.common.util.zzh.zzavi()));
        this.avs.zzps(zzsVar.zzcas());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void zza(zzah.zzj zzjVar) {
        if (this.avr != null) {
            zzadx.zza zzaVar = new zzadx.zza();
            zzaVar.aDp = this.ave;
            zzaVar.zzwq = new zzah.zzf();
            zzaVar.aDq = zzjVar;
            this.avr.zzb(zzaVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0045 A[Catch: all -> 0x006d, TryCatch #0 {, blocks: (B:5:0x0006, B:6:0x0008, B:8:0x000e, B:10:0x0012, B:12:0x0045, B:13:0x0052, B:15:0x0058, B:17:0x0060, B:20:0x0067), top: B:25:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0067 A[Catch: all -> 0x006d, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0006, B:6:0x0008, B:8:0x000e, B:10:0x0012, B:12:0x0045, B:13:0x0052, B:15:0x0058, B:17:0x0060, B:20:0x0067), top: B:25:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void zza(com.google.android.gms.internal.zzah.zzj r9, long r10, boolean r12) {
        /*
            r8 = this;
            r6 = 43200000(0x2932e00, double:2.1343636E-316)
            monitor-enter(r8)
            if (r12 == 0) goto L8
            boolean r0 = r8.avu     // Catch: java.lang.Throwable -> L6d
        L8:
            boolean r0 = r8.isReady()     // Catch: java.lang.Throwable -> L6d
            if (r0 == 0) goto L12
            com.google.android.gms.tagmanager.zzo r0 = r8.avt     // Catch: java.lang.Throwable -> L6d
            if (r0 != 0) goto L12
        L12:
            r8.avv = r9     // Catch: java.lang.Throwable -> L6d
            r8.ave = r10     // Catch: java.lang.Throwable -> L6d
            r0 = 0
            r2 = 43200000(0x2932e00, double:2.1343636E-316)
            long r4 = r8.ave     // Catch: java.lang.Throwable -> L6d
            long r4 = r4 + r6
            com.google.android.gms.common.util.zze r6 = r8.zzaoa     // Catch: java.lang.Throwable -> L6d
            long r6 = r6.currentTimeMillis()     // Catch: java.lang.Throwable -> L6d
            long r4 = r4 - r6
            long r2 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L6d
            long r0 = java.lang.Math.max(r0, r2)     // Catch: java.lang.Throwable -> L6d
            r8.zzbq(r0)     // Catch: java.lang.Throwable -> L6d
            com.google.android.gms.tagmanager.Container r0 = new com.google.android.gms.tagmanager.Container     // Catch: java.lang.Throwable -> L6d
            android.content.Context r1 = r8.mContext     // Catch: java.lang.Throwable -> L6d
            com.google.android.gms.tagmanager.TagManager r2 = r8.avl     // Catch: java.lang.Throwable -> L6d
            com.google.android.gms.tagmanager.DataLayer r2 = r2.getDataLayer()     // Catch: java.lang.Throwable -> L6d
            java.lang.String r3 = r8.auZ     // Catch: java.lang.Throwable -> L6d
            r4 = r10
            r6 = r9
            r0.<init>(r1, r2, r3, r4, r6)     // Catch: java.lang.Throwable -> L6d
            com.google.android.gms.tagmanager.zzo r1 = r8.avt     // Catch: java.lang.Throwable -> L6d
            if (r1 != 0) goto L67
            com.google.android.gms.tagmanager.zzo r1 = new com.google.android.gms.tagmanager.zzo     // Catch: java.lang.Throwable -> L6d
            com.google.android.gms.tagmanager.TagManager r2 = r8.avl     // Catch: java.lang.Throwable -> L6d
            android.os.Looper r3 = r8.zzahv     // Catch: java.lang.Throwable -> L6d
            com.google.android.gms.tagmanager.zzp$zzd r4 = r8.avo     // Catch: java.lang.Throwable -> L6d
            r1.<init>(r2, r3, r0, r4)     // Catch: java.lang.Throwable -> L6d
            r8.avt = r1     // Catch: java.lang.Throwable -> L6d
        L52:
            boolean r1 = r8.isReady()     // Catch: java.lang.Throwable -> L6d
            if (r1 != 0) goto L65
            com.google.android.gms.tagmanager.zzp$zza r1 = r8.avy     // Catch: java.lang.Throwable -> L6d
            boolean r0 = r1.zzb(r0)     // Catch: java.lang.Throwable -> L6d
            if (r0 == 0) goto L65
            com.google.android.gms.tagmanager.zzo r0 = r8.avt     // Catch: java.lang.Throwable -> L6d
            r8.zzc(r0)     // Catch: java.lang.Throwable -> L6d
        L65:
            monitor-exit(r8)
            return
        L67:
            com.google.android.gms.tagmanager.zzo r1 = r8.avt     // Catch: java.lang.Throwable -> L6d
            r1.zza(r0)     // Catch: java.lang.Throwable -> L6d
            goto L52
        L6d:
            r0 = move-exception
            monitor-exit(r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzp.zza(com.google.android.gms.internal.zzah$zzj, long, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void zzbq(long j) {
        if (this.avx == null) {
            zzbn.zzcy("Refresh requested, but no network load scheduler.");
        } else {
            this.avx.zzf(j, this.avv.zzwr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzcap() {
        zzci zzciVarZzcce = zzci.zzcce();
        return (zzciVarZzcce.zzccf() == zzci.zza.CONTAINER || zzciVarZzcce.zzccf() == zzci.zza.CONTAINER_DEBUG) && this.auZ.equals(zzciVarZzcce.getContainerId());
    }

    private void zzcf(final boolean z) {
        AnonymousClass1 anonymousClass1 = null;
        this.avr.zza(new zzb(this, anonymousClass1));
        this.avx.zza(new zzc(this, anonymousClass1));
        zzadz.zzc zzcVarZzxw = this.avr.zzxw(this.avq);
        if (zzcVarZzxw != null) {
            this.avt = new zzo(this.avl, this.zzahv, new Container(this.mContext, this.avl.getDataLayer(), this.auZ, 0L, zzcVarZzxw), this.avo);
        }
        this.avy = new zza() { // from class: com.google.android.gms.tagmanager.zzp.3
            @Override // com.google.android.gms.tagmanager.zzp.zza
            public boolean zzb(Container container) {
                return z ? container.getLastRefreshTime() + 43200000 >= zzp.this.zzaoa.currentTimeMillis() : !container.isDefault();
            }
        };
        if (zzcap()) {
            this.avx.zzf(0L, "");
        } else {
            this.avr.zzcar();
        }
    }

    synchronized String zzcaj() {
        return this.avw;
    }

    public void zzcam() {
        zzadz.zzc zzcVarZzxw = this.avr.zzxw(this.avq);
        if (zzcVarZzxw != null) {
            zzc(new zzo(this.avl, this.zzahv, new Container(this.mContext, this.avl.getDataLayer(), this.auZ, 0L, zzcVarZzxw), new zzo.zza() { // from class: com.google.android.gms.tagmanager.zzp.2
                @Override // com.google.android.gms.tagmanager.zzo.zza
                public String zzcaj() {
                    return zzp.this.zzcaj();
                }

                @Override // com.google.android.gms.tagmanager.zzo.zza
                public void zzcal() {
                    zzbn.zzcy("Refresh ignored: container loaded as default only.");
                }

                @Override // com.google.android.gms.tagmanager.zzo.zza
                public void zzns(String str) {
                    zzp.this.zzns(str);
                }
            }));
        } else {
            zzbn.e("Default was requested, but no default container was found");
            zzc(zzc(new Status(10, "Default was requested, but no default container was found", null)));
        }
        this.avx = null;
        this.avr = null;
    }

    public void zzcan() {
        zzcf(false);
    }

    public void zzcao() {
        zzcf(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzpt
    /* JADX INFO: renamed from: zzec, reason: merged with bridge method [inline-methods] */
    public ContainerHolder zzc(Status status) {
        if (this.avt != null) {
            return this.avt;
        }
        if (status == Status.sj) {
            zzbn.e("timer expired: setting result to failure");
        }
        return new zzo(status);
    }

    synchronized void zzns(String str) {
        this.avw = str;
        if (this.avx != null) {
            this.avx.zznv(str);
        }
    }
}
