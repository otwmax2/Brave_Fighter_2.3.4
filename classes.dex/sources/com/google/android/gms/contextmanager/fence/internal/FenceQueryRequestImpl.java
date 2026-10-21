package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.fence.FenceQueryRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FenceQueryRequestImpl extends FenceQueryRequest {
    public static final Parcelable.Creator<FenceQueryRequestImpl> CREATOR = new zzh();
    private final QueryFenceOperation BU;
    private final int mVersionCode;

    public static class QueryFenceOperation extends AbstractSafeParcelable {
        public static final Parcelable.Creator<QueryFenceOperation> CREATOR = new zzo();
        private final List<String> BV;
        private final int it;
        private final int mVersionCode;

        QueryFenceOperation(int i, int i2, List<String> list) {
            this.mVersionCode = i;
            this.it = i2;
            this.BV = list;
        }

        private QueryFenceOperation(int i, List<String> list) {
            this(1, i, list);
        }

        public static QueryFenceOperation zza(int i, List<String> list) {
            return new QueryFenceOperation(i, list);
        }

        public int getType() {
            return this.it;
        }

        int getVersionCode() {
            return this.mVersionCode;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzo.zza(this, parcel, i);
        }

        public List<String> zzaxe() {
            return this.BV;
        }
    }

    public FenceQueryRequestImpl() {
        this(1, QueryFenceOperation.zza(1, null));
    }

    FenceQueryRequestImpl(int i, QueryFenceOperation queryFenceOperation) {
        this.mVersionCode = i;
        this.BU = queryFenceOperation;
    }

    public FenceQueryRequestImpl(Collection<String> collection) {
        this(1, QueryFenceOperation.zza(2, new ArrayList(collection)));
    }

    public FenceQueryRequestImpl(String... strArr) {
        this(1, QueryFenceOperation.zza(2, Arrays.asList(strArr)));
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    public QueryFenceOperation zzaxd() {
        return this.BU;
    }
}
