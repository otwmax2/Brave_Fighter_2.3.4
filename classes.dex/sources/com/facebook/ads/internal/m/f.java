package com.facebook.ads.internal.m;

import com.facebook.internal.AnalyticsEvents;
import com.ironsource.sdk.constants.Constants;

/* JADX INFO: loaded from: classes.dex */
public enum f {
    TEST("test"),
    BROWSER_SESSION("browser_session"),
    CLOSE("close"),
    IMPRESSION("impression"),
    INVALIDATION("invalidation"),
    STORE(Constants.ParametersKeys.STORE),
    OFF_TARGET_CLICK("off_target_click"),
    OPEN_LINK("open_link"),
    NATIVE_VIEW("native_view"),
    VIDEO(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);

    private String k;

    f(String str) {
        this.k = str;
    }

    public static f a(String str) {
        for (f fVar : values()) {
            if (fVar.k.equalsIgnoreCase(str)) {
                return fVar;
            }
        }
        return null;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.k;
    }
}
