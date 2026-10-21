package com.google.android.gms.games.video;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.tendcloud.tenddata.game.ao;

/* JADX INFO: loaded from: classes.dex */
public final class VideoRef extends zzc implements Video {
    VideoRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.games.video.Video
    public int getDuration() {
        return getInteger(ao.n);
    }

    @Override // com.google.android.gms.games.video.Video
    public long getFileSize() {
        return getLong("filesize");
    }

    @Override // com.google.android.gms.games.video.Video
    public String getPackageName() {
        return getString("package");
    }

    @Override // com.google.android.gms.games.video.Video
    public long getStartTime() {
        return getLong("start_time");
    }

    public String toString() {
        return VideoEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((VideoEntity) ((Video) freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.video.Video
    public String zzblq() {
        return getString("filepath");
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzblx, reason: merged with bridge method [inline-methods] */
    public Video freeze() {
        return new VideoEntity(this);
    }
}
