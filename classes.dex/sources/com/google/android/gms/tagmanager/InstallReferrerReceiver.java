package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.analytics.CampaignTrackingService;

/* JADX INFO: loaded from: classes.dex */
public final class InstallReferrerReceiver extends CampaignTrackingReceiver {
    @Override // com.google.android.gms.analytics.CampaignTrackingReceiver
    protected void zzi(Context context, String str) {
        zzbe.zzog(str);
        zzbe.zzw(context, str);
    }

    @Override // com.google.android.gms.analytics.CampaignTrackingReceiver
    protected Class<? extends CampaignTrackingService> zzvv() {
        return InstallReferrerService.class;
    }
}
