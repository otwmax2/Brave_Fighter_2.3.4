package com.google.android.gms.games.snapshot;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;

/* JADX INFO: loaded from: classes.dex */
public final class SnapshotMetadataChangeEntity extends AbstractSafeParcelable implements SnapshotMetadataChange {
    public static final SnapshotMetadataChangeCreator CREATOR = new SnapshotMetadataChangeCreator();
    private final Uri ZA;
    private final Long ZB;
    private BitmapTeleporter ZC;
    private final Long Zy;
    private final int mVersionCode;
    private final String zzcvi;

    SnapshotMetadataChangeEntity() {
        this(5, null, null, null, null, null);
    }

    SnapshotMetadataChangeEntity(int i, String str, Long l, BitmapTeleporter bitmapTeleporter, Uri uri, Long l2) {
        this.mVersionCode = i;
        this.zzcvi = str;
        this.ZB = l;
        this.ZC = bitmapTeleporter;
        this.ZA = uri;
        this.Zy = l2;
        if (this.ZC != null) {
            zzab.zza(this.ZA == null, "Cannot set both a URI and an image");
        } else if (this.ZA != null) {
            zzab.zza(this.ZC == null, "Cannot set both a URI and an image");
        }
    }

    SnapshotMetadataChangeEntity(String str, Long l, BitmapTeleporter bitmapTeleporter, Uri uri, Long l2) {
        this(5, str, l, bitmapTeleporter, uri, l2);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public Bitmap getCoverImage() {
        if (this.ZC == null) {
            return null;
        }
        return this.ZC.zzaqz();
    }

    public Uri getCoverImageUri() {
        return this.ZA;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public String getDescription() {
        return this.zzcvi;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public Long getPlayedTimeMillis() {
        return this.ZB;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public Long getProgressValue() {
        return this.Zy;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        SnapshotMetadataChangeCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public BitmapTeleporter zzbll() {
        return this.ZC;
    }
}
