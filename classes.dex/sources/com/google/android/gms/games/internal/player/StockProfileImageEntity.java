package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* JADX INFO: loaded from: classes.dex */
public final class StockProfileImageEntity extends AbstractSafeParcelable implements StockProfileImage {
    public static final StockProfileImageEntityCreator CREATOR = new StockProfileImageEntityCreator();
    private final String XH;
    private final Uri mP;
    private final int mVersionCode;

    StockProfileImageEntity(int i, String str, Uri uri) {
        this.mVersionCode = i;
        this.XH = str;
        this.mP = uri;
    }

    public StockProfileImageEntity(StockProfileImage stockProfileImage) {
        this(1, stockProfileImage.getImageUrl(), stockProfileImage.zzbhb());
    }

    public StockProfileImageEntity(String str, Uri uri) {
        this(1, str, uri);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof StockProfileImage)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        StockProfileImage stockProfileImage = (StockProfileImage) obj;
        return zzaa.equal(this.XH, stockProfileImage.getImageUrl()) && zzaa.equal(this.mP, stockProfileImage.zzbhb());
    }

    @Override // com.google.android.gms.games.internal.player.StockProfileImage
    public String getImageUrl() {
        return this.XH;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(this.XH, this.mP);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzaa.zzz(this).zzg("ImageId", this.XH).zzg("ImageUri", this.mP).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        StockProfileImageEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.internal.player.StockProfileImage
    public Uri zzbhb() {
        return this.mP;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbkv, reason: merged with bridge method [inline-methods] */
    public StockProfileImage freeze() {
        return this;
    }
}
