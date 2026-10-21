package com.google.android.gms.games.multiplayer.turnbased;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzg;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.multiplayer.Multiplayer;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class TurnBasedMatchEntity extends AbstractSafeParcelable implements TurnBasedMatch {
    public static final Parcelable.Creator<TurnBasedMatchEntity> CREATOR = new TurnBasedMatchEntityCreator();
    private final long RV;
    private final String Tz;
    private final GameEntity WG;
    private final Bundle YK;
    private final String YM;
    private final String YU;
    private final String YV;
    private final int YW;
    private final byte[] YX;
    private final String YY;
    private final byte[] YZ;
    private final long Yq;
    private final ArrayList<ParticipantEntity> Yt;
    private final int Yu;
    private final int Za;
    private final int Zb;
    private final boolean Zc;
    private final String Zd;
    private final int mVersion;
    private final int mVersionCode;
    private final String zzcvi;

    TurnBasedMatchEntity(int i, GameEntity gameEntity, String str, String str2, long j, String str3, long j2, String str4, int i2, int i3, int i4, byte[] bArr, ArrayList<ParticipantEntity> arrayList, String str5, byte[] bArr2, int i5, Bundle bundle, int i6, boolean z, String str6, String str7) {
        this.mVersionCode = i;
        this.WG = gameEntity;
        this.Tz = str;
        this.YM = str2;
        this.Yq = j;
        this.YU = str3;
        this.RV = j2;
        this.YV = str4;
        this.YW = i2;
        this.Zb = i6;
        this.Yu = i3;
        this.mVersion = i4;
        this.YX = bArr;
        this.Yt = arrayList;
        this.YY = str5;
        this.YZ = bArr2;
        this.Za = i5;
        this.YK = bundle;
        this.Zc = z;
        this.zzcvi = str6;
        this.Zd = str7;
    }

    public TurnBasedMatchEntity(TurnBasedMatch turnBasedMatch) {
        this.mVersionCode = 2;
        this.WG = new GameEntity(turnBasedMatch.getGame());
        this.Tz = turnBasedMatch.getMatchId();
        this.YM = turnBasedMatch.getCreatorId();
        this.Yq = turnBasedMatch.getCreationTimestamp();
        this.YU = turnBasedMatch.getLastUpdaterId();
        this.RV = turnBasedMatch.getLastUpdatedTimestamp();
        this.YV = turnBasedMatch.getPendingParticipantId();
        this.YW = turnBasedMatch.getStatus();
        this.Zb = turnBasedMatch.getTurnStatus();
        this.Yu = turnBasedMatch.getVariant();
        this.mVersion = turnBasedMatch.getVersion();
        this.YY = turnBasedMatch.getRematchId();
        this.Za = turnBasedMatch.getMatchNumber();
        this.YK = turnBasedMatch.getAutoMatchCriteria();
        this.Zc = turnBasedMatch.isLocallyModified();
        this.zzcvi = turnBasedMatch.getDescription();
        this.Zd = turnBasedMatch.getDescriptionParticipantId();
        byte[] data = turnBasedMatch.getData();
        if (data == null) {
            this.YX = null;
        } else {
            this.YX = new byte[data.length];
            System.arraycopy(data, 0, this.YX, 0, data.length);
        }
        byte[] previousMatchData = turnBasedMatch.getPreviousMatchData();
        if (previousMatchData == null) {
            this.YZ = null;
        } else {
            this.YZ = new byte[previousMatchData.length];
            System.arraycopy(previousMatchData, 0, this.YZ, 0, previousMatchData.length);
        }
        ArrayList<Participant> participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        this.Yt = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            this.Yt.add((ParticipantEntity) participants.get(i).freeze());
        }
    }

    static int zza(TurnBasedMatch turnBasedMatch) {
        return zzaa.hashCode(turnBasedMatch.getGame(), turnBasedMatch.getMatchId(), turnBasedMatch.getCreatorId(), Long.valueOf(turnBasedMatch.getCreationTimestamp()), turnBasedMatch.getLastUpdaterId(), Long.valueOf(turnBasedMatch.getLastUpdatedTimestamp()), turnBasedMatch.getPendingParticipantId(), Integer.valueOf(turnBasedMatch.getStatus()), Integer.valueOf(turnBasedMatch.getTurnStatus()), turnBasedMatch.getDescription(), Integer.valueOf(turnBasedMatch.getVariant()), Integer.valueOf(turnBasedMatch.getVersion()), turnBasedMatch.getParticipants(), turnBasedMatch.getRematchId(), Integer.valueOf(turnBasedMatch.getMatchNumber()), turnBasedMatch.getAutoMatchCriteria(), Integer.valueOf(turnBasedMatch.getAvailableAutoMatchSlots()), Boolean.valueOf(turnBasedMatch.isLocallyModified()));
    }

    static int zza(TurnBasedMatch turnBasedMatch, String str) {
        ArrayList<Participant> participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        for (int i = 0; i < size; i++) {
            Participant participant = participants.get(i);
            if (participant.getParticipantId().equals(str)) {
                return participant.getStatus();
            }
        }
        String strValueOf = String.valueOf(turnBasedMatch.getMatchId());
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 29 + String.valueOf(strValueOf).length()).append("Participant ").append(str).append(" is not in match ").append(strValueOf).toString());
    }

    static boolean zza(TurnBasedMatch turnBasedMatch, Object obj) {
        if (!(obj instanceof TurnBasedMatch)) {
            return false;
        }
        if (turnBasedMatch == obj) {
            return true;
        }
        TurnBasedMatch turnBasedMatch2 = (TurnBasedMatch) obj;
        return zzaa.equal(turnBasedMatch2.getGame(), turnBasedMatch.getGame()) && zzaa.equal(turnBasedMatch2.getMatchId(), turnBasedMatch.getMatchId()) && zzaa.equal(turnBasedMatch2.getCreatorId(), turnBasedMatch.getCreatorId()) && zzaa.equal(Long.valueOf(turnBasedMatch2.getCreationTimestamp()), Long.valueOf(turnBasedMatch.getCreationTimestamp())) && zzaa.equal(turnBasedMatch2.getLastUpdaterId(), turnBasedMatch.getLastUpdaterId()) && zzaa.equal(Long.valueOf(turnBasedMatch2.getLastUpdatedTimestamp()), Long.valueOf(turnBasedMatch.getLastUpdatedTimestamp())) && zzaa.equal(turnBasedMatch2.getPendingParticipantId(), turnBasedMatch.getPendingParticipantId()) && zzaa.equal(Integer.valueOf(turnBasedMatch2.getStatus()), Integer.valueOf(turnBasedMatch.getStatus())) && zzaa.equal(Integer.valueOf(turnBasedMatch2.getTurnStatus()), Integer.valueOf(turnBasedMatch.getTurnStatus())) && zzaa.equal(turnBasedMatch2.getDescription(), turnBasedMatch.getDescription()) && zzaa.equal(Integer.valueOf(turnBasedMatch2.getVariant()), Integer.valueOf(turnBasedMatch.getVariant())) && zzaa.equal(Integer.valueOf(turnBasedMatch2.getVersion()), Integer.valueOf(turnBasedMatch.getVersion())) && zzaa.equal(turnBasedMatch2.getParticipants(), turnBasedMatch.getParticipants()) && zzaa.equal(turnBasedMatch2.getRematchId(), turnBasedMatch.getRematchId()) && zzaa.equal(Integer.valueOf(turnBasedMatch2.getMatchNumber()), Integer.valueOf(turnBasedMatch.getMatchNumber())) && zzaa.equal(turnBasedMatch2.getAutoMatchCriteria(), turnBasedMatch.getAutoMatchCriteria()) && zzaa.equal(Integer.valueOf(turnBasedMatch2.getAvailableAutoMatchSlots()), Integer.valueOf(turnBasedMatch.getAvailableAutoMatchSlots())) && zzaa.equal(Boolean.valueOf(turnBasedMatch2.isLocallyModified()), Boolean.valueOf(turnBasedMatch.isLocallyModified()));
    }

    static String zzb(TurnBasedMatch turnBasedMatch) {
        return zzaa.zzz(turnBasedMatch).zzg("Game", turnBasedMatch.getGame()).zzg("MatchId", turnBasedMatch.getMatchId()).zzg("CreatorId", turnBasedMatch.getCreatorId()).zzg("CreationTimestamp", Long.valueOf(turnBasedMatch.getCreationTimestamp())).zzg("LastUpdaterId", turnBasedMatch.getLastUpdaterId()).zzg("LastUpdatedTimestamp", Long.valueOf(turnBasedMatch.getLastUpdatedTimestamp())).zzg("PendingParticipantId", turnBasedMatch.getPendingParticipantId()).zzg("MatchStatus", Integer.valueOf(turnBasedMatch.getStatus())).zzg("TurnStatus", Integer.valueOf(turnBasedMatch.getTurnStatus())).zzg("Description", turnBasedMatch.getDescription()).zzg("Variant", Integer.valueOf(turnBasedMatch.getVariant())).zzg("Data", turnBasedMatch.getData()).zzg("Version", Integer.valueOf(turnBasedMatch.getVersion())).zzg("Participants", turnBasedMatch.getParticipants()).zzg("RematchId", turnBasedMatch.getRematchId()).zzg("PreviousData", turnBasedMatch.getPreviousMatchData()).zzg("MatchNumber", Integer.valueOf(turnBasedMatch.getMatchNumber())).zzg("AutoMatchCriteria", turnBasedMatch.getAutoMatchCriteria()).zzg("AvailableAutoMatchSlots", Integer.valueOf(turnBasedMatch.getAvailableAutoMatchSlots())).zzg("LocallyModified", Boolean.valueOf(turnBasedMatch.isLocallyModified())).zzg("DescriptionParticipantId", turnBasedMatch.getDescriptionParticipantId()).toString();
    }

    static String zzb(TurnBasedMatch turnBasedMatch, String str) {
        ArrayList<Participant> participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        for (int i = 0; i < size; i++) {
            Participant participant = participants.get(i);
            Player player = participant.getPlayer();
            if (player != null && player.getPlayerId().equals(str)) {
                return participant.getParticipantId();
            }
        }
        return null;
    }

    static Participant zzc(TurnBasedMatch turnBasedMatch, String str) {
        ArrayList<Participant> participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        for (int i = 0; i < size; i++) {
            Participant participant = participants.get(i);
            if (participant.getParticipantId().equals(str)) {
                return participant;
            }
        }
        String strValueOf = String.valueOf(turnBasedMatch.getMatchId());
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 29 + String.valueOf(strValueOf).length()).append("Participant ").append(str).append(" is not in match ").append(strValueOf).toString());
    }

    static ArrayList<String> zzc(TurnBasedMatch turnBasedMatch) {
        ArrayList<Participant> participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        ArrayList<String> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(participants.get(i).getParticipantId());
        }
        return arrayList;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public boolean canRematch() {
        return this.YW == 2 && this.YY == null;
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public TurnBasedMatch freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public Bundle getAutoMatchCriteria() {
        return this.YK;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getAvailableAutoMatchSlots() {
        if (this.YK == null) {
            return 0;
        }
        return this.YK.getInt(Multiplayer.EXTRA_MAX_AUTOMATCH_PLAYERS);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public long getCreationTimestamp() {
        return this.Yq;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getCreatorId() {
        return this.YM;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public byte[] getData() {
        return this.YX;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getDescription() {
        return this.zzcvi;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.zzcvi, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public Participant getDescriptionParticipant() {
        String descriptionParticipantId = getDescriptionParticipantId();
        if (descriptionParticipantId == null) {
            return null;
        }
        return getParticipant(descriptionParticipantId);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getDescriptionParticipantId() {
        return this.Zd;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public Game getGame() {
        return this.WG;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public long getLastUpdatedTimestamp() {
        return this.RV;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getLastUpdaterId() {
        return this.YU;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getMatchId() {
        return this.Tz;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getMatchNumber() {
        return this.Za;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public Participant getParticipant(String str) {
        return zzc(this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getParticipantId(String str) {
        return zzb(this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public ArrayList<String> getParticipantIds() {
        return zzc(this);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getParticipantStatus(String str) {
        return zza((TurnBasedMatch) this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.Participatable
    public ArrayList<Participant> getParticipants() {
        return new ArrayList<>(this.Yt);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getPendingParticipantId() {
        return this.YV;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public byte[] getPreviousMatchData() {
        return this.YZ;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getRematchId() {
        return this.YY;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getStatus() {
        return this.YW;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getTurnStatus() {
        return this.Zb;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getVariant() {
        return this.Yu;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getVersion() {
        return this.mVersion;
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

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public boolean isLocallyModified() {
        return this.Zc;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        TurnBasedMatchEntityCreator.zza(this, parcel, i);
    }
}
