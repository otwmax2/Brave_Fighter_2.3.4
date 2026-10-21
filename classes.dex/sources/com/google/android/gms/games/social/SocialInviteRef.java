package com.google.android.gms.games.social;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;

/* JADX INFO: loaded from: classes.dex */
public final class SocialInviteRef extends zzc implements SocialInvite {
    private final Player ZP;

    SocialInviteRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
        this.ZP = new PlayerRef(dataHolder, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return SocialInviteEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public int getDirection() {
        return getInteger("direction");
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public long getLastModifiedTimestamp() {
        return getLong("last_modified_timestamp");
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public Player getPlayer() {
        return this.ZP;
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public int getType() {
        return getInteger("type");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return SocialInviteEntity.zzc(this);
    }

    public String toString() {
        return SocialInviteEntity.zzd(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((SocialInviteEntity) ((SocialInvite) freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public String zzblm() {
        return getString("external_social_invite_id");
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbln, reason: merged with bridge method [inline-methods] */
    public SocialInvite freeze() {
        return new SocialInviteEntity(this);
    }
}
