package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class KeyFilterImpl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<KeyFilterImpl> CREATOR = new zzl();
    private final ArrayList<Inclusion> Ch;
    private final int mVersionCode;

    public static class Inclusion extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Inclusion> CREATOR = new zzm();
        private final String[] CN;
        private final String[] CO;
        private final String[] CP;
        private final int mVersionCode;

        Inclusion(int i, String[] strArr, String[] strArr2, String[] strArr3) {
            this.mVersionCode = i;
            this.CN = strArr;
            this.CO = strArr2;
            this.CP = strArr3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Inclusion)) {
                return false;
            }
            Inclusion inclusion = (Inclusion) obj;
            return Arrays.equals(zzayb(), inclusion.zzayb()) && Arrays.equals(zzayc(), inclusion.zzayc()) && Arrays.equals(zzayd(), inclusion.zzayd());
        }

        int getVersionCode() {
            return this.mVersionCode;
        }

        public int hashCode() {
            return Arrays.hashCode(this.CN) + Arrays.hashCode(this.CO) + Arrays.hashCode(this.CP);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzm.zza(this, parcel, i);
        }

        public String[] zzayb() {
            return this.CN;
        }

        public String[] zzayc() {
            return this.CO;
        }

        public String[] zzayd() {
            return this.CP;
        }
    }

    KeyFilterImpl(int i, ArrayList<Inclusion> arrayList) {
        this.mVersionCode = i;
        this.Ch = arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof KeyFilterImpl) {
            return zzaxo().equals(((KeyFilterImpl) obj).zzaxo());
        }
        return false;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(this.Ch);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzl.zza(this, parcel, i);
    }

    public ArrayList<Inclusion> zzaxo() {
        return this.Ch;
    }
}
