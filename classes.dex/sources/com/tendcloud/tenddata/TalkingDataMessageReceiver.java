package com.tendcloud.tenddata;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.util.Log;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.games.GamesActivityResultCodes;
import com.tendcloud.tenddata.game.aa;
import com.tendcloud.tenddata.game.az;
import com.tendcloud.tenddata.game.bb;
import com.tendcloud.tenddata.game.bc;
import com.tendcloud.tenddata.game.bp;
import com.tendcloud.tenddata.game.bs;
import com.tendcloud.tenddata.game.t;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class TalkingDataMessageReceiver extends BroadcastReceiver {
    public static final String a = "com.talkingdata.notification.click";
    public static final String b = "com.talkingdata.notification.cancel";
    public static final String c = "com.talkingdata.message.click";
    static String d = TalkingDataMessageReceiver.class.getSimpleName();
    static final String e = "TalkingData_Push_SharedPreferences";

    enum a {
        baidu,
        getui,
        jpush,
        nick
    }

    static String a(a aVar) {
        switch (aVar) {
            case baidu:
                return "api_key";
            case getui:
            default:
                return "PUSH_APPID";
            case jpush:
                return "JPUSH_APPKEY";
            case nick:
                return "TD_APP_ID";
        }
    }

    private void a(Context context, Intent intent) {
        try {
            Bundle extras = intent.getExtras();
            String stringExtra = intent.getStringExtra("sign");
            String string = extras.getString("url");
            bp.a(string + " is triggered !");
            if (intent.getBooleanExtra(AlertActivity.b, false)) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 103;
                messageObtain.obj = new bb(stringExtra, string, bb.a.INAPP_DURATION, intent.getIntExtra(AlertActivity.c, 0));
                bc.a().sendMessage(messageObtain);
            } else {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 103;
                messageObtain2.obj = new bb(stringExtra, string, bb.a.CLICK, 0);
                bc.a().sendMessage(messageObtain2);
            }
            if (string.equals("talkingdata://close")) {
                return;
            }
            if (!string.startsWith("talkingdata://app")) {
                if (string.startsWith("talkingdata://uri")) {
                    Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(string.substring("talkingdata://uri/".length())));
                    intent2.setFlags(268435456);
                    context.startActivity(intent2);
                    return;
                }
                return;
            }
            String strSubstring = string.substring("talkingdata://app/".length());
            if (strSubstring == null || strSubstring.length() <= 0) {
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
                launchIntentForPackage.addFlags(536870912);
                context.startActivity(launchIntentForPackage);
            } else {
                Intent intent3 = new Intent();
                intent3.setFlags(268435456);
                intent3.setPackage(strSubstring);
                context.startActivity(intent3);
            }
        } catch (Throwable th) {
            if (bp.b) {
                th.printStackTrace();
            }
        }
    }

    private void a(Context context, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject != null) {
                if (jSONObject.has("sign")) {
                    String string = jSONObject.getString("sign");
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 103;
                    messageObtain.obj = new bb(string, null, bb.a.ARRIVED, 0);
                    bc.a().sendMessage(messageObtain);
                }
                int i = jSONObject.getInt("type");
                if (i == 1) {
                    az.a(context, jSONObject);
                    return;
                }
                if (i != 2) {
                    if (i == 3) {
                        az.a(context, jSONObject, false);
                    } else {
                        if (i != 4 || bs.a) {
                            return;
                        }
                        new bs(context, jSONObject).execute(jSONObject.getString("url"), context.getFilesDir().getAbsolutePath() + "/tdwebdata");
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    static synchronized void a(Context context, String str, a aVar) {
        String strC = aa.c(context, a(aVar));
        if (aVar == a.nick && (strC = TalkingDataGA.b) == null) {
            strC = t.b(context, "td_pefercen_profile", "appkey", (String) null);
            if (bp.b) {
                bp.b("App" + strC);
            }
        }
        if (strC != null) {
            String strB = t.b(context, e, aVar + strC, (String) null);
            if (strB == null || (strB != null && !strB.equalsIgnoreCase(str))) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 102;
                messageObtain.obj = new bb(strC, str, aVar.name());
                bc.a().sendMessage(messageObtain);
                t.a(az.a, e, aVar.name() + strC, str);
            }
        } else {
            bp.c("onPushIdReceived()#" + aVar.name() + " appid is null");
        }
    }

    private void b(Context context, Intent intent) {
        try {
            String stringExtra = intent.getStringExtra("custom");
            String stringExtra2 = intent.getStringExtra("sign");
            if (intent.getStringExtra("appkey").equals(TalkingDataGA.getAppId(context))) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 103;
                messageObtain.obj = new bb(stringExtra2, null, bb.a.CLICK, 0);
                bc.a().sendMessage(messageObtain);
                if (stringExtra == null) {
                    Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
                    launchIntentForPackage.addFlags(536870912);
                    context.startActivity(launchIntentForPackage);
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(stringExtra);
                    if (jSONObject.isNull("activity")) {
                        Intent launchIntentForPackage2 = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
                        launchIntentForPackage2.putExtra("custom", stringExtra);
                        context.startActivity(launchIntentForPackage2);
                    } else {
                        String string = jSONObject.getString("activity");
                        Intent intent2 = new Intent();
                        intent2.setClassName(context, string);
                        intent2.addFlags(268435456);
                        intent2.putExtra("custom", stringExtra);
                        context.startActivity(intent2);
                    }
                } catch (Throwable th) {
                }
            }
        } catch (Throwable th2) {
            if (bp.b) {
                th2.printStackTrace();
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            String strB = t.b(context, "td_pefercen_profile", "appkey", (String) null);
            String stringExtra = intent.getStringExtra("appkey");
            if (strB != null) {
                if (stringExtra == null || stringExtra.equals(strB)) {
                    if (TalkingDataGA.a == null) {
                        TalkingDataGA.a = context;
                        az.a(context);
                    }
                    String action = intent.getAction();
                    if (action.equals("com.baidu.android.pushservice.action.MESSAGE")) {
                        a(context, intent.getExtras().getString("message_string"));
                        return;
                    }
                    if (action.equals("com.baidu.android.pushservice.action.notification.CLICK")) {
                        return;
                    }
                    if (action.equals("com.baidu.android.pushservice.action.RECEIVE")) {
                        if (intent.getByteArrayExtra("content") != null) {
                            a(context, new String(intent.getByteArrayExtra("content")), a.baidu);
                            return;
                        } else {
                            Log.e(d, "BAIDU push id is null");
                            return;
                        }
                    }
                    if (action.equals("cn.jpush.android.intent.REGISTRATION")) {
                        a(context, intent.getExtras().getString("cn.jpush.android.REGISTRATION_ID"), a.jpush);
                        return;
                    }
                    if (action.equals("cn.jpush.android.intent.MESSAGE_RECEIVED")) {
                        a(context, intent.getExtras().getString("cn.jpush.android.MESSAGE"));
                        return;
                    }
                    if (action.equals(a)) {
                        int i = intent.getExtras().getInt(ShareConstants.WEB_DIALOG_PARAM_ID, 0);
                        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                        if (i != 0) {
                            notificationManager.cancel(i);
                        }
                        b(context, intent);
                        return;
                    }
                    if (action.equals(b)) {
                        String stringExtra2 = intent.getStringExtra("sign");
                        Message messageObtain = Message.obtain();
                        messageObtain.what = 103;
                        messageObtain.obj = new bb(stringExtra2, null, bb.a.CANCEL, 0);
                        bc.a().sendMessage(messageObtain);
                        return;
                    }
                    if (action.equals(c)) {
                        a(context, intent);
                        return;
                    }
                    if (action.startsWith("com.igexin.sdk.action")) {
                        Bundle extras = intent.getExtras();
                        switch (extras.getInt("action")) {
                            case GamesActivityResultCodes.RESULT_RECONNECT_REQUIRED /* 10001 */:
                                byte[] byteArray = extras.getByteArray("payload");
                                if (byteArray != null) {
                                    a(context, new String(byteArray));
                                }
                                break;
                            case GamesActivityResultCodes.RESULT_SIGN_IN_FAILED /* 10002 */:
                                a(context, extras.getString("clientid"), a.getui);
                                break;
                        }
                    }
                    if (!action.equals("android.talkingdata.action.media.SILENT")) {
                        if (action.equals("android.talkingdata.action.media.TD.TOKEN")) {
                            a(context, intent.getStringExtra("mpush_token"), a.nick);
                        }
                    } else {
                        try {
                            JSONObject jSONObject = new JSONObject(intent.getStringExtra("mpush_message_string"));
                            if (!jSONObject.getString("app").equals(TalkingDataGA.getGameAppId(context)) || TalkingDataGA.e) {
                                return;
                            }
                            a(context, jSONObject.getString("content"));
                        } catch (Throwable th) {
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            if (bp.b) {
                th2.printStackTrace();
            }
        }
    }
}
