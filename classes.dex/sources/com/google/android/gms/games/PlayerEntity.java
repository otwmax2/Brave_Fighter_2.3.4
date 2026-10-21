package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.common.util.zzg;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntity;

/* JADX INFO: loaded from: classes.dex */
public final class PlayerEntity extends GamesDowngradeableSafeParcel implements Player {
    public static final Parcelable.Creator<PlayerEntity> CREATOR = new PlayerEntityCreatorCompat();
    private final String Fx;
    private final Uri QE;
    private final Uri QF;
    private final String QP;
    private final String QQ;
    private final int RA;
    private final long RB;
    private final long Ro;
    private final int Rp;
    private final long Rq;
    private final MostRecentGameInfoEntity Rr;
    private final PlayerLevelInfo Rs;
    private final boolean Rt;
    private final boolean Ru;
    private final String Rv;
    private final Uri Rw;
    private final String Rx;
    private final Uri Ry;
    private final String Rz;
    private String dH;
    private final String mName;
    private final int mVersionCode;
    private String nU;
    private final boolean zzcqf;

    static final class PlayerEntityCreatorCompat extends PlayerEntityCreator {
        PlayerEntityCreatorCompat() {
        }

        @Override // com.google.android.gms.games.PlayerEntityCreator, android.os.Parcelable.Creator
        /* JADX INFO: renamed from: zzku */
        public PlayerEntity createFromParcel(Parcel parcel) {
            if (PlayerEntity.zzf(PlayerEntity.zzasp()) || PlayerEntity.zzhl(PlayerEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            return new PlayerEntity(14, string, string2, string3 == null ? null : Uri.parse(string3), string4 == null ? null : Uri.parse(string4), parcel.readLong(), -1, -1L, null, null, null, null, null, true, false, parcel.readString(), parcel.readString(), null, null, null, null, -1, -1L, false);
        }
    }

    PlayerEntity(int i, String str, String str2, Uri uri, Uri uri2, long j, int i2, long j2, String str3, String str4, String str5, MostRecentGameInfoEntity mostRecentGameInfoEntity, PlayerLevelInfo playerLevelInfo, boolean z, boolean z2, String str6, String str7, Uri uri3, String str8, Uri uri4, String str9, int i3, long j3, boolean z3) {
        this.mVersionCode = i;
        this.nU = str;
        this.dH = str2;
        this.QE = uri;
        this.QP = str3;
        this.QF = uri2;
        this.QQ = str4;
        this.Ro = j;
        this.Rp = i2;
        this.Rq = j2;
        this.Fx = str5;
        this.Rt = z;
        this.Rr = mostRecentGameInfoEntity;
        this.Rs = playerLevelInfo;
        this.Ru = z2;
        this.Rv = str6;
        this.mName = str7;
        this.Rw = uri3;
        this.Rx = str8;
        this.Ry = uri4;
        this.Rz = str9;
        this.RA = i3;
        this.RB = j3;
        this.zzcqf = z3;
    }

    public PlayerEntity(Player player) {
        this(player, true);
    }

    public PlayerEntity(Player player, boolean z) {
        this.mVersionCode = 14;
        this.nU = z ? player.getPlayerId() : null;
        this.dH = player.getDisplayName();
        this.QE = player.getIconImageUri();
        this.QP = player.getIconImageUrl();
        this.QF = player.getHiResImageUri();
        this.QQ = player.getHiResImageUrl();
        this.Ro = player.getRetrievedTimestamp();
        this.Rp = player.zzbgf();
        this.Rq = player.getLastPlayedWithTimestamp();
        this.Fx = player.getTitle();
        this.Rt = player.zzbgg();
        MostRecentGameInfo mostRecentGameInfoZzbgh = player.zzbgh();
        this.Rr = mostRecentGameInfoZzbgh != null ? new MostRecentGameInfoEntity(mostRecentGameInfoZzbgh) : null;
        this.Rs = player.getLevelInfo();
        this.Ru = player.zzbge();
        this.Rv = player.zzbgd();
        this.mName = player.getName();
        this.Rw = player.getBannerImageLandscapeUri();
        this.Rx = player.getBannerImageLandscapeUrl();
        this.Ry = player.getBannerImagePortraitUri();
        this.Rz = player.getBannerImagePortraitUrl();
        this.RA = player.zzbgi();
        this.RB = player.zzbgj();
        this.zzcqf = player.isMuted();
        if (z) {
            zzb.zzw(this.nU);
        }
        zzb.zzw(this.dH);
        zzb.zzbm(this.Ro > 0);
    }

    static boolean zza(Player player, Object obj) {
        if (!(obj instanceof Player)) {
            return false;
        }
        if (player == obj) {
            return true;
        }
        Player player2 = (Player) obj;
        return zzaa.equal(player2.getPlayerId(), player.getPlayerId()) && zzaa.equal(player2.getDisplayName(), player.getDisplayName()) && zzaa.equal(Boolean.valueOf(player2.zzbge()), Boolean.valueOf(player.zzbge())) && zzaa.equal(player2.getIconImageUri(), player.getIconImageUri()) && zzaa.equal(player2.getHiResImageUri(), player.getHiResImageUri()) && zzaa.equal(Long.valueOf(player2.getRetrievedTimestamp()), Long.valueOf(player.getRetrievedTimestamp())) && zzaa.equal(player2.getTitle(), player.getTitle()) && zzaa.equal(player2.getLevelInfo(), player.getLevelInfo()) && zzaa.equal(player2.zzbgd(), player.zzbgd()) && zzaa.equal(player2.getName(), player.getName()) && zzaa.equal(player2.getBannerImageLandscapeUri(), player.getBannerImageLandscapeUri()) && zzaa.equal(player2.getBannerImagePortraitUri(), player.getBannerImagePortraitUri()) && zzaa.equal(Integer.valueOf(player2.zzbgi()), Integer.valueOf(player.zzbgi())) && zzaa.equal(Long.valueOf(player2.zzbgj()), Long.valueOf(player.zzbgj())) && zzaa.equal(Boolean.valueOf(player2.isMuted()), Boolean.valueOf(player.isMuted()));
    }

    static int zzb(Player player) {
        return zzaa.hashCode(player.getPlayerId(), player.getDisplayName(), Boolean.valueOf(player.zzbge()), player.getIconImageUri(), player.getHiResImageUri(), Long.valueOf(player.getRetrievedTimestamp()), player.getTitle(), player.getLevelInfo(), player.zzbgd(), player.getName(), player.getBannerImageLandscapeUri(), player.getBannerImagePortraitUri(), Integer.valueOf(player.zzbgi()), Long.valueOf(player.zzbgj()), Boolean.valueOf(player.isMuted()));
    }

    static String zzc(Player player) {
        return zzaa.zzz(player).zzg("PlayerId", player.getPlayerId()).zzg("DisplayName", player.getDisplayName()).zzg("HasDebugAccess", Boolean.valueOf(player.zzbge())).zzg("IconImageUri", player.getIconImageUri()).zzg("IconImageUrl", player.getIconImageUrl()).zzg("HiResImageUri", player.getHiResImageUri()).zzg("HiResImageUrl", player.getHiResImageUrl()).zzg("RetrievedTimestamp", Long.valueOf(player.getRetrievedTimestamp())).zzg("Title", player.getTitle()).zzg("LevelInfo", player.getLevelInfo()).zzg("GamerTag", player.zzbgd()).zzg("Name", player.getName()).zzg("BannerImageLandscapeUri", player.getBannerImageLandscapeUri()).zzg("BannerImageLandscapeUrl", player.getBannerImageLandscapeUrl()).zzg("BannerImagePortraitUri", player.getBannerImagePortraitUri()).zzg("BannerImagePortraitUrl", player.getBannerImagePortraitUrl()).zzg("GamerFriendStatus", Integer.valueOf(player.zzbgi())).zzg("GamerFriendUpdateTimestamp", Long.valueOf(player.zzbgj())).zzg("IsMuted", Boolean.valueOf(player.isMuted())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public Player freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.Player
    public Uri getBannerImageLandscapeUri() {
        return this.Rw;
    }

    @Override // com.google.android.gms.games.Player
    public String getBannerImageLandscapeUrl() {
        return this.Rx;
    }

    @Override // com.google.android.gms.games.Player
    public Uri getBannerImagePortraitUri() {
        return this.Ry;
    }

    @Override // com.google.android.gms.games.Player
    public String getBannerImagePortraitUrl() {
        return this.Rz;
    }

    @Override // com.google.android.gms.games.Player
    public String getDisplayName() {
        return this.dH;
    }

    @Override // com.google.android.gms.games.Player
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.dH, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.Player
    public Uri getHiResImageUri() {
        return this.QF;
    }

    @Override // com.google.android.gms.games.Player
    public String getHiResImageUrl() {
        return this.QQ;
    }

    @Override // com.google.android.gms.games.Player
    public Uri getIconImageUri() {
        return this.QE;
    }

    @Override // com.google.android.gms.games.Player
    public String getIconImageUrl() {
        return this.QP;
    }

    @Override // com.google.android.gms.games.Player
    public long getLastPlayedWithTimestamp() {
        return this.Rq;
    }

    @Override // com.google.android.gms.games.Player
    public PlayerLevelInfo getLevelInfo() {
        return this.Rs;
    }

    @Override // com.google.android.gms.games.Player
    public String getName() {
        return this.mName;
    }

    @Override // com.google.android.gms.games.Player
    public String getPlayerId() {
        return this.nU;
    }

    @Override // com.google.android.gms.games.Player
    public long getRetrievedTimestamp() {
        return this.Ro;
    }

    @Override // com.google.android.gms.games.Player
    public String getTitle() {
        return this.Fx;
    }

    @Override // com.google.android.gms.games.Player
    public void getTitle(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.Fx, charArrayBuffer);
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // com.google.android.gms.games.Player
    public boolean hasHiResImage() {
        return getHiResImageUri() != null;
    }

    @Override // com.google.android.gms.games.Player
    public boolean hasIconImage() {
        return getIconImageUri() != null;
    }

    public int hashCode() {
        return zzb(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // com.google.android.gms.games.Player
    public boolean isMuted() {
        return this.zzcqf;
    }

    public String toString() {
        return zzc(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (!zzasq()) {
            PlayerEntityCreator.zza(this, parcel, i);
            return;
        }
        parcel.writeString(this.nU);
        parcel.writeString(this.dH);
        parcel.writeString(this.QE == null ? null : this.QE.toString());
        parcel.writeString(this.QF != null ? this.QF.toString() : null);
        parcel.writeLong(this.Ro);
    }

    @Override // com.google.android.gms.games.Player
    public String zzbgd() {
        return this.Rv;
    }

    @Override // com.google.android.gms.games.Player
    public boolean zzbge() {
        return this.Ru;
    }

    @Override // com.google.android.gms.games.Player
    public int zzbgf() {
        return this.Rp;
    }

    @Override // com.google.android.gms.games.Player
    public boolean zzbgg() {
        return this.Rt;
    }

    @Override // com.google.android.gms.games.Player
    public MostRecentGameInfo zzbgh() {
        return this.Rr;
    }

    @Override // com.google.android.gms.games.Player
    public int zzbgi() {
        return this.RA;
    }

    @Override // com.google.android.gms.games.Player
    public long zzbgj() {
        return this.RB;
    }
}
