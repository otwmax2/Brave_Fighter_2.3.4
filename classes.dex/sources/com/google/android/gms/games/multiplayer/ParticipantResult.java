package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.games.internal.constants.MatchResult;

/* JADX INFO: loaded from: classes.dex */
public final class ParticipantResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ParticipantResult> CREATOR = new ParticipantResultCreator();
    public static final int MATCH_RESULT_DISAGREED = 5;
    public static final int MATCH_RESULT_DISCONNECT = 4;
    public static final int MATCH_RESULT_LOSS = 1;
    public static final int MATCH_RESULT_NONE = 3;
    public static final int MATCH_RESULT_TIE = 2;
    public static final int MATCH_RESULT_UNINITIALIZED = -1;
    public static final int MATCH_RESULT_WIN = 0;
    public static final int PLACING_UNINITIALIZED = -1;
    private final String TH;
    private final int YA;
    private final int YB;
    private final int mVersionCode;

    public ParticipantResult(int i, String str, int i2, int i3) {
        this.mVersionCode = i;
        this.TH = (String) zzab.zzaa(str);
        zzab.zzbm(MatchResult.isValid(i2));
        this.YA = i2;
        this.YB = i3;
    }

    public ParticipantResult(String str, int i, int i2) {
        this(1, str, i, i2);
    }

    public String getParticipantId() {
        return this.TH;
    }

    public int getPlacing() {
        return this.YB;
    }

    public int getResult() {
        return this.YA;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ParticipantResultCreator.zza(this, parcel, i);
    }
}
