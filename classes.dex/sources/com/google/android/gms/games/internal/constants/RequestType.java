package com.google.android.gms.games.internal.constants;

import com.google.android.gms.games.internal.GamesLog;

/* JADX INFO: loaded from: classes.dex */
public final class RequestType {
    private RequestType() {
    }

    public static String zzqs(int i) {
        switch (i) {
            case 1:
                return "GIFT";
            case 2:
                return "WISH";
            default:
                GamesLog.zzag("RequestType", new StringBuilder(33).append("Unknown request type: ").append(i).toString());
                return "UNKNOWN_TYPE";
        }
    }
}
