package com.moat.analytics.mobile.iro;

import android.app.Activity;
import android.app.Application;
import android.media.MediaPlayer;
import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.iro.NativeDisplayTracker;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
abstract class NoOp {
    NoOp() {
    }

    static class b implements WebAdTracker {
        b() {
        }

        @Override // com.moat.analytics.mobile.iro.WebAdTracker
        public final void startTracking() {
        }

        @Override // com.moat.analytics.mobile.iro.WebAdTracker
        public final void setListener(TrackerListener trackerListener) {
        }

        @Override // com.moat.analytics.mobile.iro.WebAdTracker
        public final void removeListener() {
        }

        @Override // com.moat.analytics.mobile.iro.WebAdTracker
        public final void setActivity(Activity activity) {
        }

        @Override // com.moat.analytics.mobile.iro.WebAdTracker
        public final void stopTracking() {
        }
    }

    static class a implements NativeDisplayTracker {
        a() {
        }

        @Override // com.moat.analytics.mobile.iro.NativeDisplayTracker
        public final void startTracking() {
        }

        @Override // com.moat.analytics.mobile.iro.NativeDisplayTracker
        public final void setListener(TrackerListener trackerListener) {
        }

        @Override // com.moat.analytics.mobile.iro.NativeDisplayTracker
        public final void removeListener() {
        }

        @Override // com.moat.analytics.mobile.iro.NativeDisplayTracker
        public final void setActivity(Activity activity) {
        }

        @Override // com.moat.analytics.mobile.iro.NativeDisplayTracker
        public final void stopTracking() {
        }

        @Override // com.moat.analytics.mobile.iro.NativeDisplayTracker
        public final void reportUserInteractionEvent(NativeDisplayTracker.MoatUserInteractionType moatUserInteractionType) {
        }
    }

    static class c implements NativeVideoTracker {
        c() {
        }

        @Override // com.moat.analytics.mobile.iro.NativeVideoTracker
        public final void setActivity(Activity activity) {
        }

        @Override // com.moat.analytics.mobile.iro.NativeVideoTracker
        public final void setListener(TrackerListener trackerListener) {
        }

        @Override // com.moat.analytics.mobile.iro.NativeVideoTracker
        public final void removeListener() {
        }

        @Override // com.moat.analytics.mobile.iro.NativeVideoTracker
        public final void setVideoListener(VideoTrackerListener videoTrackerListener) {
        }

        @Override // com.moat.analytics.mobile.iro.NativeVideoTracker
        public final void removeVideoListener() {
        }

        @Override // com.moat.analytics.mobile.iro.NativeVideoTracker
        public final void dispatchEvent(MoatAdEvent moatAdEvent) {
        }

        @Override // com.moat.analytics.mobile.iro.NativeVideoTracker
        public final boolean trackVideoAd(Map<String, String> map, MediaPlayer mediaPlayer, View view) {
            return false;
        }

        @Override // com.moat.analytics.mobile.iro.NativeVideoTracker
        public final void setPlayerVolume(Double d) {
        }

        @Override // com.moat.analytics.mobile.iro.NativeVideoTracker
        public final void changeTargetView(View view) {
        }

        @Override // com.moat.analytics.mobile.iro.NativeVideoTracker
        public final void stopTracking() {
        }
    }

    public static class MoatAnalytics extends com.moat.analytics.mobile.iro.MoatAnalytics {
        @Override // com.moat.analytics.mobile.iro.MoatAnalytics
        public void start(MoatOptions moatOptions, Application application) {
        }

        @Override // com.moat.analytics.mobile.iro.MoatAnalytics
        public void start(Application application) {
        }

        @Override // com.moat.analytics.mobile.iro.MoatAnalytics
        public void prepareNativeDisplayTracking(String str) {
        }
    }

    public static class MoatFactory extends com.moat.analytics.mobile.iro.MoatFactory {
        @Override // com.moat.analytics.mobile.iro.MoatFactory
        public WebAdTracker createWebAdTracker(@NonNull WebView webView) {
            return new b();
        }

        @Override // com.moat.analytics.mobile.iro.MoatFactory
        public WebAdTracker createWebAdTracker(@NonNull ViewGroup viewGroup) {
            return new b();
        }

        @Override // com.moat.analytics.mobile.iro.MoatFactory
        public NativeDisplayTracker createNativeDisplayTracker(@NonNull View view, @NonNull Map<String, String> map) {
            return new a();
        }

        @Override // com.moat.analytics.mobile.iro.MoatFactory
        public NativeVideoTracker createNativeVideoTracker(@NonNull String str) {
            return new c();
        }

        @Override // com.moat.analytics.mobile.iro.MoatFactory
        public <T> T createCustomTracker(m<T> mVar) {
            return mVar.createNoOp();
        }
    }
}
