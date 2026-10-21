package com.moat.analytics.mobile.cha;

/* JADX INFO: loaded from: classes.dex */
public interface TrackerListener {
    void onTrackingFailedToStart(String str);

    void onTrackingStarted(String str);

    void onTrackingStopped(String str);
}
