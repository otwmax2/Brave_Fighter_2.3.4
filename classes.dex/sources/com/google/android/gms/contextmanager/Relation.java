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
public class Relation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Relation> CREATOR = new zzg();
    private zzrz.zze BF = null;
    private byte[] BG;
    private final int mVersionCode;

    Relation(int i, byte[] bArr) {
        this.mVersionCode = i;
        this.BG = bArr;
        zzawr();
    }

    private void zzawp() {
        if (!zzawq()) {
            try {
                this.BF = zzrz.zze.zzv(this.BG);
                this.BG = null;
            } catch (zzapb e) {
                Log.e("Relation", "Could not deserialize relation bytes.", e);
                throw new IllegalStateException(e);
            }
        }
        zzawr();
    }

    private void zzawr() {
        if (this.BF != null || this.BG == null) {
            if (this.BF == null || this.BG != null) {
                if (this.BF != null && this.BG != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (this.BF != null || this.BG != null) {
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
        if (!(obj instanceof Relation)) {
            return false;
        }
        Relation relation = (Relation) obj;
        zzawp();
        relation.zzawp();
        return getId().equals(relation.getId()) && this.BF.DX.version == relation.BF.DX.version;
    }

    public String getId() {
        zzawp();
        return this.BF.El;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        zzawp();
        return zzaa.hashCode(getId(), Integer.valueOf(this.BF.DX.version));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }

    boolean zzawq() {
        return this.BF != null;
    }

    byte[] zzawt() {
        return this.BG != null ? this.BG : zzapc.zzf(this.BF);
    }
}
