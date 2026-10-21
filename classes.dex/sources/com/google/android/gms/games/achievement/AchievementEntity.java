package com.google.android.gms.games.achievement;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.common.util.zzg;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;

/* JADX INFO: loaded from: classes.dex */
public final class AchievementEntity extends AbstractSafeParcelable implements Achievement {
    public static final Parcelable.Creator<AchievementEntity> CREATOR = new AchievementEntityCreator();
    private final String RL;
    private final Uri RM;
    private final String RN;
    private final Uri RO;
    private final String RP;
    private final int RQ;
    private final String RR;
    private final PlayerEntity RS;
    private final int RT;
    private final String RU;
    private final long RV;
    private final long RW;
    private final int it;
    private final String mName;
    private final int mState;
    private final int mVersionCode;
    private final String zzcvi;

    AchievementEntity(int i, String str, int i2, String str2, String str3, Uri uri, String str4, Uri uri2, String str5, int i3, String str6, PlayerEntity playerEntity, int i4, int i5, String str7, long j, long j2) {
        this.mVersionCode = i;
        this.RL = str;
        this.it = i2;
        this.mName = str2;
        this.zzcvi = str3;
        this.RM = uri;
        this.RN = str4;
        this.RO = uri2;
        this.RP = str5;
        this.RQ = i3;
        this.RR = str6;
        this.RS = playerEntity;
        this.mState = i4;
        this.RT = i5;
        this.RU = str7;
        this.RV = j;
        this.RW = j2;
    }

    public AchievementEntity(Achievement achievement) {
        this.mVersionCode = 1;
        this.RL = achievement.getAchievementId();
        this.it = achievement.getType();
        this.mName = achievement.getName();
        this.zzcvi = achievement.getDescription();
        this.RM = achievement.getUnlockedImageUri();
        this.RN = achievement.getUnlockedImageUrl();
        this.RO = achievement.getRevealedImageUri();
        this.RP = achievement.getRevealedImageUrl();
        this.RS = (PlayerEntity) achievement.getPlayer().freeze();
        this.mState = achievement.getState();
        this.RV = achievement.getLastUpdatedTimestamp();
        this.RW = achievement.getXpValue();
        if (achievement.getType() == 1) {
            this.RQ = achievement.getTotalSteps();
            this.RR = achievement.getFormattedTotalSteps();
            this.RT = achievement.getCurrentSteps();
            this.RU = achievement.getFormattedCurrentSteps();
        } else {
            this.RQ = 0;
            this.RR = null;
            this.RT = 0;
            this.RU = null;
        }
        zzb.zzw(this.RL);
        zzb.zzw(this.zzcvi);
    }

    static int zza(Achievement achievement) {
        int totalSteps;
        int currentSteps;
        if (achievement.getType() == 1) {
            currentSteps = achievement.getCurrentSteps();
            totalSteps = achievement.getTotalSteps();
        } else {
            totalSteps = 0;
            currentSteps = 0;
        }
        return zzaa.hashCode(achievement.getAchievementId(), achievement.getName(), Integer.valueOf(achievement.getType()), achievement.getDescription(), Long.valueOf(achievement.getXpValue()), Integer.valueOf(achievement.getState()), Long.valueOf(achievement.getLastUpdatedTimestamp()), achievement.getPlayer(), Integer.valueOf(currentSteps), Integer.valueOf(totalSteps));
    }

    static boolean zza(Achievement achievement, Object obj) {
        boolean zEqual;
        boolean zEqual2;
        if (!(obj instanceof Achievement)) {
            return false;
        }
        if (achievement == obj) {
            return true;
        }
        Achievement achievement2 = (Achievement) obj;
        if (achievement.getType() == 1) {
            zEqual2 = zzaa.equal(Integer.valueOf(achievement2.getCurrentSteps()), Integer.valueOf(achievement.getCurrentSteps()));
            zEqual = zzaa.equal(Integer.valueOf(achievement2.getTotalSteps()), Integer.valueOf(achievement.getTotalSteps()));
        } else {
            zEqual = true;
            zEqual2 = true;
        }
        return zzaa.equal(achievement2.getAchievementId(), achievement.getAchievementId()) && zzaa.equal(achievement2.getName(), achievement.getName()) && zzaa.equal(Integer.valueOf(achievement2.getType()), Integer.valueOf(achievement.getType())) && zzaa.equal(achievement2.getDescription(), achievement.getDescription()) && zzaa.equal(Long.valueOf(achievement2.getXpValue()), Long.valueOf(achievement.getXpValue())) && zzaa.equal(Integer.valueOf(achievement2.getState()), Integer.valueOf(achievement.getState())) && zzaa.equal(Long.valueOf(achievement2.getLastUpdatedTimestamp()), Long.valueOf(achievement.getLastUpdatedTimestamp())) && zzaa.equal(achievement2.getPlayer(), achievement.getPlayer()) && zEqual2 && zEqual;
    }

    static String zzb(Achievement achievement) {
        zzaa.zza zzaVarZzg = zzaa.zzz(achievement).zzg("Id", achievement.getAchievementId()).zzg("Type", Integer.valueOf(achievement.getType())).zzg("Name", achievement.getName()).zzg("Description", achievement.getDescription()).zzg("Player", achievement.getPlayer()).zzg("State", Integer.valueOf(achievement.getState()));
        if (achievement.getType() == 1) {
            zzaVarZzg.zzg("CurrentSteps", Integer.valueOf(achievement.getCurrentSteps()));
            zzaVarZzg.zzg("TotalSteps", Integer.valueOf(achievement.getTotalSteps()));
        }
        return zzaVarZzg.toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public Achievement freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getAchievementId() {
        return this.RL;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public int getCurrentSteps() {
        zzb.zzbm(getType() == 1);
        return zzbgs();
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getDescription() {
        return this.zzcvi;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.zzcvi, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getFormattedCurrentSteps() {
        zzb.zzbm(getType() == 1);
        return zzbgt();
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public void getFormattedCurrentSteps(CharArrayBuffer charArrayBuffer) {
        zzb.zzbm(getType() == 1);
        zzg.zzb(this.RU, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getFormattedTotalSteps() {
        zzb.zzbm(getType() == 1);
        return zzbgr();
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public void getFormattedTotalSteps(CharArrayBuffer charArrayBuffer) {
        zzb.zzbm(getType() == 1);
        zzg.zzb(this.RR, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public long getLastUpdatedTimestamp() {
        return this.RV;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getName() {
        return this.mName;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public void getName(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.mName, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public Player getPlayer() {
        return this.RS;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public Uri getRevealedImageUri() {
        return this.RO;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getRevealedImageUrl() {
        return this.RP;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public int getState() {
        return this.mState;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public int getTotalSteps() {
        zzb.zzbm(getType() == 1);
        return zzbgq();
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public int getType() {
        return this.it;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public Uri getUnlockedImageUri() {
        return this.RM;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getUnlockedImageUrl() {
        return this.RN;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public long getXpValue() {
        return this.RW;
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
        AchievementEntityCreator.zza(this, parcel, i);
    }

    public int zzbgq() {
        return this.RQ;
    }

    public String zzbgr() {
        return this.RR;
    }

    public int zzbgs() {
        return this.RT;
    }

    public String zzbgt() {
        return this.RU;
    }
}
