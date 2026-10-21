package com.talkingdata.game;

import android.content.Context;
import com.tendcloud.tenddata.TalkingDataGA;

/* JADX INFO: loaded from: classes.dex */
public class TalkingDataSDK {
    public static String getAppId(Context context) {
        return TalkingDataGA.getGameAppId(context);
    }

    public static String getChannelId(Context context) {
        return TalkingDataGA.getPartnerId(context);
    }

    public static String getDeviceId(Context context) {
        return TalkingDataGA.getDeviceId(context);
    }

    public static void init(Context context, String str, String str2) {
        if (TalkingDataGA.sSDKInitialized.get()) {
            return;
        }
        TalkingDataGA.init(context, str, str2);
    }
}
