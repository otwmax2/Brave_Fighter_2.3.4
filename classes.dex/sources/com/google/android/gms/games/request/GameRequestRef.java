package com.google.android.gms.games.request;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class GameRequestRef extends zzc implements GameRequest {
    private final int Sq;

    public GameRequestRef(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.Sq = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return GameRequestEntity.zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public GameRequest freeze() {
        return new GameRequestEntity(this);
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public long getCreationTimestamp() {
        return getLong("creation_timestamp");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public byte[] getData() {
        return getByteArray("data");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public long getExpirationTimestamp() {
        return getLong("expiration_timestamp");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public Game getGame() {
        return new GameRef(this.tk, this.vK);
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getRecipientStatus(String str) {
        for (int i = this.vK; i < this.vK + this.Sq; i++) {
            int iZzfo = this.tk.zzfo(i);
            if (this.tk.zzd("recipient_external_player_id", i, iZzfo).equals(str)) {
                return this.tk.zzc("recipient_status", i, iZzfo);
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public List<Player> getRecipients() {
        ArrayList arrayList = new ArrayList(this.Sq);
        for (int i = 0; i < this.Sq; i++) {
            arrayList.add(new PlayerRef(this.tk, this.vK + i, "recipient_"));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public String getRequestId() {
        return getString("external_request_id");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public Player getSender() {
        return new PlayerRef(this.tk, zzarb(), "sender_");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getStatus() {
        return getInteger("status");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getType() {
        return getInteger("type");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return GameRequestEntity.zza(this);
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public boolean isConsumed(String str) {
        return getRecipientStatus(str) == 1;
    }

    public String toString() {
        return GameRequestEntity.zzc(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((GameRequestEntity) ((GameRequest) freeze())).writeToParcel(parcel, i);
    }
}
