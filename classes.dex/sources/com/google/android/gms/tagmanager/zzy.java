package com.google.android.gms.tagmanager;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class zzy implements zzbo {
    private int zzczi = 5;

    @Override // com.google.android.gms.tagmanager.zzbo
    public void e(String str) {
        if (this.zzczi <= 6) {
            Log.e("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbo
    public void setLogLevel(int i) {
        this.zzczi = i;
    }

    @Override // com.google.android.gms.tagmanager.zzbo
    public void v(String str) {
        if (this.zzczi <= 2) {
            Log.v("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbo
    public void zzb(String str, Throwable th) {
        if (this.zzczi <= 6) {
            Log.e("GoogleTagManager", str, th);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbo
    public void zzcw(String str) {
        if (this.zzczi <= 3) {
            Log.d("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbo
    public void zzcx(String str) {
        if (this.zzczi <= 4) {
            Log.i("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbo
    public void zzcy(String str) {
        if (this.zzczi <= 5) {
            Log.w("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbo
    public void zzd(String str, Throwable th) {
        if (this.zzczi <= 5) {
            Log.w("GoogleTagManager", str, th);
        }
    }
}
