package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.analytics.CampaignTrackingService;
import com.google.android.gms.internal.zzly;
import com.google.android.gms.internal.zzlz;
import com.google.android.gms.internal.zzmc;
import com.google.android.gms.internal.zzmh;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzl extends zzd {
    private boolean mStarted;
    private final zzj zzcyf;
    private final zzah zzcyg;
    private final zzag zzcyh;
    private final zzi zzcyi;
    private long zzcyj;
    private final zzt zzcyk;
    private final zzt zzcyl;
    private final zzal zzcym;
    private long zzcyn;
    private boolean zzcyo;

    protected zzl(zzf zzfVar, zzg zzgVar) {
        super(zzfVar);
        com.google.android.gms.common.internal.zzab.zzaa(zzgVar);
        this.zzcyj = Long.MIN_VALUE;
        this.zzcyh = zzgVar.zzk(zzfVar);
        this.zzcyf = zzgVar.zzm(zzfVar);
        this.zzcyg = zzgVar.zzn(zzfVar);
        this.zzcyi = zzgVar.zzo(zzfVar);
        this.zzcym = new zzal(zzyw());
        this.zzcyk = new zzt(zzfVar) { // from class: com.google.android.gms.analytics.internal.zzl.1
            @Override // com.google.android.gms.analytics.internal.zzt
            public void run() {
                zzl.this.zzaag();
            }
        };
        this.zzcyl = new zzt(zzfVar) { // from class: com.google.android.gms.analytics.internal.zzl.2
            @Override // com.google.android.gms.analytics.internal.zzt
            public void run() {
                zzl.this.zzaah();
            }
        };
    }

    private void zza(zzh zzhVar, zzlz zzlzVar) {
        com.google.android.gms.common.internal.zzab.zzaa(zzhVar);
        com.google.android.gms.common.internal.zzab.zzaa(zzlzVar);
        com.google.android.gms.analytics.zza zzaVar = new com.google.android.gms.analytics.zza(zzyu());
        zzaVar.zzdh(zzhVar.zzzp());
        zzaVar.enableAdvertisingIdCollection(zzhVar.zzzq());
        com.google.android.gms.analytics.zze zzeVarZzvr = zzaVar.zzvr();
        zzmh zzmhVar = (zzmh) zzeVarZzvr.zzb(zzmh.class);
        zzmhVar.zzdx("data");
        zzmhVar.zzap(true);
        zzeVarZzvr.zza(zzlzVar);
        zzmc zzmcVar = (zzmc) zzeVarZzvr.zzb(zzmc.class);
        zzly zzlyVar = (zzly) zzeVarZzvr.zzb(zzly.class);
        for (Map.Entry<String, String> entry : zzhVar.zzm().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if ("an".equals(key)) {
                zzlyVar.setAppName(value);
            } else if ("av".equals(key)) {
                zzlyVar.setAppVersion(value);
            } else if ("aid".equals(key)) {
                zzlyVar.setAppId(value);
            } else if ("aiid".equals(key)) {
                zzlyVar.setAppInstallerId(value);
            } else if ("uid".equals(key)) {
                zzmhVar.setUserId(value);
            } else {
                zzmcVar.set(key, value);
            }
        }
        zzb("Sending installation campaign to", zzhVar.zzzp(), zzlzVar);
        zzeVarZzvr.zzn(zzzb().zzadn());
        zzeVarZzvr.zzwj();
    }

    private void zzaae() {
        zzwu();
        Context context = zzyu().getContext();
        if (!zzaj.zzav(context)) {
            zzel("AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions.");
        } else if (!zzak.zzaw(context)) {
            zzem("AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!CampaignTrackingReceiver.zzav(context)) {
            zzel("CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
        } else {
            if (CampaignTrackingService.zzaw(context)) {
                return;
            }
            zzel("CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzaag() {
        zzb(new zzw() { // from class: com.google.android.gms.analytics.internal.zzl.4
            @Override // com.google.android.gms.analytics.internal.zzw
            public void zzd(Throwable th) {
                zzl.this.zzaam();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzaah() {
        try {
            this.zzcyf.zzzy();
            zzaam();
        } catch (SQLiteException e) {
            zzd("Failed to delete stale hits", e);
        }
        this.zzcyl.zzv(zzyy().zzace());
    }

    private boolean zzaan() {
        if (this.zzcyo) {
            return false;
        }
        return (!zzyy().zzabc() || zzyy().zzabd()) && zzaat() > 0;
    }

    private void zzaao() {
        zzv zzvVarZzza = zzza();
        if (zzvVarZzza.zzacm() && !zzvVarZzza.zzfc()) {
            long jZzzz = zzzz();
            if (jZzzz == 0 || Math.abs(zzyw().currentTimeMillis() - jZzzz) > zzyy().zzabm()) {
                return;
            }
            zza("Dispatch alarm scheduled (ms)", Long.valueOf(zzyy().zzabl()));
            zzvVarZzza.schedule();
        }
    }

    private void zzaap() {
        long jMin;
        zzaao();
        long jZzaat = zzaat();
        long jZzadp = zzzb().zzadp();
        if (jZzadp != 0) {
            jMin = jZzaat - Math.abs(zzyw().currentTimeMillis() - jZzadp);
            if (jMin <= 0) {
                jMin = Math.min(zzyy().zzabj(), jZzaat);
            }
        } else {
            jMin = Math.min(zzyy().zzabj(), jZzaat);
        }
        zza("Dispatch scheduled (ms)", Long.valueOf(jMin));
        if (!this.zzcyk.zzfc()) {
            this.zzcyk.zzv(jMin);
        } else {
            this.zzcyk.zzw(Math.max(1L, jMin + this.zzcyk.zzacj()));
        }
    }

    private void zzaaq() {
        zzaar();
        zzaas();
    }

    private void zzaar() {
        if (this.zzcyk.zzfc()) {
            zzei("All hits dispatched or no network/service. Going to power save mode");
        }
        this.zzcyk.cancel();
    }

    private void zzaas() {
        zzv zzvVarZzza = zzza();
        if (zzvVarZzza.zzfc()) {
            zzvVarZzza.cancel();
        }
    }

    private boolean zzep(String str) {
        return getContext().checkCallingOrSelfPermission(str) == 0;
    }

    protected void onServiceConnected() {
        zzwu();
        if (zzyy().zzabc()) {
            return;
        }
        zzaaj();
    }

    void start() {
        zzzg();
        com.google.android.gms.common.internal.zzab.zza(!this.mStarted, "Analytics backend already started");
        this.mStarted = true;
        zzyz().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzl.3
            @Override // java.lang.Runnable
            public void run() {
                zzl.this.zzaaf();
            }
        });
    }

    public long zza(zzh zzhVar, boolean z) {
        com.google.android.gms.common.internal.zzab.zzaa(zzhVar);
        zzzg();
        zzwu();
        try {
            try {
                this.zzcyf.beginTransaction();
                this.zzcyf.zza(zzhVar.zzzo(), zzhVar.zzwb());
                long jZzb = this.zzcyf.zzb(zzhVar.zzzo(), zzhVar.zzwb(), zzhVar.zzzp());
                if (z) {
                    zzhVar.zzp(1 + jZzb);
                } else {
                    zzhVar.zzp(jZzb);
                }
                this.zzcyf.zzb(zzhVar);
                this.zzcyf.setTransactionSuccessful();
                try {
                    return jZzb;
                } catch (SQLiteException e) {
                    return jZzb;
                }
            } catch (SQLiteException e2) {
                zze("Failed to update Analytics property", e2);
                try {
                    this.zzcyf.endTransaction();
                } catch (SQLiteException e3) {
                    zze("Failed to end transaction", e3);
                }
                return -1L;
            }
        } finally {
            try {
                this.zzcyf.endTransaction();
            } catch (SQLiteException e4) {
                zze("Failed to end transaction", e4);
            }
        }
    }

    public void zza(zzab zzabVar) {
        com.google.android.gms.common.internal.zzab.zzaa(zzabVar);
        com.google.android.gms.analytics.zzi.zzwu();
        zzzg();
        if (this.zzcyo) {
            zzej("Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions");
        } else {
            zza("Delivering hit", zzabVar);
        }
        zzab zzabVarZzf = zzf(zzabVar);
        zzaai();
        if (this.zzcyi.zzb(zzabVarZzf)) {
            zzej("Hit sent to the device AnalyticsService for delivery");
            return;
        }
        if (zzyy().zzabc()) {
            zzyx().zza(zzabVarZzf, "Service unavailable on package side");
            return;
        }
        try {
            this.zzcyf.zzc(zzabVarZzf);
            zzaam();
        } catch (SQLiteException e) {
            zze("Delivery failed to save hit to a database", e);
            zzyx().zza(zzabVarZzf, "deliver: failed to insert hit to database");
        }
    }

    public void zza(final zzw zzwVar, final long j) {
        com.google.android.gms.analytics.zzi.zzwu();
        zzzg();
        long jZzadp = zzzb().zzadp();
        zzb("Dispatching local hits. Elapsed time since last dispatch (ms)", Long.valueOf(jZzadp != 0 ? Math.abs(zzyw().currentTimeMillis() - jZzadp) : -1L));
        if (!zzyy().zzabc()) {
            zzaai();
        }
        try {
            if (zzaak()) {
                zzyz().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzl.5
                    @Override // java.lang.Runnable
                    public void run() {
                        zzl.this.zza(zzwVar, j);
                    }
                });
                return;
            }
            zzzb().zzadq();
            zzaam();
            if (zzwVar != null) {
                zzwVar.zzd(null);
            }
            if (this.zzcyn != j) {
                this.zzcyh.zzadi();
            }
        } catch (Throwable th) {
            zze("Local dispatch failed", th);
            zzzb().zzadq();
            zzaam();
            if (zzwVar != null) {
                zzwVar.zzd(th);
            }
        }
    }

    protected void zzaaf() {
        zzzg();
        if (!zzyy().zzabc()) {
            zzaae();
        }
        zzzb().zzadn();
        if (!zzep("android.permission.ACCESS_NETWORK_STATE")) {
            zzem("Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            zzaau();
        }
        if (!zzep("android.permission.INTERNET")) {
            zzem("Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            zzaau();
        }
        if (zzak.zzaw(getContext())) {
            zzei("AnalyticsService registered in the app manifest and enabled");
        } else if (zzyy().zzabc()) {
            zzem("Device AnalyticsService not registered! Hits will not be delivered reliably.");
        } else {
            zzel("AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!this.zzcyo && !zzyy().zzabc() && !this.zzcyf.isEmpty()) {
            zzaai();
        }
        zzaam();
    }

    protected void zzaai() {
        if (this.zzcyo || !zzyy().zzabe() || this.zzcyi.isConnected()) {
            return;
        }
        if (this.zzcym.zzx(zzyy().zzabz())) {
            this.zzcym.start();
            zzei("Connecting to service");
            if (this.zzcyi.connect()) {
                zzei("Connected to service");
                this.zzcym.clear();
                onServiceConnected();
            }
        }
    }

    public void zzaaj() {
        com.google.android.gms.analytics.zzi.zzwu();
        zzzg();
        zzyv();
        if (!zzyy().zzabe()) {
            zzel("Service client disabled. Can't dispatch local hits to device AnalyticsService");
        }
        if (!this.zzcyi.isConnected()) {
            zzei("Service not connected");
            return;
        }
        if (this.zzcyf.isEmpty()) {
            return;
        }
        zzei("Dispatching local hits to device AnalyticsService");
        while (true) {
            try {
                List<zzab> listZzr = this.zzcyf.zzr(zzyy().zzabn());
                if (listZzr.isEmpty()) {
                    zzaam();
                    return;
                }
                while (!listZzr.isEmpty()) {
                    zzab zzabVar = listZzr.get(0);
                    if (!this.zzcyi.zzb(zzabVar)) {
                        zzaam();
                        return;
                    }
                    listZzr.remove(zzabVar);
                    try {
                        this.zzcyf.zzs(zzabVar.zzacy());
                    } catch (SQLiteException e) {
                        zze("Failed to remove hit that was send for delivery", e);
                        zzaaq();
                        return;
                    }
                }
            } catch (SQLiteException e2) {
                zze("Failed to read hits from store", e2);
                zzaaq();
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0066, code lost:
    
        zzei("Store is empty, nothing to dispatch");
        zzaaq();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006e, code lost:
    
        r12.zzcyf.setTransactionSuccessful();
        r12.zzcyf.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0079, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007a, code lost:
    
        zze("Failed to commit local dispatch transaction", r0);
        zzaaq();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f9, code lost:
    
        if (r12.zzcyi.isConnected() == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0103, code lost:
    
        if (zzyy().zzabc() != false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0105, code lost:
    
        zzei("Service connected, sending hits to the service");
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x010e, code lost:
    
        if (r8.isEmpty() != false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0110, code lost:
    
        r0 = r8.get(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x011d, code lost:
    
        if (r12.zzcyi.zzb(r0) != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x011f, code lost:
    
        r0 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0126, code lost:
    
        if (r12.zzcyg.zzadj() == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0128, code lost:
    
        r8 = r12.zzcyg.zzs(r8);
        r9 = r8.iterator();
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0137, code lost:
    
        if (r9.hasNext() == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0139, code lost:
    
        r4 = java.lang.Math.max(r4, r9.next().longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0148, code lost:
    
        r4 = java.lang.Math.max(r4, r0.zzacy());
        r8.remove(r0);
        zzb("Hit sent do device AnalyticsService for delivery", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0158, code lost:
    
        r12.zzcyf.zzs(r0.zzacy());
        r3.add(java.lang.Long.valueOf(r0.zzacy()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x016d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x016e, code lost:
    
        zze("Failed to remove hit that was send for delivery", r0);
        zzaaq();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0176, code lost:
    
        r12.zzcyf.setTransactionSuccessful();
        r12.zzcyf.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0182, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0183, code lost:
    
        zze("Failed to commit local dispatch transaction", r0);
        zzaaq();
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x018d, code lost:
    
        r12.zzcyf.zzq(r8);
        r3.addAll(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0195, code lost:
    
        r0 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x019a, code lost:
    
        if (r3.isEmpty() == false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x019c, code lost:
    
        r12.zzcyf.setTransactionSuccessful();
        r12.zzcyf.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01a8, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01a9, code lost:
    
        zze("Failed to commit local dispatch transaction", r0);
        zzaaq();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01b3, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01b4, code lost:
    
        zze("Failed to remove successfully uploaded hits", r0);
        zzaaq();
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01bc, code lost:
    
        r12.zzcyf.setTransactionSuccessful();
        r12.zzcyf.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01c8, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01c9, code lost:
    
        zze("Failed to commit local dispatch transaction", r0);
        zzaaq();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01d3, code lost:
    
        r12.zzcyf.setTransactionSuccessful();
        r12.zzcyf.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01e0, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01e1, code lost:
    
        zze("Failed to commit local dispatch transaction", r0);
        zzaaq();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0202, code lost:
    
        r0 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected boolean zzaak() {
        /*
            Method dump skipped, instruction units count: 517
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zzl.zzaak():boolean");
    }

    public void zzaal() {
        com.google.android.gms.analytics.zzi.zzwu();
        zzzg();
        zzej("Sync dispatching local hits");
        long j = this.zzcyn;
        if (!zzyy().zzabc()) {
            zzaai();
        }
        do {
            try {
            } catch (Throwable th) {
                zze("Sync local dispatch failed", th);
                zzaam();
                return;
            }
        } while (zzaak());
        zzzb().zzadq();
        zzaam();
        if (this.zzcyn != j) {
            this.zzcyh.zzadi();
        }
    }

    public void zzaam() {
        boolean zIsConnected;
        zzyu().zzwu();
        zzzg();
        if (!zzaan()) {
            this.zzcyh.unregister();
            zzaaq();
            return;
        }
        if (this.zzcyf.isEmpty()) {
            this.zzcyh.unregister();
            zzaaq();
            return;
        }
        if (zzy.A.get().booleanValue()) {
            zIsConnected = true;
        } else {
            this.zzcyh.zzadg();
            zIsConnected = this.zzcyh.isConnected();
        }
        if (zIsConnected) {
            zzaap();
        } else {
            zzaaq();
            zzaao();
        }
    }

    public long zzaat() {
        if (this.zzcyj != Long.MIN_VALUE) {
            return this.zzcyj;
        }
        return zzwe().zzact() ? ((long) zzwe().zzaek()) * 1000 : zzyy().zzabk();
    }

    public void zzaau() {
        zzzg();
        zzwu();
        this.zzcyo = true;
        this.zzcyi.disconnect();
        zzaam();
    }

    public void zzas(boolean z) {
        zzaam();
    }

    public void zzb(zzw zzwVar) {
        zza(zzwVar, this.zzcyn);
    }

    protected void zzc(zzh zzhVar) {
        zzwu();
        zzb("Sending first hit to property", zzhVar.zzzp());
        if (zzzb().zzado().zzx(zzyy().zzach())) {
            return;
        }
        String strZzadr = zzzb().zzadr();
        if (TextUtils.isEmpty(strZzadr)) {
            return;
        }
        zzlz zzlzVarZza = zzao.zza(zzyx(), strZzadr);
        zzb("Found relevant installation campaign", zzlzVarZza);
        zza(zzhVar, zzlzVarZza);
    }

    public void zzeq(String str) {
        com.google.android.gms.common.internal.zzab.zzhs(str);
        zzwu();
        zzyv();
        zzlz zzlzVarZza = zzao.zza(zzyx(), str);
        if (zzlzVarZza == null) {
            zzd("Parsing failed. Ignoring invalid campaign data", str);
            return;
        }
        String strZzadr = zzzb().zzadr();
        if (str.equals(strZzadr)) {
            zzel("Ignoring duplicate install campaign");
            return;
        }
        if (!TextUtils.isEmpty(strZzadr)) {
            zzd("Ignoring multiple install campaigns. original, new", strZzadr, str);
            return;
        }
        zzzb().zzev(str);
        if (zzzb().zzado().zzx(zzyy().zzach())) {
            zzd("Campaign received too late, ignoring", zzlzVarZza);
            return;
        }
        zzb("Received installation campaign", zzlzVarZza);
        Iterator<zzh> it = this.zzcyf.zzt(0L).iterator();
        while (it.hasNext()) {
            zza(it.next(), zzlzVarZza);
        }
    }

    zzab zzf(zzab zzabVar) {
        Pair<String, Long> pairZzadv;
        if (!TextUtils.isEmpty(zzabVar.zzadd()) || (pairZzadv = zzzb().zzads().zzadv()) == null) {
            return zzabVar;
        }
        Long l = (Long) pairZzadv.second;
        String str = (String) pairZzadv.first;
        String strValueOf = String.valueOf(l);
        String string = new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(str).length()).append(strValueOf).append(":").append(str).toString();
        HashMap map = new HashMap(zzabVar.zzm());
        map.put("_m", string);
        return zzab.zza(this, zzabVar, map);
    }

    public void zzu(long j) {
        com.google.android.gms.analytics.zzi.zzwu();
        zzzg();
        if (j < 0) {
            j = 0;
        }
        this.zzcyj = j;
        zzaam();
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzwv() {
        this.zzcyf.initialize();
        this.zzcyg.initialize();
        this.zzcyi.initialize();
    }

    public void zzyo() {
        com.google.android.gms.analytics.zzi.zzwu();
        zzzg();
        if (!zzyy().zzabc()) {
            zzei("Delete all hits from local store");
            try {
                this.zzcyf.zzzw();
                this.zzcyf.zzzx();
                zzaam();
            } catch (SQLiteException e) {
                zzd("Failed to delete hits from store", e);
            }
        }
        zzaai();
        if (this.zzcyi.zzzs()) {
            zzei("Device service unavailable. Can't clear hits stored on the device service.");
        }
    }

    public void zzyr() {
        com.google.android.gms.analytics.zzi.zzwu();
        zzzg();
        zzei("Service disconnected");
    }

    void zzyt() {
        zzwu();
        this.zzcyn = zzyw().currentTimeMillis();
    }

    public long zzzz() {
        com.google.android.gms.analytics.zzi.zzwu();
        zzzg();
        try {
            return this.zzcyf.zzzz();
        } catch (SQLiteException e) {
            zze("Failed to get min/max hit times from local store", e);
            return 0L;
        }
    }
}
