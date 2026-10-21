package com.google.android.gms.games.internal.constants;

import com.google.android.gms.games.internal.GamesLog;

/* JADX INFO: loaded from: classes.dex */
public final class TurnBasedMatchTurnStatus {
    public static String zzqs(int i) {
        switch (i) {
            case 0:
                return "TURN_STATUS_INVITED";
            case 1:
                return "TURN_STATUS_MY_TURN";
            case 2:
                return "TURN_STATUS_THEIR_TURN";
            case 3:
                return "TURN_STATUS_COMPLETE";
            default:
                GamesLog.zzag("MatchTurnStatus", new StringBuilder(38).append("Unknown match turn status: ").append(i).toString());
                return "TURN_STATUS_UNKNOWN";
        }
    }
}
