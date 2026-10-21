package com.tendcloud.tenddata.game;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.tendcloud.tenddata.TalkingDataGA;

/* JADX INFO: loaded from: classes.dex */
public class bl implements Application.ActivityLifecycleCallbacks {
    public static boolean a = false;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        try {
            bp.a("Lifecycle callback TDGAActivityLifecycleCallbacks.onActivityPaused.");
            TalkingDataGA.b(activity.getApplicationContext(), activity.getLocalClassName());
            a = true;
        } catch (Exception e) {
            bp.a("TDGAActivityLifecycleCallbacks.onActivityPaused", e.getMessage());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        try {
            bp.a("Lifecycle callback TDGAActivityLifecycleCallbacks.onActivityResumed.");
            TalkingDataGA.a(activity.getApplicationContext(), activity.getLocalClassName());
        } catch (Exception e) {
            bp.a("TDGAActivityLifecycleCallbacks.onActivityResumed", e.getMessage());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
