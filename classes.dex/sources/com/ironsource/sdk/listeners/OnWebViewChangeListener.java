package com.ironsource.sdk.listeners;

/* JADX INFO: loaded from: classes.dex */
public interface OnWebViewChangeListener {
    boolean onBackButtonPressed();

    void onCloseRequested();

    void onOrientationChanged(String str, int i);
}
