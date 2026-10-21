package com.vungle.publisher;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import com.vungle.publisher.ji;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.ob;
import com.vungle.publisher.op;
import com.vungle.publisher.ys;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class oy extends mg<jh<?, ?, ?>> {

    @Inject
    a.C0171a l;

    @Inject
    ys.a m;

    @Inject
    op.a n;

    @Inject
    ob.a o;

    @Inject
    com.vungle.publisher.env.o p;
    private op q;
    private ob r;

    @Inject
    oy() {
    }

    @Override // com.vungle.publisher.mg
    public void a(VungleAdActivity vungleAdActivity, jh<?, ?, ?> jhVar, String str, p pVar, Bundle bundle) {
        em emVarV;
        try {
            Logger.d(Logger.AD_TAG, "create video ad");
            vungleAdActivity.getWindow().setBackgroundDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
            super.a(vungleAdActivity, jhVar, str, pVar, bundle);
            vungleAdActivity.setRequestedOrientation(a(pVar, jhVar.D()));
            s sVarB = this.p.b(str);
            boolean z = sVarB != null && sVarB.c;
            this.q = this.n.a(vungleAdActivity, jhVar, pVar, z, str);
            if ((jhVar instanceof el) && (emVarV = ((el) jhVar).v()) != null) {
                this.r = this.o.a(vungleAdActivity, jhVar.c_(), emVarV.K(), pVar, z, x.a(jhVar.s));
            }
            if ("postRollFragment".equals(this.f)) {
                d();
            } else {
                e();
            }
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "error playing video ad", e);
            a(false, false);
        }
    }

    @Override // com.vungle.publisher.mg
    protected me<?> a() {
        return this.l.a(this);
    }

    @Override // com.vungle.publisher.mg
    protected yj<?> b() {
        return this.m.a((jh) this.a);
    }

    int a(p pVar, jg<?> jgVar) {
        Orientation orientation = pVar.getOrientation();
        switch (orientation) {
            case autoRotate:
                Logger.d(Logger.AD_TAG, "ad orientation " + orientation);
                return 10;
            default:
                if (jgVar.K()) {
                    Logger.d(Logger.AD_TAG, "ad orientation " + orientation + " (landscape)");
                    return 6;
                }
                if (jgVar.L()) {
                    Logger.d(Logger.AD_TAG, "ad orientation " + orientation + " (portrait)");
                    return 7;
                }
                Logger.d(Logger.AD_TAG, "ad orientation " + orientation + " (unknown) --> auto-rotate");
                return 10;
        }
    }

    void d() {
        if (this.r == null) {
            a(true, false);
        } else {
            this.i.a(new ap());
            a(this.r);
        }
    }

    void e() {
        if (this.q == null) {
            d();
        } else {
            a(this.q);
        }
    }

    void a(ji.a aVar) {
        boolean z;
        String strY = null;
        try {
            strY = ((jh) this.a).y();
            Logger.v(Logger.AD_TAG, "call to action destination " + strY);
            if (strY != null) {
                Intent intentA = this.j.a("android.intent.action.VIEW", Uri.parse(strY));
                intentA.addFlags(268435456);
                this.i.a(new ab(this.a, "unknown_placement", aVar));
                VungleAdActivity vungleAdActivity = this.b.get();
                if (vungleAdActivity != null) {
                    vungleAdActivity.startActivity(intentA);
                }
            }
            z = true;
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "error loading call-to-action URL " + strY, e);
            z = false;
        }
        a(z, true);
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends me<oy> {
        @Override // com.vungle.publisher.me
        public /* bridge */ /* synthetic */ void onEvent(aq aqVar) {
            super.onEvent(aqVar);
        }

        @Override // com.vungle.publisher.me
        public /* bridge */ /* synthetic */ void onEvent(bg bgVar) {
            super.onEvent(bgVar);
        }

        @Inject
        a() {
        }

        public void onEvent(aa event) {
            ji.a aVarA = event.a();
            Logger.v(Logger.EVENT_TAG, "cta click event: " + aVarA);
            ((oy) this.a).a(aVarA);
        }

        public void onEvent(ay event) {
            Logger.v(Logger.EVENT_TAG, "video.onCancel()");
            ((oy) this.a).d();
        }

        public void onEvent(az event) {
            Logger.v(Logger.EVENT_TAG, "video.onNext()");
            ((oy) this.a).d();
        }

        public void onEvent(ao event) {
            Logger.v(Logger.EVENT_TAG, "postRoll.onCancel()");
            ((oy) this.a).a(true, false);
        }

        /* JADX INFO: renamed from: com.vungle.publisher.oy$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: vungle */
        @Singleton
        public static class C0171a {

            @Inject
            a a;

            @Inject
            C0171a() {
            }

            public a a(oy oyVar) {
                this.a.a = oyVar;
                return this.a;
            }
        }
    }
}
