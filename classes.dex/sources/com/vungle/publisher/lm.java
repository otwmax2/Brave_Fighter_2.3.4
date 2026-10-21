package com.vungle.publisher;

import android.media.AudioManager;
import com.facebook.login.widget.ProfilePictureView;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class lm implements AudioManager.OnAudioFocusChangeListener {

    @Inject
    AudioManager a;
    private boolean b = false;

    @Inject
    lm() {
    }

    public int a() {
        return this.a.getStreamVolume(3);
    }

    public float b() {
        float streamVolume = this.a.getStreamVolume(3);
        int streamMaxVolume = this.a.getStreamMaxVolume(3);
        if (streamMaxVolume > 0) {
            return streamVolume / streamMaxVolume;
        }
        return 0.0f;
    }

    public void c() {
        Logger.v(Logger.DEVICE_TAG, "ad requests audio focus");
        if (!this.b) {
            if (this.a.requestAudioFocus(this, 3, 3) == 1) {
                Logger.v(Logger.DEVICE_TAG, "audio focus request granted");
                this.b = true;
                return;
            } else {
                Logger.v(Logger.DEVICE_TAG, "audio focus request rejected");
                this.b = false;
                return;
            }
        }
        Logger.v(Logger.DEVICE_TAG, "ad already has audio focus");
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int focusChange) {
        switch (focusChange) {
            case ProfilePictureView.NORMAL /* -3 */:
            case -2:
            case -1:
                this.b = false;
                break;
            case 1:
                this.b = true;
                break;
        }
        Logger.v(Logger.DEVICE_TAG, "audio focus changed to " + this.b + ", with focusChange code " + focusChange);
    }

    public void d() {
        Logger.v(Logger.DEVICE_TAG, "ad abandoning audio focus");
        this.a.abandonAudioFocus(this);
        this.b = false;
    }
}
