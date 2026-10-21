package com.google.android.gms.ads.internal.purchase;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzu;
import com.google.android.gms.internal.zzhr;
import com.google.android.gms.internal.zzht;
import com.google.android.gms.internal.zzir;
import com.google.android.gms.internal.zzkh;
import com.yunva.monsterhunter.IabHelper;

/* JADX INFO: loaded from: classes.dex */
@zzir
public class zze extends zzht.zza implements ServiceConnection {
    private final Activity mActivity;
    private zzb zzbww;
    zzh zzbwx;
    private zzk zzbwz;
    private Context zzbxe;
    private zzhr zzbxf;
    private zzf zzbxg;
    private zzj zzbxh;
    private String zzbxi = null;

    public zze(Activity activity) {
        this.mActivity = activity;
        this.zzbwx = zzh.zzs(this.mActivity.getApplicationContext());
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0037 A[Catch: RemoteException -> 0x003f, all -> 0x004d, Merged into TryCatch #1 {all -> 0x004d, RemoteException -> 0x003f, blocks: (B:5:0x0006, B:7:0x0011, B:9:0x0016, B:12:0x0021, B:15:0x0037, B:18:0x0040), top: B:23:0x0006 }, TRY_ENTER, TRY_LEAVE] */
    @Override // com.google.android.gms.internal.zzht
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onActivityResult(int r6, int r7, android.content.Intent r8) {
        /*
            r5 = this;
            r4 = 0
            r0 = 1001(0x3e9, float:1.403E-42)
            if (r6 != r0) goto L36
            r0 = 0
            com.google.android.gms.ads.internal.purchase.zzi r1 = com.google.android.gms.ads.internal.zzu.zzga()     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            int r1 = r1.zzd(r8)     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            r2 = -1
            if (r7 != r2) goto L37
            com.google.android.gms.ads.internal.zzu.zzga()     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            if (r1 != 0) goto L37
            com.google.android.gms.ads.internal.purchase.zzk r2 = r5.zzbwz     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            java.lang.String r3 = r5.zzbxi     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            boolean r2 = r2.zza(r3, r7, r8)     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            if (r2 == 0) goto L21
            r0 = 1
        L21:
            com.google.android.gms.internal.zzhr r2 = r5.zzbxf     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            r2.recordPlayBillingResolution(r1)     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            android.app.Activity r1 = r5.mActivity     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            r1.finish()     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            com.google.android.gms.internal.zzhr r1 = r5.zzbxf     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            java.lang.String r1 = r1.getProductId()     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            r5.zza(r1, r0, r7, r8)     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            r5.zzbxi = r4
        L36:
            return
        L37:
            com.google.android.gms.ads.internal.purchase.zzh r2 = r5.zzbwx     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            com.google.android.gms.ads.internal.purchase.zzf r3 = r5.zzbxg     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            r2.zza(r3)     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L4d
            goto L21
        L3f:
            r0 = move-exception
            java.lang.String r0 = "Fail to process purchase result."
            com.google.android.gms.internal.zzkh.zzcy(r0)     // Catch: java.lang.Throwable -> L4d
            android.app.Activity r0 = r5.mActivity     // Catch: java.lang.Throwable -> L4d
            r0.finish()     // Catch: java.lang.Throwable -> L4d
            r5.zzbxi = r4
            goto L36
        L4d:
            r0 = move-exception
            r5.zzbxi = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.purchase.zze.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // com.google.android.gms.internal.zzht
    public void onCreate() {
        GInAppPurchaseManagerInfoParcel gInAppPurchaseManagerInfoParcelZzc = GInAppPurchaseManagerInfoParcel.zzc(this.mActivity.getIntent());
        this.zzbxh = gInAppPurchaseManagerInfoParcelZzc.zzbws;
        this.zzbwz = gInAppPurchaseManagerInfoParcelZzc.zzapr;
        this.zzbxf = gInAppPurchaseManagerInfoParcelZzc.zzbwq;
        this.zzbww = new zzb(this.mActivity.getApplicationContext());
        this.zzbxe = gInAppPurchaseManagerInfoParcelZzc.zzbwr;
        if (this.mActivity.getResources().getConfiguration().orientation == 2) {
            this.mActivity.setRequestedOrientation(zzu.zzfs().zztk());
        } else {
            this.mActivity.setRequestedOrientation(zzu.zzfs().zztl());
        }
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage("com.android.vending");
        this.mActivity.bindService(intent, this, 1);
    }

    @Override // com.google.android.gms.internal.zzht
    public void onDestroy() {
        this.mActivity.unbindService(this);
        this.zzbww.destroy();
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.zzbww.zzas(iBinder);
        try {
            this.zzbxi = this.zzbwz.zzpv();
            Bundle bundleZzb = this.zzbww.zzb(this.mActivity.getPackageName(), this.zzbxf.getProductId(), this.zzbxi);
            PendingIntent pendingIntent = (PendingIntent) bundleZzb.getParcelable(IabHelper.RESPONSE_BUY_INTENT);
            if (pendingIntent == null) {
                int iZze = zzu.zzga().zze(bundleZzb);
                this.zzbxf.recordPlayBillingResolution(iZze);
                zza(this.zzbxf.getProductId(), false, iZze, null);
                this.mActivity.finish();
            } else {
                this.zzbxg = new zzf(this.zzbxf.getProductId(), this.zzbxi);
                this.zzbwx.zzb(this.zzbxg);
                Integer num = 0;
                Integer num2 = 0;
                Integer num3 = 0;
                this.mActivity.startIntentSenderForResult(pendingIntent.getIntentSender(), 1001, new Intent(), num.intValue(), num2.intValue(), num3.intValue());
            }
        } catch (IntentSender.SendIntentException | RemoteException e) {
            zzkh.zzd("Error when connecting in-app billing service", e);
            this.mActivity.finish();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        zzkh.zzcx("In-app billing service disconnected.");
        this.zzbww.destroy();
    }

    protected void zza(String str, boolean z, int i, Intent intent) {
        if (this.zzbxh != null) {
            this.zzbxh.zza(str, z, i, intent, this.zzbxg);
        }
    }
}
