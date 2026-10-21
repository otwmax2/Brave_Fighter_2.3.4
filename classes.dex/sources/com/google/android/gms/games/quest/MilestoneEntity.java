package com.google.android.gms.games.quest;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* JADX INFO: loaded from: classes.dex */
public final class MilestoneEntity extends AbstractSafeParcelable implements Milestone {
    public static final Parcelable.Creator<MilestoneEntity> CREATOR = new MilestoneEntityCreator();
    private final String Sv;
    private final String TK;
    private final long Ze;
    private final long Zf;
    private final byte[] Zg;
    private final int mState;
    private final int mVersionCode;

    MilestoneEntity(int i, String str, long j, long j2, byte[] bArr, int i2, String str2) {
        this.mVersionCode = i;
        this.TK = str;
        this.Ze = j;
        this.Zf = j2;
        this.Zg = bArr;
        this.mState = i2;
        this.Sv = str2;
    }

    public MilestoneEntity(Milestone milestone) {
        this.mVersionCode = 4;
        this.TK = milestone.getMilestoneId();
        this.Ze = milestone.getCurrentProgress();
        this.Zf = milestone.getTargetProgress();
        this.mState = milestone.getState();
        this.Sv = milestone.getEventId();
        byte[] completionRewardData = milestone.getCompletionRewardData();
        if (completionRewardData == null) {
            this.Zg = null;
        } else {
            this.Zg = new byte[completionRewardData.length];
            System.arraycopy(completionRewardData, 0, this.Zg, 0, completionRewardData.length);
        }
    }

    static int zza(Milestone milestone) {
        return zzaa.hashCode(milestone.getMilestoneId(), Long.valueOf(milestone.getCurrentProgress()), Long.valueOf(milestone.getTargetProgress()), Integer.valueOf(milestone.getState()), milestone.getEventId());
    }

    static boolean zza(Milestone milestone, Object obj) {
        if (!(obj instanceof Milestone)) {
            return false;
        }
        if (milestone == obj) {
            return true;
        }
        Milestone milestone2 = (Milestone) obj;
        return zzaa.equal(milestone2.getMilestoneId(), milestone.getMilestoneId()) && zzaa.equal(Long.valueOf(milestone2.getCurrentProgress()), Long.valueOf(milestone.getCurrentProgress())) && zzaa.equal(Long.valueOf(milestone2.getTargetProgress()), Long.valueOf(milestone.getTargetProgress())) && zzaa.equal(Integer.valueOf(milestone2.getState()), Integer.valueOf(milestone.getState())) && zzaa.equal(milestone2.getEventId(), milestone.getEventId());
    }

    static String zzb(Milestone milestone) {
        return zzaa.zzz(milestone).zzg("MilestoneId", milestone.getMilestoneId()).zzg("CurrentProgress", Long.valueOf(milestone.getCurrentProgress())).zzg("TargetProgress", Long.valueOf(milestone.getTargetProgress())).zzg("State", Integer.valueOf(milestone.getState())).zzg("CompletionRewardData", milestone.getCompletionRewardData()).zzg("EventId", milestone.getEventId()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public Milestone freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public byte[] getCompletionRewardData() {
        return this.Zg;
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public long getCurrentProgress() {
        return this.Ze;
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public String getEventId() {
        return this.Sv;
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public String getMilestoneId() {
        return this.TK;
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public int getState() {
        return this.mState;
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public long getTargetProgress() {
        return this.Zf;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        MilestoneEntityCreator.zza(this, parcel, i);
    }
}
