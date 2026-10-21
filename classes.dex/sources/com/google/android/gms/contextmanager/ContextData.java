package com.google.android.gms.contextmanager;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzapb;
import com.google.android.gms.internal.zzapc;
import com.google.android.gms.internal.zzrz;

/* JADX INFO: loaded from: classes.dex */
public class ContextData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ContextData> CREATOR = new zzb();
    private zzrz.zza BD = null;
    private byte[] BE;
    private final int mVersionCode;

    ContextData(int i, byte[] bArr) {
        this.mVersionCode = i;
        this.BE = bArr;
        zzawr();
    }

    private void zzawp() {
        if (!zzawq()) {
            try {
                this.BD = zzrz.zza.zzu(this.BE);
                this.BE = null;
            } catch (zzapb e) {
                Log.e("ContextData", "Could not deserialize context bytes.", e);
                throw new IllegalStateException(e);
            }
        }
        zzawr();
    }

    private void zzawr() {
        if (this.BD != null || this.BE == null) {
            if (this.BD == null || this.BE != null) {
                if (this.BD != null && this.BE != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (this.BD != null || this.BE != null) {
                    throw new IllegalStateException("Impossible");
                }
                throw new IllegalStateException("Invalid internal representation - empty");
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContextData)) {
            return false;
        }
        ContextData contextData = (ContextData) obj;
        zzawp();
        contextData.zzawp();
        return getId().equals(contextData.getId()) && this.BD.DX.version == contextData.BD.DX.version;
    }

    public String getId() {
        zzawp();
        return this.BD.DW;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        zzawp();
        return zzaa.hashCode(getId(), Integer.valueOf(this.BD.DX.version));
    }

    public String toString() {
        zzawp();
        return this.BD.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    boolean zzawq() {
        return this.BD != null;
    }

    byte[] zzaws() {
        return this.BE != null ? this.BE : zzapc.zzf(this.BD);
    }
}
