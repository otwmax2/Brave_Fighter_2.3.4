package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.awareness.state.BeaconState;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzapb;
import com.google.android.gms.internal.zzapc;
import com.google.android.gms.internal.zzbu;
import com.google.android.gms.internal.zzry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class BeaconStateImpl extends AbstractSafeParcelable implements BeaconState {
    public static final Parcelable.Creator<BeaconStateImpl> CREATOR = new zzb();
    private final ArrayList<BeaconInfoImpl> fF;
    private final int mVersionCode;

    public static final class BeaconInfoImpl extends AbstractSafeParcelable implements BeaconState.BeaconInfo {
        public static final Parcelable.Creator<BeaconInfoImpl> CREATOR = new zza();
        private final String fG;
        private final byte[] fH;
        private final int mVersionCode;
        private final String zzcgd;

        BeaconInfoImpl(int i, String str, String str2, byte[] bArr) {
            this.mVersionCode = i;
            this.fG = str;
            this.zzcgd = str2;
            this.fH = bArr;
        }

        @Override // com.google.android.gms.awareness.state.BeaconState.BeaconInfo
        public byte[] getContent() {
            return this.fH;
        }

        @Override // com.google.android.gms.awareness.state.BeaconState.BeaconInfo
        public String getNamespace() {
            return this.fG;
        }

        @Override // com.google.android.gms.awareness.state.BeaconState.BeaconInfo
        public String getType() {
            return this.zzcgd;
        }

        int getVersionCode() {
            return this.mVersionCode;
        }

        public String toString() {
            String str = this.fH == null ? "<null>" : new String(this.fH);
            String str2 = this.fG;
            String str3 = this.zzcgd;
            return new StringBuilder(String.valueOf(str2).length() + 6 + String.valueOf(str3).length() + String.valueOf(str).length()).append("(").append(str2).append(", ").append(str3).append(", ").append(str).append(")").toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zza.zza(this, parcel, i);
        }
    }

    public static class TypeFilterImpl extends BeaconState.TypeFilter {
        public static final Parcelable.Creator<TypeFilterImpl> CREATOR = new zzm();
        private final zzry.zzc.zza fI;
        private final int mVersionCode;

        TypeFilterImpl(int i, byte[] bArr) {
            this.mVersionCode = i;
            zzry.zzc.zza zzaVarZzs = null;
            try {
                zzaVarZzs = zzry.zzc.zza.zzs(bArr);
            } catch (zzapb e) {
                zzbu.zze("BeaconStateImpl", "Could not deserialize BeaconFence.BeaconTypeFilter");
            }
            this.fI = zzaVarZzs;
        }

        public TypeFilterImpl(String str, String str2) {
            this.mVersionCode = 1;
            this.fI = new zzry.zzc.zza();
            this.fI.zl = zzab.zzhs(str);
            this.fI.type = zzab.zzhs(str2);
        }

        public TypeFilterImpl(String str, String str2, byte[] bArr) {
            this.mVersionCode = 1;
            this.fI = new zzry.zzc.zza();
            this.fI.zl = zzab.zzhs(str);
            this.fI.type = zzab.zzhs(str2);
            this.fI.content = (byte[]) zzab.zzaa(bArr);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TypeFilterImpl)) {
                return false;
            }
            TypeFilterImpl typeFilterImpl = (TypeFilterImpl) obj;
            return TextUtils.equals(getNamespace(), typeFilterImpl.getNamespace()) && TextUtils.equals(getType(), typeFilterImpl.getType()) && Arrays.equals(getContent(), typeFilterImpl.getContent());
        }

        public byte[] getContent() {
            if (this.fI == null || this.fI.content == null || this.fI.content.length == 0) {
                return null;
            }
            return this.fI.content;
        }

        public String getNamespace() {
            if (this.fI == null) {
                return null;
            }
            return this.fI.zl;
        }

        public String getType() {
            if (this.fI == null) {
                return null;
            }
            return this.fI.type;
        }

        int getVersionCode() {
            return this.mVersionCode;
        }

        public int hashCode() {
            Object[] objArr = new Object[3];
            objArr[0] = getNamespace();
            objArr[1] = getType();
            objArr[2] = Integer.valueOf(getContent() != null ? Arrays.hashCode(getContent()) : 0);
            return zzaa.hashCode(objArr);
        }

        public String toString() {
            String strValueOf = String.valueOf(getNamespace());
            String strValueOf2 = String.valueOf(getType());
            String str = getContent() == null ? "null" : new String(getContent());
            return new StringBuilder(String.valueOf(strValueOf).length() + 4 + String.valueOf(strValueOf2).length() + String.valueOf(str).length()).append("(").append(strValueOf).append(",").append(strValueOf2).append(",").append(str).append(")").toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzm.zza(this, parcel, i);
        }

        public zzry.zzc.zza zzags() {
            return this.fI;
        }

        byte[] zzagt() {
            return zzapc.zzf(this.fI);
        }
    }

    BeaconStateImpl(int i, ArrayList<BeaconInfoImpl> arrayList) {
        this.mVersionCode = i;
        this.fF = arrayList;
    }

    @Override // com.google.android.gms.awareness.state.BeaconState
    public List<BeaconState.BeaconInfo> getBeaconInfo() {
        return this.fF;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public String toString() {
        if (this.fF == null || this.fF.isEmpty()) {
            return "BeaconState: empty";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("BeaconState: ");
        Iterator<BeaconInfoImpl> it = this.fF.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    ArrayList<BeaconInfoImpl> zzagr() {
        return this.fF;
    }
}
