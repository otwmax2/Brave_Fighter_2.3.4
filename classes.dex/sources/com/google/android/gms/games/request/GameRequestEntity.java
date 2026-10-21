package com.google.android.gms.games.request;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class GameRequestEntity extends AbstractSafeParcelable implements GameRequest {
    public static final Parcelable.Creator<GameRequestEntity> CREATOR = new GameRequestEntityCreator();
    private final GameEntity WG;
    private final byte[] YX;
    private final long Yq;
    private final PlayerEntity Zq;
    private final ArrayList<PlayerEntity> Zr;
    private final long Zs;
    private final Bundle Zt;
    private final int it;
    private final int mVersionCode;
    private final int zzblz;
    private final String zzbvu;

    GameRequestEntity(int i, GameEntity gameEntity, PlayerEntity playerEntity, byte[] bArr, String str, ArrayList<PlayerEntity> arrayList, int i2, long j, long j2, Bundle bundle, int i3) {
        this.mVersionCode = i;
        this.WG = gameEntity;
        this.Zq = playerEntity;
        this.YX = bArr;
        this.zzbvu = str;
        this.Zr = arrayList;
        this.it = i2;
        this.Yq = j;
        this.Zs = j2;
        this.Zt = bundle;
        this.zzblz = i3;
    }

    public GameRequestEntity(GameRequest gameRequest) {
        this.mVersionCode = 2;
        this.WG = new GameEntity(gameRequest.getGame());
        this.Zq = new PlayerEntity(gameRequest.getSender());
        this.zzbvu = gameRequest.getRequestId();
        this.it = gameRequest.getType();
        this.Yq = gameRequest.getCreationTimestamp();
        this.Zs = gameRequest.getExpirationTimestamp();
        this.zzblz = gameRequest.getStatus();
        byte[] data = gameRequest.getData();
        if (data == null) {
            this.YX = null;
        } else {
            this.YX = new byte[data.length];
            System.arraycopy(data, 0, this.YX, 0, data.length);
        }
        List<Player> recipients = gameRequest.getRecipients();
        int size = recipients.size();
        this.Zr = new ArrayList<>(size);
        this.Zt = new Bundle();
        for (int i = 0; i < size; i++) {
            Player playerFreeze = recipients.get(i).freeze();
            String playerId = playerFreeze.getPlayerId();
            this.Zr.add((PlayerEntity) playerFreeze);
            this.Zt.putInt(playerId, gameRequest.getRecipientStatus(playerId));
        }
    }

    static int zza(GameRequest gameRequest) {
        return zzaa.hashCode(gameRequest.getGame(), gameRequest.getRecipients(), gameRequest.getRequestId(), gameRequest.getSender(), zzb(gameRequest), Integer.valueOf(gameRequest.getType()), Long.valueOf(gameRequest.getCreationTimestamp()), Long.valueOf(gameRequest.getExpirationTimestamp()));
    }

    static boolean zza(GameRequest gameRequest, Object obj) {
        if (!(obj instanceof GameRequest)) {
            return false;
        }
        if (gameRequest == obj) {
            return true;
        }
        GameRequest gameRequest2 = (GameRequest) obj;
        return zzaa.equal(gameRequest2.getGame(), gameRequest.getGame()) && zzaa.equal(gameRequest2.getRecipients(), gameRequest.getRecipients()) && zzaa.equal(gameRequest2.getRequestId(), gameRequest.getRequestId()) && zzaa.equal(gameRequest2.getSender(), gameRequest.getSender()) && Arrays.equals(zzb(gameRequest2), zzb(gameRequest)) && zzaa.equal(Integer.valueOf(gameRequest2.getType()), Integer.valueOf(gameRequest.getType())) && zzaa.equal(Long.valueOf(gameRequest2.getCreationTimestamp()), Long.valueOf(gameRequest.getCreationTimestamp())) && zzaa.equal(Long.valueOf(gameRequest2.getExpirationTimestamp()), Long.valueOf(gameRequest.getExpirationTimestamp()));
    }

    private static int[] zzb(GameRequest gameRequest) {
        List<Player> recipients = gameRequest.getRecipients();
        int size = recipients.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = gameRequest.getRecipientStatus(recipients.get(i).getPlayerId());
        }
        return iArr;
    }

    static String zzc(GameRequest gameRequest) {
        return zzaa.zzz(gameRequest).zzg("Game", gameRequest.getGame()).zzg("Sender", gameRequest.getSender()).zzg("Recipients", gameRequest.getRecipients()).zzg("Data", gameRequest.getData()).zzg("RequestId", gameRequest.getRequestId()).zzg("Type", Integer.valueOf(gameRequest.getType())).zzg("CreationTimestamp", Long.valueOf(gameRequest.getCreationTimestamp())).zzg("ExpirationTimestamp", Long.valueOf(gameRequest.getExpirationTimestamp())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public GameRequest freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public long getCreationTimestamp() {
        return this.Yq;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public byte[] getData() {
        return this.YX;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public long getExpirationTimestamp() {
        return this.Zs;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public Game getGame() {
        return this.WG;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getRecipientStatus(String str) {
        return this.Zt.getInt(str, 0);
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public List<Player> getRecipients() {
        return new ArrayList(this.Zr);
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public String getRequestId() {
        return this.zzbvu;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public Player getSender() {
        return this.Zq;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getStatus() {
        return this.zzblz;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getType() {
        return this.it;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public boolean isConsumed(String str) {
        return getRecipientStatus(str) == 1;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzc(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        GameRequestEntityCreator.zza(this, parcel, i);
    }

    public Bundle zzblk() {
        return this.Zt;
    }
}
