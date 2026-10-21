package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.fence.AwarenessFence;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzapb;
import com.google.android.gms.internal.zzapc;
import com.google.android.gms.internal.zzbu;
import com.google.android.gms.internal.zzry;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ContextFenceStub extends AwarenessFence {
    public static final Parcelable.Creator<ContextFenceStub> CREATOR = new zzg();
    private zzry.zzd BS;
    private byte[] BT;
    private final int mVersionCode;

    ContextFenceStub(int i, byte[] bArr) {
        this.mVersionCode = i;
        this.BS = null;
        this.BT = bArr;
        zzawr();
    }

    public ContextFenceStub(zzry.zzd zzdVar) {
        this.mVersionCode = 1;
        this.BS = (zzry.zzd) zzab.zzaa(zzdVar);
        this.BT = null;
        zzawr();
    }

    public static ContextFenceStub zza(ContextFenceStub contextFenceStub) {
        zzab.zzaa(contextFenceStub);
        ArrayList arrayList = new ArrayList();
        arrayList.add(contextFenceStub);
        return new ContextFenceStub(zza(3, zzi(arrayList), null, null, null, null, null, null, null, null, null, null, null));
    }

    public static ContextFenceStub zza(zza zzaVar) {
        zzab.zzaa(zzaVar);
        return new ContextFenceStub(zza(7, null, null, null, null, zzaVar.zzawu(), null, null, null, null, null, null, null));
    }

    public static ContextFenceStub zza(zzb zzbVar) {
        zzab.zzaa(zzbVar);
        return new ContextFenceStub(zza(11, null, null, null, null, null, null, null, null, zzbVar.zzawx(), null, null, null));
    }

    public static ContextFenceStub zza(zzd zzdVar) {
        zzab.zzaa(zzdVar);
        return new ContextFenceStub(zza(12, null, null, null, null, null, null, null, null, null, zzdVar.zzawy(), null, null));
    }

    public static ContextFenceStub zza(zzn zznVar) {
        zzab.zzaa(zznVar);
        return new ContextFenceStub(zza(5, null, null, zznVar.zzaxi(), null, null, null, null, null, null, null, null, null));
    }

    public static ContextFenceStub zza(zzp zzpVar) {
        zzab.zzaa(zzpVar);
        return new ContextFenceStub(zza(4, null, zzpVar.zzaxj(), null, null, null, null, null, null, null, null, null, null));
    }

    public static zzry.zzd zza(int i, zzry.zzd[] zzdVarArr, zzry.zzm zzmVar, zzry.zzf zzfVar, zzry.zzi zziVar, zzry.zza zzaVar, zzry.zzk zzkVar, zzry.zzj zzjVar, zzry.zzh zzhVar, zzry.zzb zzbVar, zzry.zzc zzcVar, zzry.zzg zzgVar, zzry.zzn zznVar) {
        zzry.zzd zzdVar = new zzry.zzd();
        zzdVar.type = i;
        switch (i) {
            case 1:
            case 2:
            case 3:
                zzdVar.Dm = zzdVarArr;
                return zzdVar;
            case 4:
                zzdVar.Dn = zzmVar;
                return zzdVar;
            case 5:
                zzdVar.Do = zzfVar;
                return zzdVar;
            case 6:
                zzdVar.Dp = zziVar;
                return zzdVar;
            case 7:
                zzdVar.Dq = zzaVar;
                return zzdVar;
            case 8:
                zzdVar.Dr = zzkVar;
                return zzdVar;
            case 9:
                zzdVar.Ds = zzjVar;
                return zzdVar;
            case 10:
                zzdVar.Dt = zzhVar;
                return zzdVar;
            case 11:
                zzdVar.Du = zzbVar;
                return zzdVar;
            case 12:
                zzdVar.Dv = zzcVar;
                return zzdVar;
            case 13:
                zzdVar.Dw = zzgVar;
                return zzdVar;
            case 14:
                zzdVar.Dy = zznVar;
                return zzdVar;
            default:
                zzbu.zza("ContextFenceStub", "Unknown context fence type=%s", Integer.valueOf(i));
                return zzdVar;
        }
    }

    private void zzawp() {
        if (!zzawq()) {
            try {
                this.BS = zzry.zzd.zzt(this.BT);
                this.BT = null;
            } catch (zzapb e) {
                zzbu.zza("ContextFenceStub", "Could not deserialize context fence bytes.", (Throwable) e);
                throw new IllegalStateException(e);
            }
        }
        zzawr();
    }

    private boolean zzawq() {
        return this.BS != null;
    }

    private void zzawr() {
        if (this.BS != null || this.BT == null) {
            if (this.BS == null || this.BT != null) {
                if (this.BS != null && this.BT != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (this.BS != null || this.BT != null) {
                    throw new IllegalStateException("Impossible");
                }
                throw new IllegalStateException("Invalid internal representation - empty");
            }
        }
    }

    public static ContextFenceStub zzg(Collection<ContextFenceStub> collection) {
        zzab.zzaa(collection);
        zzab.zzbn(!collection.isEmpty());
        return new ContextFenceStub(zza(1, zzi(collection), null, null, null, null, null, null, null, null, null, null, null));
    }

    public static ContextFenceStub zzh(Collection<ContextFenceStub> collection) {
        zzab.zzaa(collection);
        zzab.zzbn(!collection.isEmpty());
        return new ContextFenceStub(zza(2, zzi(collection), null, null, null, null, null, null, null, null, null, null, null));
    }

    private static zzry.zzd[] zzi(Collection<ContextFenceStub> collection) {
        zzry.zzd[] zzdVarArr = new zzry.zzd[collection.size()];
        Iterator<ContextFenceStub> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            zzdVarArr[i] = it.next().zzaxc();
            i++;
        }
        return zzdVarArr;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public String toString() {
        zzawp();
        return this.BS.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }

    public byte[] zzaxb() {
        return this.BT != null ? this.BT : zzapc.zzf(this.BS);
    }

    public zzry.zzd zzaxc() {
        zzawp();
        return this.BS;
    }
}
