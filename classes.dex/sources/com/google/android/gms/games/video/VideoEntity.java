package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzb;

/* JADX INFO: loaded from: classes.dex */
public final class VideoEntity extends AbstractSafeParcelable implements Video {
    public static final Parcelable.Creator<VideoEntity> CREATOR = new VideoEntityCreator();
    private final String aQ;
    private final String aap;
    private final long aaq;
    private final int mVersionCode;
    private final int wH;
    private final long zzboy;

    VideoEntity(int i, int i2, String str, long j, long j2, String str2) {
        this.mVersionCode = i;
        this.wH = i2;
        this.aap = str;
        this.aaq = j;
        this.zzboy = j2;
        this.aQ = str2;
    }

    public VideoEntity(Video video) {
        this.mVersionCode = 1;
        this.wH = video.getDuration();
        this.aap = video.zzblq();
        this.aaq = video.getFileSize();
        this.zzboy = video.getStartTime();
        this.aQ = video.getPackageName();
        zzb.zzw(this.aap);
        zzb.zzw(this.aQ);
    }

    static int zza(Video video) {
        return zzaa.hashCode(Integer.valueOf(video.getDuration()), video.zzblq(), Long.valueOf(video.getFileSize()), Long.valueOf(video.getStartTime()), video.getPackageName());
    }

    static boolean zza(Video video, Object obj) {
        if (!(obj instanceof Video)) {
            return false;
        }
        if (video == obj) {
            return true;
        }
        Video video2 = (Video) obj;
        return zzaa.equal(Integer.valueOf(video2.getDuration()), Integer.valueOf(video.getDuration())) && zzaa.equal(video2.zzblq(), video.zzblq()) && zzaa.equal(Long.valueOf(video2.getFileSize()), Long.valueOf(video.getFileSize())) && zzaa.equal(Long.valueOf(video2.getStartTime()), Long.valueOf(video.getStartTime())) && zzaa.equal(video2.getPackageName(), video.getPackageName());
    }

    static String zzb(Video video) {
        return zzaa.zzz(video).zzg("Duration", Integer.valueOf(video.getDuration())).zzg("File path", video.zzblq()).zzg("File size", Long.valueOf(video.getFileSize())).zzg("Start time", Long.valueOf(video.getStartTime())).zzg("Package name", video.getPackageName()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.video.Video
    public int getDuration() {
        return this.wH;
    }

    @Override // com.google.android.gms.games.video.Video
    public long getFileSize() {
        return this.aaq;
    }

    @Override // com.google.android.gms.games.video.Video
    public String getPackageName() {
        return this.aQ;
    }

    @Override // com.google.android.gms.games.video.Video
    public long getStartTime() {
        return this.zzboy;
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
        VideoEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.video.Video
    public String zzblq() {
        return this.aap;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzblx, reason: merged with bridge method [inline-methods] */
    public Video freeze() {
        return this;
    }
}
