package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.contextmanager.interest.InterestRecordStub;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class InterestUpdateBatchImpl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<InterestUpdateBatchImpl> CREATOR = new zzj();
    private final ArrayList<Operation> fE;
    private final int mVersionCode;

    public static class Operation extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Operation> CREATOR = new zzk();
        private final InterestRecordStub CL;
        private final String CM;
        private final int it;
        private final int mVersionCode;

        Operation(int i, int i2, InterestRecordStub interestRecordStub, String str) {
            this.mVersionCode = i;
            this.it = i2;
            this.CL = interestRecordStub;
            this.CM = str;
        }

        public int getType() {
            return this.it;
        }

        int getVersionCode() {
            return this.mVersionCode;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzk.zza(this, parcel, i);
        }

        InterestRecordStub zzaxz() {
            return this.CL;
        }

        String zzaya() {
            return this.CM;
        }
    }

    public InterestUpdateBatchImpl() {
        this.mVersionCode = 1;
        this.fE = new ArrayList<>();
    }

    InterestUpdateBatchImpl(int i, ArrayList<Operation> arrayList) {
        this.mVersionCode = i;
        this.fE = arrayList;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }

    public ArrayList<Operation> zzaxh() {
        return this.fE;
    }
}
