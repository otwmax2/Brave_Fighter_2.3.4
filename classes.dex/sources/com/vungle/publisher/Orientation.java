package com.vungle.publisher;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public enum Orientation implements Parcelable {
    autoRotate,
    matchVideo;

    public static final Parcelable.Creator<Orientation> CREATOR = new Parcelable.Creator<Orientation>() { // from class: com.vungle.publisher.Orientation.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Orientation createFromParcel(Parcel parcel) {
            return Orientation.values()[parcel.readInt()];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Orientation[] newArray(int i) {
            return new Orientation[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        parcel.writeInt(ordinal());
    }
}
