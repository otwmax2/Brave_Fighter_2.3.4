package com.google.android.gms.gcm;

import android.R;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.List;
import java.util.MissingFormatArgumentException;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
class zza {
    static zza aaC;
    private final Context mContext;

    /* JADX INFO: renamed from: com.google.android.gms.gcm.zza$zza, reason: collision with other inner class name */
    private class C0094zza extends IllegalArgumentException {
    }

    private zza(Context context) {
        this.mContext = context.getApplicationContext();
    }

    private void zza(String str, Notification notification) {
        if (Log.isLoggable("GcmNotification", 3)) {
            Log.d("GcmNotification", "Showing notification");
        }
        NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
        if (TextUtils.isEmpty(str)) {
            str = new StringBuilder(37).append("GCM-Notification:").append(SystemClock.uptimeMillis()).toString();
        }
        notificationManager.notify(str, 0, notification);
    }

    static boolean zzac(Bundle bundle) {
        return "1".equals(zzf(bundle, "gcm.n.e")) || zzf(bundle, "gcm.n.icon") != null;
    }

    static void zzad(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            String string = bundle.getString(next);
            if (next.startsWith("gcm.notification.")) {
                next = next.replace("gcm.notification.", "gcm.n.");
            }
            if (next.startsWith("gcm.n.")) {
                if (!"gcm.n.e".equals(next)) {
                    bundle2.putString(next.substring("gcm.n.".length()), string);
                }
                it.remove();
            }
        }
        String string2 = bundle2.getString("sound2");
        if (string2 != null) {
            bundle2.remove("sound2");
            bundle2.putString("sound", string2);
        }
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("notification", bundle2);
    }

    private Notification zzaf(Bundle bundle) {
        String strZzg = zzg(bundle, "gcm.n.title");
        String strZzg2 = zzg(bundle, "gcm.n.body");
        int iZzkb = zzkb(zzf(bundle, "gcm.n.icon"));
        String strZzf = zzf(bundle, "gcm.n.color");
        Uri uriZzkc = zzkc(zzf(bundle, "gcm.n.sound2"));
        PendingIntent pendingIntentZzag = zzag(bundle);
        NotificationCompat.Builder smallIcon = new NotificationCompat.Builder(this.mContext).setAutoCancel(true).setSmallIcon(iZzkb);
        if (TextUtils.isEmpty(strZzg)) {
            smallIcon.setContentTitle(this.mContext.getApplicationInfo().loadLabel(this.mContext.getPackageManager()));
        } else {
            smallIcon.setContentTitle(strZzg);
        }
        if (!TextUtils.isEmpty(strZzg2)) {
            smallIcon.setContentText(strZzg2);
        }
        if (!TextUtils.isEmpty(strZzf)) {
            smallIcon.setColor(Color.parseColor(strZzf));
        }
        if (uriZzkc != null) {
            smallIcon.setSound(uriZzkc);
        }
        if (pendingIntentZzag != null) {
            smallIcon.setContentIntent(pendingIntentZzag);
        }
        return smallIcon.build();
    }

    private PendingIntent zzag(Bundle bundle) {
        Intent intent;
        String strZzf = zzf(bundle, "gcm.n.click_action");
        if (TextUtils.isEmpty(strZzf)) {
            Intent launchIntentForPackage = this.mContext.getPackageManager().getLaunchIntentForPackage(this.mContext.getPackageName());
            if (launchIntentForPackage == null) {
                Log.w("GcmNotification", "No activity found to launch app");
                return null;
            }
            intent = launchIntentForPackage;
        } else {
            Intent intent2 = new Intent(strZzf);
            intent2.setPackage(this.mContext.getPackageName());
            intent2.setFlags(268435456);
            intent = intent2;
        }
        Bundle bundle2 = new Bundle(bundle);
        GcmListenerService.zzab(bundle2);
        intent.putExtras(bundle2);
        for (String str : bundle2.keySet()) {
            if (str.startsWith("gcm.n.") || str.startsWith("gcm.notification.")) {
                intent.removeExtra(str);
            }
        }
        return PendingIntent.getActivity(this.mContext, zzbmd(), intent, 1073741824);
    }

    private int zzbmd() {
        return (int) SystemClock.uptimeMillis();
    }

    static synchronized zza zzdb(Context context) {
        if (aaC == null) {
            aaC = new zza(context);
        }
        return aaC;
    }

    static boolean zzdc(Context context) {
        if (((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            return false;
        }
        int iMyPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == iMyPid) {
                return runningAppProcessInfo.importance == 100;
            }
        }
        return false;
    }

    static String zzf(Bundle bundle, String str) {
        String string = bundle.getString(str);
        return string == null ? bundle.getString(str.replace("gcm.n.", "gcm.notification.")) : string;
    }

    private String zzg(Bundle bundle, String str) {
        String strZzf = zzf(bundle, str);
        if (!TextUtils.isEmpty(strZzf)) {
            return strZzf;
        }
        String strValueOf = String.valueOf(str);
        String strValueOf2 = String.valueOf("_loc_key");
        String strZzf2 = zzf(bundle, strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
        if (TextUtils.isEmpty(strZzf2)) {
            return null;
        }
        Resources resources = this.mContext.getResources();
        int identifier = resources.getIdentifier(strZzf2, "string", this.mContext.getPackageName());
        if (identifier == 0) {
            String strValueOf3 = String.valueOf(str);
            String strValueOf4 = String.valueOf("_loc_key");
            String strValueOf5 = String.valueOf(zzka(strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3)));
            Log.w("GcmNotification", new StringBuilder(String.valueOf(strValueOf5).length() + 49 + String.valueOf(strZzf2).length()).append(strValueOf5).append(" resource not found: ").append(strZzf2).append(" Default value will be used.").toString());
            return null;
        }
        String strValueOf6 = String.valueOf(str);
        String strValueOf7 = String.valueOf("_loc_args");
        String strZzf3 = zzf(bundle, strValueOf7.length() != 0 ? strValueOf6.concat(strValueOf7) : new String(strValueOf6));
        if (TextUtils.isEmpty(strZzf3)) {
            return resources.getString(identifier);
        }
        try {
            JSONArray jSONArray = new JSONArray(strZzf3);
            Object[] objArr = new String[jSONArray.length()];
            for (int i = 0; i < objArr.length; i++) {
                objArr[i] = jSONArray.opt(i);
            }
            return resources.getString(identifier, objArr);
        } catch (MissingFormatArgumentException e) {
            Log.w("GcmNotification", new StringBuilder(String.valueOf(strZzf2).length() + 58 + String.valueOf(strZzf3).length()).append("Missing format argument for ").append(strZzf2).append(": ").append(strZzf3).append(" Default value will be used.").toString(), e);
            return null;
        } catch (JSONException e2) {
            String strValueOf8 = String.valueOf(str);
            String strValueOf9 = String.valueOf("_loc_args");
            String strValueOf10 = String.valueOf(zzka(strValueOf9.length() != 0 ? strValueOf8.concat(strValueOf9) : new String(strValueOf8)));
            Log.w("GcmNotification", new StringBuilder(String.valueOf(strValueOf10).length() + 41 + String.valueOf(strZzf3).length()).append("Malformed ").append(strValueOf10).append(": ").append(strZzf3).append("  Default value will be used.").toString());
            return null;
        }
    }

    private String zzka(String str) {
        return str.substring("gcm.n.".length());
    }

    private int zzkb(String str) {
        if (!TextUtils.isEmpty(str)) {
            Resources resources = this.mContext.getResources();
            int identifier = resources.getIdentifier(str, "drawable", this.mContext.getPackageName());
            if (identifier != 0) {
                return identifier;
            }
            int identifier2 = resources.getIdentifier(str, "mipmap", this.mContext.getPackageName());
            if (identifier2 != 0) {
                return identifier2;
            }
            Log.w("GcmNotification", new StringBuilder(String.valueOf(str).length() + 57).append("Icon resource ").append(str).append(" not found. Notification will use app icon.").toString());
        }
        int i = this.mContext.getApplicationInfo().icon;
        return i == 0 ? R.drawable.sym_def_app_icon : i;
    }

    private Uri zzkc(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if ("default".equals(str) || this.mContext.getResources().getIdentifier(str, "raw", this.mContext.getPackageName()) == 0) {
            return RingtoneManager.getDefaultUri(2);
        }
        String strValueOf = String.valueOf("android.resource://");
        String strValueOf2 = String.valueOf(this.mContext.getPackageName());
        return Uri.parse(new StringBuilder(String.valueOf(strValueOf).length() + 5 + String.valueOf(strValueOf2).length() + String.valueOf(str).length()).append(strValueOf).append(strValueOf2).append("/raw/").append(str).toString());
    }

    boolean zzae(Bundle bundle) {
        try {
            zza(zzf(bundle, "gcm.n.tag"), zzaf(bundle));
            return true;
        } catch (C0094zza e) {
            String strValueOf = String.valueOf(e.getMessage());
            Log.e("GcmNotification", strValueOf.length() != 0 ? "Failed to show notification: ".concat(strValueOf) : new String("Failed to show notification: "));
            return false;
        }
    }
}
