package com.google.android.gms.games.social;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;

/* JADX INFO: loaded from: classes.dex */
public class SocialInviteEntity extends AbstractSafeParcelable implements SocialInvite {
    public static final Parcelable.Creator<SocialInviteEntity> CREATOR = new SocialInviteEntityCreator();
    private final PlayerEntity RS;
    private final long ZF;
    private final String ZN;
    private final int ZO;
    private final int it;
    private final int mVersionCode;

    SocialInviteEntity(int i, String str, PlayerEntity playerEntity, int i2, int i3, long j) {
        this.mVersionCode = i;
        this.ZN = str;
        this.RS = playerEntity;
        this.it = i2;
        this.ZO = i3;
        this.ZF = j;
    }

    public SocialInviteEntity(SocialInvite socialInvite) {
        this.mVersionCode = 1;
        this.ZN = socialInvite.zzblm();
        Player player = socialInvite.getPlayer();
        this.RS = player == null ? null : (PlayerEntity) player.freeze();
        this.it = socialInvite.getType();
        this.ZO = socialInvite.getDirection();
        this.ZF = socialInvite.getLastModifiedTimestamp();
    }

    static boolean zza(SocialInvite socialInvite, Object obj) {
        if (!(obj instanceof SocialInvite)) {
            return false;
        }
        if (socialInvite == obj) {
            return true;
        }
        SocialInvite socialInvite2 = (SocialInvite) obj;
        return zzaa.equal(socialInvite2.zzblm(), socialInvite.zzblm()) && zzaa.equal(socialInvite2.getPlayer(), socialInvite.getPlayer()) && zzaa.equal(Integer.valueOf(socialInvite2.getType()), Integer.valueOf(socialInvite.getType())) && zzaa.equal(Integer.valueOf(socialInvite2.getDirection()), Integer.valueOf(socialInvite.getDirection())) && zzaa.equal(Long.valueOf(socialInvite2.getLastModifiedTimestamp()), Long.valueOf(socialInvite.getLastModifiedTimestamp()));
    }

    static int zzc(SocialInvite socialInvite) {
        return zzaa.hashCode(socialInvite.zzblm(), socialInvite.getPlayer(), Integer.valueOf(socialInvite.getType()), Integer.valueOf(socialInvite.getDirection()), Long.valueOf(socialInvite.getLastModifiedTimestamp()));
    }

    static String zzd(SocialInvite socialInvite) {
        return zzaa.zzz(socialInvite).zzg("Social Invite ID", socialInvite.zzblm()).zzg("Player", socialInvite.getPlayer()).zzg("Type", Integer.valueOf(socialInvite.getType())).zzg("Direction", Integer.valueOf(socialInvite.getDirection())).zzg("Last Modified Timestamp", Long.valueOf(socialInvite.getLastModifiedTimestamp())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public int getDirection() {
        return this.ZO;
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public long getLastModifiedTimestamp() {
        return this.ZF;
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public Player getPlayer() {
        return this.RS;
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public int getType() {
        return this.it;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzc(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzd(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        SocialInviteEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public String zzblm() {
        return this.ZN;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbln, reason: merged with bridge method [inline-methods] */
    public SocialInvite freeze() {
        return this;
    }
}
