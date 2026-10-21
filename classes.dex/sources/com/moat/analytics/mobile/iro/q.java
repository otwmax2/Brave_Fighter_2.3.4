package com.moat.analytics.mobile.iro;

import android.media.MediaPlayer;
import android.view.View;
import com.tendcloud.tenddata.game.ao;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class q extends g implements NativeVideoTracker {

    /* JADX INFO: renamed from: ͺ, reason: contains not printable characters */
    private WeakReference<MediaPlayer> f383;

    q(String str) {
        super(str);
        b.m203(3, "NativeVideoTracker", this, "In initialization method.");
        if (str == null || str.isEmpty()) {
            String str2 = "PartnerCode is " + (str == null ? "null" : "empty");
            String str3 = "NativeDisplayTracker creation problem, " + str2;
            b.m203(3, "NativeVideoTracker", this, str3);
            b.m201("[ERROR] ", str3);
            this.f260 = new o(str2);
        }
        b.m201("[SUCCESS] ", "NativeVideoTracker created");
    }

    @Override // com.moat.analytics.mobile.iro.g
    /* JADX INFO: renamed from: ॱˊ */
    final boolean mo262() {
        return (this.f383 == null || this.f383.get() == null) ? false : true;
    }

    @Override // com.moat.analytics.mobile.iro.c
    /* JADX INFO: renamed from: ˊ */
    final String mo211() {
        return "NativeVideoTracker";
    }

    @Override // com.moat.analytics.mobile.iro.NativeVideoTracker
    public final boolean trackVideoAd(Map<String, String> map, MediaPlayer mediaPlayer, View view) {
        try {
            m212();
            m215();
            if (mediaPlayer == null) {
                throw new o("Null player instance");
            }
            try {
                mediaPlayer.getCurrentPosition();
                this.f383 = new WeakReference<>(mediaPlayer);
                return super.mo224(map, view);
            } catch (Exception e) {
                throw new o("Playback has already completed");
            }
        } catch (Exception e2) {
            o.m311(e2);
            String strM310 = o.m310("trackVideoAd", e2);
            if (this.f258 != null) {
                this.f258.onTrackingFailedToStart(strM310);
            }
            b.m203(3, "NativeVideoTracker", this, strM310);
            b.m201("[ERROR] ", "NativeVideoTracker " + strM310);
            return false;
        }
    }

    @Override // com.moat.analytics.mobile.iro.g
    /* JADX INFO: renamed from: ˋॱ */
    final Integer mo261() {
        return Integer.valueOf(this.f383.get().getCurrentPosition());
    }

    @Override // com.moat.analytics.mobile.iro.g
    /* JADX INFO: renamed from: ॱˎ */
    final boolean mo263() {
        return this.f383.get().isPlaying();
    }

    @Override // com.moat.analytics.mobile.iro.g
    /* JADX INFO: renamed from: ʻॱ */
    final Integer mo259() {
        return Integer.valueOf(this.f383.get().getDuration());
    }

    @Override // com.moat.analytics.mobile.iro.d
    /* JADX INFO: renamed from: ˊॱ */
    final Map<String, Object> mo222() throws o {
        MediaPlayer mediaPlayer = this.f383.get();
        HashMap map = new HashMap();
        map.put("width", Integer.valueOf(mediaPlayer.getVideoWidth()));
        map.put("height", Integer.valueOf(mediaPlayer.getVideoHeight()));
        map.put(ao.n, Integer.valueOf(mediaPlayer.getDuration()));
        return map;
    }

    @Override // com.moat.analytics.mobile.iro.d, com.moat.analytics.mobile.iro.c
    /* JADX INFO: renamed from: ˏ */
    final void mo216(List<String> list) throws o {
        if (!((this.f383 == null || this.f383.get() == null) ? false : true)) {
            list.add("Player is null");
        }
        super.mo216(list);
    }
}
