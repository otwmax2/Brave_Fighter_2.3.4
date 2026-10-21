package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.games.internal.constants.TimeSpan;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class ScoreSubmissionData {
    private static final String[] XJ = {"leaderboardId", "playerId", "timeSpan", "hasResult", "rawScore", "formattedScore", "newBest", "scoreTag"};
    private String XL;
    private HashMap<Integer, Result> Yp = new HashMap<>();
    private String nU;
    private int ob;

    public static final class Result {
        public final String formattedScore;
        public final boolean newBest;
        public final long rawScore;
        public final String scoreTag;

        public Result(long j, String str, String str2, boolean z) {
            this.rawScore = j;
            this.formattedScore = str;
            this.scoreTag = str2;
            this.newBest = z;
        }

        public String toString() {
            return zzaa.zzz(this).zzg("RawScore", Long.valueOf(this.rawScore)).zzg("FormattedScore", this.formattedScore).zzg("ScoreTag", this.scoreTag).zzg("NewBest", Boolean.valueOf(this.newBest)).toString();
        }
    }

    public ScoreSubmissionData(DataHolder dataHolder) {
        this.ob = dataHolder.getStatusCode();
        int count = dataHolder.getCount();
        zzab.zzbn(count == 3);
        for (int i = 0; i < count; i++) {
            int iZzfo = dataHolder.zzfo(i);
            if (i == 0) {
                this.XL = dataHolder.zzd("leaderboardId", i, iZzfo);
                this.nU = dataHolder.zzd("playerId", i, iZzfo);
            }
            if (dataHolder.zze("hasResult", i, iZzfo)) {
                zza(new Result(dataHolder.zzb("rawScore", i, iZzfo), dataHolder.zzd("formattedScore", i, iZzfo), dataHolder.zzd("scoreTag", i, iZzfo), dataHolder.zze("newBest", i, iZzfo)), dataHolder.zzc("timeSpan", i, iZzfo));
            }
        }
    }

    private void zza(Result result, int i) {
        this.Yp.put(Integer.valueOf(i), result);
    }

    public String getLeaderboardId() {
        return this.XL;
    }

    public String getPlayerId() {
        return this.nU;
    }

    public Result getScoreResult(int i) {
        return this.Yp.get(Integer.valueOf(i));
    }

    public String toString() {
        zzaa.zza zzaVarZzg = zzaa.zzz(this).zzg("PlayerId", this.nU).zzg("StatusCode", Integer.valueOf(this.ob));
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 3) {
                return zzaVarZzg.toString();
            }
            Result result = this.Yp.get(Integer.valueOf(i2));
            zzaVarZzg.zzg("TimesSpan", TimeSpan.zzqs(i2));
            zzaVarZzg.zzg("Result", result == null ? "null" : result.toString());
            i = i2 + 1;
        }
    }
}
