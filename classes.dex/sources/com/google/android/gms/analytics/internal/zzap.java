package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class zzap extends zzd {
    protected int M;
    protected boolean aD;
    protected boolean aE;
    protected boolean zzcsm;
    protected String zzcup;
    protected String zzcuq;
    protected int zzczi;

    public zzap(zzf zzfVar) {
        super(zzfVar);
    }

    private static int zzfe(String str) {
        String lowerCase = str.toLowerCase();
        if ("verbose".equals(lowerCase)) {
            return 0;
        }
        if ("info".equals(lowerCase)) {
            return 1;
        }
        if ("warning".equals(lowerCase)) {
            return 2;
        }
        return "error".equals(lowerCase) ? 3 : -1;
    }

    public int getLogLevel() {
        zzzg();
        return this.zzczi;
    }

    void zza(zzaa zzaaVar) {
        int iZzfe;
        zzei("Loading global XML config values");
        if (zzaaVar.zzacp()) {
            String strZzxb = zzaaVar.zzxb();
            this.zzcup = strZzxb;
            zzb("XML config - app name", strZzxb);
        }
        if (zzaaVar.zzacq()) {
            String strZzxc = zzaaVar.zzxc();
            this.zzcuq = strZzxc;
            zzb("XML config - app version", strZzxc);
        }
        if (zzaaVar.zzacr() && (iZzfe = zzfe(zzaaVar.zzacs())) >= 0) {
            this.zzczi = iZzfe;
            zza("XML config - log level", Integer.valueOf(iZzfe));
        }
        if (zzaaVar.zzact()) {
            int iZzacu = zzaaVar.zzacu();
            this.M = iZzacu;
            this.aD = true;
            zzb("XML config - dispatch period (sec)", Integer.valueOf(iZzacu));
        }
        if (zzaaVar.zzacv()) {
            boolean zZzacw = zzaaVar.zzacw();
            this.zzcsm = zZzacw;
            this.aE = true;
            zzb("XML config - dry run", Boolean.valueOf(zZzacw));
        }
    }

    public boolean zzacr() {
        zzzg();
        return false;
    }

    public boolean zzact() {
        zzzg();
        return this.aD;
    }

    public boolean zzacv() {
        zzzg();
        return this.aE;
    }

    public boolean zzacw() {
        zzzg();
        return this.zzcsm;
    }

    public int zzaek() {
        zzzg();
        return this.M;
    }

    protected void zzael() {
        ApplicationInfo applicationInfo;
        int i;
        zzaa zzaaVarZzbx;
        Context context = getContext();
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 129);
        } catch (PackageManager.NameNotFoundException e) {
            zzd("PackageManager doesn't know about the app package", e);
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            zzel("Couldn't get ApplicationInfo to load global config");
            return;
        }
        Bundle bundle = applicationInfo.metaData;
        if (bundle == null || (i = bundle.getInt("com.google.android.gms.analytics.globalConfigResource")) <= 0 || (zzaaVarZzbx = new zzz(zzyu()).zzbx(i)) == null) {
            return;
        }
        zza(zzaaVarZzbx);
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzwv() {
        zzael();
    }

    public String zzxb() {
        zzzg();
        return this.zzcup;
    }

    public String zzxc() {
        zzzg();
        return this.zzcuq;
    }
}
