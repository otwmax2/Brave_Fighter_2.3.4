package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.support.annotation.RequiresPermission;
import android.util.Log;
import com.google.android.gms.iid.InstanceID;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class GoogleCloudMessaging {
    public static final String ERROR_MAIN_THREAD = "MAIN_THREAD";
    public static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    public static final String INSTANCE_ID_SCOPE = "GCM";

    @Deprecated
    public static final String MESSAGE_TYPE_DELETED = "deleted_messages";

    @Deprecated
    public static final String MESSAGE_TYPE_MESSAGE = "gcm";

    @Deprecated
    public static final String MESSAGE_TYPE_SEND_ERROR = "send_error";

    @Deprecated
    public static final String MESSAGE_TYPE_SEND_EVENT = "send_event";
    static GoogleCloudMessaging aaO;
    private PendingIntent aaP;
    private Context zzagf;
    public static int aaL = 5000000;
    public static int aaM = 6500000;
    public static int aaN = 7000000;
    private static final AtomicInteger aaR = new AtomicInteger(1);
    private final BlockingQueue<Intent> aaS = new LinkedBlockingQueue();
    private Map<String, Handler> aaQ = Collections.synchronizedMap(new HashMap());
    final Messenger aaT = new Messenger(new Handler(Looper.getMainLooper()) { // from class: com.google.android.gms.gcm.GoogleCloudMessaging.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message == null || !(message.obj instanceof Intent)) {
                Log.w(GoogleCloudMessaging.INSTANCE_ID_SCOPE, "Dropping invalid message");
            }
            Intent intent = (Intent) message.obj;
            if ("com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction())) {
                GoogleCloudMessaging.this.aaS.add(intent);
            } else {
                if (GoogleCloudMessaging.this.zzp(intent)) {
                    return;
                }
                intent.setPackage(GoogleCloudMessaging.this.zzagf.getPackageName());
                GoogleCloudMessaging.this.zzagf.sendBroadcast(intent);
            }
        }
    });

    public static synchronized GoogleCloudMessaging getInstance(Context context) {
        if (aaO == null) {
            aaO = new GoogleCloudMessaging();
            aaO.zzagf = context.getApplicationContext();
        }
        return aaO;
    }

    static String zza(Intent intent, String str) throws IOException {
        if (intent == null) {
            throw new IOException(ERROR_SERVICE_NOT_AVAILABLE);
        }
        String stringExtra = intent.getStringExtra(str);
        if (stringExtra != null) {
            return stringExtra;
        }
        String stringExtra2 = intent.getStringExtra("error");
        if (stringExtra2 != null) {
            throw new IOException(stringExtra2);
        }
        throw new IOException(ERROR_SERVICE_NOT_AVAILABLE);
    }

    private void zza(String str, String str2, long j, int i, Bundle bundle) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("Missing 'to'");
        }
        Intent intent = new Intent("com.google.android.gcm.intent.SEND");
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        zzq(intent);
        intent.setPackage(zzdd(this.zzagf));
        intent.putExtra("google.to", str);
        intent.putExtra("google.message_id", str2);
        intent.putExtra("google.ttl", Long.toString(j));
        intent.putExtra("google.delay", Integer.toString(i));
        intent.putExtra("google.from", zzke(str));
        if (!zzdd(this.zzagf).contains(".gsf")) {
            this.zzagf.sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
            return;
        }
        Bundle bundle2 = new Bundle();
        for (String str3 : bundle.keySet()) {
            Object obj = bundle.get(str3);
            if (obj instanceof String) {
                String strValueOf = String.valueOf(str3);
                bundle2.putString(strValueOf.length() != 0 ? "gcm.".concat(strValueOf) : new String("gcm."), (String) obj);
            }
        }
        bundle2.putString("google.to", str);
        bundle2.putString("google.message_id", str2);
        InstanceID.getInstance(this.zzagf).zzc(INSTANCE_ID_SCOPE, "upstream", bundle2);
    }

    private String zzbme() {
        String strValueOf = String.valueOf("google.rpc");
        String strValueOf2 = String.valueOf(String.valueOf(aaR.getAndIncrement()));
        return strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
    }

    public static String zzdd(Context context) {
        return com.google.android.gms.iid.zzc.zzdi(context);
    }

    public static int zzde(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(zzdd(context), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            return -1;
        }
    }

    private String zzke(String str) {
        int iIndexOf = str.indexOf(64);
        if (iIndexOf > 0) {
            str = str.substring(0, iIndexOf);
        }
        return InstanceID.getInstance(this.zzagf).zzbmv().zzi("", str, INSTANCE_ID_SCOPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzp(Intent intent) {
        Handler handlerRemove;
        String stringExtra = intent.getStringExtra("In-Reply-To");
        if (stringExtra == null && intent.hasExtra("error")) {
            stringExtra = intent.getStringExtra("google.message_id");
        }
        if (stringExtra == null || (handlerRemove = this.aaQ.remove(stringExtra)) == null) {
            return false;
        }
        Message messageObtain = Message.obtain();
        messageObtain.obj = intent;
        return handlerRemove.sendMessage(messageObtain);
    }

    public void close() {
        aaO = null;
        zza.aaC = null;
        zzbmf();
    }

    public String getMessageType(Intent intent) {
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            return null;
        }
        String stringExtra = intent.getStringExtra("message_type");
        return stringExtra == null ? MESSAGE_TYPE_MESSAGE : stringExtra;
    }

    @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
    @Deprecated
    public synchronized String register(String... strArr) throws IOException {
        String strZza;
        String strZze = zze(strArr);
        Bundle bundle = new Bundle();
        if (zzdd(this.zzagf).contains(".gsf")) {
            bundle.putString("legacy.sender", strZze);
            strZza = InstanceID.getInstance(this.zzagf).getToken(strZze, INSTANCE_ID_SCOPE, bundle);
        } else {
            bundle.putString("sender", strZze);
            strZza = zza(zzah(bundle), "registration_id");
        }
        return strZza;
    }

    @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
    public void send(String str, String str2, long j, Bundle bundle) throws IOException {
        zza(str, str2, j, -1, bundle);
    }

    @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
    public void send(String str, String str2, Bundle bundle) throws IOException {
        send(str, str2, -1L, bundle);
    }

    @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
    @Deprecated
    public synchronized void unregister() throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException(ERROR_MAIN_THREAD);
        }
        InstanceID.getInstance(this.zzagf).deleteInstanceID();
    }

    @Deprecated
    Intent zzah(Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException(ERROR_MAIN_THREAD);
        }
        if (zzde(this.zzagf) < 0) {
            throw new IOException("Google Play Services missing");
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage(zzdd(this.zzagf));
        zzq(intent);
        intent.putExtra("google.message_id", zzbme());
        intent.putExtras(bundle);
        intent.putExtra("google.messenger", this.aaT);
        this.zzagf.startService(intent);
        try {
            return this.aaS.poll(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw new IOException(e.getMessage());
        }
    }

    synchronized void zzbmf() {
        if (this.aaP != null) {
            this.aaP.cancel();
            this.aaP = null;
        }
    }

    String zze(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("No senderIds");
        }
        StringBuilder sb = new StringBuilder(strArr[0]);
        for (int i = 1; i < strArr.length; i++) {
            sb.append(',').append(strArr[i]);
        }
        return sb.toString();
    }

    synchronized void zzq(Intent intent) {
        if (this.aaP == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            this.aaP = PendingIntent.getBroadcast(this.zzagf, 0, intent2, 0);
        }
        intent.putExtra("app", this.aaP);
    }
}
