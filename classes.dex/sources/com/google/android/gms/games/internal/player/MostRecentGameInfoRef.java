package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;

/* JADX INFO: loaded from: classes.dex */
public final class MostRecentGameInfoRef extends zzc implements MostRecentGameInfo {
    private final PlayerColumnNames RJ;

    public MostRecentGameInfoRef(DataHolder dataHolder, int i, PlayerColumnNames playerColumnNames) {
        super(dataHolder, i);
        this.RJ = playerColumnNames;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return MostRecentGameInfoEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return MostRecentGameInfoEntity.zza(this);
    }

    public String toString() {
        return MostRecentGameInfoEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((MostRecentGameInfoEntity) ((MostRecentGameInfo) freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public String zzbko() {
        return getString(this.RJ.Xn);
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public String zzbkp() {
        return getString(this.RJ.Xo);
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public long zzbkq() {
        return getLong(this.RJ.Xp);
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public Uri zzbkr() {
        return zzhg(this.RJ.Xq);
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public Uri zzbks() {
        return zzhg(this.RJ.Xr);
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public Uri zzbkt() {
        return zzhg(this.RJ.Xs);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbku, reason: merged with bridge method [inline-methods] */
    public MostRecentGameInfo freeze() {
        return new MostRecentGameInfoEntity(this);
    }
}
