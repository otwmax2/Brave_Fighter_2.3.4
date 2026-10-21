package com.google.android.gms.internal;

import com.google.android.gms.internal.zzah;
import com.google.android.gms.internal.zzai;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class zzadz {

    public static class zza {
        private final Map<String, zzai.zza> aCH;
        private final zzai.zza aya;

        private zza(Map<String, zzai.zza> map, zzai.zza zzaVar) {
            this.aCH = map;
            this.aya = zzaVar;
        }

        public static zzb zzcgu() {
            return new zzb();
        }

        public String toString() {
            String strValueOf = String.valueOf(zzcft());
            String strValueOf2 = String.valueOf(this.aya);
            return new StringBuilder(String.valueOf(strValueOf).length() + 32 + String.valueOf(strValueOf2).length()).append("Properties: ").append(strValueOf).append(" pushAfterEvaluate: ").append(strValueOf2).toString();
        }

        public void zza(String str, zzai.zza zzaVar) {
            this.aCH.put(str, zzaVar);
        }

        public zzai.zza zzccr() {
            return this.aya;
        }

        public Map<String, zzai.zza> zzcft() {
            return Collections.unmodifiableMap(this.aCH);
        }
    }

    public static class zzb {
        private final Map<String, zzai.zza> aCH;
        private zzai.zza aya;

        private zzb() {
            this.aCH = new HashMap();
        }

        public zzb zzb(String str, zzai.zza zzaVar) {
            this.aCH.put(str, zzaVar);
            return this;
        }

        public zza zzcgv() {
            return new zza(this.aCH, this.aya);
        }

        public zzb zzq(zzai.zza zzaVar) {
            this.aya = zzaVar;
            return this;
        }
    }

    public static class zzc {
        private final List<zze> aCE;
        private final Map<String, List<zza>> aCF;
        private final int aCG;
        private final String nZ;

        private zzc(List<zze> list, Map<String, List<zza>> map, String str, int i) {
            this.aCE = Collections.unmodifiableList(list);
            this.aCF = Collections.unmodifiableMap(map);
            this.nZ = str;
            this.aCG = i;
        }

        public static zzd zzcgw() {
            return new zzd();
        }

        public String getVersion() {
            return this.nZ;
        }

        public String toString() {
            String strValueOf = String.valueOf(zzcfr());
            String strValueOf2 = String.valueOf(this.aCF);
            return new StringBuilder(String.valueOf(strValueOf).length() + 17 + String.valueOf(strValueOf2).length()).append("Rules: ").append(strValueOf).append("  Macros: ").append(strValueOf2).toString();
        }

        public List<zze> zzcfr() {
            return this.aCE;
        }

        public Map<String, List<zza>> zzcgx() {
            return this.aCF;
        }
    }

    public static class zzd {
        private final List<zze> aCE;
        private final Map<String, List<zza>> aCF;
        private int aCG;
        private String nZ;

        private zzd() {
            this.aCE = new ArrayList();
            this.aCF = new HashMap();
            this.nZ = "";
            this.aCG = 0;
        }

        public zzd zzb(zze zzeVar) {
            this.aCE.add(zzeVar);
            return this;
        }

        public zzd zzc(zza zzaVar) {
            String strZzg = com.google.android.gms.tagmanager.zzdl.zzg(zzaVar.zzcft().get(zzag.INSTANCE_NAME.toString()));
            List<zza> arrayList = this.aCF.get(strZzg);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.aCF.put(strZzg, arrayList);
            }
            arrayList.add(zzaVar);
            return this;
        }

        public zzc zzcgy() {
            return new zzc(this.aCE, this.aCF, this.nZ, this.aCG);
        }

        public zzd zzqc(String str) {
            this.nZ = str;
            return this;
        }

        public zzd zzyl(int i) {
            this.aCG = i;
            return this;
        }
    }

    public static class zze {
        private final List<zza> aCJ;
        private final List<zza> aCK;
        private final List<zza> aCL;
        private final List<zza> aCM;
        private final List<zza> aDs;
        private final List<zza> aDt;
        private final List<String> aDu;
        private final List<String> aDv;
        private final List<String> aDw;
        private final List<String> aDx;

        private zze(List<zza> list, List<zza> list2, List<zza> list3, List<zza> list4, List<zza> list5, List<zza> list6, List<String> list7, List<String> list8, List<String> list9, List<String> list10) {
            this.aCJ = Collections.unmodifiableList(list);
            this.aCK = Collections.unmodifiableList(list2);
            this.aCL = Collections.unmodifiableList(list3);
            this.aCM = Collections.unmodifiableList(list4);
            this.aDs = Collections.unmodifiableList(list5);
            this.aDt = Collections.unmodifiableList(list6);
            this.aDu = Collections.unmodifiableList(list7);
            this.aDv = Collections.unmodifiableList(list8);
            this.aDw = Collections.unmodifiableList(list9);
            this.aDx = Collections.unmodifiableList(list10);
        }

        public static zzf zzcgz() {
            return new zzf();
        }

        public String toString() {
            String strValueOf = String.valueOf(zzcfv());
            String strValueOf2 = String.valueOf(zzcfw());
            String strValueOf3 = String.valueOf(zzcfx());
            String strValueOf4 = String.valueOf(zzcfy());
            String strValueOf5 = String.valueOf(zzcha());
            String strValueOf6 = String.valueOf(zzchf());
            return new StringBuilder(String.valueOf(strValueOf).length() + 102 + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length() + String.valueOf(strValueOf4).length() + String.valueOf(strValueOf5).length() + String.valueOf(strValueOf6).length()).append("Positive predicates: ").append(strValueOf).append("  Negative predicates: ").append(strValueOf2).append("  Add tags: ").append(strValueOf3).append("  Remove tags: ").append(strValueOf4).append("  Add macros: ").append(strValueOf5).append("  Remove macros: ").append(strValueOf6).toString();
        }

        public List<zza> zzcfv() {
            return this.aCJ;
        }

        public List<zza> zzcfw() {
            return this.aCK;
        }

        public List<zza> zzcfx() {
            return this.aCL;
        }

        public List<zza> zzcfy() {
            return this.aCM;
        }

        public List<zza> zzcha() {
            return this.aDs;
        }

        public List<String> zzchb() {
            return this.aDu;
        }

        public List<String> zzchc() {
            return this.aDv;
        }

        public List<String> zzchd() {
            return this.aDw;
        }

        public List<String> zzche() {
            return this.aDx;
        }

        public List<zza> zzchf() {
            return this.aDt;
        }
    }

    public static class zzf {
        private final List<zza> aCJ;
        private final List<zza> aCK;
        private final List<zza> aCL;
        private final List<zza> aCM;
        private final List<zza> aDs;
        private final List<zza> aDt;
        private final List<String> aDu;
        private final List<String> aDv;
        private final List<String> aDw;
        private final List<String> aDx;

        private zzf() {
            this.aCJ = new ArrayList();
            this.aCK = new ArrayList();
            this.aCL = new ArrayList();
            this.aCM = new ArrayList();
            this.aDs = new ArrayList();
            this.aDt = new ArrayList();
            this.aDu = new ArrayList();
            this.aDv = new ArrayList();
            this.aDw = new ArrayList();
            this.aDx = new ArrayList();
        }

        public zze zzchg() {
            return new zze(this.aCJ, this.aCK, this.aCL, this.aCM, this.aDs, this.aDt, this.aDu, this.aDv, this.aDw, this.aDx);
        }

        public zzf zzd(zza zzaVar) {
            this.aCJ.add(zzaVar);
            return this;
        }

        public zzf zze(zza zzaVar) {
            this.aCK.add(zzaVar);
            return this;
        }

        public zzf zzf(zza zzaVar) {
            this.aCL.add(zzaVar);
            return this;
        }

        public zzf zzg(zza zzaVar) {
            this.aCM.add(zzaVar);
            return this;
        }

        public zzf zzh(zza zzaVar) {
            this.aDs.add(zzaVar);
            return this;
        }

        public zzf zzi(zza zzaVar) {
            this.aDt.add(zzaVar);
            return this;
        }

        public zzf zzqd(String str) {
            this.aDw.add(str);
            return this;
        }

        public zzf zzqe(String str) {
            this.aDx.add(str);
            return this;
        }

        public zzf zzqf(String str) {
            this.aDu.add(str);
            return this;
        }

        public zzf zzqg(String str) {
            this.aDv.add(str);
            return this;
        }
    }

    public static class zzg extends Exception {
        public zzg(String str) {
            super(str);
        }
    }

    private static zza zza(zzah.zzb zzbVar, zzah.zzf zzfVar, zzai.zza[] zzaVarArr, int i) throws zzg {
        zzb zzbVarZzcgu = zza.zzcgu();
        for (int i2 : zzbVar.zzup) {
            zzah.zze zzeVar = (zzah.zze) zza(zzfVar.zzvf, Integer.valueOf(i2).intValue(), "properties");
            String str = (String) zza(zzfVar.zzvd, zzeVar.key, "keys");
            zzai.zza zzaVar = (zzai.zza) zza(zzaVarArr, zzeVar.value, "values");
            if (zzag.PUSH_AFTER_EVALUATE.toString().equals(str)) {
                zzbVarZzcgu.zzq(zzaVar);
            } else {
                zzbVarZzcgu.zzb(str, zzaVar);
            }
        }
        return zzbVarZzcgu.zzcgv();
    }

    private static zze zza(zzah.zzg zzgVar, List<zza> list, List<zza> list2, List<zza> list3, zzah.zzf zzfVar) {
        zzf zzfVarZzcgz = zze.zzcgz();
        for (int i : zzgVar.zzvt) {
            zzfVarZzcgz.zzd(list3.get(Integer.valueOf(i).intValue()));
        }
        for (int i2 : zzgVar.zzvu) {
            zzfVarZzcgz.zze(list3.get(Integer.valueOf(i2).intValue()));
        }
        for (int i3 : zzgVar.zzvv) {
            zzfVarZzcgz.zzf(list.get(Integer.valueOf(i3).intValue()));
        }
        for (int i4 : zzgVar.zzvx) {
            zzfVarZzcgz.zzqd(zzfVar.zzve[Integer.valueOf(i4).intValue()].zzwt);
        }
        for (int i5 : zzgVar.zzvw) {
            zzfVarZzcgz.zzg(list.get(Integer.valueOf(i5).intValue()));
        }
        for (int i6 : zzgVar.zzvy) {
            zzfVarZzcgz.zzqe(zzfVar.zzve[Integer.valueOf(i6).intValue()].zzwt);
        }
        for (int i7 : zzgVar.zzvz) {
            zzfVarZzcgz.zzh(list2.get(Integer.valueOf(i7).intValue()));
        }
        for (int i8 : zzgVar.zzwb) {
            zzfVarZzcgz.zzqf(zzfVar.zzve[Integer.valueOf(i8).intValue()].zzwt);
        }
        for (int i9 : zzgVar.zzwa) {
            zzfVarZzcgz.zzi(list2.get(Integer.valueOf(i9).intValue()));
        }
        for (int i10 : zzgVar.zzwc) {
            zzfVarZzcgz.zzqg(zzfVar.zzve[Integer.valueOf(i10).intValue()].zzwt);
        }
        return zzfVarZzcgz.zzchg();
    }

    private static zzai.zza zza(int i, zzah.zzf zzfVar, zzai.zza[] zzaVarArr, Set<Integer> set) throws zzg {
        int i2 = 0;
        if (set.contains(Integer.valueOf(i))) {
            String strValueOf = String.valueOf(set);
            zzpn(new StringBuilder(String.valueOf(strValueOf).length() + 90).append("Value cycle detected.  Current value reference: ").append(i).append(".  Previous value references: ").append(strValueOf).append(".").toString());
        }
        zzai.zza zzaVar = (zzai.zza) zza(zzfVar.zzve, i, "values");
        if (zzaVarArr[i] != null) {
            return zzaVarArr[i];
        }
        zzai.zza zzaVarZzo = null;
        set.add(Integer.valueOf(i));
        switch (zzaVar.type) {
            case 1:
            case 5:
            case 6:
            case 8:
                zzaVarZzo = zzaVar;
                break;
            case 2:
                zzah.zzh zzhVarZzp = zzp(zzaVar);
                zzaVarZzo = zzo(zzaVar);
                zzaVarZzo.zzwu = new zzai.zza[zzhVarZzp.zzwf.length];
                int[] iArr = zzhVarZzp.zzwf;
                int length = iArr.length;
                int i3 = 0;
                while (i2 < length) {
                    zzaVarZzo.zzwu[i3] = zza(iArr[i2], zzfVar, zzaVarArr, set);
                    i2++;
                    i3++;
                }
                break;
            case 3:
                zzaVarZzo = zzo(zzaVar);
                zzah.zzh zzhVarZzp2 = zzp(zzaVar);
                if (zzhVarZzp2.zzwg.length != zzhVarZzp2.zzwh.length) {
                    zzpn(new StringBuilder(58).append("Uneven map keys (").append(zzhVarZzp2.zzwg.length).append(") and map values (").append(zzhVarZzp2.zzwh.length).append(")").toString());
                }
                zzaVarZzo.zzwv = new zzai.zza[zzhVarZzp2.zzwg.length];
                zzaVarZzo.zzww = new zzai.zza[zzhVarZzp2.zzwg.length];
                int[] iArr2 = zzhVarZzp2.zzwg;
                int length2 = iArr2.length;
                int i4 = 0;
                int i5 = 0;
                while (i4 < length2) {
                    zzaVarZzo.zzwv[i5] = zza(iArr2[i4], zzfVar, zzaVarArr, set);
                    i4++;
                    i5++;
                }
                int[] iArr3 = zzhVarZzp2.zzwh;
                int length3 = iArr3.length;
                int i6 = 0;
                while (i2 < length3) {
                    zzaVarZzo.zzww[i6] = zza(iArr3[i2], zzfVar, zzaVarArr, set);
                    i2++;
                    i6++;
                }
                break;
            case 4:
                zzaVarZzo = zzo(zzaVar);
                zzaVarZzo.zzwx = com.google.android.gms.tagmanager.zzdl.zzg(zza(zzp(zzaVar).zzwk, zzfVar, zzaVarArr, set));
                break;
            case 7:
                zzaVarZzo = zzo(zzaVar);
                zzah.zzh zzhVarZzp3 = zzp(zzaVar);
                zzaVarZzo.zzxb = new zzai.zza[zzhVarZzp3.zzwj.length];
                int[] iArr4 = zzhVarZzp3.zzwj;
                int length4 = iArr4.length;
                int i7 = 0;
                while (i2 < length4) {
                    zzaVarZzo.zzxb[i7] = zza(iArr4[i2], zzfVar, zzaVarArr, set);
                    i2++;
                    i7++;
                }
                break;
        }
        if (zzaVarZzo == null) {
            String strValueOf2 = String.valueOf(zzaVar);
            zzpn(new StringBuilder(String.valueOf(strValueOf2).length() + 15).append("Invalid value: ").append(strValueOf2).toString());
        }
        zzaVarArr[i] = zzaVarZzo;
        set.remove(Integer.valueOf(i));
        return zzaVarZzo;
    }

    private static <T> T zza(T[] tArr, int i, String str) throws zzg {
        if (i < 0 || i >= tArr.length) {
            zzpn(new StringBuilder(String.valueOf(str).length() + 45).append("Index out of bounds detected: ").append(i).append(" in ").append(str).toString());
        }
        return tArr[i];
    }

    public static zzc zzb(zzah.zzf zzfVar) throws zzg {
        zzai.zza[] zzaVarArr = new zzai.zza[zzfVar.zzve.length];
        for (int i = 0; i < zzfVar.zzve.length; i++) {
            zza(i, zzfVar, zzaVarArr, new HashSet(0));
        }
        zzd zzdVarZzcgw = zzc.zzcgw();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < zzfVar.zzvh.length; i2++) {
            arrayList.add(zza(zzfVar.zzvh[i2], zzfVar, zzaVarArr, i2));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < zzfVar.zzvi.length; i3++) {
            arrayList2.add(zza(zzfVar.zzvi[i3], zzfVar, zzaVarArr, i3));
        }
        ArrayList arrayList3 = new ArrayList();
        for (int i4 = 0; i4 < zzfVar.zzvg.length; i4++) {
            zza zzaVarZza = zza(zzfVar.zzvg[i4], zzfVar, zzaVarArr, i4);
            zzdVarZzcgw.zzc(zzaVarZza);
            arrayList3.add(zzaVarZza);
        }
        for (zzah.zzg zzgVar : zzfVar.zzvj) {
            zzdVarZzcgw.zzb(zza(zzgVar, arrayList, arrayList3, arrayList2, zzfVar));
        }
        zzdVarZzcgw.zzqc(zzfVar.version);
        zzdVarZzcgw.zzyl(zzfVar.zzvr);
        return zzdVarZzcgw.zzcgy();
    }

    public static void zzc(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    public static zzai.zza zzo(zzai.zza zzaVar) {
        zzai.zza zzaVar2 = new zzai.zza();
        zzaVar2.type = zzaVar.type;
        zzaVar2.zzxc = (int[]) zzaVar.zzxc.clone();
        if (zzaVar.zzxd) {
            zzaVar2.zzxd = zzaVar.zzxd;
        }
        return zzaVar2;
    }

    private static zzah.zzh zzp(zzai.zza zzaVar) throws zzg {
        if (((zzah.zzh) zzaVar.zza(zzah.zzh.zzwd)) == null) {
            String strValueOf = String.valueOf(zzaVar);
            zzpn(new StringBuilder(String.valueOf(strValueOf).length() + 54).append("Expected a ServingValue and didn't get one. Value is: ").append(strValueOf).toString());
        }
        return (zzah.zzh) zzaVar.zza(zzah.zzh.zzwd);
    }

    private static void zzpn(String str) throws zzg {
        com.google.android.gms.tagmanager.zzbn.e(str);
        throw new zzg(str);
    }
}
