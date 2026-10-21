package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class RelationFilterImpl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RelationFilterImpl> CREATOR = new zzo();
    private final ArrayList<Inclusion> Ch;
    private final QueryFilterParameters Cj;
    private final int mVersionCode;

    public static class Inclusion extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Inclusion> CREATOR = new zzp();
        private final TimeFilterImpl Cm;
        private final KeyFilterImpl Cn;
        private final int it;
        private final int mVersionCode;

        Inclusion(int i, int i2, TimeFilterImpl timeFilterImpl, KeyFilterImpl keyFilterImpl) {
            this.mVersionCode = i;
            this.it = i2;
            this.Cm = timeFilterImpl;
            this.Cn = keyFilterImpl;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Inclusion)) {
                return false;
            }
            Inclusion inclusion = (Inclusion) obj;
            return getType() == inclusion.getType() && zzaxt().equals(inclusion.zzaxt()) && zzaa.equal(zzaxu(), inclusion.zzaxu());
        }

        public int getType() {
            return this.it;
        }

        public int getVersionCode() {
            return this.mVersionCode;
        }

        public int hashCode() {
            return zzaa.hashCode(Integer.valueOf(this.it), this.Cm, this.Cn);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzp.zza(this, parcel, i);
        }

        public TimeFilterImpl zzaxt() {
            return this.Cm;
        }

        public KeyFilterImpl zzaxu() {
            return this.Cn;
        }
    }

    RelationFilterImpl(int i, ArrayList<Inclusion> arrayList, QueryFilterParameters queryFilterParameters) {
        this.mVersionCode = i;
        this.Ch = arrayList;
        this.Cj = queryFilterParameters;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RelationFilterImpl) {
            return zzaa.equal(this.Ch, ((RelationFilterImpl) obj).Ch);
        }
        return false;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(this.Ch);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzo.zza(this, parcel, i);
    }

    public ArrayList<Inclusion> zzaxo() {
        return this.Ch;
    }

    public QueryFilterParameters zzaxq() {
        return this.Cj;
    }
}
