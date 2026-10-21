package com.google.android.gms.internal;

import android.content.Context;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.android.gms.internal.zzig;
import com.google.android.gms.internal.zzjy;
import com.google.android.gms.internal.zzlm;
import com.ironsource.sdk.precache.DownloadManager;

/* JADX INFO: loaded from: classes.dex */
@zzir
public class zzih extends zzic implements zzlm.zza {
    zzih(Context context, zzjy.zza zzaVar, zzll zzllVar, zzig.zza zzaVar2) {
        super(context, zzaVar, zzllVar, zzaVar2);
    }

    @Override // com.google.android.gms.internal.zzic
    protected void zzpx() {
        if (this.zzbxw.errorCode != -2) {
            return;
        }
        this.zzbgj.zzuk().zza(this);
        zzqe();
        zzkh.zzcw("Loading HTML in WebView.");
        this.zzbgj.loadDataWithBaseURL(com.google.android.gms.ads.internal.zzu.zzfq().zzcp(this.zzbxw.zzbts), this.zzbxw.body, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, DownloadManager.UTF8_CHARSET, null);
    }

    protected void zzqe() {
    }
}
