package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzadz;
import com.google.android.gms.internal.zzai;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class zzbg {
    private static zzai.zza zzak(Object obj) throws JSONException {
        return zzdl.zzar(zzal(obj));
    }

    static Object zzal(Object obj) throws JSONException {
        if (obj instanceof JSONArray) {
            throw new RuntimeException("JSONArrays are not supported");
        }
        if (JSONObject.NULL.equals(obj)) {
            throw new RuntimeException("JSON nulls are not supported");
        }
        if (!(obj instanceof JSONObject)) {
            return obj;
        }
        JSONObject jSONObject = (JSONObject) obj;
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, zzal(jSONObject.get(next)));
        }
        return map;
    }

    public static zzadz.zzc zzoh(String str) throws JSONException {
        zzai.zza zzaVarZzak = zzak(new JSONObject(str));
        zzadz.zzd zzdVarZzcgw = zzadz.zzc.zzcgw();
        for (int i = 0; i < zzaVarZzak.zzwv.length; i++) {
            zzdVarZzcgw.zzc(zzadz.zza.zzcgu().zzb(com.google.android.gms.internal.zzag.INSTANCE_NAME.toString(), zzaVarZzak.zzwv[i]).zzb(com.google.android.gms.internal.zzag.FUNCTION.toString(), zzdl.zzos(zzn.zzcaf())).zzb(zzn.zzcag(), zzaVarZzak.zzww[i]).zzcgv());
        }
        return zzdVarZzcgw.zzcgy();
    }
}
