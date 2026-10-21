package com.google.android.gms.games.internal.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestEntity;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class GameRequestCluster extends AbstractSafeParcelable implements GameRequest {
    public static final GameRequestClusterCreator CREATOR = new GameRequestClusterCreator();
    private final ArrayList<GameRequestEntity> XI;
    private final int mVersionCode;

    GameRequestCluster(int i, ArrayList<GameRequestEntity> arrayList) {
        this.mVersionCode = i;
        this.XI = arrayList;
        zzbkg();
    }

    private void zzbkg() {
        zzb.zzbm(!this.XI.isEmpty());
        GameRequestEntity gameRequestEntity = this.XI.get(0);
        int size = this.XI.size();
        for (int i = 1; i < size; i++) {
            GameRequestEntity gameRequestEntity2 = this.XI.get(i);
            zzb.zza(gameRequestEntity.getType() == gameRequestEntity2.getType(), "All the requests must be of the same type");
            zzb.zza(gameRequestEntity.getSender().equals(gameRequestEntity2.getSender()), "All the requests must be from the same sender");
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GameRequestCluster)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        GameRequestCluster gameRequestCluster = (GameRequestCluster) obj;
        if (gameRequestCluster.XI.size() != this.XI.size()) {
            return false;
        }
        int size = this.XI.size();
        for (int i = 0; i < size; i++) {
            if (!this.XI.get(i).equals(gameRequestCluster.XI.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public GameRequest freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public long getCreationTimestamp() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public byte[] getData() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public long getExpirationTimestamp() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public Game getGame() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getRecipientStatus(String str) {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public String getRequestId() {
        return this.XI.get(0).getRequestId();
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public Player getSender() {
        return this.XI.get(0).getSender();
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getStatus() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getType() {
        return this.XI.get(0).getType();
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(this.XI.toArray());
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public boolean isConsumed(String str) {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        GameRequestClusterCreator.zza(this, parcel, i);
    }

    public ArrayList<GameRequest> zzbkw() {
        return new ArrayList<>(this.XI);
    }

    @Override // com.google.android.gms.games.request.GameRequest
    /* JADX INFO: renamed from: zzbkx, reason: merged with bridge method [inline-methods] */
    public ArrayList<Player> getRecipients() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }
}
