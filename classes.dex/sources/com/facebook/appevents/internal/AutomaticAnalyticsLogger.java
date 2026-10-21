package com.facebook.appevents.internal;

import android.content.Context;
import android.os.Bundle;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;

/* JADX INFO: loaded from: classes.dex */
class AutomaticAnalyticsLogger {
    AutomaticAnalyticsLogger() {
    }

    public static void logActivityTimeSpentEvent(Context context, String appId, String activityName, long timeSpentInSeconds) {
        AppEventsLogger l = AppEventsLogger.newLogger(context);
        FetchedAppSettings settings = FetchedAppSettingsManager.queryAppSettings(appId, false);
        if (settings.getAutomaticLoggingEnabled() && timeSpentInSeconds > 0) {
            Bundle params = new Bundle(1);
            params.putCharSequence(Constants.AA_TIME_SPENT_SCREEN_PARAMETER_NAME, activityName);
            l.logEvent(Constants.AA_TIME_SPENT_EVENT_NAME, timeSpentInSeconds, params);
        }
    }
}
