package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.zzsj;
import com.google.android.gms.internal.zzug;

/* JADX INFO: loaded from: classes.dex */
public class zzuf {
    private boolean zzamr = false;
    private zzug Qq = null;

    public void initialize(Context context) {
        synchronized (this) {
            if (this.zzamr) {
                return;
            }
            try {
                this.Qq = zzug.zza.asInterface(zzsj.zza(context, zzsj.Mg, ModuleDescriptor.MODULE_ID).zziv("com.google.android.gms.flags.impl.FlagProviderImpl"));
                this.Qq.init(com.google.android.gms.dynamic.zze.zzae(context));
                this.zzamr = true;
            } catch (RemoteException | zzsj.zza e) {
                Log.w("FlagValueProvider", "Failed to initialize flags module.", e);
            }
        }
    }

    public <T> T zzb(zzud<T> zzudVar) {
        synchronized (this) {
            if (this.zzamr) {
                return zzudVar.zza(this.Qq);
            }
            return zzudVar.zzjw();
        }
    }
}
