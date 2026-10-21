package com.google.android.gms.games.snapshot;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzg;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;

/* JADX INFO: loaded from: classes.dex */
public final class SnapshotMetadataEntity extends AbstractSafeParcelable implements SnapshotMetadata {
    public static final Parcelable.Creator<SnapshotMetadataEntity> CREATOR = new SnapshotMetadataEntityCreator();
    private final String Fx;
    private final String SX;
    private final GameEntity WG;
    private final Uri ZA;
    private final PlayerEntity ZD;
    private final String ZE;
    private final long ZF;
    private final long ZG;
    private final float ZH;
    private final String ZI;
    private final boolean ZJ;
    private final long ZK;
    private final String ZL;
    private final int mVersionCode;
    private final String zzcvi;

    SnapshotMetadataEntity(int i, GameEntity gameEntity, PlayerEntity playerEntity, String str, Uri uri, String str2, String str3, String str4, long j, long j2, float f, String str5, boolean z, long j3, String str6) {
        this.mVersionCode = i;
        this.WG = gameEntity;
        this.ZD = playerEntity;
        this.SX = str;
        this.ZA = uri;
        this.ZE = str2;
        this.ZH = f;
        this.Fx = str3;
        this.zzcvi = str4;
        this.ZF = j;
        this.ZG = j2;
        this.ZI = str5;
        this.ZJ = z;
        this.ZK = j3;
        this.ZL = str6;
    }

    public SnapshotMetadataEntity(SnapshotMetadata snapshotMetadata) {
        this.mVersionCode = 6;
        this.WG = new GameEntity(snapshotMetadata.getGame());
        this.ZD = new PlayerEntity(snapshotMetadata.getOwner());
        this.SX = snapshotMetadata.getSnapshotId();
        this.ZA = snapshotMetadata.getCoverImageUri();
        this.ZE = snapshotMetadata.getCoverImageUrl();
        this.ZH = snapshotMetadata.getCoverImageAspectRatio();
        this.Fx = snapshotMetadata.getTitle();
        this.zzcvi = snapshotMetadata.getDescription();
        this.ZF = snapshotMetadata.getLastModifiedTimestamp();
        this.ZG = snapshotMetadata.getPlayedTime();
        this.ZI = snapshotMetadata.getUniqueName();
        this.ZJ = snapshotMetadata.hasChangePending();
        this.ZK = snapshotMetadata.getProgressValue();
        this.ZL = snapshotMetadata.getDeviceName();
    }

    static int zza(SnapshotMetadata snapshotMetadata) {
        return zzaa.hashCode(snapshotMetadata.getGame(), snapshotMetadata.getOwner(), snapshotMetadata.getSnapshotId(), snapshotMetadata.getCoverImageUri(), Float.valueOf(snapshotMetadata.getCoverImageAspectRatio()), snapshotMetadata.getTitle(), snapshotMetadata.getDescription(), Long.valueOf(snapshotMetadata.getLastModifiedTimestamp()), Long.valueOf(snapshotMetadata.getPlayedTime()), snapshotMetadata.getUniqueName(), Boolean.valueOf(snapshotMetadata.hasChangePending()), Long.valueOf(snapshotMetadata.getProgressValue()), snapshotMetadata.getDeviceName());
    }

    static boolean zza(SnapshotMetadata snapshotMetadata, Object obj) {
        if (!(obj instanceof SnapshotMetadata)) {
            return false;
        }
        if (snapshotMetadata == obj) {
            return true;
        }
        SnapshotMetadata snapshotMetadata2 = (SnapshotMetadata) obj;
        return zzaa.equal(snapshotMetadata2.getGame(), snapshotMetadata.getGame()) && zzaa.equal(snapshotMetadata2.getOwner(), snapshotMetadata.getOwner()) && zzaa.equal(snapshotMetadata2.getSnapshotId(), snapshotMetadata.getSnapshotId()) && zzaa.equal(snapshotMetadata2.getCoverImageUri(), snapshotMetadata.getCoverImageUri()) && zzaa.equal(Float.valueOf(snapshotMetadata2.getCoverImageAspectRatio()), Float.valueOf(snapshotMetadata.getCoverImageAspectRatio())) && zzaa.equal(snapshotMetadata2.getTitle(), snapshotMetadata.getTitle()) && zzaa.equal(snapshotMetadata2.getDescription(), snapshotMetadata.getDescription()) && zzaa.equal(Long.valueOf(snapshotMetadata2.getLastModifiedTimestamp()), Long.valueOf(snapshotMetadata.getLastModifiedTimestamp())) && zzaa.equal(Long.valueOf(snapshotMetadata2.getPlayedTime()), Long.valueOf(snapshotMetadata.getPlayedTime())) && zzaa.equal(snapshotMetadata2.getUniqueName(), snapshotMetadata.getUniqueName()) && zzaa.equal(Boolean.valueOf(snapshotMetadata2.hasChangePending()), Boolean.valueOf(snapshotMetadata.hasChangePending())) && zzaa.equal(Long.valueOf(snapshotMetadata2.getProgressValue()), Long.valueOf(snapshotMetadata.getProgressValue())) && zzaa.equal(snapshotMetadata2.getDeviceName(), snapshotMetadata.getDeviceName());
    }

    static String zzb(SnapshotMetadata snapshotMetadata) {
        return zzaa.zzz(snapshotMetadata).zzg("Game", snapshotMetadata.getGame()).zzg("Owner", snapshotMetadata.getOwner()).zzg("SnapshotId", snapshotMetadata.getSnapshotId()).zzg("CoverImageUri", snapshotMetadata.getCoverImageUri()).zzg("CoverImageUrl", snapshotMetadata.getCoverImageUrl()).zzg("CoverImageAspectRatio", Float.valueOf(snapshotMetadata.getCoverImageAspectRatio())).zzg("Description", snapshotMetadata.getDescription()).zzg("LastModifiedTimestamp", Long.valueOf(snapshotMetadata.getLastModifiedTimestamp())).zzg("PlayedTime", Long.valueOf(snapshotMetadata.getPlayedTime())).zzg("UniqueName", snapshotMetadata.getUniqueName()).zzg("ChangePending", Boolean.valueOf(snapshotMetadata.hasChangePending())).zzg("ProgressValue", Long.valueOf(snapshotMetadata.getProgressValue())).zzg("DeviceName", snapshotMetadata.getDeviceName()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public SnapshotMetadata freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public float getCoverImageAspectRatio() {
        return this.ZH;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public Uri getCoverImageUri() {
        return this.ZA;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getCoverImageUrl() {
        return this.ZE;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getDescription() {
        return this.zzcvi;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.zzcvi, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getDeviceName() {
        return this.ZL;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public Game getGame() {
        return this.WG;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public long getLastModifiedTimestamp() {
        return this.ZF;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public Player getOwner() {
        return this.ZD;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public long getPlayedTime() {
        return this.ZG;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public long getProgressValue() {
        return this.ZK;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getSnapshotId() {
        return this.SX;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getTitle() {
        return this.Fx;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getUniqueName() {
        return this.ZI;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public boolean hasChangePending() {
        return this.ZJ;
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
        SnapshotMetadataEntityCreator.zza(this, parcel, i);
    }
}
