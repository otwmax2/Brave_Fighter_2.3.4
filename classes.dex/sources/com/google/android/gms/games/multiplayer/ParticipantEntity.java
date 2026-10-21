package com.google.android.gms.games.multiplayer;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzg;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;

/* JADX INFO: loaded from: classes.dex */
public final class ParticipantEntity extends GamesDowngradeableSafeParcel implements Participant {
    public static final Parcelable.Creator<ParticipantEntity> CREATOR = new ParticipantEntityCreatorCompat();
    private final Uri QE;
    private final Uri QF;
    private final String QP;
    private final String QQ;
    private final PlayerEntity RS;
    private final String Sx;
    private final String TH;
    private final boolean Yx;
    private final ParticipantResult Yy;
    private final String dH;
    private final int gR;
    private final int mVersionCode;
    private final int zzblz;

    static final class ParticipantEntityCreatorCompat extends ParticipantEntityCreator {
        ParticipantEntityCreatorCompat() {
        }

        @Override // com.google.android.gms.games.multiplayer.ParticipantEntityCreator, android.os.Parcelable.Creator
        /* JADX INFO: renamed from: zzlo, reason: merged with bridge method [inline-methods] */
        public ParticipantEntity createFromParcel(Parcel parcel) {
            if (ParticipantEntity.zzf(ParticipantEntity.zzasp()) || ParticipantEntity.zzhl(ParticipantEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            Uri uri = string3 == null ? null : Uri.parse(string3);
            String string4 = parcel.readString();
            return new ParticipantEntity(3, string, string2, uri, string4 == null ? null : Uri.parse(string4), parcel.readInt(), parcel.readString(), parcel.readInt() > 0, parcel.readInt() > 0 ? PlayerEntity.CREATOR.createFromParcel(parcel) : null, 7, null, null, null);
        }
    }

    ParticipantEntity(int i, String str, String str2, Uri uri, Uri uri2, int i2, String str3, boolean z, PlayerEntity playerEntity, int i3, ParticipantResult participantResult, String str4, String str5) {
        this.mVersionCode = i;
        this.TH = str;
        this.dH = str2;
        this.QE = uri;
        this.QF = uri2;
        this.zzblz = i2;
        this.Sx = str3;
        this.Yx = z;
        this.RS = playerEntity;
        this.gR = i3;
        this.Yy = participantResult;
        this.QP = str4;
        this.QQ = str5;
    }

    public ParticipantEntity(Participant participant) {
        this.mVersionCode = 3;
        this.TH = participant.getParticipantId();
        this.dH = participant.getDisplayName();
        this.QE = participant.getIconImageUri();
        this.QF = participant.getHiResImageUri();
        this.zzblz = participant.getStatus();
        this.Sx = participant.zzbhz();
        this.Yx = participant.isConnectedToRoom();
        Player player = participant.getPlayer();
        this.RS = player == null ? null : new PlayerEntity(player);
        this.gR = participant.getCapabilities();
        this.Yy = participant.getResult();
        this.QP = participant.getIconImageUrl();
        this.QQ = participant.getHiResImageUrl();
    }

    static int zza(Participant participant) {
        return zzaa.hashCode(participant.getPlayer(), Integer.valueOf(participant.getStatus()), participant.zzbhz(), Boolean.valueOf(participant.isConnectedToRoom()), participant.getDisplayName(), participant.getIconImageUri(), participant.getHiResImageUri(), Integer.valueOf(participant.getCapabilities()), participant.getResult(), participant.getParticipantId());
    }

    static boolean zza(Participant participant, Object obj) {
        if (!(obj instanceof Participant)) {
            return false;
        }
        if (participant == obj) {
            return true;
        }
        Participant participant2 = (Participant) obj;
        return zzaa.equal(participant2.getPlayer(), participant.getPlayer()) && zzaa.equal(Integer.valueOf(participant2.getStatus()), Integer.valueOf(participant.getStatus())) && zzaa.equal(participant2.zzbhz(), participant.zzbhz()) && zzaa.equal(Boolean.valueOf(participant2.isConnectedToRoom()), Boolean.valueOf(participant.isConnectedToRoom())) && zzaa.equal(participant2.getDisplayName(), participant.getDisplayName()) && zzaa.equal(participant2.getIconImageUri(), participant.getIconImageUri()) && zzaa.equal(participant2.getHiResImageUri(), participant.getHiResImageUri()) && zzaa.equal(Integer.valueOf(participant2.getCapabilities()), Integer.valueOf(participant.getCapabilities())) && zzaa.equal(participant2.getResult(), participant.getResult()) && zzaa.equal(participant2.getParticipantId(), participant.getParticipantId());
    }

    static String zzb(Participant participant) {
        return zzaa.zzz(participant).zzg("ParticipantId", participant.getParticipantId()).zzg("Player", participant.getPlayer()).zzg("Status", Integer.valueOf(participant.getStatus())).zzg("ClientAddress", participant.zzbhz()).zzg("ConnectedToRoom", Boolean.valueOf(participant.isConnectedToRoom())).zzg("DisplayName", participant.getDisplayName()).zzg("IconImage", participant.getIconImageUri()).zzg("IconImageUrl", participant.getIconImageUrl()).zzg("HiResImage", participant.getHiResImageUri()).zzg("HiResImageUrl", participant.getHiResImageUrl()).zzg("Capabilities", Integer.valueOf(participant.getCapabilities())).zzg("Result", participant.getResult()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public Participant freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public int getCapabilities() {
        return this.gR;
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getDisplayName() {
        return this.RS == null ? this.dH : this.RS.getDisplayName();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        if (this.RS == null) {
            zzg.zzb(this.dH, charArrayBuffer);
        } else {
            this.RS.getDisplayName(charArrayBuffer);
        }
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public Uri getHiResImageUri() {
        return this.RS == null ? this.QF : this.RS.getHiResImageUri();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getHiResImageUrl() {
        return this.RS == null ? this.QQ : this.RS.getHiResImageUrl();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public Uri getIconImageUri() {
        return this.RS == null ? this.QE : this.RS.getIconImageUri();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getIconImageUrl() {
        return this.RS == null ? this.QP : this.RS.getIconImageUrl();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getParticipantId() {
        return this.TH;
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public Player getPlayer() {
        return this.RS;
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public ParticipantResult getResult() {
        return this.Yy;
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public int getStatus() {
        return this.zzblz;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public boolean isConnectedToRoom() {
        return this.Yx;
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
        if (!zzasq()) {
            ParticipantEntityCreator.zza(this, parcel, i);
            return;
        }
        parcel.writeString(this.TH);
        parcel.writeString(this.dH);
        parcel.writeString(this.QE == null ? null : this.QE.toString());
        parcel.writeString(this.QF != null ? this.QF.toString() : null);
        parcel.writeInt(this.zzblz);
        parcel.writeString(this.Sx);
        parcel.writeInt(this.Yx ? 1 : 0);
        parcel.writeInt(this.RS != null ? 1 : 0);
        if (this.RS != null) {
            this.RS.writeToParcel(parcel, i);
        }
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String zzbhz() {
        return this.Sx;
    }
}
