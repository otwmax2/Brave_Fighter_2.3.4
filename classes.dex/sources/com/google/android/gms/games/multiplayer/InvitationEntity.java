package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class InvitationEntity extends GamesDowngradeableSafeParcel implements Invitation {
    public static final Parcelable.Creator<InvitationEntity> CREATOR = new InvitationEntityCreatorCompat();
    private final GameEntity WG;
    private final long Yq;
    private final int Yr;
    private final ParticipantEntity Ys;
    private final ArrayList<ParticipantEntity> Yt;
    private final int Yu;
    private final int Yv;
    private final String bT;
    private final int mVersionCode;

    static final class InvitationEntityCreatorCompat extends InvitationEntityCreator {
        InvitationEntityCreatorCompat() {
        }

        @Override // com.google.android.gms.games.multiplayer.InvitationEntityCreator, android.os.Parcelable.Creator
        /* JADX INFO: renamed from: zzln, reason: merged with bridge method [inline-methods] */
        public InvitationEntity createFromParcel(Parcel parcel) {
            if (InvitationEntity.zzf(InvitationEntity.zzasp()) || InvitationEntity.zzhl(InvitationEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            GameEntity gameEntityCreateFromParcel = GameEntity.CREATOR.createFromParcel(parcel);
            String string = parcel.readString();
            long j = parcel.readLong();
            int i = parcel.readInt();
            ParticipantEntity participantEntityCreateFromParcel = ParticipantEntity.CREATOR.createFromParcel(parcel);
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                arrayList.add(ParticipantEntity.CREATOR.createFromParcel(parcel));
            }
            return new InvitationEntity(2, gameEntityCreateFromParcel, string, j, i, participantEntityCreateFromParcel, arrayList, -1, 0);
        }
    }

    InvitationEntity(int i, GameEntity gameEntity, String str, long j, int i2, ParticipantEntity participantEntity, ArrayList<ParticipantEntity> arrayList, int i3, int i4) {
        this.mVersionCode = i;
        this.WG = gameEntity;
        this.bT = str;
        this.Yq = j;
        this.Yr = i2;
        this.Ys = participantEntity;
        this.Yt = arrayList;
        this.Yu = i3;
        this.Yv = i4;
    }

    InvitationEntity(Invitation invitation) {
        this.mVersionCode = 2;
        this.WG = new GameEntity(invitation.getGame());
        this.bT = invitation.getInvitationId();
        this.Yq = invitation.getCreationTimestamp();
        this.Yr = invitation.getInvitationType();
        this.Yu = invitation.getVariant();
        this.Yv = invitation.getAvailableAutoMatchSlots();
        String participantId = invitation.getInviter().getParticipantId();
        Participant participant = null;
        ArrayList<Participant> participants = invitation.getParticipants();
        int size = participants.size();
        this.Yt = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            Participant participant2 = participants.get(i);
            if (participant2.getParticipantId().equals(participantId)) {
                participant = participant2;
            }
            this.Yt.add((ParticipantEntity) participant2.freeze());
        }
        zzab.zzb(participant, "Must have a valid inviter!");
        this.Ys = (ParticipantEntity) participant.freeze();
    }

    static int zza(Invitation invitation) {
        return zzaa.hashCode(invitation.getGame(), invitation.getInvitationId(), Long.valueOf(invitation.getCreationTimestamp()), Integer.valueOf(invitation.getInvitationType()), invitation.getInviter(), invitation.getParticipants(), Integer.valueOf(invitation.getVariant()), Integer.valueOf(invitation.getAvailableAutoMatchSlots()));
    }

    static boolean zza(Invitation invitation, Object obj) {
        if (!(obj instanceof Invitation)) {
            return false;
        }
        if (invitation == obj) {
            return true;
        }
        Invitation invitation2 = (Invitation) obj;
        return zzaa.equal(invitation2.getGame(), invitation.getGame()) && zzaa.equal(invitation2.getInvitationId(), invitation.getInvitationId()) && zzaa.equal(Long.valueOf(invitation2.getCreationTimestamp()), Long.valueOf(invitation.getCreationTimestamp())) && zzaa.equal(Integer.valueOf(invitation2.getInvitationType()), Integer.valueOf(invitation.getInvitationType())) && zzaa.equal(invitation2.getInviter(), invitation.getInviter()) && zzaa.equal(invitation2.getParticipants(), invitation.getParticipants()) && zzaa.equal(Integer.valueOf(invitation2.getVariant()), Integer.valueOf(invitation.getVariant())) && zzaa.equal(Integer.valueOf(invitation2.getAvailableAutoMatchSlots()), Integer.valueOf(invitation.getAvailableAutoMatchSlots()));
    }

    static String zzb(Invitation invitation) {
        return zzaa.zzz(invitation).zzg("Game", invitation.getGame()).zzg("InvitationId", invitation.getInvitationId()).zzg("CreationTimestamp", Long.valueOf(invitation.getCreationTimestamp())).zzg("InvitationType", Integer.valueOf(invitation.getInvitationType())).zzg("Inviter", invitation.getInviter()).zzg("Participants", invitation.getParticipants()).zzg("Variant", Integer.valueOf(invitation.getVariant())).zzg("AvailableAutoMatchSlots", Integer.valueOf(invitation.getAvailableAutoMatchSlots())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public Invitation freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public int getAvailableAutoMatchSlots() {
        return this.Yv;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public long getCreationTimestamp() {
        return this.Yq;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public Game getGame() {
        return this.WG;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public String getInvitationId() {
        return this.bT;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public int getInvitationType() {
        return this.Yr;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public Participant getInviter() {
        return this.Ys;
    }

    @Override // com.google.android.gms.games.multiplayer.Participatable
    public ArrayList<Participant> getParticipants() {
        return new ArrayList<>(this.Yt);
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public int getVariant() {
        return this.Yu;
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
        if (!zzasq()) {
            InvitationEntityCreator.zza(this, parcel, i);
            return;
        }
        this.WG.writeToParcel(parcel, i);
        parcel.writeString(this.bT);
        parcel.writeLong(this.Yq);
        parcel.writeInt(this.Yr);
        this.Ys.writeToParcel(parcel, i);
        int size = this.Yt.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.Yt.get(i2).writeToParcel(parcel, i);
        }
    }
}
