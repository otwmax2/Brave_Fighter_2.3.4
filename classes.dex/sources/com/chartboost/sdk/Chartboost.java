package com.chartboost.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Handler;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.c;
import com.chartboost.sdk.c.RunnableC0002c;
import com.chartboost.sdk.h;
import com.chartboost.sdk.h.a;
import com.chartboost.sdk.impl.aq;
import com.chartboost.sdk.impl.c.a;
import com.chartboost.sdk.impl.e.a;
import com.chartboost.sdk.impl.s;

/* JADX INFO: loaded from: classes.dex */
public class Chartboost {
    private Chartboost() {
    }

    public enum CBFramework {
        CBFrameworkUnity("Unity"),
        CBFrameworkCorona("Corona"),
        CBFrameworkAir("AIR"),
        CBFrameworkGameSalad("GameSalad"),
        CBFrameworkCordova("Cordova"),
        CBFrameworkCocoonJS("CocoonJS"),
        CBFrameworkCocos2dx("Cocos2dx"),
        CBFrameworkPrime31Unreal("Prime31Unreal"),
        CBFrameworkWeeby("Weeby"),
        CBFrameworkOther("Other");

        private final String a;

        CBFramework(String s) {
            this.a = s;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.a;
        }

        public boolean doesWrapperUseCustomShouldDisplayBehavior() {
            return this == CBFrameworkAir || this == CBFrameworkCocos2dx;
        }

        public boolean doesWrapperUseCustomBackgroundingBehavior() {
            return this == CBFrameworkAir;
        }
    }

    public enum CBMediation {
        CBMediationAdMarvel("AdMarvel"),
        CBMediationAdMob("AdMob"),
        CBMediationFuse("Fuse"),
        CBMediationFyber("Fyber"),
        CBMediationHeyZap("HeyZap"),
        CBMediationMoPub("MoPub"),
        CBMediationironSource("ironSource"),
        CBMediationHyprMX("HyprMX"),
        CBMediationAerServ("AerServ"),
        CBMediationOther("Other");

        private final String a;

        CBMediation(String s) {
            this.a = s;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.a;
        }
    }

    public static void startWithAppId(Activity activity, String appId, String appSignature) {
        aq.a("Chartboost.startWithAppId", activity);
        f fVar = new f(0);
        fVar.h = activity;
        fVar.i = appId;
        fVar.j = appSignature;
        h.b(fVar);
    }

    public static void restrictDataCollection(Context context, boolean restrict) {
        h.a(context, restrict);
    }

    public static void onCreate(Activity activity) {
        aq.a("Chartboost.onCreate", activity);
        h hVarA = h.a();
        if (hVarA != null && !i.s) {
            hVarA.q.b(activity);
        }
    }

    public static void onStart(Activity activity) {
        aq.a("Chartboost.onStart", activity);
        h hVarA = h.a();
        if (hVarA != null && !i.s) {
            hVarA.q.d(activity);
        }
    }

    public static void onResume(Activity activity) {
        aq.a("Chartboost.onResume", activity);
        h hVarA = h.a();
        if (hVarA != null && !i.s) {
            hVarA.q.f(activity);
        }
    }

    public static void onPause(Activity activity) {
        aq.a("Chartboost.onPause", activity);
        h hVarA = h.a();
        if (hVarA != null && !i.s) {
            hVarA.q.g(activity);
        }
    }

    public static void onStop(Activity activity) {
        aq.a("Chartboost.onStop", activity);
        h hVarA = h.a();
        if (hVarA != null && !i.s) {
            hVarA.q.h(activity);
        }
    }

    public static boolean onBackPressed() {
        aq.a("Chartboost.onBackPressed");
        h hVarA = h.a();
        if (hVarA == null) {
            return false;
        }
        return hVarA.q.j();
    }

    public static void onDestroy(Activity activity) {
        aq.a("Chartboost.onDestroy", activity);
        h hVarA = h.a();
        if (hVarA != null && !i.s) {
            hVarA.q.j(activity);
        }
    }

