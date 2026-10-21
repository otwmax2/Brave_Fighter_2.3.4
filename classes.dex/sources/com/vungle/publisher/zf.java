package com.vungle.publisher;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.widget.VideoView;
import com.moat.analytics.mobile.vng.MoatAdEvent;
import com.moat.analytics.mobile.vng.MoatAdEventType;
import com.moat.analytics.mobile.vng.MoatAnalytics;
import com.moat.analytics.mobile.vng.MoatFactory;
import com.moat.analytics.mobile.vng.MoatOptions;
import com.moat.analytics.mobile.vng.ReactiveVideoTracker;
import com.moat.analytics.mobile.vng.ReactiveVideoTrackerPlugin;
import com.vungle.publisher.ji;
import com.vungle.publisher.log.Logger;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class zf {
    private static final String c = "UNKNOWN";

    @Inject
    Context a;

    @Inject
    com.vungle.publisher.env.o b;
    private AtomicBoolean d = new AtomicBoolean();
    private ReactiveVideoTracker e;
    private HashMap<String, String> f;

    @Inject
    public zf() {
    }

    public void a() {
        if (this.b.g() && Build.VERSION.SDK_INT >= 16) {
            MoatOptions moatOptions = new MoatOptions();
            moatOptions.disableAdIdCollection = true;
            moatOptions.disableLocationServices = true;
            moatOptions.loggingEnabled = true;
            MoatAnalytics.getInstance().start(moatOptions, (Application) this.a);
            this.b.c(true);
            return;
        }
        Logger.d("VungleMoatAnalytics", "Moat not initialized.");
    }

    public void a(jh<?, ?, ?> jhVar, String str) {
        List<String> listA = jhVar.a((jf) ji.a.moat);
        if (this.b.g() && this.b.h() && listA != null && listA.size() > 0) {
            a(jhVar, str, listA.get(0));
            this.e = (ReactiveVideoTracker) MoatFactory.create().createCustomTracker(new ReactiveVideoTrackerPlugin("vunglenativevideo893259554489"));
        } else {
            this.e = null;
            this.d.set(false);
            Logger.v("VungleMoatAnalytics", "Moat tracking is not enabled. Ignoring - createVideoTracker.");
        }
    }

    public void a(jh<?, ?, ?> jhVar, String str, String str2) {
        String strF;
        String strSubstring;
        String strSubstring2 = null;
        this.f = new HashMap<>();
        if (zk.a(str2)) {
            this.f.put("zMoatVASTIDs", str2);
            return;
        }
        String strE = jhVar.e();
        if (strE != null) {
            try {
                strF = ra.f(new JSONObject(strE.substring(3)), "app_id");
            } catch (JSONException e) {
                e.printStackTrace();
                strF = null;
            }
        } else {
            strF = null;
        }
        String strN = jhVar.n();
        int iIndexOf = strN.indexOf(124);
        if (iIndexOf != -1) {
            int iIndexOf2 = strN.indexOf(124, iIndexOf + 1);
            strSubstring = strN.substring(0, iIndexOf);
            if (iIndexOf2 != -1) {
                strSubstring2 = strN.substring(iIndexOf + 1, iIndexOf2);
            }
        } else {
            strSubstring = null;
        }
        HashMap<String, String> map = this.f;
        if (!zk.a(strF)) {
            strF = c;
        }
        map.put("level1", strF);
        HashMap<String, String> map2 = this.f;
        if (!zk.a(strSubstring)) {
            strSubstring = c;
        }
        map2.put("level2", strSubstring);
        HashMap<String, String> map3 = this.f;
        if (!zk.a(strSubstring2)) {
            strSubstring2 = c;
        }
        map3.put("level3", strSubstring2);
        HashMap<String, String> map4 = this.f;
        if (!zk.a(str)) {
            str = c;
        }
        map4.put("level4", str);
    }

    public void a(int i, VideoView videoView) {
        if (this.e != null) {
            if (this.d.compareAndSet(false, true)) {
                this.e.trackVideoAd(this.f, Integer.valueOf(i), videoView);
                return;
            }
            return;
        }
        Logger.v("VungleMoatAnalytics", "Moat tracking is not enabled. Ignoring - startTracking.");
    }

    public void a(MoatAdEventType moatAdEventType, int i) {
        if (this.e != null && this.d.get()) {
            this.e.dispatchEvent(new MoatAdEvent(moatAdEventType, Integer.valueOf(i)));
        } else {
            Logger.v("VungleMoatAnalytics", "Moat tracking is not enabled. Ignoring - dispatchEvent: " + moatAdEventType.toString());
        }
    }

    public void b() {
        if (this.e != null) {
            if (this.d.compareAndSet(true, false)) {
                this.e.stopTracking();
                this.e = null;
                Logger.d("VungleMoatAnalytics", "Stopped Moat video tracker");
                return;
            }
            return;
        }
        Logger.v("VungleMoatAnalytics", "Moat tracking is not enabled. Ignoring - stopTracking.");
    }

    public void a(Double d) {
        if (this.e != null && this.d.get()) {
            this.e.setPlayerVolume(d);
        } else {
            Logger.v("VungleMoatAnalytics", "Moat tracking is not enabled. Ignoring - setPlayerVolume.");
        }
    }
}
