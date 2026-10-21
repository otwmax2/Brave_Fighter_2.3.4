package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzg;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;

/* JADX INFO: loaded from: classes.dex */
public final class GameEntity extends GamesDowngradeableSafeParcel implements Game {
    public static final Parcelable.Creator<GameEntity> CREATOR = new GameEntityCreatorCompat();
    private final String QB;
    private final String QC;
    private final String QD;
    private final Uri QE;
    private final Uri QF;
    private final Uri QG;
    private final boolean QH;
    private final boolean QI;
    private final String QJ;
    private final int QK;
    private final int QL;
    private final int QM;
    private final boolean QN;
    private final boolean QO;
    private final String QP;
    private final String QQ;
    private final String QR;
    private final boolean QS;
    private final boolean QT;
    private final String QU;
    private final boolean QV;
    private final String dH;
    private final String gs;
    private final int mVersionCode;
    private final boolean zzbsi;
    private final String zzcvi;

    static final class GameEntityCreatorCompat extends GameEntityCreator {
        GameEntityCreatorCompat() {
        }

        @Override // com.google.android.gms.games.GameEntityCreator, android.os.Parcelable.Creator
        /* JADX INFO: renamed from: zzkt */
        public GameEntity createFromParcel(Parcel parcel) {
            if (GameEntity.zzf(GameEntity.zzasp()) || GameEntity.zzhl(GameEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            String string7 = parcel.readString();
            Uri uri = string7 == null ? null : Uri.parse(string7);
            String string8 = parcel.readString();
            Uri uri2 = string8 == null ? null : Uri.parse(string8);
            String string9 = parcel.readString();
            return new GameEntity(7, string, string2, string3, string4, string5, string6, uri, uri2, string9 == null ? null : Uri.parse(string9), parcel.readInt() > 0, parcel.readInt() > 0, parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), false, false, null, null, null, false, false, false, null, false);
        }
    }

    GameEntity(int i, String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Uri uri2, Uri uri3, boolean z, boolean z2, String str7, int i2, int i3, int i4, boolean z3, boolean z4, String str8, String str9, String str10, boolean z5, boolean z6, boolean z7, String str11, boolean z8) {
        this.mVersionCode = i;
        this.gs = str;
        this.dH = str2;
        this.QB = str3;
        this.QC = str4;
        this.zzcvi = str5;
        this.QD = str6;
        this.QE = uri;
        this.QP = str8;
        this.QF = uri2;
        this.QQ = str9;
        this.QG = uri3;
        this.QR = str10;
        this.QH = z;
        this.QI = z2;
        this.QJ = str7;
        this.QK = i2;
        this.QL = i3;
        this.QM = i4;
        this.QN = z3;
        this.QO = z4;
        this.zzbsi = z5;
        this.QS = z6;
        this.QT = z7;
        this.QU = str11;
        this.QV = z8;
    }

    public GameEntity(Game game) {
        this.mVersionCode = 7;
        this.gs = game.getApplicationId();
        this.QB = game.getPrimaryCategory();
        this.QC = game.getSecondaryCategory();
        this.zzcvi = game.getDescription();
        this.QD = game.getDeveloperName();
        this.dH = game.getDisplayName();
        this.QE = game.getIconImageUri();
        this.QP = game.getIconImageUrl();
        this.QF = game.getHiResImageUri();
        this.QQ = game.getHiResImageUrl();
        this.QG = game.getFeaturedImageUri();
        this.QR = game.getFeaturedImageUrl();
        this.QH = game.zzbfw();
        this.QI = game.zzbfy();
        this.QJ = game.zzbfz();
        this.QK = 1;
        this.QL = game.getAchievementTotalCount();
        this.QM = game.getLeaderboardCount();
        this.QN = game.isRealTimeMultiplayerEnabled();
        this.QO = game.isTurnBasedMultiplayerEnabled();
        this.zzbsi = game.isMuted();
        this.QS = game.zzbfx();
        this.QT = game.areSnapshotsEnabled();
        this.QU = game.getThemeColor();
        this.QV = game.hasGamepadSupport();
    }