    public static boolean hasRewardedVideo(String location) {
        aq.a("Chartboost.hasRewardedVideo", location);
        h hVarA = h.a();
        return (hVarA == null || !b.a() || hVarA.k.a(location) == null) ? false : true;
    }

    public static void cacheRewardedVideo(String location) {
        aq.a("Chartboost.cacheRewardedVideo", location);
        h hVarA = h.a();
        if (hVarA != null && b.a() && h.f()) {
            if (s.a().a(location)) {
                CBLogging.b("Chartboost", "cacheRewardedVideo location cannot be empty");
                Handler handler = hVarA.p;
                com.chartboost.sdk.impl.c cVar = hVarA.l;
                cVar.getClass();
                handler.post(cVar.new a(4, location, CBError.CBImpressionError.INVALID_LOCATION));
                return;
            }
            com.chartboost.sdk.Model.e eVar = hVarA.m.get();
            if ((eVar.y && eVar.E) || (eVar.e && eVar.j)) {
                com.chartboost.sdk.impl.e eVar2 = hVarA.k;
                eVar2.getClass();
                hVarA.a.execute(eVar2.new a(3, location, null, null));
                return;
            }
            Handler handler2 = hVarA.p;
            com.chartboost.sdk.impl.c cVar2 = hVarA.l;
            cVar2.getClass();
            handler2.post(cVar2.new a(4, location, CBError.CBImpressionError.END_POINT_DISABLED));
        }
    }

    public static void showRewardedVideo(String location) {
        aq.a("Chartboost.showRewardedVideo", location);
        h hVarA = h.a();
        if (hVarA != null && b.a() && h.f()) {
            if (s.a().a(location)) {
                CBLogging.b("Chartboost", "showRewardedVideo location cannot be empty");
                Handler handler = hVarA.p;
                com.chartboost.sdk.impl.c cVar = hVarA.l;
                cVar.getClass();
                handler.post(cVar.new a(4, location, CBError.CBImpressionError.INVALID_LOCATION));
                return;
            }
            com.chartboost.sdk.Model.e eVar = hVarA.m.get();
            if ((eVar.y && eVar.E) || (eVar.e && eVar.j)) {
                com.chartboost.sdk.impl.e eVar2 = hVarA.k;
                eVar2.getClass();
                hVarA.a.execute(eVar2.new a(4, location, null, null));
                return;
            }
            Handler handler2 = hVarA.p;
            com.chartboost.sdk.impl.c cVar2 = hVarA.l;
            cVar2.getClass();
            handler2.post(cVar2.new a(4, location, CBError.CBImpressionError.END_POINT_DISABLED));
        }
    }

    public static boolean hasInterstitial(String location) {
        aq.a("Chartboost.hasInterstitial", location);
        h hVarA = h.a();
        return (hVarA == null || !b.a() || hVarA.f.a(location) == null) ? false : true;
    }

    public static void cacheInterstitial(String location) {
        aq.a("Chartboost.cacheInterstitial", location);
        h hVarA = h.a();
        if (hVarA != null && b.a() && h.f()) {
            if (s.a().a(location)) {
                CBLogging.b("Chartboost", "cacheInterstitial location cannot be empty");
                Handler handler = hVarA.p;
                com.chartboost.sdk.impl.c cVar = hVarA.g;
                cVar.getClass();
                handler.post(cVar.new a(4, location, CBError.CBImpressionError.INVALID_LOCATION));
                return;
            }
            com.chartboost.sdk.Model.e eVar = hVarA.m.get();
            if ((eVar.y && eVar.A) || (eVar.e && eVar.g)) {
                com.chartboost.sdk.impl.e eVar2 = hVarA.f;
                eVar2.getClass();
                hVarA.a.execute(eVar2.new a(3, location, null, null));
                return;
            }
            Handler handler2 = hVarA.p;
            com.chartboost.sdk.impl.c cVar2 = hVarA.g;
            cVar2.getClass();
            handler2.post(cVar2.new a(4, location, CBError.CBImpressionError.END_POINT_DISABLED));
        }
    }

