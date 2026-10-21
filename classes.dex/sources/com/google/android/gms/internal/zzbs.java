package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public interface zzbs {

    public interface zza {
        public static final zza zzahq = new zza() { // from class: com.google.android.gms.internal.zzbs.zza.1
            @Override // com.google.android.gms.internal.zzbs.zza
            public Handler zza(Looper looper) {
                return new Handler(looper);
            }
        };

        Handler zza(Looper looper);
    }
}
