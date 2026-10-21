package com.moat.analytics.mobile.cha;

import android.media.MediaPlayer;
import android.view.View;
import com.tendcloud.tenddata.game.ao;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class s extends i implements NativeVideoTracker {

    /* JADX INFO: renamed from: ॱˊ, reason: contains not printable characters */
    private WeakReference<MediaPlayer> f175;

    s(String str) {
        super(str);
        a.m15(3, "NativeVideoTracker", this, "In initialization method.");
        if (str == null || str.isEmpty()) {
            String str2 = "PartnerCode is " + (str == null ? "null" : "empty");
            String str3 = "NativeDisplayTracker creation problem, " + str2;
            a.m15(3, "NativeVideoTracker", this, str3);
            a.m12("[ERROR] ", str3);
            this.f51 = new o(str2);
        }
        a.m12("[SUCCESS] ", "NativeVideoTracker created");
    }

    @Override // com.moat.analytics.mobile.cha.i
    /* JADX INFO: renamed from: ͺ */
    final boolean mo75() {
        return (this.f175 == null || this.f175.get() == null) ? false : true;
    }

    @Override // com.moat.analytics.mobile.cha.d
    /* JADX INFO: renamed from: ˋ */
    final String mo45() {
        return "NativeVideoTracker";
    }

    @Override // com.moat.analytics.mobile.cha.NativeVideoTracker
    public final boolean trackVideoAd(Map<String, String> map, MediaPlayer mediaPlayer, View view) {
        try {
            m46();
            m47();
            if (mediaPlayer == null) {
                throw new o("Null player instance");
            }
            try {
                mediaPlayer.getCurrentPosition();
                this.f175 = new WeakReference<>(mediaPlayer);
                return super.mo30(map, view);
            } catch (Exception e) {
                throw new o("Playback has already completed");
            }
        } catch (Exception e2) {
            o.m131(e2);
            String strM130 = o.m130("trackVideoAd", e2);
            if (this.f45 != null) {
                this.f45.onTrackingFailedToStart(strM130);
            }
            a.m15(3, "NativeVideoTracker", this, strM130);
            a.m12("[ERROR] ", "NativeVideoTracker " + strM130);
            return false;
        }
    }

    @Override // com.moat.analytics.mobile.cha.i
    /* JADX INFO: renamed from: ॱˋ */
    final Integer mo76() {
        return Integer.valueOf(this.f175.get().getCurrentPosition());
    }

    @Override // com.moat.analytics.mobile.cha.i
    /* JADX INFO: renamed from: ॱˎ */
    final boolean mo77() {
        return this.f175.get().isPlaying();
    }

    @Override // com.moat.analytics.mobile.cha.i
    /* JADX INFO: renamed from: ॱᐝ */
    final Integer mo78() {
        return Integer.valueOf(this.f175.get().getDuration());
    }

    @Override // com.moat.analytics.mobile.cha.b
    /* JADX INFO: renamed from: ᐝ */
    final Map<String, Object> mo32() throws o {
        MediaPlayer mediaPlayer = this.f175.get();
        HashMap map = new HashMap();
        map.put("width", Integer.valueOf(mediaPlayer.getVideoWidth()));
        map.put("height", Integer.valueOf(mediaPlayer.getVideoHeight()));
        map.put(ao.n, Integer.valueOf(mediaPlayer.getDuration()));
        return map;
    }

    @Override // com.moat.analytics.mobile.cha.b, com.moat.analytics.mobile.cha.d
    /* JADX INFO: renamed from: ˋ */
    final void mo25(List<String> list) throws o {
        if (!((this.f175 == null || this.f175.get() == null) ? false : true)) {
            list.add("Player is null");
        }
        super.mo25(list);
    }
}
