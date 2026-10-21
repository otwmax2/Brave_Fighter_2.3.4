package com.google.android.gms.analytics.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class Command implements Parcelable {

    @Deprecated
    public static final Parcelable.Creator<Command> CREATOR = new Parcelable.Creator<Command>() { // from class: com.google.android.gms.analytics.internal.Command.1
        @Override // android.os.Parcelable.Creator
        @Deprecated
        /* JADX INFO: renamed from: zzbw, reason: merged with bridge method [inline-methods] */
        public Command[] newArray(int i) {
            return new Command[i];
        }

        @Override // android.os.Parcelable.Creator
        @Deprecated
        /* JADX INFO: renamed from: zzt, reason: merged with bridge method [inline-methods] */
        public Command createFromParcel(Parcel parcel) {
            return new Command(parcel);
        }
    };
    private String mValue;
    private String zzbgk;
    private String zzcza;

    @Deprecated
    public Command() {
    }

    @Deprecated
    Command(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Deprecated
    private void readFromParcel(Parcel parcel) {
        this.zzbgk = parcel.readString();
        this.zzcza = parcel.readString();
        this.mValue = parcel.readString();
    }

    @Override // android.os.Parcelable
    @Deprecated
    public int describeContents() {
        return 0;
    }

    public String getId() {
        return this.zzbgk;
    }

    public String getValue() {
        return this.mValue;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzbgk);
        parcel.writeString(this.zzcza);
        parcel.writeString(this.mValue);
    }
}
