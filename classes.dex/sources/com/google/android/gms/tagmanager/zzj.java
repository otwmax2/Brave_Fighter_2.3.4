package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.internal.zzai;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class zzj extends zzdj {
    private static final String ID = com.google.android.gms.internal.zzaf.ARBITRARY_PIXEL.toString();
    private static final String URL = com.google.android.gms.internal.zzag.URL.toString();
    private static final String auS = com.google.android.gms.internal.zzag.ADDITIONAL_PARAMS.toString();
    private static final String auT = com.google.android.gms.internal.zzag.UNREPEATABLE.toString();
    static final String auU;
    private static final Set<String> auV;
    private final zza auW;
    private final Context mContext;

    public interface zza {
        zzas zzcad();
    }

    static {
        String str = ID;
        auU = new StringBuilder(String.valueOf(str).length() + 17).append("gtm_").append(str).append("_unrepeatable").toString();
        auV = new HashSet();
    }

    public zzj(final Context context) {
        this(context, new zza() { // from class: com.google.android.gms.tagmanager.zzj.1
            @Override // com.google.android.gms.tagmanager.zzj.zza
            public zzas zzcad() {
                return zzz.zzds(context);
            }
        });
    }

    zzj(Context context, zza zzaVar) {
        super(ID, URL);
        this.auW = zzaVar;
        this.mContext = context;
    }

    private synchronized boolean zznk(String str) {
        boolean z = true;
        synchronized (this) {
            if (!zznm(str)) {
                if (zznl(str)) {
                    auV.add(str);
                } else {
                    z = false;
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public void zzax(Map<String, zzai.zza> map) {
        String strZzg = map.get(auT) != null ? zzdl.zzg(map.get(auT)) : null;
        if (strZzg == null || !zznk(strZzg)) {
            Uri.Builder builderBuildUpon = Uri.parse(zzdl.zzg(map.get(URL))).buildUpon();
            zzai.zza zzaVar = map.get(auS);
            if (zzaVar != null) {
                Object objZzl = zzdl.zzl(zzaVar);
                if (!(objZzl instanceof List)) {
                    String strValueOf = String.valueOf(builderBuildUpon.build().toString());
                    zzbn.e(strValueOf.length() != 0 ? "ArbitraryPixel: additional params not a list: not sending partial hit: ".concat(strValueOf) : new String("ArbitraryPixel: additional params not a list: not sending partial hit: "));
                    return;
                }
                for (Object obj : (List) objZzl) {
                    if (!(obj instanceof Map)) {
                        String strValueOf2 = String.valueOf(builderBuildUpon.build().toString());
                        zzbn.e(strValueOf2.length() != 0 ? "ArbitraryPixel: additional params contains non-map: not sending partial hit: ".concat(strValueOf2) : new String("ArbitraryPixel: additional params contains non-map: not sending partial hit: "));
                        return;
                    } else {
                        for (Map.Entry entry : ((Map) obj).entrySet()) {
                            builderBuildUpon.appendQueryParameter(entry.getKey().toString(), entry.getValue().toString());
                        }
                    }
                }
            }
            String string = builderBuildUpon.build().toString();
            this.auW.zzcad().zzob(string);
            String strValueOf3 = String.valueOf(string);
            zzbn.v(strValueOf3.length() != 0 ? "ArbitraryPixel: url = ".concat(strValueOf3) : new String("ArbitraryPixel: url = "));
            if (strZzg != null) {
                synchronized (zzj.class) {
                    auV.add(strZzg);
                    zzdc.zzb(this.mContext, auU, strZzg, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                }
            }
        }
    }

    boolean zznl(String str) {
        return this.mContext.getSharedPreferences(auU, 0).contains(str);
    }

    boolean zznm(String str) {
        return auV.contains(str);
    }
}
