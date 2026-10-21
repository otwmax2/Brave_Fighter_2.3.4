package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.internal.zzjy;

/* JADX INFO: loaded from: classes.dex */
@zzir
public class zzig {

    public interface zza {
        void zzb(zzjy zzjyVar);
    }

    public zzkn zza(Context context, com.google.android.gms.ads.internal.zza zzaVar, zzjy.zza zzaVar2, zzas zzasVar, @Nullable zzll zzllVar, zzgn zzgnVar, zza zzaVar3, zzdk zzdkVar) {
        zzkn zzieVar;
        AdResponseParcel adResponseParcel = zzaVar2.zzciu;
        if (adResponseParcel.zzccc) {
            zzieVar = new zzij(context, zzaVar2, zzgnVar, zzaVar3, zzdkVar, zzllVar);
        } else if (!adResponseParcel.zzaus) {
            zzieVar = adResponseParcel.zzcci ? new zzie(context, zzaVar2, zzllVar, zzaVar3) : (zzdc.zzazq.get().booleanValue() && com.google.android.gms.common.util.zzs.zzavq() && !com.google.android.gms.common.util.zzs.isAtLeastL() && zzllVar != null && zzllVar.zzdo().zzauq) ? new zzii(context, zzaVar2, zzllVar, zzaVar3) : new zzih(context, zzaVar2, zzllVar, zzaVar3);
        } else {
            if (!(zzaVar instanceof com.google.android.gms.ads.internal.zzq)) {
                String strValueOf = String.valueOf(zzaVar != null ? zzaVar.getClass().getName() : "null");
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 65).append("Invalid NativeAdManager type. Found: ").append(strValueOf).append("; Required: NativeAdManager.").toString());
            }
            zzieVar = new zzik(context, (com.google.android.gms.ads.internal.zzq) zzaVar, zzaVar2, zzasVar, zzaVar3);
        }
        String strValueOf2 = String.valueOf(zzieVar.getClass().getName());
        zzkh.zzcw(strValueOf2.length() != 0 ? "AdRenderer: ".concat(strValueOf2) : new String("AdRenderer: "));
        zzieVar.zzpz();
        return zzieVar;
    }

    public zzkn zza(Context context, zzjy.zza zzaVar, zzjj zzjjVar) {
        zzjp zzjpVar = new zzjp(context, zzaVar, zzjjVar);
        String strValueOf = String.valueOf(zzjpVar.getClass().getName());
        zzkh.zzcw(strValueOf.length() != 0 ? "AdRenderer: ".concat(strValueOf) : new String("AdRenderer: "));
        zzjpVar.zzpz();
        return zzjpVar;
    }
}
