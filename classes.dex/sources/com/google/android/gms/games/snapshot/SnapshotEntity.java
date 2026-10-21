package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* JADX INFO: loaded from: classes.dex */
public final class SnapshotEntity extends AbstractSafeParcelable implements Snapshot {
    public static final Parcelable.Creator<SnapshotEntity> CREATOR = new SnapshotEntityCreator();
    private final SnapshotMetadataEntity Zv;
    private final SnapshotContentsEntity Zw;
    private final int mVersionCode;

    SnapshotEntity(int i, SnapshotMetadata snapshotMetadata, SnapshotContentsEntity snapshotContentsEntity) {
        this.mVersionCode = i;
        this.Zv = new SnapshotMetadataEntity(snapshotMetadata);
        this.Zw = snapshotContentsEntity;
    }

    public SnapshotEntity(SnapshotMetadata snapshotMetadata, SnapshotContentsEntity snapshotContentsEntity) {
        this(2, snapshotMetadata, snapshotContentsEntity);
    }

    private boolean isClosed() {
        return this.Zw.isClosed();
    }

    static boolean zza(Snapshot snapshot, Object obj) {
        if (!(obj instanceof Snapshot)) {
            return false;
        }
        if (snapshot == obj) {
            return true;
        }
        Snapshot snapshot2 = (Snapshot) obj;
        return zzaa.equal(snapshot2.getMetadata(), snapshot.getMetadata()) && zzaa.equal(snapshot2.getSnapshotContents(), snapshot.getSnapshotContents());
    }

    static int zzb(Snapshot snapshot) {
        return zzaa.hashCode(snapshot.getMetadata(), snapshot.getSnapshotContents());
    }

    static String zzc(Snapshot snapshot) {
        return zzaa.zzz(snapshot).zzg("Metadata", snapshot.getMetadata()).zzg("HasContents", Boolean.valueOf(snapshot.getSnapshotContents() != null)).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public Snapshot freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.snapshot.Snapshot
    public SnapshotMetadata getMetadata() {
        return this.Zv;
    }

    @Override // com.google.android.gms.games.snapshot.Snapshot
    public SnapshotContents getSnapshotContents() {
        if (isClosed()) {
            return null;
        }
        return this.Zw;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzb(this);
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
        SnapshotEntityCreator.zza(this, parcel, i);
    }
}
