package com.google.android.gms.games.quest;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzg;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class QuestEntity extends AbstractSafeParcelable implements Quest {
    public static final Parcelable.Creator<QuestEntity> CREATOR = new QuestEntityCreator();
    private final long RV;
    private final GameEntity WG;
    private final String Zh;
    private final long Zi;
    private final Uri Zj;
    private final String Zk;
    private final long Zl;
    private final String Zm;
    private final long Zn;
    private final long Zo;
    private final ArrayList<MilestoneEntity> Zp;
    private final int it;
    private final Uri mIconUri;
    private final String mName;
    private final int mState;
    private final int mVersionCode;
    private final String zzcvi;

    QuestEntity(int i, GameEntity gameEntity, String str, long j, Uri uri, String str2, String str3, long j2, long j3, Uri uri2, String str4, String str5, long j4, long j5, int i2, int i3, ArrayList<MilestoneEntity> arrayList) {
        this.mVersionCode = i;
        this.WG = gameEntity;
        this.Zh = str;
        this.Zi = j;
        this.Zj = uri;
        this.Zk = str2;
        this.zzcvi = str3;
        this.Zl = j2;
        this.RV = j3;
        this.mIconUri = uri2;
        this.Zm = str4;
        this.mName = str5;
        this.Zn = j4;
        this.Zo = j5;
        this.mState = i2;
        this.it = i3;
        this.Zp = arrayList;
    }

    public QuestEntity(Quest quest) {
        this.mVersionCode = 2;
        this.WG = new GameEntity(quest.getGame());
        this.Zh = quest.getQuestId();
        this.Zi = quest.getAcceptedTimestamp();
        this.zzcvi = quest.getDescription();
        this.Zj = quest.getBannerImageUri();
        this.Zk = quest.getBannerImageUrl();
        this.Zl = quest.getEndTimestamp();
        this.mIconUri = quest.getIconImageUri();
        this.Zm = quest.getIconImageUrl();
        this.RV = quest.getLastUpdatedTimestamp();
        this.mName = quest.getName();
        this.Zn = quest.zzblj();
        this.Zo = quest.getStartTimestamp();
        this.mState = quest.getState();
        this.it = quest.getType();
        List<Milestone> listZzbli = quest.zzbli();
        int size = listZzbli.size();
        this.Zp = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            this.Zp.add((MilestoneEntity) listZzbli.get(i).freeze());
        }
    }

    static int zza(Quest quest) {
        return zzaa.hashCode(quest.getGame(), quest.getQuestId(), Long.valueOf(quest.getAcceptedTimestamp()), quest.getBannerImageUri(), quest.getDescription(), Long.valueOf(quest.getEndTimestamp()), quest.getIconImageUri(), Long.valueOf(quest.getLastUpdatedTimestamp()), quest.zzbli(), quest.getName(), Long.valueOf(quest.zzblj()), Long.valueOf(quest.getStartTimestamp()), Integer.valueOf(quest.getState()));
    }

    static boolean zza(Quest quest, Object obj) {
        if (!(obj instanceof Quest)) {
            return false;
        }
        if (quest == obj) {
            return true;
        }
        Quest quest2 = (Quest) obj;
        return zzaa.equal(quest2.getGame(), quest.getGame()) && zzaa.equal(quest2.getQuestId(), quest.getQuestId()) && zzaa.equal(Long.valueOf(quest2.getAcceptedTimestamp()), Long.valueOf(quest.getAcceptedTimestamp())) && zzaa.equal(quest2.getBannerImageUri(), quest.getBannerImageUri()) && zzaa.equal(quest2.getDescription(), quest.getDescription()) && zzaa.equal(Long.valueOf(quest2.getEndTimestamp()), Long.valueOf(quest.getEndTimestamp())) && zzaa.equal(quest2.getIconImageUri(), quest.getIconImageUri()) && zzaa.equal(Long.valueOf(quest2.getLastUpdatedTimestamp()), Long.valueOf(quest.getLastUpdatedTimestamp())) && zzaa.equal(quest2.zzbli(), quest.zzbli()) && zzaa.equal(quest2.getName(), quest.getName()) && zzaa.equal(Long.valueOf(quest2.zzblj()), Long.valueOf(quest.zzblj())) && zzaa.equal(Long.valueOf(quest2.getStartTimestamp()), Long.valueOf(quest.getStartTimestamp())) && zzaa.equal(Integer.valueOf(quest2.getState()), Integer.valueOf(quest.getState()));
    }

    static String zzb(Quest quest) {
        return zzaa.zzz(quest).zzg("Game", quest.getGame()).zzg("QuestId", quest.getQuestId()).zzg("AcceptedTimestamp", Long.valueOf(quest.getAcceptedTimestamp())).zzg("BannerImageUri", quest.getBannerImageUri()).zzg("BannerImageUrl", quest.getBannerImageUrl()).zzg("Description", quest.getDescription()).zzg("EndTimestamp", Long.valueOf(quest.getEndTimestamp())).zzg("IconImageUri", quest.getIconImageUri()).zzg("IconImageUrl", quest.getIconImageUrl()).zzg("LastUpdatedTimestamp", Long.valueOf(quest.getLastUpdatedTimestamp())).zzg("Milestones", quest.zzbli()).zzg("Name", quest.getName()).zzg("NotifyTimestamp", Long.valueOf(quest.zzblj())).zzg("StartTimestamp", Long.valueOf(quest.getStartTimestamp())).zzg("State", Integer.valueOf(quest.getState())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public Quest freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public long getAcceptedTimestamp() {
        return this.Zi;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public Uri getBannerImageUri() {
        return this.Zj;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public String getBannerImageUrl() {
        return this.Zk;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public Milestone getCurrentMilestone() {
        return zzbli().get(0);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public String getDescription() {
        return this.zzcvi;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.zzcvi, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public long getEndTimestamp() {
        return this.Zl;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public Game getGame() {
        return this.WG;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public Uri getIconImageUri() {
        return this.mIconUri;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public String getIconImageUrl() {
        return this.Zm;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public long getLastUpdatedTimestamp() {
        return this.RV;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public String getName() {
        return this.mName;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public void getName(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.mName, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public String getQuestId() {
        return this.Zh;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public long getStartTimestamp() {
        return this.Zo;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public int getState() {
        return this.mState;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public int getType() {
        return this.it;
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

    @Override // com.google.android.gms.games.quest.Quest
    public boolean isEndingSoon() {
        return this.Zn <= System.currentTimeMillis() + 1800000;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        QuestEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public List<Milestone> zzbli() {
        return new ArrayList(this.Zp);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public long zzblj() {
        return this.Zn;
    }
}
