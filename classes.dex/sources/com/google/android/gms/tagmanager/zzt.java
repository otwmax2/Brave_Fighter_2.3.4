package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzt extends zzal {
    private final zza avD;
    private static final String ID = com.google.android.gms.internal.zzaf.FUNCTION_CALL.toString();
    private static final String avC = com.google.android.gms.internal.zzag.FUNCTION_CALL_NAME.toString();
    private static final String auS = com.google.android.gms.internal.zzag.ADDITIONAL_PARAMS.toString();

    public interface zza {
        Object zzd(String str, Map<String, Object> map);
    }

    public zzt(zza zzaVar) {
        super(ID, avC);
        this.avD = zzaVar;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        String strZzg = zzdl.zzg(map.get(avC));
        HashMap map2 = new HashMap();
        zzai.zza zzaVar = map.get(auS);
        if (zzaVar != null) {
            Object objZzl = zzdl.zzl(zzaVar);
            if (!(objZzl instanceof Map)) {
                zzbn.zzcy("FunctionCallMacro: expected ADDITIONAL_PARAMS to be a map.");
                return zzdl.zzcdq();
            }
            for (Map.Entry entry : ((Map) objZzl).entrySet()) {
                map2.put(entry.getKey().toString(), entry.getValue());
            }
        }
        try {
            return zzdl.zzar(this.avD.zzd(strZzg, map2));
        } catch (Exception e) {
            String strValueOf = String.valueOf(e.getMessage());
            zzbn.zzcy(new StringBuilder(String.valueOf(strZzg).length() + 34 + String.valueOf(strValueOf).length()).append("Custom macro/tag ").append(strZzg).append(" threw exception ").append(strValueOf).toString());
            return zzdl.zzcdq();
        }
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return false;
    }
}
