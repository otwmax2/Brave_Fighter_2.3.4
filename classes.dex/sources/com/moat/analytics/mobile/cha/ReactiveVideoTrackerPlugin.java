package com.moat.analytics.mobile.cha;

import android.app.Activity;
import android.view.View;
import com.moat.analytics.mobile.cha.base.functional.Optional;
import com.moat.analytics.mobile.cha.p;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ReactiveVideoTrackerPlugin implements l<ReactiveVideoTracker> {

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private final String f12;

    public ReactiveVideoTrackerPlugin(String str) {
        this.f12 = str;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.moat.analytics.mobile.cha.l
    public ReactiveVideoTracker create() throws o {
        return (ReactiveVideoTracker) p.m134(new p.c<ReactiveVideoTracker>() { // from class: com.moat.analytics.mobile.cha.ReactiveVideoTrackerPlugin.1
            @Override // com.moat.analytics.mobile.cha.p.c
            /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
            public final Optional<ReactiveVideoTracker> mo11() {
                a.m12("[INFO] ", "Attempting to create ReactiveVideoTracker");
                return Optional.of(new w(ReactiveVideoTrackerPlugin.this.f12));
            }
        }, ReactiveVideoTracker.class);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.moat.analytics.mobile.cha.l
    public ReactiveVideoTracker createNoOp() {
        return new d();
    }

    static class d implements ReactiveVideoTracker {
        d() {
        }

        @Override // com.moat.analytics.mobile.cha.ReactiveVideoTracker
        public final void setActivity(Activity activity) {
        }

        @Override // com.moat.analytics.mobile.cha.ReactiveVideoTracker
        public final void setListener(TrackerListener trackerListener) {
        }

        @Override // com.moat.analytics.mobile.cha.ReactiveVideoTracker
        public final void removeListener() {
        }

        @Override // com.moat.analytics.mobile.cha.ReactiveVideoTracker
        public final void setVideoListener(VideoTrackerListener videoTrackerListener) {
        }

        @Override // com.moat.analytics.mobile.cha.ReactiveVideoTracker
        public final void removeVideoListener() {
        }

        @Override // com.moat.analytics.mobile.cha.ReactiveVideoTracker
        public final boolean trackVideoAd(Map<String, String> map, Integer num, View view) {
            return false;
        }

        @Override // com.moat.analytics.mobile.cha.ReactiveVideoTracker
        public final void setPlayerVolume(Double d) {
        }

        @Override // com.moat.analytics.mobile.cha.ReactiveVideoTracker
        public final void changeTargetView(View view) {
        }

        @Override // com.moat.analytics.mobile.cha.ReactiveVideoTracker
        public final void dispatchEvent(MoatAdEvent moatAdEvent) {
        }

        @Override // com.moat.analytics.mobile.cha.ReactiveVideoTracker
        public final void stopTracking() {
        }
    }
}
