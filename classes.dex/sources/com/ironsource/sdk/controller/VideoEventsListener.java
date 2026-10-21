package com.ironsource.sdk.controller;

/* JADX INFO: loaded from: classes.dex */
public interface VideoEventsListener {
    void onVideoEnded();

    void onVideoPaused();

    void onVideoResumed();

    void onVideoStarted();

    void onVideoStopped();
}
