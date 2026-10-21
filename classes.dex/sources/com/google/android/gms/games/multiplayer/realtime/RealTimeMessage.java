package com.google.android.gms.games.multiplayer.realtime;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzab;

/* JADX INFO: loaded from: classes.dex */
public final class RealTimeMessage implements Parcelable {
    public static final Parcelable.Creator<RealTimeMessage> CREATOR = new Parcelable.Creator<RealTimeMessage>() { // from class: com.google.android.gms.games.multiplayer.realtime.RealTimeMessage.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: zzlq, reason: merged with bridge method [inline-methods] */
        public RealTimeMessage createFromParcel(Parcel parcel) {
            return new RealTimeMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: zzrk, reason: merged with bridge method [inline-methods] */
        public RealTimeMessage[] newArray(int i) {
            return new RealTimeMessage[i];
        }
    };
    public static final int RELIABLE = 1;
    public static final int UNRELIABLE = 0;
    private final String YC;
    private final byte[] YD;
    private final int YE;

    private RealTimeMessage(Parcel parcel) {
        this(parcel.readString(), parcel.createByteArray(), parcel.readInt());
    }

    public RealTimeMessage(String str, byte[] bArr, int i) {
        this.YC = (String) zzab.zzaa(str);
        this.YD = (byte[]) ((byte[]) zzab.zzaa(bArr)).clone();
        this.YE = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public byte[] getMessageData() {
        return this.YD;
    }

    public String getSenderParticipantId() {
        return this.YC;
    }

    public boolean isReliable() {
        return this.YE == 1;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.YC);
        parcel.writeByteArray(this.YD);
        parcel.writeInt(this.YE);
    }
}
