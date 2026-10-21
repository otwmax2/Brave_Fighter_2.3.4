package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import com.ironsource.sdk.precache.DownloadManager;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/* JADX INFO: loaded from: classes.dex */
class zzdp {
    private static zzcd<zzai.zza> zza(zzcd<zzai.zza> zzcdVar) {
        try {
            return new zzcd<>(zzdl.zzar(zzoz(zzdl.zzg(zzcdVar.getObject()))), zzcdVar.zzcbz());
        } catch (UnsupportedEncodingException e) {
            zzbn.zzb("Escape URI: unsupported encoding", e);
            return zzcdVar;
        }
    }

    private static zzcd<zzai.zza> zza(zzcd<zzai.zza> zzcdVar, int i) {
        if (!zzn(zzcdVar.getObject())) {
            zzbn.e("Escaping can only be applied to strings.");
            return zzcdVar;
        }
        switch (i) {
            case 12:
                break;
            default:
                zzbn.e(new StringBuilder(39).append("Unsupported Value Escaping: ").append(i).toString());
                break;
        }
        return zzcdVar;
    }

    static zzcd<zzai.zza> zza(zzcd<zzai.zza> zzcdVar, int... iArr) {
        for (int i : iArr) {
            zzcdVar = zza(zzcdVar, i);
        }
        return zzcdVar;
    }

    private static boolean zzn(zzai.zza zzaVar) {
        return zzdl.zzl(zzaVar) instanceof String;
    }

    static String zzoz(String str) throws UnsupportedEncodingException {
        return URLEncoder.encode(str, DownloadManager.UTF8_CHARSET).replaceAll("\\+", "%20");
    }
}