    static int zza(Game game) {
        return zzaa.hashCode(game.getApplicationId(), game.getDisplayName(), game.getPrimaryCategory(), game.getSecondaryCategory(), game.getDescription(), game.getDeveloperName(), game.getIconImageUri(), game.getHiResImageUri(), game.getFeaturedImageUri(), Boolean.valueOf(game.zzbfw()), Boolean.valueOf(game.zzbfy()), game.zzbfz(), Integer.valueOf(game.getAchievementTotalCount()), Integer.valueOf(game.getLeaderboardCount()), Boolean.valueOf(game.isRealTimeMultiplayerEnabled()), Boolean.valueOf(game.isTurnBasedMultiplayerEnabled()), Boolean.valueOf(game.isMuted()), Boolean.valueOf(game.zzbfx()), Boolean.valueOf(game.areSnapshotsEnabled()), game.getThemeColor(), Boolean.valueOf(game.hasGamepadSupport()));
    }

    static boolean zza(Game game, Object obj) {
        if (!(obj instanceof Game)) {
            return false;
        }
        if (game == obj) {
            return true;
        }
        Game game2 = (Game) obj;
        if (zzaa.equal(game2.getApplicationId(), game.getApplicationId()) && zzaa.equal(game2.getDisplayName(), game.getDisplayName()) && zzaa.equal(game2.getPrimaryCategory(), game.getPrimaryCategory()) && zzaa.equal(game2.getSecondaryCategory(), game.getSecondaryCategory()) && zzaa.equal(game2.getDescription(), game.getDescription()) && zzaa.equal(game2.getDeveloperName(), game.getDeveloperName()) && zzaa.equal(game2.getIconImageUri(), game.getIconImageUri()) && zzaa.equal(game2.getHiResImageUri(), game.getHiResImageUri()) && zzaa.equal(game2.getFeaturedImageUri(), game.getFeaturedImageUri()) && zzaa.equal(Boolean.valueOf(game2.zzbfw()), Boolean.valueOf(game.zzbfw())) && zzaa.equal(Boolean.valueOf(game2.zzbfy()), Boolean.valueOf(game.zzbfy())) && zzaa.equal(game2.zzbfz(), game.zzbfz()) && zzaa.equal(Integer.valueOf(game2.getAchievementTotalCount()), Integer.valueOf(game.getAchievementTotalCount())) && zzaa.equal(Integer.valueOf(game2.getLeaderboardCount()), Integer.valueOf(game.getLeaderboardCount())) && zzaa.equal(Boolean.valueOf(game2.isRealTimeMultiplayerEnabled()), Boolean.valueOf(game.isRealTimeMultiplayerEnabled()))) {
            if (zzaa.equal(Boolean.valueOf(game2.isTurnBasedMultiplayerEnabled()), Boolean.valueOf(game.isTurnBasedMultiplayerEnabled() && zzaa.equal(Boolean.valueOf(game2.isMuted()), Boolean.valueOf(game.isMuted())) && zzaa.equal(Boolean.valueOf(game2.zzbfx()), Boolean.valueOf(game.zzbfx())))) && zzaa.equal(Boolean.valueOf(game2.areSnapshotsEnabled()), Boolean.valueOf(game.areSnapshotsEnabled())) && zzaa.equal(game2.getThemeColor(), game.getThemeColor()) && zzaa.equal(Boolean.valueOf(game2.hasGamepadSupport()), Boolean.valueOf(game.hasGamepadSupport()))) {
                return true;
            }
        }
        return false;
    }

    static String zzb(Game game) {
        return zzaa.zzz(game).zzg("ApplicationId", game.getApplicationId()).zzg("DisplayName", game.getDisplayName()).zzg("PrimaryCategory", game.getPrimaryCategory()).zzg("SecondaryCategory", game.getSecondaryCategory()).zzg("Description", game.getDescription()).zzg("DeveloperName", game.getDeveloperName()).zzg("IconImageUri", game.getIconImageUri()).zzg("IconImageUrl", game.getIconImageUrl()).zzg("HiResImageUri", game.getHiResImageUri()).zzg("HiResImageUrl", game.getHiResImageUrl()).zzg("FeaturedImageUri", game.getFeaturedImageUri()).zzg("FeaturedImageUrl", game.getFeaturedImageUrl()).zzg("PlayEnabledGame", Boolean.valueOf(game.zzbfw())).zzg("InstanceInstalled", Boolean.valueOf(game.zzbfy())).zzg("InstancePackageName", game.zzbfz()).zzg("AchievementTotalCount", Integer.valueOf(game.getAchievementTotalCount())).zzg("LeaderboardCount", Integer.valueOf(game.getLeaderboardCount())).zzg("RealTimeMultiplayerEnabled", Boolean.valueOf(game.isRealTimeMultiplayerEnabled())).zzg("TurnBasedMultiplayerEnabled", Boolean.valueOf(game.isTurnBasedMultiplayerEnabled())).zzg("AreSnapshotsEnabled", Boolean.valueOf(game.areSnapshotsEnabled())).zzg("ThemeColor", game.getThemeColor()).zzg("HasGamepadSupport", Boolean.valueOf(game.hasGamepadSupport())).toString();
    }

