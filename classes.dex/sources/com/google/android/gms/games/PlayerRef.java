package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoRef;
import com.google.android.gms.games.internal.player.PlayerColumnNames;

/* JADX INFO: loaded from: classes.dex */
public final class PlayerRef extends zzc implements Player {
    private final PlayerColumnNames RJ;
    private final MostRecentGameInfoRef RK;
    private final PlayerLevelInfo Rs;

    public PlayerRef(DataHolder dataHolder, int i) {
        this(dataHolder, i, null);
    }

    public PlayerRef(DataHolder dataHolder, int i, String str) {
        super(dataHolder, i);
        this.RJ = new PlayerColumnNames(str);
        this.RK = new MostRecentGameInfoRef(dataHolder, i, this.RJ);
        if (!zzbgk()) {
            this.Rs = null;
            return;
        }
        int integer = getInteger(this.RJ.Xf);
        int integer2 = getInteger(this.RJ.Xi);
        PlayerLevel playerLevel = new PlayerLevel(integer, getLong(this.RJ.Xg), getLong(this.RJ.Xh));
        this.Rs = new PlayerLevelInfo(getLong(this.RJ.Xe), getLong(this.RJ.Xk), playerLevel, integer != integer2 ? new PlayerLevel(integer2, getLong(this.RJ.Xh), getLong(this.RJ.Xj)) : playerLevel);
    }

    private boolean zzbgk() {
        return (zzhh(this.RJ.Xe) || getLong(this.RJ.Xe) == -1) ? false : true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return PlayerEntity.zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public Player freeze() {
        return new PlayerEntity(this);
    }

    @Override // com.google.android.gms.games.Player
    public Uri getBannerImageLandscapeUri() {
        return zzhg(this.RJ.Xv);
    }

    @Override // com.google.android.gms.games.Player
    public String getBannerImageLandscapeUrl() {
        return getString(this.RJ.Xw);
    }

    @Override // com.google.android.gms.games.Player
    public Uri getBannerImagePortraitUri() {
        return zzhg(this.RJ.Xx);
    }

    @Override // com.google.android.gms.games.Player
    public String getBannerImagePortraitUrl() {
        return getString(this.RJ.Xy);
    }

    @Override // com.google.android.gms.games.Player
    public String getDisplayName() {
        return getString(this.RJ.WW);
    }

    @Override // com.google.android.gms.games.Player
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        zza(this.RJ.WW, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.Player
    public Uri getHiResImageUri() {
        return zzhg(this.RJ.WZ);
    }

    @Override // com.google.android.gms.games.Player
    public String getHiResImageUrl() {
        return getString(this.RJ.Xa);
    }

    @Override // com.google.android.gms.games.Player
    public Uri getIconImageUri() {
        return zzhg(this.RJ.WX);
    }

    @Override // com.google.android.gms.games.Player
    public String getIconImageUrl() {
        return getString(this.RJ.WY);
    }

    @Override // com.google.android.gms.games.Player
    public long getLastPlayedWithTimestamp() {
        if (!zzhf(this.RJ.Xd) || zzhh(this.RJ.Xd)) {
            return -1L;
        }
        return getLong(this.RJ.Xd);
    }

    @Override // com.google.android.gms.games.Player
    public PlayerLevelInfo getLevelInfo() {
        return this.Rs;
    }

    @Override // com.google.android.gms.games.Player
    public String getName() {
        return getString(this.RJ.name);
    }

    @Override // com.google.android.gms.games.Player
    public String getPlayerId() {
        return getString(this.RJ.WV);
    }

    @Override // com.google.android.gms.games.Player
    public long getRetrievedTimestamp() {
        return getLong(this.RJ.Xb);
    }

    @Override // com.google.android.gms.games.Player
    public String getTitle() {
        return getString(this.RJ.title);
    }

    @Override // com.google.android.gms.games.Player
    public void getTitle(CharArrayBuffer charArrayBuffer) {
        zza(this.RJ.title, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.Player
    public boolean hasHiResImage() {
        return getHiResImageUri() != null;
    }

    @Override // com.google.android.gms.games.Player
    public boolean hasIconImage() {
        return getIconImageUri() != null;
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return PlayerEntity.zzb(this);
    }

    @Override // com.google.android.gms.games.Player
    public boolean isMuted() {
        return getBoolean(this.RJ.XB);
    }

    public String toString() {
        return PlayerEntity.zzc(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((PlayerEntity) ((Player) freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.Player
    public String zzbgd() {
        return getString(this.RJ.Xu);
    }

    @Override // com.google.android.gms.games.Player
    public boolean zzbge() {
        return getBoolean(this.RJ.Xt);
    }

    @Override // com.google.android.gms.games.Player
    public int zzbgf() {
        return getInteger(this.RJ.Xc);
    }

    @Override // com.google.android.gms.games.Player
    public boolean zzbgg() {
        return getBoolean(this.RJ.Xm);
    }

    @Override // com.google.android.gms.games.Player
    public MostRecentGameInfo zzbgh() {
        if (zzhh(this.RJ.Xn)) {
            return null;
        }
        return this.RK;
    }

    @Override // com.google.android.gms.games.Player
    public int zzbgi() {
        return getInteger(this.RJ.Xz);
    }

    @Override // com.google.android.gms.games.Player
    public long zzbgj() {
        return getLong(this.RJ.XA);
    }
}
