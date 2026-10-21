package com.vungle.publisher;

import com.moat.analytics.mobile.vng.MoatAdEventType;
import com.vungle.publisher.ji;
import com.vungle.publisher.jl;
import com.vungle.publisher.log.Logger;
import java.util.HashSet;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class ys extends yj<jh<?, ?, ?>> {
    private static final ji.a[] i = {ji.a.play_percentage_0, ji.a.play_percentage_25, ji.a.play_percentage_50, ji.a.play_percentage_75, ji.a.play_percentage_80, ji.a.play_percentage_100};

    @Inject
    zf h;
    private int j;
    private final HashSet<ji.a> k = new HashSet<>();

    @Inject
    ys() {
    }

    @Override // com.vungle.publisher.yj
    protected void a() {
        this.j = 0;
        this.k.clear();
    }

    public void onEvent(bd event) {
        float fA = event.a();
        if (event.b()) {
            a(jl.a.volumeup, Float.valueOf(fA));
        } else {
            a(jl.a.volumedown, Float.valueOf(fA));
        }
    }

    public void onEvent(y event) {
        a(jl.a.back);
    }

    public void onEvent(bc event) {
        a(jl.a.volume, Float.valueOf(event.a()));
    }

    public void onEvent(bb event) {
        if (event.a()) {
            a(jl.a.muted);
            a(ji.a.mute);
        } else {
            a(jl.a.unmuted);
            a(ji.a.unmute);
        }
    }

    public void onEvent(ap event) {
        a(ji.a.postroll_view);
    }

    public void onEvent(ay event) {
        a(ji.a.video_close);
        a(jl.a.close);
    }

    public void onEvent(ba event) {
        a(jl.a.videoreset);
    }

    public void onEvent(ab<jh<?, ?, ?>> event) {
        jh<?, ?, ?> jhVarB = event.b();
        this.f.a(jhVarB, event.a(), jhVarB.z());
    }

    public void onEvent(ah playVideoDurationEvent) {
        try {
            this.c.b(Integer.valueOf(playVideoDurationEvent.a()));
        } catch (Exception e) {
            Logger.e(Logger.REPORT_TAG, "error updating video duration millis", e);
        }
    }

    public void onEvent(aw playVideoStartEvent) {
        try {
            this.b.a(Long.valueOf(playVideoStartEvent.e()));
            this.b.f_();
        } catch (Exception e) {
            Logger.e(Logger.REPORT_TAG, "error updating play start millis", e);
        }
    }

    public void onEvent(ar playVideoProgressEvent) {
        try {
            int iA = playVideoProgressEvent.a();
            boolean z = this.j < i.length;
            boolean z2 = playVideoProgressEvent instanceof ai;
            if (z || z2) {
                Integer numS = this.c.s();
                if (numS == null) {
                    Logger.d(Logger.REPORT_TAG, "null video duration millis for " + this.c.B());
                    return;
                }
                if (numS.intValue() == 0) {
                    Logger.w(Logger.REPORT_TAG, "video duration millis 0 for " + this.c.B());
                    return;
                }
                if (z) {
                    float fIntValue = iA / numS.intValue();
                    ji.a aVar = i[this.j];
                    z = fIntValue >= aVar.b();
                    if (z) {
                        switch (aVar) {
                            case play_percentage_0:
                                this.h.a(MoatAdEventType.AD_EVT_START, iA);
                                this.eventBus.a(new aw());
                                break;
                            case play_percentage_25:
                                this.h.a(MoatAdEventType.AD_EVT_FIRST_QUARTILE, iA);
                                break;
                            case play_percentage_50:
                                this.h.a(MoatAdEventType.AD_EVT_MID_POINT, iA);
                                break;
                            case play_percentage_75:
                                this.h.a(MoatAdEventType.AD_EVT_THIRD_QUARTILE, iA);
                                break;
                            case play_percentage_80:
                                this.eventBus.a(new ax());
                                break;
                        }
                        this.j++;
                        a(aVar);
                    }
                }
                if (z || z2) {
                    a(playVideoProgressEvent);
                }
            }
        } catch (Exception e) {
            Logger.e(Logger.REPORT_TAG, "error handling video view progress", e);
        }
    }

    public void onEvent(aa event) {
        ji.a aVarA = event.a();
        if (aVarA == ji.a.video_click) {
            a(jl.a.cta);
        } else if (aVarA == ji.a.postroll_click) {
            a(ji.a.postroll_click);
        }
        a(jl.a.download);
    }

    public void onEvent(bt endPlayAdEvent) {
        try {
            Logger.d(Logger.REPORT_TAG, "received play ad end");
            a(endPlayAdEvent);
            a(endPlayAdEvent.e());
        } catch (Exception e) {
            Logger.e(Logger.REPORT_TAG, "error processing ad end", e);
        }
    }

    void a(ar arVar) {
        try {
            this.b.a(Integer.valueOf(arVar.a()));
            this.b.f_();
            this.c.b(Long.valueOf(arVar.e()));
        } catch (Exception e) {
            Logger.e(Logger.REPORT_TAG, "error updating video view progress", e);
        }
    }

    private void a(ji.a aVar) {
        if (this.a == 0) {
            Logger.w(Logger.REPORT_TAG, "null ad in AdReportingHandler - cannot track event " + aVar);
        } else if (!this.k.contains(aVar)) {
            Logger.v(Logger.REPORT_TAG, "tpat event " + aVar.name());
            this.f.a(this.a, aVar, ((jh) this.a).a((jf) aVar));
            this.k.add(aVar);
        }
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a {

        @Inject
        ys a;

        @Inject
        a() {
        }

        public ys a(jh<?, ?, ?> jhVar) {
            this.a.a(jhVar);
            return this.a;
        }
    }
}
