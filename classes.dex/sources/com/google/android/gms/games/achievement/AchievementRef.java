package com.google.android.gms.games.achievement;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;

/* JADX INFO: loaded from: classes.dex */
public final class AchievementRef extends zzc implements Achievement {
    AchievementRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public Achievement freeze() {
        return new AchievementEntity(this);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getAchievementId() {
        return getString("external_achievement_id");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public int getCurrentSteps() {
        zzb.zzbm(getType() == 1);
        return getInteger("current_steps");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getDescription() {
        return getString("description");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zza("description", charArrayBuffer);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getFormattedCurrentSteps() {
        zzb.zzbm(getType() == 1);
        return getString("formatted_current_steps");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public void getFormattedCurrentSteps(CharArrayBuffer charArrayBuffer) {
        zzb.zzbm(getType() == 1);
        zza("formatted_current_steps", charArrayBuffer);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getFormattedTotalSteps() {
        zzb.zzbm(getType() == 1);
        return getString("formatted_total_steps");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public void getFormattedTotalSteps(CharArrayBuffer charArrayBuffer) {
        zzb.zzbm(getType() == 1);
        zza("formatted_total_steps", charArrayBuffer);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public long getLastUpdatedTimestamp() {
        return getLong("last_updated_timestamp");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getName() {
        return getString("name");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public void getName(CharArrayBuffer charArrayBuffer) {
        zza("name", charArrayBuffer);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public Player getPlayer() {
        return new PlayerRef(this.tk, this.vK);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public Uri getRevealedImageUri() {
        return zzhg("revealed_icon_image_uri");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getRevealedImageUrl() {
        return getString("revealed_icon_image_url");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public int getState() {
        return getInteger("state");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public int getTotalSteps() {
        zzb.zzbm(getType() == 1);
        return getInteger("total_steps");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public int getType() {
        return getInteger("type");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public Uri getUnlockedImageUri() {
        return zzhg("unlocked_icon_image_uri");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getUnlockedImageUrl() {
        return getString("unlocked_icon_image_url");
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public long getXpValue() {
        return (!zzhf("instance_xp_value") || zzhh("instance_xp_value")) ? getLong("definition_xp_value") : getLong("instance_xp_value");
    }

    public String toString() {
        return AchievementEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((AchievementEntity) ((Achievement) freeze())).writeToParcel(parcel, i);
    }
}
