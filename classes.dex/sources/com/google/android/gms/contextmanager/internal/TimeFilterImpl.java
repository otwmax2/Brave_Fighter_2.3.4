package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class TimeFilterImpl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TimeFilterImpl> CREATOR = new zzq();
    private final ArrayList<Interval> CT;
    private final int[] CU;
    private final int mVersionCode;

    public static class Interval extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Interval> CREATOR = new zzr();
        private final long CV;
        private final int mVersionCode;
        private final long zzczk;

        Interval(int i, long j, long j2) {
            this.mVersionCode = i;
            this.zzczk = j;
            this.CV = j2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Interval)) {
                return false;
            }
            Interval interval = (Interval) obj;
            return this.zzczk == interval.zzadw() && this.CV == interval.zzayj();
        }

        int getVersionCode() {
            return this.mVersionCode;
        }

        public int hashCode() {
            return zzaa.hashCode(Long.valueOf(this.zzczk), Long.valueOf(this.CV));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzr.zza(this, parcel, i);
        }

        public long zzadw() {
            return this.zzczk;
        }

        public long zzayj() {
            return this.CV;
        }
    }

    TimeFilterImpl(int i, ArrayList<Interval> arrayList, int[] iArr) {
        this.mVersionCode = i;
        this.CT = arrayList;
        this.CU = iArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeFilterImpl)) {
            return false;
        }
        TimeFilterImpl timeFilterImpl = (TimeFilterImpl) obj;
        return zzaa.equal(this.CT, timeFilterImpl.CT) && zzaa.equal(this.CU, timeFilterImpl.CU);
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(this.CT, this.CU);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzq.zza(this, parcel, i);
    }

    public ArrayList<Interval> zzayh() {
        return this.CT;
    }

    public int[] zzayi() {
        return this.CU;
    }
}