    public static void showInterstitial(String location) {
        aq.a("Chartboost.showInterstitial", location);
        h hVarA = h.a();
        if (hVarA != null && b.a() && h.f()) {
            if (s.a().a(location)) {
                CBLogging.b("Chartboost", "showInterstitial location cannot be empty");
                Handler handler = hVarA.p;
                com.chartboost.sdk.impl.c cVar = hVarA.g;
                cVar.getClass();
                handler.post(cVar.new a(4, location, CBError.CBImpressionError.INVALID_LOCATION));
                return;
            }
            com.chartboost.sdk.Model.e eVar = hVarA.m.get();
            if ((eVar.y && eVar.A) || (eVar.e && eVar.g)) {
                com.chartboost.sdk.impl.e eVar2 = hVarA.f;
                eVar2.getClass();
                hVarA.a.execute(eVar2.new a(4, location, null, null));
                return;
            }
            Handler handler2 = hVarA.p;
            com.chartboost.sdk.impl.c cVar2 = hVarA.g;
            cVar2.getClass();
            handler2.post(cVar2.new a(4, location, CBError.CBImpressionError.END_POINT_DISABLED));
        }
    }

    @Deprecated
    public static void closeImpression() {
    }

    public static boolean hasMoreApps(String location) {
        return false;
    }

    public static void cacheMoreApps(String location) {
        h hVarA = h.a();
        if (hVarA != null && b.a() && h.f()) {
            hVarA.getClass();
            h.a aVar = hVarA.new a(5);
            aVar.b = location;
            hVarA.p.postDelayed(aVar, com.chartboost.sdk.Libraries.b.c);
        }
    }

    public static void showMoreApps(String location) {
        cacheMoreApps(location);
    }

    public static boolean isAnyViewVisible() {
        aq.a("Chartboost.isAnyViewVisible");
        h hVarA = h.a();
        return hVarA != null && hVarA.q.e();
    }

    public static void setMediation(CBMediation mediation, String libraryVersion) {
        aq.a("Chartboost.setMediation");
        f fVar = new f(3);
        fVar.c = mediation;
        fVar.d = libraryVersion;
        h.b(fVar);
    }

    public static void setFramework(CBFramework framework, String version) {
        aq.a("Chartboost.setFramework");
        f fVar = new f(4);
        fVar.b = framework;
        fVar.d = version;
        h.b(fVar);
    }

    @Deprecated
    public static void setFrameworkVersion(String version) {
        aq.a("Chartboost.setFrameworkVersion", version);
        f fVar = new f(5);
        fVar.d = version;
        h.b(fVar);
    }

    public static void setChartboostWrapperVersion(String version) {
        aq.a("Chartboost.setChartboostWrapperVersion", version);
        f fVar = new f(5);
        fVar.d = version;
        h.b(fVar);
    }

    public static String getCustomId() {
        return !b.b() ? "" : i.a;
    }

    public static void setCustomId(String customID) {
        aq.a("Chartboost.setCustomId", customID);
        f fVar = new f(6);
        fVar.e = customID;
        h.b(fVar);
    }

    public static void setLoggingLevel(CBLogging.Level lvl) {
        aq.a("Chartboost.setLoggingLevel", lvl.toString());
        f fVar = new f(7);
        fVar.f = lvl;
        h.b(fVar);
    }

    public static CBLogging.Level getLoggingLevel() {
        b.b();
        return CBLogging.a;
    }

    public static a getDelegate() {
        return i.c;
    }

    public static void setDelegate(ChartboostDelegate delegate) {
        aq.a("Chartboost.setDelegate", delegate);
        f fVar = new f(8);
        fVar.g = delegate;
        h.b(fVar);
    }

    public static boolean getAutoCacheAds() {
        return i.t;
    }

