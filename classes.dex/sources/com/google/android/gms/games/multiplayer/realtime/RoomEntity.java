package com.google.android.gms.games.multiplayer.realtime;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzg;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class RoomEntity extends GamesDowngradeableSafeParcel implements Room {
    public static final Parcelable.Creator<RoomEntity> CREATOR = new RoomEntityCreatorCompat();
    private final String Te;
    private final Bundle YK;
    private final String YM;
    private final int YN;
    private final int YO;
    private final long Yq;
    private final ArrayList<ParticipantEntity> Yt;
    private final int Yu;
    private final int mVersionCode;
    private final String zzcvi;

    static final class RoomEntityCreatorCompat extends RoomEntityCreator {
        RoomEntityCreatorCompat() {
        }

        @Override // com.google.android.gms.games.multiplayer.realtime.RoomEntityCreator, android.os.Parcelable.Creator
        /* JADX INFO: renamed from: zzlr, reason: merged with bridge method [inline-methods] */
        public RoomEntity createFromParcel(Parcel parcel) {
            if (RoomEntity.zzf(RoomEntity.zzasp()) || RoomEntity.zzhl(RoomEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            String string = parcel.readString();
            String string2 = parcel.readString();
            long j = parcel.readLong();
            int i = parcel.readInt();
            String string3 = parcel.readString();
            int i2 = parcel.readInt();
            Bundle bundle = parcel.readBundle();
            int i3 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i3);
            for (int i4 = 0; i4 < i3; i4++) {
                arrayList.add(ParticipantEntity.CREATOR.createFromParcel(parcel));
            }
            return new RoomEntity(2, string, string2, j, i, string3, i2, bundle, arrayList, -1);
        }
    }

    RoomEntity(int i, String str, String str2, long j, int i2, String str3, int i3, Bundle bundle, ArrayList<ParticipantEntity> arrayList, int i4) {
        this.mVersionCode = i;
        this.Te = str;
        this.YM = str2;
        this.Yq = j;
        this.YN = i2;
        this.zzcvi = str3;
        this.Yu = i3;
        this.YK = bundle;
        this.Yt = arrayList;
        this.YO = i4;
    }

    public RoomEntity(Room room) {
        this.mVersionCode = 2;
        this.Te = room.getRoomId();
        this.YM = room.getCreatorId();
        this.Yq = room.getCreationTimestamp();
        this.YN = room.getStatus();
        this.zzcvi = room.getDescription();
        this.Yu = room.getVariant();
        this.YK = room.getAutoMatchCriteria();
        ArrayList<Participant> participants = room.getParticipants();
        int size = participants.size();
        this.Yt = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            this.Yt.add((ParticipantEntity) participants.get(i).freeze());
        }
        this.YO = room.getAutoMatchWaitEstimateSeconds();
    }

    static int zza(Room room) {
        return zzaa.hashCode(room.getRoomId(), room.getCreatorId(), Long.valueOf(room.getCreationTimestamp()), Integer.valueOf(room.getStatus()), room.getDescription(), Integer.valueOf(room.getVariant()), room.getAutoMatchCriteria(), room.getParticipants(), Integer.valueOf(room.getAutoMatchWaitEstimateSeconds()));
    }

    static int zza(Room room, String str) {
        ArrayList<Participant> participants = room.getParticipants();
        int size = participants.size();
        for (int i = 0; i < size; i++) {
            Participant participant = participants.get(i);
            if (participant.getParticipantId().equals(str)) {
                return participant.getStatus();
            }
        }
        String strValueOf = String.valueOf(room.getRoomId());
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 28 + String.valueOf(strValueOf).length()).append("Participant ").append(str).append(" is not in room ").append(strValueOf).toString());
    }

    static boolean zza(Room room, Object obj) {
        if (!(obj instanceof Room)) {
            return false;
        }
        if (room == obj) {
            return true;
        }
        Room room2 = (Room) obj;
        return zzaa.equal(room2.getRoomId(), room.getRoomId()) && zzaa.equal(room2.getCreatorId(), room.getCreatorId()) && zzaa.equal(Long.valueOf(room2.getCreationTimestamp()), Long.valueOf(room.getCreationTimestamp())) && zzaa.equal(Integer.valueOf(room2.getStatus()), Integer.valueOf(room.getStatus())) && zzaa.equal(room2.getDescription(), room.getDescription()) && zzaa.equal(Integer.valueOf(room2.getVariant()), Integer.valueOf(room.getVariant())) && zzaa.equal(room2.getAutoMatchCriteria(), room.getAutoMatchCriteria()) && zzaa.equal(room2.getParticipants(), room.getParticipants()) && zzaa.equal(Integer.valueOf(room2.getAutoMatchWaitEstimateSeconds()), Integer.valueOf(room.getAutoMatchWaitEstimateSeconds()));
    }

    static String zzb(Room room) {
        return zzaa.zzz(room).zzg("RoomId", room.getRoomId()).zzg("CreatorId", room.getCreatorId()).zzg("CreationTimestamp", Long.valueOf(room.getCreationTimestamp())).zzg("RoomStatus", Integer.valueOf(room.getStatus())).zzg("Description", room.getDescription()).zzg("Variant", Integer.valueOf(room.getVariant())).zzg("AutoMatchCriteria", room.getAutoMatchCriteria()).zzg("Participants", room.getParticipants()).zzg("AutoMatchWaitEstimateSeconds", Integer.valueOf(room.getAutoMatchWaitEstimateSeconds())).toString();
    }

    static String zzb(Room room, String str) {
        ArrayList<Participant> participants = room.getParticipants();
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

    static Participant zzc(Room room, String str) {
        ArrayList<Participant> participants = room.getParticipants();
        int size = participants.size();
        for (int i = 0; i < size; i++) {
            Participant participant = participants.get(i);
            if (participant.getParticipantId().equals(str)) {
                return participant;
            }
        }
        String strValueOf = String.valueOf(room.getRoomId());
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 29 + String.valueOf(strValueOf).length()).append("Participant ").append(str).append(" is not in match ").append(strValueOf).toString());
    }

    static ArrayList<String> zzc(Room room) {
        ArrayList<Participant> participants = room.getParticipants();
        int size = participants.size();
        ArrayList<String> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(participants.get(i).getParticipantId());
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public Room freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public Bundle getAutoMatchCriteria() {
        return this.YK;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public int getAutoMatchWaitEstimateSeconds() {
        return this.YO;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public long getCreationTimestamp() {
        return this.Yq;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public String getCreatorId() {
        return this.YM;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public String getDescription() {
        return this.zzcvi;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.zzcvi, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public Participant getParticipant(String str) {
        return zzc(this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public String getParticipantId(String str) {
        return zzb(this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public ArrayList<String> getParticipantIds() {
        return zzc(this);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public int getParticipantStatus(String str) {
        return zza((Room) this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.Participatable
    public ArrayList<Participant> getParticipants() {
        return new ArrayList<>(this.Yt);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public String getRoomId() {
        return this.Te;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public int getStatus() {
        return this.YN;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
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
            RoomEntityCreator.zza(this, parcel, i);
            return;
        }
        parcel.writeString(this.Te);
        parcel.writeString(this.YM);
        parcel.writeLong(this.Yq);
        parcel.writeInt(this.YN);
        parcel.writeString(this.zzcvi);
        parcel.writeInt(this.Yu);
        parcel.writeBundle(this.YK);
        int size = this.Yt.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.Yt.get(i2).writeToParcel(parcel, i);
        }
    }
}
