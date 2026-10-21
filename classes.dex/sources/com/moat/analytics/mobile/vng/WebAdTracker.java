package com.moat.analytics.mobile.vng;

import android.app.Activity;

/* JADX INFO: loaded from: classes.dex */
public interface WebAdTracker {
    @Deprecated
    void setActivity(Activity activity);

    void startTracking();

    void stopTracking();
}