    public static void setAutoCacheAds(boolean autoCacheAds) {
        aq.a("Chartboost.setAutoCacheAds", autoCacheAds);
        h hVarA = h.a();
        if (hVarA != null) {
            hVarA.getClass();
            h.a aVar = hVarA.new a(1);
            aVar.c = autoCacheAds;
            h.b(aVar);
        }
    }

    public static void setShouldRequestInterstitialsInFirstSession(boolean shouldRequest) {
        aq.a("Chartboost.setShouldRequestInterstitialsInFirstSession", shouldRequest);
        if (b.b()) {
            f fVar = new f(1);
            fVar.a = shouldRequest;
            h.b(fVar);
        }
    }

    public static void setShouldDisplayLoadingViewForMoreApps(boolean shouldDisplay) {
    }

    public static void setShouldPrefetchVideoContent(boolean shouldPrefetch) {
        aq.a("Chartboost.setShouldPrefetchVideoContent", shouldPrefetch);
        h hVarA = h.a();
        if (hVarA != null && b.a()) {
            hVarA.getClass();
            h.a aVar = hVarA.new a(2);
            aVar.d = shouldPrefetch;
            h.b(aVar);
        }
    }

    public static String getSDKVersion() {
        return "7.2.0";
    }

    public static void setShouldHideSystemUI(Boolean hide) {
        aq.a("Chartboost.setHideSystemUI", hide);
        i.g = hide.booleanValue();
    }

    public static boolean isWebViewEnabled() {
        h hVarA = h.a();
        return hVarA == null || hVarA.m.get().y;
    }

    @TargetApi(14)
    public static void setActivityCallbacks(boolean enabled) {
        Activity activityA;
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
        aq.a("Chartboost.setActivityCallbacks", enabled);
        h hVarA = h.a();
        if (hVarA != null && (activityA = hVarA.q.a()) != null && (activityLifecycleCallbacks = hVarA.q.h) != null) {
            if (!i.s && enabled) {
                activityA.getApplication().registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
                i.s = true;
            } else if (i.s && !enabled) {
                activityA.getApplication().unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
                i.s = false;
            }
        }
    }

    private static void showInterstitialAIR(String location, boolean show) {
        h hVarA = h.a();
        if (hVarA != null && b.a() && h.f()) {
            com.chartboost.sdk.Model.e eVar = hVarA.m.get();
            if ((eVar.y && eVar.A) || (eVar.e && eVar.g)) {
                Handler handler = hVarA.p;
                com.chartboost.sdk.impl.c cVar = hVarA.g;
                cVar.getClass();
                handler.post(cVar.new a(4, location, CBError.CBImpressionError.INTERNAL));
                return;
            }
            i.c.didFailToLoadInterstitial(location, CBError.CBImpressionError.END_POINT_DISABLED);
        }
    }

    private static void showMoreAppsAIR(String location, boolean show) {
        cacheMoreApps(location);
    }

    private static void showRewardedVideoAIR(String location, boolean show) {
        h hVarA = h.a();
        if (hVarA != null && b.a() && h.f()) {
            com.chartboost.sdk.Model.e eVar = hVarA.m.get();
            if ((eVar.y && eVar.E) || (eVar.e && eVar.j)) {
                Handler handler = hVarA.p;
                com.chartboost.sdk.impl.c cVar = hVarA.g;
                cVar.getClass();
                handler.post(cVar.new a(4, location, CBError.CBImpressionError.INTERNAL));
                return;
            }
            i.c.didFailToLoadRewardedVideo(location, CBError.CBImpressionError.END_POINT_DISABLED);
        }
    }

    private static void forwardTouchEventsAIR(boolean forward) {
        h hVarA = h.a();
        if (hVarA != null) {
            c cVar = hVarA.q;
            cVar.getClass();
            c.RunnableC0002c runnableC0002c = cVar.new RunnableC0002c(6);
            runnableC0002c.c = forward;
            h.b(runnableC0002c);
        }
    }
}
