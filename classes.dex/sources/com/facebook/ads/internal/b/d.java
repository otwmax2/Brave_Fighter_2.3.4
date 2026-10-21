package com.facebook.ads.internal.b;

import android.os.Bundle;
import com.facebook.ads.internal.q.a.o;
import com.ironsource.sdk.constants.Constants;

/* JADX INFO: loaded from: classes.dex */
public class d implements o<Bundle> {
    private c a;
    private final c b;
    private final b c;
    private boolean d;
    private boolean e;
    private boolean f;

    public d(b bVar) {
        this.d = false;
        this.e = false;
        this.f = false;
        this.c = bVar;
        this.b = new c(bVar.b);
        this.a = new c(bVar.b);
    }

    public d(b bVar, Bundle bundle) {
        this.d = false;
        this.e = false;
        this.f = false;
        this.c = bVar;
        this.b = (c) bundle.getSerializable("testStats");
        this.a = (c) bundle.getSerializable("viewableStats");
        this.d = bundle.getBoolean(Constants.ParametersKeys.VIDEO_STATUS_ENDED);
        this.e = bundle.getBoolean("passed");
        this.f = bundle.getBoolean("complete");
    }

    private void a() {
        this.e = true;
        b();
    }

    private void b() {
        this.f = true;
        c();
    }

    private void c() {
        this.d = true;
        this.c.a(this.f, this.e, this.e ? this.a : this.b);
    }

    public void a(double d, double d2) {
        if (this.d) {
            return;
        }
        this.b.a(d, d2);
        this.a.a(d, d2);
        double dF = this.a.b().f();
        if (this.c.e && d2 < this.c.b) {
            this.a = new c(this.c.b);
        }
        if (this.c.c >= 0.0d && this.b.b().e() > this.c.c && dF == 0.0d) {
            b();
        } else if (dF >= this.c.d) {
            a();
        }
    }

    @Override // com.facebook.ads.internal.q.a.o
    public Bundle g() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("viewableStats", this.a);
        bundle.putSerializable("testStats", this.b);
        bundle.putBoolean(Constants.ParametersKeys.VIDEO_STATUS_ENDED, this.d);
        bundle.putBoolean("passed", this.e);
        bundle.putBoolean("complete", this.f);
        return bundle;
    }
}
