package com.vungle.publisher;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public enum x {
    fullscreen,
    flexview,
    flexfeed;

    public static x a(String str) {
        if (str == null || str.equals(flexfeed.name())) {
            return fullscreen;
        }
        for (x xVar : values()) {
            if (xVar.toString().equals(str)) {
                return xVar;
            }
        }
        return fullscreen;
    }
}
