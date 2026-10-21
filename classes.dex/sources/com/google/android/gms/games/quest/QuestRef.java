package com.google.android.gms.games.quest;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class QuestRef extends zzc implements Quest {
    private final int Sq;
    private final Game XO;

    QuestRef(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.XO = new GameRef(dataHolder, i);
        this.Sq = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return QuestEntity.zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public Quest freeze() {
        return new QuestEntity(this);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public long getAcceptedTimestamp() {
        return getLong("accepted_ts");
    }

    @Override // com.google.android.gms.games.quest.Quest
    public Uri getBannerImageUri() {
        return zzhg("quest_banner_image_uri");
    }

    @Override // com.google.android.gms.games.quest.Quest
    public String getBannerImageUrl() {
        return getString("quest_banner_image_url");
    }

    @Override // com.google.android.gms.games.quest.Quest
    public Milestone getCurrentMilestone() {
        return zzbli().get(0);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public String getDescription() {
        return getString("quest_description");
    }

    @Override // com.google.android.gms.games.quest.Quest
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zza("quest_description", charArrayBuffer);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public long getEndTimestamp() {
        return getLong("quest_end_ts");
    }

    @Override // com.google.android.gms.games.quest.Quest
    public Game getGame() {
        return this.XO;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public Uri getIconImageUri() {
        return zzhg("quest_icon_image_uri");
    }

    @Override // com.google.android.gms.games.quest.Quest
    public String getIconImageUrl() {
        return getString("quest_icon_image_url");
    }

    @Override // com.google.android.gms.games.quest.Quest
    public long getLastUpdatedTimestamp() {
        return getLong("quest_last_updated_ts");
    }

    @Override // com.google.android.gms.games.quest.Quest
    public String getName() {
        return getString("quest_name");
    }

    @Override // com.google.android.gms.games.quest.Quest
    public void getName(CharArrayBuffer charArrayBuffer) {
        zza("quest_name", charArrayBuffer);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public String getQuestId() {
        return getString("external_quest_id");
    }

    @Override // com.google.android.gms.games.quest.Quest
    public long getStartTimestamp() {
        return getLong("quest_start_ts");
    }

    @Override // com.google.android.gms.games.quest.Quest
    public int getState() {
        return getInteger("quest_state");
    }

    @Override // com.google.android.gms.games.quest.Quest
    public int getType() {
        return getInteger("quest_type");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return QuestEntity.zza(this);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public boolean isEndingSoon() {
        return zzblj() <= System.currentTimeMillis() + 1800000;
    }

    public String toString() {
        return QuestEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((QuestEntity) ((Quest) freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public List<Milestone> zzbli() {
        ArrayList arrayList = new ArrayList(this.Sq);
        for (int i = 0; i < this.Sq; i++) {
            arrayList.add(new MilestoneRef(this.tk, this.vK + i));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public long zzblj() {
        return getLong("notification_ts");
    }
}
