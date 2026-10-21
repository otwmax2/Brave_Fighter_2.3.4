package com.google.android.gms.games.multiplayer;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;

/* JADX INFO: loaded from: classes.dex */
public final class ParticipantRef extends zzc implements Participant {
    private final PlayerRef Yz;

    public ParticipantRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
        this.Yz = new PlayerRef(dataHolder, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return ParticipantEntity.zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public Participant freeze() {
        return new ParticipantEntity(this);
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public int getCapabilities() {
        return getInteger("capabilities");
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getDisplayName() {
        return zzhh("external_player_id") ? getString("default_display_name") : this.Yz.getDisplayName();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        if (zzhh("external_player_id")) {
            zza("default_display_name", charArrayBuffer);
        } else {
            this.Yz.getDisplayName(charArrayBuffer);
        }
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public Uri getHiResImageUri() {
        return zzhh("external_player_id") ? zzhg("default_display_hi_res_image_uri") : this.Yz.getHiResImageUri();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getHiResImageUrl() {
        return zzhh("external_player_id") ? getString("default_display_hi_res_image_url") : this.Yz.getHiResImageUrl();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public Uri getIconImageUri() {
        return zzhh("external_player_id") ? zzhg("default_display_image_uri") : this.Yz.getIconImageUri();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getIconImageUrl() {
        return zzhh("external_player_id") ? getString("default_display_image_url") : this.Yz.getIconImageUrl();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getParticipantId() {
        return getString("external_participant_id");
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public Player getPlayer() {
        if (zzhh("external_player_id")) {
            return null;
        }
        return this.Yz;
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public ParticipantResult getResult() {
        if (zzhh("result_type")) {
            return null;
        }
        return new ParticipantResult(getParticipantId(), getInteger("result_type"), getInteger("placing"));
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public int getStatus() {
        return getInteger("player_status");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return ParticipantEntity.zza(this);
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public boolean isConnectedToRoom() {
        return getInteger("connected") > 0;
    }

    public String toString() {
        return ParticipantEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((ParticipantEntity) ((Participant) freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String zzbhz() {
        return getString("client_address");
    }
}
