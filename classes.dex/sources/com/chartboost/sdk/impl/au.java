package com.chartboost.sdk.impl;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;
import com.chartboost.sdk.Libraries.CBLogging;

/* JADX INFO: loaded from: classes.dex */
public class au extends FrameLayout {
    private View a;
    private boolean b;

    public interface a {
        void a();

        void a(int i);

        void a(int i, int i2);

        void a(MediaPlayer.OnCompletionListener onCompletionListener);

        void a(MediaPlayer.OnErrorListener onErrorListener);

        void a(MediaPlayer.OnPreparedListener onPreparedListener);

        void a(Uri uri);

        void b();

        int c();

        int d();

        boolean e();
    }

    public au(Context context) {
        super(context);
        b();
    }

    private void b() {
        this.b = true;
        CBLogging.e("VideoInit", "Choosing " + (this.b ? "texture" : "surface") + " solution for video playback");
        com.chartboost.sdk.g gVarA = com.chartboost.sdk.g.a();
        if (this.b) {
            this.a = (View) gVarA.a(new at(getContext()));
        } else {
            this.a = (View) gVarA.a(new as(getContext()));
        }
        this.a.setContentDescription("CBVideo");
        addView(this.a, new FrameLayout.LayoutParams(-1, -1));
        if (!this.b) {
            ((SurfaceView) this.a).setZOrderMediaOverlay(true);
        }
    }

    public a a() {
        return (a) this.a;
    }

    @Override // android.view.View
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        a().a(w, h);
    }
}
