package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzadz;
import com.google.android.gms.internal.zzah;
import com.google.android.gms.tagmanager.zzci;
import com.google.android.gms.tagmanager.zzt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Container {
    private final String auZ;
    private final DataLayer ava;
    private zzcw avb;
    private volatile long ave;
    private final Context mContext;
    private Map<String, FunctionCallMacroCallback> avc = new HashMap();
    private Map<String, FunctionCallTagCallback> avd = new HashMap();
    private volatile String avf = "";

    public interface FunctionCallMacroCallback {
        Object getValue(String str, Map<String, Object> map);
    }

    public interface FunctionCallTagCallback {
        void execute(String str, Map<String, Object> map);
    }

    private class zza implements zzt.zza {
        private zza() {
        }

        @Override // com.google.android.gms.tagmanager.zzt.zza
        public Object zzd(String str, Map<String, Object> map) {
            FunctionCallMacroCallback functionCallMacroCallbackZzno = Container.this.zzno(str);
            if (functionCallMacroCallbackZzno == null) {
                return null;
            }
            return functionCallMacroCallbackZzno.getValue(str, map);
        }
    }

    private class zzb implements zzt.zza {
        private zzb() {
        }

        @Override // com.google.android.gms.tagmanager.zzt.zza
        public Object zzd(String str, Map<String, Object> map) {
            FunctionCallTagCallback functionCallTagCallbackZznp = Container.this.zznp(str);
            if (functionCallTagCallbackZznp != null) {
                functionCallTagCallbackZznp.execute(str, map);
            }
            return zzdl.zzcdp();
        }
    }

    Container(Context context, DataLayer dataLayer, String str, long j, zzadz.zzc zzcVar) {
        this.mContext = context;
        this.ava = dataLayer;
        this.auZ = str;
        this.ave = j;
        zza(zzcVar);
    }

    Container(Context context, DataLayer dataLayer, String str, long j, zzah.zzj zzjVar) {
        this.mContext = context;
        this.ava = dataLayer;
        this.auZ = str;
        this.ave = j;
        zza(zzjVar.zzwq);
        if (zzjVar.zzwp != null) {
            zza(zzjVar.zzwp);
        }
    }

    private void zza(zzadz.zzc zzcVar) {
        this.avf = zzcVar.getVersion();
        zza(new zzcw(this.mContext, zzcVar, this.ava, new zza(), new zzb(), zznr(this.avf)));
        if (getBoolean("_gtm.loadEventEnabled")) {
            this.ava.pushEvent("gtm.load", DataLayer.mapOf("gtm.id", this.auZ));
        }
    }

    private void zza(zzah.zzf zzfVar) {
        if (zzfVar == null) {
            throw new NullPointerException();
        }
        try {
            zza(zzadz.zzb(zzfVar));
        } catch (zzadz.zzg e) {
            String strValueOf = String.valueOf(zzfVar);
            String strValueOf2 = String.valueOf(e.toString());
            zzbn.e(new StringBuilder(String.valueOf(strValueOf).length() + 46 + String.valueOf(strValueOf2).length()).append("Not loading resource: ").append(strValueOf).append(" because it is invalid: ").append(strValueOf2).toString());
        }
    }

    private synchronized void zza(zzcw zzcwVar) {
        this.avb = zzcwVar;
    }

    private void zza(zzah.zzi[] zziVarArr) {
        ArrayList arrayList = new ArrayList();
        for (zzah.zzi zziVar : zziVarArr) {
            arrayList.add(zziVar);
        }
        zzcai().zzaj(arrayList);
    }

    private synchronized zzcw zzcai() {
        return this.avb;
    }

    public boolean getBoolean(String str) {
        zzcw zzcwVarZzcai = zzcai();
        if (zzcwVarZzcai == null) {
            zzbn.e("getBoolean called for closed container.");
            return zzdl.zzcdn().booleanValue();
        }
        try {
            return zzdl.zzk(zzcwVarZzcai.zzom(str).getObject()).booleanValue();
        } catch (Exception e) {
            String strValueOf = String.valueOf(e.getMessage());
            zzbn.e(new StringBuilder(String.valueOf(strValueOf).length() + 66).append("Calling getBoolean() threw an exception: ").append(strValueOf).append(" Returning default value.").toString());
            return zzdl.zzcdn().booleanValue();
        }
    }

    public String getContainerId() {
        return this.auZ;
    }

    public double getDouble(String str) {
        zzcw zzcwVarZzcai = zzcai();
        if (zzcwVarZzcai == null) {
            zzbn.e("getDouble called for closed container.");
            return zzdl.zzcdm().doubleValue();
        }
        try {
            return zzdl.zzj(zzcwVarZzcai.zzom(str).getObject()).doubleValue();
        } catch (Exception e) {
            String strValueOf = String.valueOf(e.getMessage());
            zzbn.e(new StringBuilder(String.valueOf(strValueOf).length() + 65).append("Calling getDouble() threw an exception: ").append(strValueOf).append(" Returning default value.").toString());
            return zzdl.zzcdm().doubleValue();
        }
    }

    public long getLastRefreshTime() {
        return this.ave;
    }

    public long getLong(String str) {
        zzcw zzcwVarZzcai = zzcai();
        if (zzcwVarZzcai == null) {
            zzbn.e("getLong called for closed container.");
            return zzdl.zzcdl().longValue();
        }
        try {
            return zzdl.zzi(zzcwVarZzcai.zzom(str).getObject()).longValue();
        } catch (Exception e) {
            String strValueOf = String.valueOf(e.getMessage());
            zzbn.e(new StringBuilder(String.valueOf(strValueOf).length() + 63).append("Calling getLong() threw an exception: ").append(strValueOf).append(" Returning default value.").toString());
            return zzdl.zzcdl().longValue();
        }
    }

    public String getString(String str) {
        zzcw zzcwVarZzcai = zzcai();
        if (zzcwVarZzcai == null) {
            zzbn.e("getString called for closed container.");
            return zzdl.zzcdp();
        }
        try {
            return zzdl.zzg(zzcwVarZzcai.zzom(str).getObject());
        } catch (Exception e) {
            String strValueOf = String.valueOf(e.getMessage());
            zzbn.e(new StringBuilder(String.valueOf(strValueOf).length() + 65).append("Calling getString() threw an exception: ").append(strValueOf).append(" Returning default value.").toString());
            return zzdl.zzcdp();
        }
    }

    public boolean isDefault() {
        return getLastRefreshTime() == 0;
    }

    public void registerFunctionCallMacroCallback(String str, FunctionCallMacroCallback functionCallMacroCallback) {
        if (functionCallMacroCallback == null) {
            throw new NullPointerException("Macro handler must be non-null");
        }
        synchronized (this.avc) {
            this.avc.put(str, functionCallMacroCallback);
        }
    }

    public void registerFunctionCallTagCallback(String str, FunctionCallTagCallback functionCallTagCallback) {
        if (functionCallTagCallback == null) {
            throw new NullPointerException("Tag callback must be non-null");
        }
        synchronized (this.avd) {
            this.avd.put(str, functionCallTagCallback);
        }
    }

    void release() {
        this.avb = null;
    }

    public void unregisterFunctionCallMacroCallback(String str) {
        synchronized (this.avc) {
            this.avc.remove(str);
        }
    }

    public void unregisterFunctionCallTagCallback(String str) {
        synchronized (this.avd) {
            this.avd.remove(str);
        }
    }

    public String zzcah() {
        return this.avf;
    }

    FunctionCallMacroCallback zzno(String str) {
        FunctionCallMacroCallback functionCallMacroCallback;
        synchronized (this.avc) {
            functionCallMacroCallback = this.avc.get(str);
        }
        return functionCallMacroCallback;
    }

    public FunctionCallTagCallback zznp(String str) {
        FunctionCallTagCallback functionCallTagCallback;
        synchronized (this.avd) {
            functionCallTagCallback = this.avd.get(str);
        }
        return functionCallTagCallback;
    }

    public void zznq(String str) {
        zzcai().zznq(str);
    }

    zzai zznr(String str) {
        if (zzci.zzcce().zzccf().equals(zzci.zza.CONTAINER_DEBUG)) {
        }
        return new zzbv();
    }
}
