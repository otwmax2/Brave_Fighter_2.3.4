package com.moat.analytics.mobile.cha;

import android.app.Activity;
import android.support.annotation.UiThread;

/* JADX INFO: loaded from: classes.dex */
@UiThread
public interface WebAdTracker {
    void removeListener();

    @Deprecated
    void setActivity(Activity activity);

    void setListener(TrackerListener trackerListener);

    void startTracking();

    void stopTracking();
}
