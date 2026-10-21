package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzab;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class GcmNetworkManager {
    public static final int RESULT_FAILURE = 2;
    public static final int RESULT_RESCHEDULE = 1;
    public static final int RESULT_SUCCESS = 0;
    private static GcmNetworkManager aaB;
    private Context mContext;
    private final PendingIntent mPendingIntent;

    private GcmNetworkManager(Context context) {
        this.mContext = context;
        this.mPendingIntent = PendingIntent.getBroadcast(this.mContext, 0, new Intent(), 0);
    }

    public static GcmNetworkManager getInstance(Context context) {
        GcmNetworkManager gcmNetworkManager;
        synchronized (GcmNetworkManager.class) {
            if (aaB == null) {
                aaB = new GcmNetworkManager(context.getApplicationContext());
            }
            gcmNetworkManager = aaB;
        }
        return gcmNetworkManager;
    }

    private void zza(ComponentName componentName) {
        zzjz(componentName.getClassName());
        Intent intentZzbmc = zzbmc();
        if (intentZzbmc == null) {
            return;
        }
        intentZzbmc.putExtra("scheduler_action", "CANCEL_ALL");
        intentZzbmc.putExtra("component", componentName);
        this.mContext.sendBroadcast(intentZzbmc);
    }

    private void zza(String str, ComponentName componentName) {
        zzjy(str);
        zzjz(componentName.getClassName());
        Intent intentZzbmc = zzbmc();
        if (intentZzbmc == null) {
            return;
        }
        intentZzbmc.putExtra("scheduler_action", "CANCEL_TASK");
        intentZzbmc.putExtra("tag", str);
        intentZzbmc.putExtra("component", componentName);
        this.mContext.sendBroadcast(intentZzbmc);
    }

    private Intent zzbmc() {
        int iZzde = GoogleCloudMessaging.zzde(this.mContext);
        if (iZzde < GoogleCloudMessaging.aaL) {
            Log.e("GcmNetworkManager", new StringBuilder(91).append("Google Play Services is not available, dropping GcmNetworkManager request. code=").append(iZzde).toString());
            return null;
        }
        Intent intent = new Intent("com.google.android.gms.gcm.ACTION_SCHEDULE");
        intent.setPackage(GoogleCloudMessaging.zzdd(this.mContext));
        intent.putExtra("app", this.mPendingIntent);
        return intent;
    }

    static void zzjy(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must provide a valid tag.");
        }
        if (100 < str.length()) {
            throw new IllegalArgumentException("Tag is larger than max permissible tag length (100)");
        }
    }

    private void zzjz(String str) {
        boolean z = true;
        zzab.zzb(str, "GcmTaskService must not be null.");
        Intent intent = new Intent(GcmTaskService.SERVICE_ACTION_EXECUTE_TASK);
        intent.setPackage(this.mContext.getPackageName());
        List<ResolveInfo> listQueryIntentServices = this.mContext.getPackageManager().queryIntentServices(intent, 0);
        zzab.zzb((listQueryIntentServices == null || listQueryIntentServices.size() == 0) ? false : true, "There is no GcmTaskService component registered within this package. Have you extended GcmTaskService correctly?");
        Iterator<ResolveInfo> it = listQueryIntentServices.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (it.next().serviceInfo.name.equals(str)) {
                break;
            }
        }
        zzab.zzb(z, new StringBuilder(String.valueOf(str).length() + IronSourceConstants.REWARDED_VIDEO_SHOW_CHANCE).append("The GcmTaskService class you provided ").append(str).append(" does not seem to support receiving com.google.android.gms.gcm.ACTION_TASK_READY.").toString());
    }

    public void cancelAllTasks(Class<? extends GcmTaskService> cls) {
        zze(cls);
    }

    public void cancelTask(String str, Class<? extends GcmTaskService> cls) {
        zzb(str, cls);
    }

    public void schedule(Task task) {
        zzjz(task.getServiceName());
        Intent intentZzbmc = zzbmc();
        if (intentZzbmc == null) {
            return;
        }
        Bundle extras = intentZzbmc.getExtras();
        extras.putString("scheduler_action", "SCHEDULE_TASK");
        task.toBundle(extras);
        intentZzbmc.putExtras(extras);
        this.mContext.sendBroadcast(intentZzbmc);
    }

    public void zzb(String str, Class<? extends Service> cls) {
        zza(str, new ComponentName(this.mContext, cls));
    }

    public void zze(Class<? extends Service> cls) {
        zza(new ComponentName(this.mContext, cls));
    }
}
