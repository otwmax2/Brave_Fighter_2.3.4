package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;

/* JADX INFO: loaded from: classes.dex */
public final class GameBadgeEntity extends GamesDowngradeableSafeParcel implements GameBadge {
    public static final GameBadgeEntityCreator CREATOR = new GameBadgeEntityCreatorCompat();
    private String Fx;
    private Uri QE;
    private int it;
    private final int mVersionCode;
    private String zzcvi;

    static final class GameBadgeEntityCreatorCompat extends GameBadgeEntityCreator {
        GameBadgeEntityCreatorCompat() {
        }

        @Override // com.google.android.gms.games.internal.game.GameBadgeEntityCreator, android.os.Parcelable.Creator
        /* JADX INFO: renamed from: zzlh */
        public GameBadgeEntity createFromParcel(Parcel parcel) {
            if (GameBadgeEntity.zzf(GameBadgeEntity.zzasp()) || GameBadgeEntity.zzhl(GameBadgeEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            int i = parcel.readInt();
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            return new GameBadgeEntity(1, i, string, string2, string3 == null ? null : Uri.parse(string3));
        }
    }

    GameBadgeEntity(int i, int i2, String str, String str2, Uri uri) {
        this.mVersionCode = i;
        this.it = i2;
        this.Fx = str;
        this.zzcvi = str2;
        this.QE = uri;
    }

    public GameBadgeEntity(GameBadge gameBadge) {
        this.mVersionCode = 1;
        this.it = gameBadge.getType();
        this.Fx = gameBadge.getTitle();
        this.zzcvi = gameBadge.getDescription();
        this.QE = gameBadge.getIconImageUri();
    }

    static int zza(GameBadge gameBadge) {
        return zzaa.hashCode(Integer.valueOf(gameBadge.getType()), gameBadge.getTitle(), gameBadge.getDescription(), gameBadge.getIconImageUri());
    }

    static boolean zza(GameBadge gameBadge, Object obj) {
        if (!(obj instanceof GameBadge)) {
            return false;
        }
        if (gameBadge == obj) {
            return true;
        }
        GameBadge gameBadge2 = (GameBadge) obj;
        return zzaa.equal(Integer.valueOf(gameBadge2.getType()), gameBadge.getTitle()) && zzaa.equal(gameBadge2.getDescription(), gameBadge.getIconImageUri());
    }

    static String zzb(GameBadge gameBadge) {
        return zzaa.zzz(gameBadge).zzg("Type", Integer.valueOf(gameBadge.getType())).zzg("Title", gameBadge.getTitle()).zzg("Description", gameBadge.getDescription()).zzg("IconImageUri", gameBadge.getIconImageUri()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.internal.game.GameBadge
    public String getDescription() {
        return this.zzcvi;
    }

    @Override // com.google.android.gms.games.internal.game.GameBadge
    public Uri getIconImageUri() {
        return this.QE;
    }

    @Override // com.google.android.gms.games.internal.game.GameBadge
    public String getTitle() {
        return this.Fx;
    }

    @Override // com.google.android.gms.games.internal.game.GameBadge
    public int getType() {
        return this.it;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (!zzasq()) {
            GameBadgeEntityCreator.zza(this, parcel, i);
            return;
        }
        parcel.writeInt(this.it);
        parcel.writeString(this.Fx);
        parcel.writeString(this.zzcvi);
        parcel.writeString(this.QE == null ? null : this.QE.toString());
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbkb, reason: merged with bridge method [inline-methods] */
    public GameBadge freeze() {
        return this;
    }
}