    @Override // com.google.android.gms.games.Game
    public boolean areSnapshotsEnabled() {
        return this.QT;
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public Game freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.Game
    public int getAchievementTotalCount() {
        return this.QL;
    }

    @Override // com.google.android.gms.games.Game
    public String getApplicationId() {
        return this.gs;
    }

    @Override // com.google.android.gms.games.Game
    public String getDescription() {
        return this.zzcvi;
    }

    @Override // com.google.android.gms.games.Game
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.zzcvi, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.Game
    public String getDeveloperName() {
        return this.QD;
    }

    @Override // com.google.android.gms.games.Game
    public void getDeveloperName(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.QD, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.Game
    public String getDisplayName() {
        return this.dH;
    }

    @Override // com.google.android.gms.games.Game
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.dH, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.Game
    public Uri getFeaturedImageUri() {
        return this.QG;
    }

    @Override // com.google.android.gms.games.Game
    public String getFeaturedImageUrl() {
        return this.QR;
    }

    @Override // com.google.android.gms.games.Game
    public Uri getHiResImageUri() {
        return this.QF;
    }

    @Override // com.google.android.gms.games.Game
    public String getHiResImageUrl() {
        return this.QQ;
    }

    @Override // com.google.android.gms.games.Game
    public Uri getIconImageUri() {
        return this.QE;
    }

    @Override // com.google.android.gms.games.Game
    public String getIconImageUrl() {
        return this.QP;
    }

    @Override // com.google.android.gms.games.Game
    public int getLeaderboardCount() {
        return this.QM;
    }

    @Override // com.google.android.gms.games.Game
    public String getPrimaryCategory() {
        return this.QB;
    }

    @Override // com.google.android.gms.games.Game
    public String getSecondaryCategory() {
        return this.QC;
    }

    @Override // com.google.android.gms.games.Game
    public String getThemeColor() {
        return this.QU;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // com.google.android.gms.games.Game
    public boolean hasGamepadSupport() {
        return this.QV;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // com.google.android.gms.games.Game
    public boolean isMuted() {
        return this.zzbsi;
    }

    @Override // com.google.android.gms.games.Game
    public boolean isRealTimeMultiplayerEnabled() {
        return this.QN;
    }

    @Override // com.google.android.gms.games.Game
    public boolean isTurnBasedMultiplayerEnabled() {
        return this.QO;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (!zzasq()) {
            GameEntityCreator.zza(this, parcel, i);
            return;
        }
        parcel.writeString(this.gs);
        parcel.writeString(this.dH);
        parcel.writeString(this.QB);
        parcel.writeString(this.QC);
        parcel.writeString(this.zzcvi);
        parcel.writeString(this.QD);
        parcel.writeString(this.QE == null ? null : this.QE.toString());
        parcel.writeString(this.QF == null ? null : this.QF.toString());
        parcel.writeString(this.QG != null ? this.QG.toString() : null);
        parcel.writeInt(this.QH ? 1 : 0);
        parcel.writeInt(this.QI ? 1 : 0);
        parcel.writeString(this.QJ);
        parcel.writeInt(this.QK);
        parcel.writeInt(this.QL);
        parcel.writeInt(this.QM);
    }

    @Override // com.google.android.gms.games.Game
    public boolean zzbfw() {
        return this.QH;
    }

    @Override // com.google.android.gms.games.Game
    public boolean zzbfx() {
        return this.QS;
    }

    @Override // com.google.android.gms.games.Game
    public boolean zzbfy() {
        return this.QI;
    }

    @Override // com.google.android.gms.games.Game
    public String zzbfz() {
        return this.QJ;
    }

    public int zzbga() {
        return this.QK;
    }
}
