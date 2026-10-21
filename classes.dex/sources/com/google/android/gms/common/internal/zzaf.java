package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.zzg;

/* JADX INFO: loaded from: classes.dex */
public final class zzaf extends com.google.android.gms.dynamic.zzg<zzx> {
    private static final zzaf za = new zzaf();

    private zzaf() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View zzb(Context context, int i, int i2, Scope[] scopeArr) throws zzg.zza {
        return za.zzc(context, i, i2, scopeArr);
    }

    private View zzc(Context context, int i, int i2, Scope[] scopeArr) throws zzg.zza {
        try {
            SignInButtonConfig signInButtonConfig = new SignInButtonConfig(i, i2, scopeArr);
            return (View) com.google.android.gms.dynamic.zze.zzad(zzcr(context).zza(com.google.android.gms.dynamic.zze.zzae(context), signInButtonConfig));
        } catch (Exception e) {
            throw new zzg.zza(new StringBuilder(64).append("Could not get button with size ").append(i).append(" and color ").append(i2).toString(), e);
        }
    }

    @Override // com.google.android.gms.dynamic.zzg
    /* JADX INFO: renamed from: zzdx, reason: merged with bridge method [inline-methods] */
    public zzx zzc(IBinder iBinder) {
        return zzx.zza.zzdw(iBinder);
    }
}
