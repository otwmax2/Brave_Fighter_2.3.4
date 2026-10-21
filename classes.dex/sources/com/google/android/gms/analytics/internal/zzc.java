package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.analytics.GoogleAnalytics;

/* JADX INFO: loaded from: classes.dex */
public class zzc {
    private final zzf zzcws;

    protected zzc(zzf zzfVar) {
        com.google.android.gms.common.internal.zzab.zzaa(zzfVar);
        this.zzcws = zzfVar;
    }

    private void zza(int i, String str, Object obj, Object obj2, Object obj3) {
        zzaf zzafVarZzzj = this.zzcws != null ? this.zzcws.zzzj() : null;
        if (zzafVarZzzj != null) {
            zzafVarZzzj.zza(i, str, obj, obj2, obj3);
            return;
        }
        String str2 = zzy.zzczr.get();
        if (Log.isLoggable(str2, i)) {
            Log.println(i, str2, zzc(str, obj, obj2, obj3));
        }
    }

    protected static String zzc(String str, Object obj, Object obj2, Object obj3) {
        if (str == null) {
            str = "";
        }
        String strZzl = zzl(obj);
        String strZzl2 = zzl(obj2);
        String strZzl3 = zzl(obj3);
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        if (!TextUtils.isEmpty(strZzl)) {
            sb.append(str2);
            sb.append(strZzl);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(strZzl2)) {
            sb.append(str2);
            sb.append(strZzl2);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(strZzl3)) {
            sb.append(str2);
            sb.append(strZzl3);
        }
        return sb.toString();
    }

    private static String zzl(Object obj) {
        if (obj == null) {
            return "";
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof Boolean) {
            return obj == Boolean.TRUE ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : "false";
        }
        return obj instanceof Throwable ? ((Throwable) obj).toString() : obj.toString();
    }

    protected Context getContext() {
        return this.zzcws.getContext();
    }

    public void zza(String str, Object obj) {
        zza(2, str, obj, null, null);
    }

    public void zza(String str, Object obj, Object obj2) {
        zza(2, str, obj, obj2, null);
    }

    public void zza(String str, Object obj, Object obj2, Object obj3) {
        zza(3, str, obj, obj2, obj3);
    }

    public void zzb(String str, Object obj) {
        zza(3, str, obj, null, null);
    }

    public void zzb(String str, Object obj, Object obj2) {
        zza(3, str, obj, obj2, null);
    }

    public void zzb(String str, Object obj, Object obj2, Object obj3) {
        zza(5, str, obj, obj2, obj3);
    }

    public void zzc(String str, Object obj) {
        zza(4, str, obj, null, null);
    }

    public void zzc(String str, Object obj, Object obj2) {
        zza(5, str, obj, obj2, null);
    }

    public void zzd(String str, Object obj) {
        zza(5, str, obj, null, null);
    }

    public void zzd(String str, Object obj, Object obj2) {
        zza(6, str, obj, obj2, null);
    }

    public void zze(String str, Object obj) {
        zza(6, str, obj, null, null);
    }

    public void zzei(String str) {
        zza(2, str, null, null, null);
    }

    public void zzej(String str) {
        zza(3, str, null, null, null);
    }

    public void zzek(String str) {
        zza(4, str, null, null, null);
    }

    public void zzel(String str) {
        zza(5, str, null, null, null);
    }

    public void zzem(String str) {
        zza(6, str, null, null, null);
    }

    public boolean zztc() {
        return Log.isLoggable(zzy.zzczr.get(), 2);
    }

    public GoogleAnalytics zzvx() {
        return this.zzcws.zzzk();
    }

    protected zzb zzwd() {
        return this.zzcws.zzwd();
    }

    protected zzap zzwe() {
        return this.zzcws.zzwe();
    }

    protected void zzwu() {
        this.zzcws.zzwu();
    }

    public zzf zzyu() {
        return this.zzcws;
    }

    protected void zzyv() {
        if (zzyy().zzabc()) {
            throw new IllegalStateException("Call only supported on the client side");
        }
    }

    protected com.google.android.gms.common.util.zze zzyw() {
        return this.zzcws.zzyw();
    }

    protected zzaf zzyx() {
        return this.zzcws.zzyx();
    }

    protected zzr zzyy() {
        return this.zzcws.zzyy();
    }

    protected com.google.android.gms.analytics.zzi zzyz() {
        return this.zzcws.zzyz();
    }

    protected zzv zzza() {
        return this.zzcws.zzza();
    }

    protected zzai zzzb() {
        return this.zzcws.zzzb();
    }

    protected zzn zzzc() {
        return this.zzcws.zzzn();
    }

    protected zza zzzd() {
        return this.zzcws.zzzm();
    }

    protected zzk zzze() {
        return this.zzcws.zzze();
    }

    protected zzu zzzf() {
        return this.zzcws.zzzf();
    }
}
