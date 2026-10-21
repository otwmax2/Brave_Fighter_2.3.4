package com.vungle.publisher;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.moat.analytics.mobile.vng.MoatAdEvent;
import com.moat.analytics.mobile.vng.MoatAdEventType;
import com.vungle.publisher.image.AssetBitmapFactory;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.ji;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.mq;
import com.vungle.publisher.og;
import com.vungle.publisher.oj;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class op extends mf implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    private Bitmap A;
    private String D;
    private int E;
    private boolean F;
    private int G;
    private int I;
    private boolean J;
    private int M;
    private int N;
    private MediaPlayer P;
    jg<?> e;
    TouchDelegate f;

    @Inject
    mv g;

    @Inject
    qg h;

    @Inject
    a i;

    @Inject
    og.a j;

    @Inject
    oj.a k;

    @Inject
    com.vungle.publisher.env.i l;

    @Inject
    zo m;

    @Inject
    cb n;

    @Inject
    lm o;

    @Inject
    zf p;
    private ImageView q;
    private ImageView r;
    private oj s;
    private oa t;
    private RelativeLayout u;
    private VideoView v;
    private ViewGroup w;
    private Bitmap x;
    private Bitmap y;
    private Bitmap z;
    private final Handler B = new Handler();
    private final Runnable C = new c();
    private AtomicBoolean H = new AtomicBoolean();
    private AtomicBoolean K = new AtomicBoolean();
    private AtomicBoolean L = new AtomicBoolean();
    private AtomicBoolean O = new AtomicBoolean(true);

    @Inject
    public op() {
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        this.w = new RelativeLayout(getActivity().getApplicationContext());
        this.w.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        return this.w;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle savedInstanceState) {
        try {
            super.onActivityCreated(savedInstanceState);
            try {
                if (Injector.getInstance().d()) {
                    Injector.c().a(this);
                } else {
                    Logger.w(Logger.AD_TAG, "SDK not initialized");
                    getActivity().finish();
                }
            } catch (Throwable th) {
                Logger.i(Logger.AD_TAG, "Unexpected error in fragment injection", th);
            }
            this.i.a(this, savedInstanceState);
            if (this.J) {
                this.h.a(new ba());
            }
            Context applicationContext = getActivity().getApplicationContext();
            VideoView videoView = new VideoView(applicationContext);
            this.v = videoView;
            oa oaVar = new oa(applicationContext);
            this.r = oaVar;
            oa oaVar2 = new oa(applicationContext);
            this.t = oaVar2;
            this.x = this.m.a(AssetBitmapFactory.a.muteOn);
            this.y = this.m.a(AssetBitmapFactory.a.muteOff);
            this.O.set(!this.b.isSoundEnabled());
            oaVar2.setOnClickListener(oq.a(this));
            og ogVarA = this.j.a(applicationContext, false);
            oj ojVarA = this.k.a(1);
            this.s = ojVarA;
            this.w.addView(videoView);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) videoView.getLayoutParams();
            layoutParams.height = -1;
            layoutParams.width = -1;
            layoutParams.addRule(13);
            RelativeLayout relativeLayout = new RelativeLayout(applicationContext);
            this.w.addView(relativeLayout);
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
            layoutParams2.width = -1;
            layoutParams2.height = -2;
            layoutParams2.addRule(10);
            relativeLayout.addView(oaVar);
            this.m.a(oaVar, AssetBitmapFactory.a.close);
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) oaVar.getLayoutParams();
            layoutParams3.addRule(9);
            layoutParams3.addRule(15);
            relativeLayout.addView(ogVarA);
            ogVarA.setVisibility(0);
            RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) ogVarA.getLayoutParams();
            layoutParams4.addRule(11);
            layoutParams4.addRule(15);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, ojVarA.getProgressBarHeight());
            this.w.addView(ojVarA, layoutParams5);
            layoutParams5.addRule(12);
            RelativeLayout relativeLayout2 = new RelativeLayout(applicationContext);
            this.u = relativeLayout2;
            this.w.addView(relativeLayout2);
            RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) relativeLayout2.getLayoutParams();
            layoutParams6.width = -1;
            layoutParams6.height = -2;
            layoutParams6.addRule(2, 1);
            relativeLayout2.addView(oaVar2);
            RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) oaVar2.getLayoutParams();
            layoutParams7.addRule(11);
            layoutParams7.addRule(15);
            int iRound = Math.round(this.g.a(2));
            int iRound2 = Math.round(this.g.a(1));
            relativeLayout.setPadding(iRound, iRound2, iRound, iRound2);
            relativeLayout2.setPadding(iRound, iRound2, iRound, iRound2);
            f();
            Logger.i(Logger.AD_TAG, "video play URI = " + this.e.x());
            videoView.setVideoURI(this.e.x());
            c();
            Integer numI = this.c ? this.e.I() : this.e.J();
            if (numI == null) {
                this.I = 0;
                this.L.set(true);
            } else {
                this.I = numI.intValue();
                oaVar.setAlpha(0.0f);
                this.L.set(false);
            }
            oaVar.setOnClickListener(new b());
            videoView.setOnTouchListener(or.a(this));
            videoView.setOnCompletionListener(this);
            videoView.setOnErrorListener(this);
            videoView.setOnPreparedListener(this);
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "exception in onActivityCreated", e);
        }
    }

    /* synthetic */ void a(View view) {
        Logger.d(Logger.AD_TAG, this.O.get() ? "Muting" : "Unmuting");
        n();
    }

    /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        Logger.v(Logger.AD_TAG, "video onTouch");
        if (this.f != null) {
            this.f.onTouchEvent(motionEvent);
        }
        return a(motionEvent);
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        try {
            super.onSaveInstanceState(outState);
            outState.putParcelable("adConfig", (Parcelable) this.b);
            outState.putBoolean("adStarted", this.J);
            outState.putInt("currentVideoPosition", this.N);
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "exception in onSaveInstanceState", e);
        }
    }

    void c() {
        if (Boolean.TRUE.equals(this.e.F())) {
            this.z = this.m.a(AssetBitmapFactory.a.cta);
            this.A = this.m.a(AssetBitmapFactory.a.ctaDisabled);
            d();
            oa oaVar = new oa(getActivity());
            this.q = oaVar;
            this.u.addView(oaVar);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) oaVar.getLayoutParams();
            layoutParams.addRule(9);
            layoutParams.addRule(15);
            a((ImageView) oaVar);
            Float fD = this.e.D();
            if (fD == null || fD.floatValue() <= 1.0f) {
                Logger.v(Logger.AD_TAG, "cta clickable area not scaled");
            } else {
                oaVar.post(os.a(this, fD, oaVar));
            }
            if (Boolean.TRUE.equals(this.e.G())) {
                oaVar.setAlpha(0.0f);
                oaVar.setImageBitmap(this.z);
            } else {
                d(this.G >= this.E);
            }
            oaVar.setOnClickListener(ot.a(this, oaVar));
        }
    }

    /* synthetic */ void a(Float f, ImageView imageView) {
        float fSqrt = (float) Math.sqrt(f.floatValue());
        int height = imageView.getHeight();
        int width = imageView.getWidth();
        int iRound = Math.round(height * fSqrt);
        int iRound2 = Math.round(fSqrt * width);
        Logger.v(Logger.AD_TAG, "scaling cta clickable area " + f + "x - width: " + width + " --> " + iRound2 + ", height: " + height + " --> " + iRound);
        Rect rect = new Rect();
        imageView.getHitRect(rect);
        rect.bottom = rect.top + iRound;
        rect.left = rect.right - iRound2;
        this.f = new TouchDelegate(rect, imageView);
    }

    /* synthetic */ void a(ImageView imageView, View view) {
        if (this.F) {
            Logger.d(Logger.AD_TAG, "cta overlay onClick");
            imageView.setOnClickListener(null);
            b(false);
            this.h.a(new aa(ji.a.video_click));
            return;
        }
        Logger.v(Logger.AD_TAG, "cta overlay onClick, but not enabled");
    }

    void d() {
        Integer numE = this.e.E();
        Integer numH = this.e.H();
        if (numE == null) {
            if (numH != null) {
                Logger.v(Logger.AD_TAG, "overriding cta enabled from null to " + numH);
                numE = numH;
            }
        } else if (numH == null) {
            Logger.v(Logger.AD_TAG, "overriding cta shown from null to " + numE);
            numH = numE;
        } else if (numH.intValue() > numE.intValue()) {
            Logger.v(Logger.AD_TAG, "overriding cta shown from " + numH + " to " + numE);
            numH = numE;
        }
        Logger.d(Logger.AD_TAG, "cta shown at " + numH + " seconds; enabled at " + numE + " seconds");
        this.E = numE == null ? 0 : numE.intValue();
        this.G = numH != null ? numH.intValue() : 0;
    }

    boolean a(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        e();
        return true;
    }

    void e() {
        if (this.q != null && this.H.compareAndSet(false, true)) {
            ObjectAnimator.ofFloat(this.q, "alpha", 1.0f).setDuration(750L).start();
        }
    }

    void f() {
        a(this.r);
        a((ImageView) this.t);
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.P = mediaPlayer;
        int duration = mediaPlayer.getDuration();
        Logger.d(Logger.AD_TAG, "video ready: duration " + duration + " ms");
        this.p.a(duration, this.v);
        o();
        this.s.setMaxTimeMillis(duration);
        this.h.a(new ah(duration));
        if (!this.l.a(getActivity())) {
            g();
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        try {
            super.onResume();
            Logger.d(Logger.AD_TAG, "video onResume");
            this.n.b();
            g();
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "error resuming VideoFragment", e);
            r();
        }
    }

    @Override // android.app.Fragment
    public void onPause() {
        Logger.d(Logger.AD_TAG, "video onPause");
        try {
            super.onPause();
            h();
            this.n.c();
            if (this.J) {
                this.h.a(new ar(this.v.getCurrentPosition()));
            }
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "error in VideoFragment.onPause()", e);
            r();
        }
    }

    @Override // com.vungle.publisher.mf
    public void a(boolean z) {
        super.a(z);
        if (z) {
            onResume();
        } else {
            onPause();
        }
    }

    private void r() {
        t();
    }

    private void s() {
        this.B.post(this.C);
    }

    private void t() {
        this.B.removeCallbacks(this.C);
    }

    void g() {
        if (!this.v.isPlaying()) {
            if (j()) {
                Logger.v(Logger.AD_TAG, "Confirm dialog showing. Starting video briefly.");
                this.v.seekTo(this.N);
                this.v.start();
                this.v.pause();
                this.M = this.N;
                return;
            }
            Logger.d(Logger.AD_TAG, "Starting video");
            this.J = true;
            this.v.requestFocus();
            this.v.seekTo(this.N);
            this.v.start();
            this.M = this.N;
            l();
            s();
            if (this.v.isPlaying()) {
                this.p.a(MoatAdEventType.AD_EVT_PLAYING, this.N);
            }
        }
    }

    void h() {
        if (this.v.isPlaying()) {
            Logger.d(Logger.AD_TAG, "Pausing video");
            this.N = this.v.getCurrentPosition();
            this.p.a(MoatAdEventType.AD_EVT_PAUSED, this.N);
            this.v.pause();
            t();
        }
    }

    void b(boolean z) {
        t();
        c(z);
        if (z) {
            this.p.a(MoatAdEventType.AD_EVT_COMPLETE, this.M);
            this.h.a(new af(this.M));
        } else {
            this.p.a(MoatAdEventType.AD_EVT_STOPPED, this.M);
            this.h.a(new ai(this.M));
        }
        i();
    }

    void c(boolean z) {
        int duration = z ? this.v.getDuration() : this.v.getCurrentPosition();
        if (duration > this.M) {
            this.M = duration;
        }
    }

    void i() {
        this.J = false;
        this.v.seekTo(0);
        this.M = 0;
        this.N = 0;
        this.K.set(false);
    }

    boolean j() {
        return this.a != null && this.a.isShowing();
    }

    @Override // com.vungle.publisher.mf
    public void a() {
        Logger.v(Logger.AD_TAG, "back button pressed");
        f(true);
    }

    boolean k() {
        return this.L.get() || this.b.isBackButtonImmediatelyEnabled();
    }

    void l() {
        if (Boolean.TRUE.equals(this.e.F())) {
            if (Boolean.TRUE.equals(this.e.G())) {
                e(this.q.getAlpha() >= 1.0f);
                return;
            }
            if (this.M > (this.G * 1000) - 750 && this.H.compareAndSet(false, true)) {
                ObjectAnimator.ofFloat(this.q, "alpha", 1.0f).setDuration(750L).start();
            }
            e(this.M >= this.E * 1000);
        }
    }

    void d(boolean z) {
        boolean z2 = z && this.D != null;
        Logger.v(Logger.AD_TAG, "cta button " + (z2 ? "enabled" : "disabled"));
        this.F = z2;
        this.q.setImageBitmap(z2 ? this.z : this.A);
    }

    void e(boolean z) {
        if (z != this.F) {
            d(z);
        }
    }

    void m() {
        if (this.M <= (this.I * 1000) - 750 || !this.L.compareAndSet(false, true)) {
            return;
        }
        ObjectAnimator.ofFloat(this.r, "alpha", 1.0f).setDuration(750L).start();
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        Logger.d(Logger.AD_TAG, "video.onCompletion");
        b(true);
        this.P = null;
        this.p.b();
        this.h.a(new az());
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int what, int extra) {
        Logger.e(Logger.AD_TAG, "video.onError: " + what + ", " + extra);
        b(false);
        this.p.b();
        this.h.a(new az());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        b(false);
        this.v.stopPlayback();
        this.p.b();
        this.h.a(new ay());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(boolean z) {
        if (z) {
            if (!k()) {
                return;
            }
        } else if (!this.L.get()) {
            return;
        }
        if (this.K.compareAndSet(false, true)) {
            Logger.d(Logger.AD_TAG, "exiting video");
            if (this.c) {
                onPause();
                AlertDialog alertDialogV = v();
                this.a = alertDialogV;
                alertDialogV.show();
                return;
            }
            this.r.setOnClickListener(null);
            u();
        }
    }

    void n() {
        if (this.O.compareAndSet(this.O.get(), !this.O.get())) {
            this.h.a(new bb(this.O.get()));
            o();
        }
    }

    void o() {
        Logger.d(Logger.AD_TAG, "refresh mute state. isAdMuted = " + this.O.get());
        this.t.setImageBitmap(this.O.get() ? this.x : this.y);
        if (this.O.get()) {
            p();
        } else {
            q();
        }
    }

    public void p() {
        try {
            if (this.P != null) {
                Logger.d(Logger.AD_TAG, "Muting the video");
                this.P.setVolume(0.0f, 0.0f);
                this.p.a(MoatAdEvent.VOLUME_MUTED);
            }
        } catch (IllegalStateException e) {
            Logger.i(Logger.AD_TAG, "Failed to mute the video: " + e.getMessage());
        }
    }

    public void q() {
        try {
            if (this.P != null) {
                Logger.d(Logger.AD_TAG, "Unmuting the video");
                float fB = this.o.b();
                this.P.setVolume(fB, fB);
                this.p.a(MoatAdEvent.VOLUME_UNMUTED);
            }
        } catch (IllegalStateException e) {
            Logger.i(Logger.AD_TAG, "Failed to unmute the video: " + e.getMessage());
        }
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes2.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Logger.v(Logger.AD_TAG, "close clicked");
            op.this.f(false);
        }
    }

    private AlertDialog v() {
        if (this.a != null) {
            return this.a;
        }
        return this.d.a(getActivity(), this.b, new mq.a() { // from class: com.vungle.publisher.op.1
            @Override // com.vungle.publisher.mq.a
            public void a() {
                d();
            }

            @Override // com.vungle.publisher.mq.a
            public void b() {
                Logger.d(Logger.AD_TAG, "cancel video");
                op.this.u();
            }

            @Override // com.vungle.publisher.mq.a
            public void c() {
                d();
            }

            private void d() {
                op.this.onResume();
                op.this.K.set(false);
            }
        });
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes2.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                op.this.c(false);
                op.this.l();
                if (!op.this.L.get()) {
                    op.this.m();
                }
                op.this.s.setCurrentTimeMillis(op.this.v.getCurrentPosition());
                op.this.h.a(new ar(op.this.M));
            } catch (Exception e) {
                Logger.w(Logger.AD_TAG, e);
            } finally {
                op.this.B.postDelayed(this, 50L);
            }
        }
    }

    @Override // com.vungle.publisher.mf
    public String b() {
        return "videoFragment";
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a {

        @Inject
        Provider<op> a;

        @Inject
        a() {
        }

        public op a(Activity activity, jh<?, ?, ?> jhVar, p pVar, boolean z, String str) {
            op opVarA = a(activity);
            if (opVarA == null) {
                opVarA = this.a.get();
            }
            opVarA.e = jhVar.D();
            opVarA.b = pVar;
            opVarA.c = z;
            opVarA.D = jhVar.y();
            opVarA.p.a(jhVar, str);
            return opVarA;
        }

        public void a(op opVar, Bundle bundle) {
            if (bundle != null) {
                Logger.d(Logger.AD_TAG, "Restoring saved state");
                opVar.b = (p) bundle.getParcelable("adConfig");
                opVar.J = bundle.getBoolean("adStarted");
                opVar.N = bundle.getInt("currentVideoPosition");
            }
        }

        public op a(Activity activity) {
            return (op) activity.getFragmentManager().findFragmentByTag("videoFragment");
        }
    }
}
