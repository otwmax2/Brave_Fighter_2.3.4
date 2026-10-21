package com.google.android.gms.games.snapshot;

import android.graphics.Bitmap;
import android.net.Uri;
import com.google.android.gms.common.data.BitmapTeleporter;

/* JADX INFO: loaded from: classes.dex */
public interface SnapshotMetadataChange {
    public static final SnapshotMetadataChange EMPTY_CHANGE = new SnapshotMetadataChangeEntity();

    public static final class Builder {
        private Uri ZA;
        private Long Zx;
        private Long Zy;
        private BitmapTeleporter Zz;
        private String zzcvi;

        public SnapshotMetadataChange build() {
            return new SnapshotMetadataChangeEntity(this.zzcvi, this.Zx, this.Zz, this.ZA, this.Zy);
        }

        public Builder fromMetadata(SnapshotMetadata snapshotMetadata) {
            this.zzcvi = snapshotMetadata.getDescription();
            this.Zx = Long.valueOf(snapshotMetadata.getPlayedTime());
            this.Zy = Long.valueOf(snapshotMetadata.getProgressValue());
            if (this.Zx.longValue() == -1) {
                this.Zx = null;
            }
            this.ZA = snapshotMetadata.getCoverImageUri();
            if (this.ZA != null) {
                this.Zz = null;
            }
            return this;
        }

        public Builder setCoverImage(Bitmap bitmap) {
            this.Zz = new BitmapTeleporter(bitmap);
            this.ZA = null;
            return this;
        }

        public Builder setDescription(String str) {
            this.zzcvi = str;
            return this;
        }

        public Builder setPlayedTimeMillis(long j) {
            this.Zx = Long.valueOf(j);
            return this;
        }

        public Builder setProgressValue(long j) {
            this.Zy = Long.valueOf(j);
            return this;
        }
    }

    Bitmap getCoverImage();

    String getDescription();

    Long getPlayedTimeMillis();

    Long getProgressValue();

    BitmapTeleporter zzbll();
}
