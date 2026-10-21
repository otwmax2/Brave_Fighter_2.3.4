package com.vungle.publisher;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Size;
import android.support.v4.media.session.PlaybackStateCompat;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class VunglePub extends VunglePubBase {
    private static final VunglePub n = new VunglePub();
    public static final String VERSION = VunglePubBase.VERSION;

    public static VunglePub getInstance() {
        return n;
    }

    VunglePub() {
    }

    @Override // com.vungle.publisher.VunglePubBase
    public void addEventListeners(VungleAdEventListener... eventListeners) {
        super.addEventListeners(eventListeners);
    }

    @Override // com.vungle.publisher.VunglePubBase
    public void clearEventListeners() {
        super.clearEventListeners();
    }

    @Override // com.vungle.publisher.VunglePubBase
    public void clearAndSetEventListeners(VungleAdEventListener... eventListeners) {
        super.clearAndSetEventListeners(eventListeners);
    }

    @Override // com.vungle.publisher.VunglePubBase
    public void removeEventListeners(VungleAdEventListener... eventListeners) {
        super.removeEventListeners(eventListeners);
    }

    @Override // com.vungle.publisher.VunglePubBase
    public void init(@NonNull Context context, @NonNull String vungleAppId, @Size(min = PlaybackStateCompat.ACTION_STOP) @NonNull String[] placementReferenceIds, @Nullable VungleInitListener initListener) {
        super.init(context, vungleAppId, placementReferenceIds, initListener);
    }

    @Override // com.vungle.publisher.VunglePubBase
    @Nullable
    public AdConfig getGlobalAdConfig() {
        return super.getGlobalAdConfig();
    }

    @Override // com.vungle.publisher.VunglePubBase
    public boolean isInitialized() {
        return super.isInitialized();
    }

    @Override // com.vungle.publisher.VunglePubBase
    public boolean isAdPlayable(@NonNull String placementReferenceId) {
        return super.isAdPlayable(placementReferenceId);
    }

    @Override // com.vungle.publisher.VunglePubBase
    public void loadAd(@NonNull String placementReferenceId) {
        super.loadAd(placementReferenceId);
    }

    @Override // com.vungle.publisher.VunglePubBase
    public void playAd(@NonNull String placementReferenceId, @Nullable AdConfig adConfig) {
        super.playAd(placementReferenceId, adConfig);
    }

    @Override // com.vungle.publisher.VunglePubBase
    public boolean closeFlexViewAd(@NonNull String placementReferenceId) {
        return super.closeFlexViewAd(placementReferenceId);
    }
}
