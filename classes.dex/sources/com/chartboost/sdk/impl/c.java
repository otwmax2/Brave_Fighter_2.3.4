package com.chartboost.sdk.impl;

import com.chartboost.sdk.Model.CBError;
import com.facebook.internal.AnalyticsEvents;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final boolean g;
    public final boolean h;

    private c(int i, String str, String str2, String str3, String str4, String str5, boolean z, boolean z2) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = z;
        this.h = z2;
    }

    public static c a() {
        return new c(0, "interstitial", "interstitial", "/interstitial/get", "webview/%s/interstitial/get", "/interstitial/show", false, false);
    }

    public static c b() {
        return new c(1, "rewarded", "rewarded-video", "/reward/get", "webview/%s/reward/get", "/reward/show", true, false);
    }

    public static c c() {
        return new c(2, "inplay", null, "/inplay/get", "no webview endpoint", "/inplay/show", false, true);
    }

    public String a(int i) {
        Object[] objArr = new Object[2];
        objArr[0] = this.c;
        objArr[1] = i == 1 ? AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_WEB : AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE;
        return String.format("%s-%s", objArr);
    }

    public void a(String str) {
        if (com.chartboost.sdk.i.c != null) {
            switch (this.a) {
                case 0:
                    com.chartboost.sdk.i.c.didClickInterstitial(str);
                    break;
                case 1:
                    com.chartboost.sdk.i.c.didClickRewardedVideo(str);
                    break;
            }
        }
    }

    public void b(String str) {
        if (com.chartboost.sdk.i.c != null) {
            switch (this.a) {
                case 0:
                    com.chartboost.sdk.i.c.didCloseInterstitial(str);
                    break;
                case 1:
                    com.chartboost.sdk.i.c.didCloseRewardedVideo(str);
                    break;
            }
        }
    }

    public void c(String str) {
        if (com.chartboost.sdk.i.c != null) {
            switch (this.a) {
                case 0:
                    com.chartboost.sdk.i.c.didDismissInterstitial(str);
                    break;
                case 1:
                    com.chartboost.sdk.i.c.didDismissRewardedVideo(str);
                    break;
            }
        }
    }

    public void d(String str) {
        if (com.chartboost.sdk.i.c != null) {
            switch (this.a) {
                case 0:
                    com.chartboost.sdk.i.c.didCacheInterstitial(str);
                    break;
                case 1:
                    com.chartboost.sdk.i.c.didCacheRewardedVideo(str);
                    break;
                case 2:
                    com.chartboost.sdk.i.c.didCacheInPlay(str);
                    break;
            }
        }
    }

    public void a(String str, CBError.CBImpressionError cBImpressionError) {
        if (com.chartboost.sdk.i.c != null) {
            switch (this.a) {
                case 0:
                    com.chartboost.sdk.i.c.didFailToLoadInterstitial(str, cBImpressionError);
                    break;
                case 1:
                    com.chartboost.sdk.i.c.didFailToLoadRewardedVideo(str, cBImpressionError);
                    break;
                case 2:
                    com.chartboost.sdk.i.c.didFailToLoadInPlay(str, cBImpressionError);
                    break;
            }
        }
    }

    public void e(String str) {
        if (com.chartboost.sdk.i.c != null) {
            switch (this.a) {
                case 0:
                    com.chartboost.sdk.i.c.didDisplayInterstitial(str);
                    break;
                case 1:
                    com.chartboost.sdk.i.c.didDisplayRewardedVideo(str);
                    break;
            }
        }
    }

    public boolean f(String str) {
        if (com.chartboost.sdk.i.c != null) {
            switch (this.a) {
            }
            return true;
        }
        return true;
    }

    public boolean g(String str) {
        if (com.chartboost.sdk.i.c != null) {
            switch (this.a) {
            }
            return true;
        }
        return true;
    }

    public class a implements Runnable {
        private final int b;
        private final String c;
        private final CBError.CBImpressionError d;

        public a(int i, String str, CBError.CBImpressionError cBImpressionError) {
            this.b = i;
            this.c = str;
            this.d = cBImpressionError;
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (this.b) {
                case 0:
                    c.this.d(this.c);
                    break;
                case 1:
                    c.this.a(this.c);
                    break;
                case 2:
                    c.this.b(this.c);
                    break;
                case 3:
                    c.this.c(this.c);
                    break;
                case 4:
                    c.this.a(this.c, this.d);
                    break;
                case 5:
                    c.this.e(this.c);
                    break;
            }
        }
    }
}
