package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.ironsource.sdk.constants.Constants;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ContextDataFilterImpl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ContextDataFilterImpl> CREATOR = new zza();
    private final ArrayList<Inclusion> Ch;
    private final ArrayList<String> Ci;
    private final QueryFilterParameters Cj;
    private final int mVersionCode;

    public static class Inclusion extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Inclusion> CREATOR = new zzb();
        private final int Ck;
        private final int Cl;
        private final TimeFilterImpl Cm;
        private final KeyFilterImpl Cn;
        private final int mVersionCode;

        Inclusion(int i, int i2, int i3, TimeFilterImpl timeFilterImpl, KeyFilterImpl keyFilterImpl) {
            this.mVersionCode = i;
            this.Ck = i2;
            this.Cl = i3;
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
            return this.Ck == inclusion.zzaxr() && this.Cl == inclusion.zzaxs() && this.Cm.equals(inclusion.zzaxt()) && zzaa.equal(this.Cn, inclusion.zzaxu());
        }

        int getVersionCode() {
            return this.mVersionCode;
        }

        public int hashCode() {
            return zzaa.hashCode(Integer.valueOf(this.Ck), Integer.valueOf(this.Cl), this.Cm, this.Cn);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzb.zza(this, parcel, i);
        }

        public int zzaxr() {
            return this.Ck;
        }

        public int zzaxs() {
            return this.Cl;
        }

        public TimeFilterImpl zzaxt() {
            return this.Cm;
        }

        public KeyFilterImpl zzaxu() {
            return this.Cn;
        }
    }

    public ContextDataFilterImpl(int i, ArrayList<Inclusion> arrayList, ArrayList<String> arrayList2, QueryFilterParameters queryFilterParameters) {
        this.mVersionCode = i;
        this.Ch = arrayList;
        this.Ci = arrayList2;
        this.Cj = queryFilterParameters;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContextDataFilterImpl)) {
            return false;
        }
        ContextDataFilterImpl contextDataFilterImpl = (ContextDataFilterImpl) obj;
        return zzaa.equal(this.Ch, contextDataFilterImpl.Ch) && zzaa.equal(this.Ci, contextDataFilterImpl.Ci);
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(this.Ch, this.Ci);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("contexts=[");
        if (this.Ch != null && this.Ch.size() > 0) {
            Iterator<Inclusion> it = this.Ch.iterator();
            while (it.hasNext()) {
                sb.append(it.next().zzaxs()).append(",");
            }
        }
        sb.append(Constants.RequestParameters.RIGHT_BRACKETS);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public ArrayList<Inclusion> zzaxo() {
        return this.Ch;
    }

    public ArrayList<String> zzaxp() {
        return this.Ci;
    }

    public QueryFilterParameters zzaxq() {
        return this.Cj;
    }
}
