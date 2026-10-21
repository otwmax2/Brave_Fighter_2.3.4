package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;

/* JADX INFO: loaded from: classes.dex */
public class QueryFilterParameters extends AbstractSafeParcelable {
    public static final Parcelable.Creator<QueryFilterParameters> CREATOR = new zzn();
    private final int CQ;
    private final int CR;
    private final int[] CS;
    private final int mVersionCode;

    QueryFilterParameters(int i, int i2, int i3, int[] iArr) {
        this.mVersionCode = i;
        this.CQ = i2;
        this.CR = i3;
        this.CS = iArr;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof QueryFilterParameters)) {
            return false;
        }
        QueryFilterParameters queryFilterParameters = (QueryFilterParameters) obj;
        if (queryFilterParameters.CR == this.CR && queryFilterParameters.CQ == this.CQ && queryFilterParameters.mVersionCode == this.mVersionCode && zzayg() == queryFilterParameters.zzayg()) {
            if (!zzayg()) {
                return true;
            }
            if (this.CS.length != queryFilterParameters.CS.length) {
                return false;
            }
            for (int i : queryFilterParameters.CS) {
                int[] iArr = this.CS;
                int length = iArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z = false;
                        break;
                    }
                    if (iArr[i2] == i) {
                        z = true;
                        break;
                    }
                    i2++;
                }
                if (!z) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public int getLimit() {
        return this.CR;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        int i;
        if (this.CS != null) {
            int[] iArr = this.CS;
            int length = iArr.length;
            int i2 = 0;
            i = 0;
            while (i2 < length) {
                int i3 = (iArr[i2] * 13) + i;
                i2++;
                i = i3;
            }
        } else {
            i = 0;
        }
        return zzaa.hashCode(Integer.valueOf(i), Integer.valueOf(this.CQ), Integer.valueOf(this.CR), Integer.valueOf(this.mVersionCode));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzn.zza(this, parcel, i);
    }

    public int zzaye() {
        return this.CQ;
    }

    public int[] zzayf() {
        return this.CS;
    }

    public boolean zzayg() {
        return this.CS != null;
    }
}
