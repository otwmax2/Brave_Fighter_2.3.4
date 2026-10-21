package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.BuildConfig;
import com.google.android.gms.ads.internal.client.zzu;
import com.google.android.gms.ads.internal.client.zzv;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.internal.zzgn;
import com.google.android.gms.internal.zzir;

/* JADX INFO: loaded from: classes.dex */
@zzir
public class zze extends com.google.android.gms.dynamic.zzg<zzv> {
    public zze() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    public zzu zza(Context context, AdSizeParcel adSizeParcel, String str, zzgn zzgnVar, int i) {
        try {
            return zzu.zza.zzn(zzcr(context).zza(com.google.android.gms.dynamic.zze.zzae(context), adSizeParcel, str, zzgnVar, BuildConfig.VERSION_CODE, i));
        } catch (RemoteException | zzg.zza e) {
            com.google.android.gms.ads.internal.util.client.zzb.zza("Could not create remote AdManager.", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.dynamic.zzg
    /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public zzv zzc(IBinder iBinder) {
        return zzv.zza.zzo(iBinder);
    }
}
