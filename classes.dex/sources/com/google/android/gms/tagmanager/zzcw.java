package com.google.android.gms.tagmanager;

import android.content.Context;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.internal.zzadz;
import com.google.android.gms.internal.zzah;
import com.google.android.gms.internal.zzai;
import com.google.android.gms.tagmanager.zzm;
import com.google.android.gms.tagmanager.zzt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class zzcw {
    private static final zzcd<zzai.zza> axI = new zzcd<>(zzdl.zzcdq(), true);
    private final DataLayer ava;
    private final zzadz.zzc axJ;
    private final zzai axK;
    private final Map<String, zzal> axL;
    private final Map<String, zzal> axM;
    private final Map<String, zzal> axN;
    private final zzl<zzadz.zza, zzcd<zzai.zza>> axO;
    private final zzl<String, zzb> axP;
    private final Set<zzadz.zze> axQ;
    private final Map<String, zzc> axR;
    private volatile String axS;
    private int axT;

    interface zza {
        void zza(zzadz.zze zzeVar, Set<zzadz.zza> set, Set<zzadz.zza> set2, zzcr zzcrVar);
    }

    private static class zzb {
        private zzcd<zzai.zza> axZ;
        private zzai.zza aya;

        public zzb(zzcd<zzai.zza> zzcdVar, zzai.zza zzaVar) {
            this.axZ = zzcdVar;
            this.aya = zzaVar;
        }

        public int getSize() {
            return (this.aya == null ? 0 : this.aya.an()) + this.axZ.getObject().an();
        }

        public zzcd<zzai.zza> zzccq() {
            return this.axZ;
        }

        public zzai.zza zzccr() {
            return this.aya;
        }
    }

    private static class zzc {
        private zzadz.zza ayf;
        private final Set<zzadz.zze> axQ = new HashSet();
        private final Map<zzadz.zze, List<zzadz.zza>> ayb = new HashMap();
        private final Map<zzadz.zze, List<String>> ayd = new HashMap();
        private final Map<zzadz.zze, List<zzadz.zza>> ayc = new HashMap();
        private final Map<zzadz.zze, List<String>> aye = new HashMap();

        public void zza(zzadz.zze zzeVar) {
            this.axQ.add(zzeVar);
        }

        public void zza(zzadz.zze zzeVar, zzadz.zza zzaVar) {
            List<zzadz.zza> arrayList = this.ayb.get(zzeVar);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.ayb.put(zzeVar, arrayList);
            }
            arrayList.add(zzaVar);
        }

        public void zza(zzadz.zze zzeVar, String str) {
            List<String> arrayList = this.ayd.get(zzeVar);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.ayd.put(zzeVar, arrayList);
            }
            arrayList.add(str);
        }

        public void zzb(zzadz.zza zzaVar) {
            this.ayf = zzaVar;
        }

        public void zzb(zzadz.zze zzeVar, zzadz.zza zzaVar) {
            List<zzadz.zza> arrayList = this.ayc.get(zzeVar);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.ayc.put(zzeVar, arrayList);
            }
            arrayList.add(zzaVar);
        }

        public void zzb(zzadz.zze zzeVar, String str) {
            List<String> arrayList = this.aye.get(zzeVar);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.aye.put(zzeVar, arrayList);
            }
            arrayList.add(str);
        }

        public Set<zzadz.zze> zzccs() {
            return this.axQ;
        }

        public Map<zzadz.zze, List<zzadz.zza>> zzcct() {
            return this.ayb;
        }

        public Map<zzadz.zze, List<String>> zzccu() {
            return this.ayd;
        }

        public Map<zzadz.zze, List<String>> zzccv() {
            return this.aye;
        }

        public Map<zzadz.zze, List<zzadz.zza>> zzccw() {
            return this.ayc;
        }

        public zzadz.zza zzccx() {
            return this.ayf;
        }
    }

    public zzcw(Context context, zzadz.zzc zzcVar, DataLayer dataLayer, zzt.zza zzaVar, zzt.zza zzaVar2, zzai zzaiVar) {
        if (zzcVar == null) {
            throw new NullPointerException("resource cannot be null");
        }
        this.axJ = zzcVar;
        this.axQ = new HashSet(zzcVar.zzcfr());
        this.ava = dataLayer;
        this.axK = zzaiVar;
        this.axO = new zzm().zza(1048576, new zzm.zza<zzadz.zza, zzcd<zzai.zza>>() { // from class: com.google.android.gms.tagmanager.zzcw.1
            @Override // com.google.android.gms.tagmanager.zzm.zza
            /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
            public int sizeOf(zzadz.zza zzaVar3, zzcd<zzai.zza> zzcdVar) {
                return zzcdVar.getObject().an();
            }
        });
        this.axP = new zzm().zza(1048576, new zzm.zza<String, zzb>() { // from class: com.google.android.gms.tagmanager.zzcw.2
            @Override // com.google.android.gms.tagmanager.zzm.zza
            /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
            public int sizeOf(String str, zzb zzbVar) {
                return str.length() + zzbVar.getSize();
            }
        });
        this.axL = new HashMap();
        zzb(new zzj(context));
        zzb(new zzt(zzaVar2));
        zzb(new zzx(dataLayer));
        zzb(new zzdm(context, dataLayer));
        this.axM = new HashMap();
        zzc(new zzr());
        zzc(new zzaf());
        zzc(new zzag());
        zzc(new zzan());
        zzc(new zzao());
        zzc(new zzbj());
        zzc(new zzbk());
        zzc(new zzcm());
        zzc(new zzdf());
        this.axN = new HashMap();
        zza(new com.google.android.gms.tagmanager.zzb(context));
        zza(new com.google.android.gms.tagmanager.zzc(context));
        zza(new zze(context));
        zza(new zzf(context));
        zza(new zzg(context));
        zza(new zzh(context));
        zza(new zzi(context));
        zza(new zzn());
        zza(new zzq(this.axJ.getVersion()));
        zza(new zzt(zzaVar));
        zza(new zzv(dataLayer));
        zza(new zzaa(context));
        zza(new zzab());
        zza(new zzae());
        zza(new zzaj(this));
        zza(new zzap());
        zza(new zzaq());
        zza(new zzbd(context));
        zza(new zzbf());
        zza(new zzbi());
        zza(new zzbp());
        zza(new zzbr(context));
        zza(new zzce());
        zza(new zzcg());
        zza(new zzcj());
        zza(new zzcl());
        zza(new zzcn(context));
        zza(new zzcx());
        zza(new zzcy());
        zza(new zzdh());
        zza(new zzdn());
        this.axR = new HashMap();
        for (zzadz.zze zzeVar : this.axQ) {
            if (zzaiVar.zzcbk()) {
                zza(zzeVar.zzcha(), zzeVar.zzchb(), "add macro");
                zza(zzeVar.zzchf(), zzeVar.zzchc(), "remove macro");
                zza(zzeVar.zzcfx(), zzeVar.zzchd(), "add tag");
                zza(zzeVar.zzcfy(), zzeVar.zzche(), "remove tag");
            }
            for (int i = 0; i < zzeVar.zzcha().size(); i++) {
                zzadz.zza zzaVar3 = zzeVar.zzcha().get(i);
                String str = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
                if (zzaiVar.zzcbk() && i < zzeVar.zzchb().size()) {
                    str = zzeVar.zzchb().get(i);
                }
                zzc zzcVarZzi = zzi(this.axR, zza(zzaVar3));
                zzcVarZzi.zza(zzeVar);
                zzcVarZzi.zza(zzeVar, zzaVar3);
                zzcVarZzi.zza(zzeVar, str);
            }
            for (int i2 = 0; i2 < zzeVar.zzchf().size(); i2++) {
                zzadz.zza zzaVar4 = zzeVar.zzchf().get(i2);
                String str2 = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
                if (zzaiVar.zzcbk() && i2 < zzeVar.zzchc().size()) {
                    str2 = zzeVar.zzchc().get(i2);
                }
                zzc zzcVarZzi2 = zzi(this.axR, zza(zzaVar4));
                zzcVarZzi2.zza(zzeVar);
                zzcVarZzi2.zzb(zzeVar, zzaVar4);
                zzcVarZzi2.zzb(zzeVar, str2);
            }
        }
        for (Map.Entry<String, List<zzadz.zza>> entry : this.axJ.zzcgx().entrySet()) {
            for (zzadz.zza zzaVar5 : entry.getValue()) {
                if (!zzdl.zzk(zzaVar5.zzcft().get(com.google.android.gms.internal.zzag.NOT_DEFAULT_MACRO.toString())).booleanValue()) {
                    zzi(this.axR, entry.getKey()).zzb(zzaVar5);
                }
            }
        }
    }

    private zzcd<zzai.zza> zza(zzai.zza zzaVar, Set<String> set, zzdo zzdoVar) {
        if (!zzaVar.zzxd) {
            return new zzcd<>(zzaVar, true);
        }
        switch (zzaVar.type) {
            case 2:
                zzai.zza zzaVarZzo = zzadz.zzo(zzaVar);
                zzaVarZzo.zzwu = new zzai.zza[zzaVar.zzwu.length];
                for (int i = 0; i < zzaVar.zzwu.length; i++) {
                    zzcd<zzai.zza> zzcdVarZza = zza(zzaVar.zzwu[i], set, zzdoVar.zzxz(i));
                    if (zzcdVarZza == axI) {
                        return axI;
                    }
                    zzaVarZzo.zzwu[i] = zzcdVarZza.getObject();
                }
                return new zzcd<>(zzaVarZzo, false);
            case 3:
                zzai.zza zzaVarZzo2 = zzadz.zzo(zzaVar);
                if (zzaVar.zzwv.length != zzaVar.zzww.length) {
                    String strValueOf = String.valueOf(zzaVar.toString());
                    zzbn.e(strValueOf.length() != 0 ? "Invalid serving value: ".concat(strValueOf) : new String("Invalid serving value: "));
                    return axI;
                }
                zzaVarZzo2.zzwv = new zzai.zza[zzaVar.zzwv.length];
                zzaVarZzo2.zzww = new zzai.zza[zzaVar.zzwv.length];
                for (int i2 = 0; i2 < zzaVar.zzwv.length; i2++) {
                    zzcd<zzai.zza> zzcdVarZza2 = zza(zzaVar.zzwv[i2], set, zzdoVar.zzya(i2));
                    zzcd<zzai.zza> zzcdVarZza3 = zza(zzaVar.zzww[i2], set, zzdoVar.zzyb(i2));
                    if (zzcdVarZza2 == axI || zzcdVarZza3 == axI) {
                        return axI;
                    }
                    zzaVarZzo2.zzwv[i2] = zzcdVarZza2.getObject();
                    zzaVarZzo2.zzww[i2] = zzcdVarZza3.getObject();
                }
                return new zzcd<>(zzaVarZzo2, false);
            case 4:
                if (set.contains(zzaVar.zzwx)) {
                    String strValueOf2 = String.valueOf(zzaVar.zzwx);
                    String strValueOf3 = String.valueOf(set.toString());
                    zzbn.e(new StringBuilder(String.valueOf(strValueOf2).length() + 79 + String.valueOf(strValueOf3).length()).append("Macro cycle detected.  Current macro reference: ").append(strValueOf2).append(".  Previous macro references: ").append(strValueOf3).append(".").toString());
                    return axI;
                }
                set.add(zzaVar.zzwx);
                zzcd<zzai.zza> zzcdVarZza4 = zzdp.zza(zza(zzaVar.zzwx, set, zzdoVar.zzcby()), zzaVar.zzxc);
                set.remove(zzaVar.zzwx);
                return zzcdVarZza4;
            case 5:
            case 6:
            default:
                zzbn.e(new StringBuilder(25).append("Unknown type: ").append(zzaVar.type).toString());
                return axI;
            case 7:
                zzai.zza zzaVarZzo3 = zzadz.zzo(zzaVar);
                zzaVarZzo3.zzxb = new zzai.zza[zzaVar.zzxb.length];
                for (int i3 = 0; i3 < zzaVar.zzxb.length; i3++) {
                    zzcd<zzai.zza> zzcdVarZza5 = zza(zzaVar.zzxb[i3], set, zzdoVar.zzyc(i3));
                    if (zzcdVarZza5 == axI) {
                        return axI;
                    }
                    zzaVarZzo3.zzxb[i3] = zzcdVarZza5.getObject();
                }
                return new zzcd<>(zzaVarZzo3, false);
        }
    }

    private zzcd<zzai.zza> zza(String str, Set<String> set, zzbq zzbqVar) {
        zzadz.zza next;
        this.axT++;
        zzb zzbVar = this.axP.get(str);
        if (zzbVar != null && !this.axK.zzcbk()) {
            zza(zzbVar.zzccr(), set);
            this.axT--;
            return zzbVar.zzccq();
        }
        zzc zzcVar = this.axR.get(str);
        if (zzcVar == null) {
            String strValueOf = String.valueOf(zzccp());
            zzbn.e(new StringBuilder(String.valueOf(strValueOf).length() + 15 + String.valueOf(str).length()).append(strValueOf).append("Invalid macro: ").append(str).toString());
            this.axT--;
            return axI;
        }
        zzcd<Set<zzadz.zza>> zzcdVarZza = zza(str, zzcVar.zzccs(), zzcVar.zzcct(), zzcVar.zzccu(), zzcVar.zzccw(), zzcVar.zzccv(), set, zzbqVar.zzcaw());
        if (zzcdVarZza.getObject().isEmpty()) {
            next = zzcVar.zzccx();
        } else {
            if (zzcdVarZza.getObject().size() > 1) {
                String strValueOf2 = String.valueOf(zzccp());
                zzbn.zzcy(new StringBuilder(String.valueOf(strValueOf2).length() + 37 + String.valueOf(str).length()).append(strValueOf2).append("Multiple macros active for macroName ").append(str).toString());
            }
            next = zzcdVarZza.getObject().iterator().next();
        }
        if (next == null) {
            this.axT--;
            return axI;
        }
        zzcd<zzai.zza> zzcdVarZza2 = zza(this.axN, next, set, zzbqVar.zzcbq());
        zzcd<zzai.zza> zzcdVar = zzcdVarZza2 == axI ? axI : new zzcd<>(zzcdVarZza2.getObject(), zzcdVarZza.zzcbz() && zzcdVarZza2.zzcbz());
        zzai.zza zzaVarZzccr = next.zzccr();
        if (zzcdVar.zzcbz()) {
            this.axP.zzi(str, new zzb(zzcdVar, zzaVarZzccr));
        }
        zza(zzaVarZzccr, set);
        this.axT--;
        return zzcdVar;
    }

    private zzcd<zzai.zza> zza(Map<String, zzal> map, zzadz.zza zzaVar, Set<String> set, zzco zzcoVar) {
        boolean z;
        zzai.zza zzaVar2 = zzaVar.zzcft().get(com.google.android.gms.internal.zzag.FUNCTION.toString());
        if (zzaVar2 == null) {
            zzbn.e("No function id in properties");
            return axI;
        }
        String str = zzaVar2.zzwy;
        zzal zzalVar = map.get(str);
        if (zzalVar == null) {
            zzbn.e(String.valueOf(str).concat(" has no backing implementation."));
            return axI;
        }
        zzcd<zzai.zza> zzcdVar = this.axO.get(zzaVar);
        if (zzcdVar != null && !this.axK.zzcbk()) {
            return zzcdVar;
        }
        HashMap map2 = new HashMap();
        boolean z2 = true;
        for (Map.Entry<String, zzai.zza> entry : zzaVar.zzcft().entrySet()) {
            zzcd<zzai.zza> zzcdVarZza = zza(entry.getValue(), set, zzcoVar.zzoi(entry.getKey()).zze(entry.getValue()));
            if (zzcdVarZza == axI) {
                return axI;
            }
            if (zzcdVarZza.zzcbz()) {
                zzaVar.zza(entry.getKey(), zzcdVarZza.getObject());
                z = z2;
            } else {
                z = false;
            }
            map2.put(entry.getKey(), zzcdVarZza.getObject());
            z2 = z;
        }
        if (!zzalVar.zzf(map2.keySet())) {
            String strValueOf = String.valueOf(zzalVar.zzcbm());
            String strValueOf2 = String.valueOf(map2.keySet());
            zzbn.e(new StringBuilder(String.valueOf(str).length() + 43 + String.valueOf(strValueOf).length() + String.valueOf(strValueOf2).length()).append("Incorrect keys for function ").append(str).append(" required ").append(strValueOf).append(" had ").append(strValueOf2).toString());
            return axI;
        }
        boolean z3 = z2 && zzalVar.zzcac();
        zzcd<zzai.zza> zzcdVar2 = new zzcd<>(zzalVar.zzav(map2), z3);
        if (z3) {
            this.axO.zzi(zzaVar, zzcdVar2);
        }
        zzcoVar.zzd(zzcdVar2.getObject());
        return zzcdVar2;
    }

    private zzcd<Set<zzadz.zza>> zza(Set<zzadz.zze> set, Set<String> set2, zza zzaVar, zzcv zzcvVar) {
        Set<zzadz.zza> hashSet = new HashSet<>();
        Set<zzadz.zza> hashSet2 = new HashSet<>();
        boolean z = true;
        for (zzadz.zze zzeVar : set) {
            zzcr zzcrVarZzcbx = zzcvVar.zzcbx();
            zzcd<Boolean> zzcdVarZza = zza(zzeVar, set2, zzcrVarZzcbx);
            if (zzcdVarZza.getObject().booleanValue()) {
                zzaVar.zza(zzeVar, hashSet, hashSet2, zzcrVarZzcbx);
            }
            z = z && zzcdVarZza.zzcbz();
        }
        hashSet.removeAll(hashSet2);
        zzcvVar.zzg(hashSet);
        return new zzcd<>(hashSet, z);
    }

    private static String zza(zzadz.zza zzaVar) {
        return zzdl.zzg(zzaVar.zzcft().get(com.google.android.gms.internal.zzag.INSTANCE_NAME.toString()));
    }

    private void zza(zzai.zza zzaVar, Set<String> set) {
        zzcd<zzai.zza> zzcdVarZza;
        if (zzaVar == null || (zzcdVarZza = zza(zzaVar, set, new zzcb())) == axI) {
            return;
        }
        Object objZzl = zzdl.zzl(zzcdVarZza.getObject());
        if (objZzl instanceof Map) {
            this.ava.push((Map) objZzl);
            return;
        }
        if (!(objZzl instanceof List)) {
            zzbn.zzcy("pushAfterEvaluate: value not a Map or List");
            return;
        }
        for (Object obj : (List) objZzl) {
            if (obj instanceof Map) {
                this.ava.push((Map) obj);
            } else {
                zzbn.zzcy("pushAfterEvaluate: value not a Map");
            }
        }
    }

    private static void zza(List<zzadz.zza> list, List<String> list2, String str) {
        if (list.size() != list2.size()) {
            zzbn.zzcx(new StringBuilder(String.valueOf(str).length() + 102).append("Invalid resource: imbalance of rule names of functions for ").append(str).append(" operation. Using default rule name instead").toString());
        }
    }

    private static void zza(Map<String, zzal> map, zzal zzalVar) {
        if (map.containsKey(zzalVar.zzcbl())) {
            String strValueOf = String.valueOf(zzalVar.zzcbl());
            throw new IllegalArgumentException(strValueOf.length() != 0 ? "Duplicate function type name: ".concat(strValueOf) : new String("Duplicate function type name: "));
        }
        map.put(zzalVar.zzcbl(), zzalVar);
    }

    private String zzccp() {
        if (this.axT <= 1) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toString(this.axT));
        for (int i = 2; i < this.axT; i++) {
            sb.append(' ');
        }
        sb.append(": ");
        return sb.toString();
    }

    private static zzc zzi(Map<String, zzc> map, String str) {
        zzc zzcVar = map.get(str);
        if (zzcVar != null) {
            return zzcVar;
        }
        zzc zzcVar2 = new zzc();
        map.put(str, zzcVar2);
        return zzcVar2;
    }

    zzcd<Boolean> zza(zzadz.zza zzaVar, Set<String> set, zzco zzcoVar) {
        zzcd<zzai.zza> zzcdVarZza = zza(this.axM, zzaVar, set, zzcoVar);
        Boolean boolZzk = zzdl.zzk(zzcdVarZza.getObject());
        zzcoVar.zzd(zzdl.zzar(boolZzk));
        return new zzcd<>(boolZzk, zzcdVarZza.zzcbz());
    }

    zzcd<Boolean> zza(zzadz.zze zzeVar, Set<String> set, zzcr zzcrVar) {
        Iterator<zzadz.zza> it = zzeVar.zzcfw().iterator();
        boolean z = true;
        while (it.hasNext()) {
            zzcd<Boolean> zzcdVarZza = zza(it.next(), set, zzcrVar.zzcbr());
            if (zzcdVarZza.getObject().booleanValue()) {
                zzcrVar.zzf(zzdl.zzar(false));
                return new zzcd<>(false, zzcdVarZza.zzcbz());
            }
            z = z && zzcdVarZza.zzcbz();
        }
        Iterator<zzadz.zza> it2 = zzeVar.zzcfv().iterator();
        while (it2.hasNext()) {
            zzcd<Boolean> zzcdVarZza2 = zza(it2.next(), set, zzcrVar.zzcbs());
            if (!zzcdVarZza2.getObject().booleanValue()) {
                zzcrVar.zzf(zzdl.zzar(false));
                return new zzcd<>(false, zzcdVarZza2.zzcbz());
            }
            z = z && zzcdVarZza2.zzcbz();
        }
        zzcrVar.zzf(zzdl.zzar(true));
        return new zzcd<>(true, z);
    }

    zzcd<Set<zzadz.zza>> zza(String str, Set<zzadz.zze> set, final Map<zzadz.zze, List<zzadz.zza>> map, final Map<zzadz.zze, List<String>> map2, final Map<zzadz.zze, List<zzadz.zza>> map3, final Map<zzadz.zze, List<String>> map4, Set<String> set2, zzcv zzcvVar) {
        return zza(set, set2, new zza() { // from class: com.google.android.gms.tagmanager.zzcw.3
            @Override // com.google.android.gms.tagmanager.zzcw.zza
            public void zza(zzadz.zze zzeVar, Set<zzadz.zza> set3, Set<zzadz.zza> set4, zzcr zzcrVar) {
                List<zzadz.zza> list = (List) map.get(zzeVar);
                List<String> list2 = (List) map2.get(zzeVar);
                if (list != null) {
                    set3.addAll(list);
                    zzcrVar.zzcbt().zzc(list, list2);
                }
                List<zzadz.zza> list3 = (List) map3.get(zzeVar);
                List<String> list4 = (List) map4.get(zzeVar);
                if (list3 != null) {
                    set4.addAll(list3);
                    zzcrVar.zzcbu().zzc(list3, list4);
                }
            }
        }, zzcvVar);
    }

    zzcd<Set<zzadz.zza>> zza(Set<zzadz.zze> set, zzcv zzcvVar) {
        return zza(set, new HashSet(), new zza() { // from class: com.google.android.gms.tagmanager.zzcw.4
            @Override // com.google.android.gms.tagmanager.zzcw.zza
            public void zza(zzadz.zze zzeVar, Set<zzadz.zza> set2, Set<zzadz.zza> set3, zzcr zzcrVar) {
                set2.addAll(zzeVar.zzcfx());
                set3.addAll(zzeVar.zzcfy());
                zzcrVar.zzcbv().zzc(zzeVar.zzcfx(), zzeVar.zzchd());
                zzcrVar.zzcbw().zzc(zzeVar.zzcfy(), zzeVar.zzche());
            }
        }, zzcvVar);
    }

    void zza(zzal zzalVar) {
        zza(this.axN, zzalVar);
    }

    public synchronized void zzaj(List<zzah.zzi> list) {
        for (zzah.zzi zziVar : list) {
            if (zziVar.name == null || !zziVar.name.startsWith("gaExperiment:")) {
                String strValueOf = String.valueOf(zziVar);
                zzbn.v(new StringBuilder(String.valueOf(strValueOf).length() + 22).append("Ignored supplemental: ").append(strValueOf).toString());
            } else {
                zzak.zza(this.ava, zziVar);
            }
        }
    }

    void zzb(zzal zzalVar) {
        zza(this.axL, zzalVar);
    }

    void zzc(zzal zzalVar) {
        zza(this.axM, zzalVar);
    }

    synchronized String zzcco() {
        return this.axS;
    }

    public synchronized void zznq(String str) {
        zzon(str);
        zzah zzahVarZzod = this.axK.zzod(str);
        zzu zzuVarZzcbi = zzahVarZzod.zzcbi();
        Iterator<zzadz.zza> it = zza(this.axQ, zzuVarZzcbi.zzcaw()).getObject().iterator();
        while (it.hasNext()) {
            zza(this.axL, it.next(), new HashSet(), zzuVarZzcbi.zzcav());
        }
        zzahVarZzod.zzcbj();
        zzon(null);
    }

    public zzcd<zzai.zza> zzom(String str) {
        this.axT = 0;
        zzah zzahVarZzoc = this.axK.zzoc(str);
        zzcd<zzai.zza> zzcdVarZza = zza(str, new HashSet(), zzahVarZzoc.zzcbh());
        zzahVarZzoc.zzcbj();
        return zzcdVarZza;
    }

    synchronized void zzon(String str) {
        this.axS = str;
    }
}
