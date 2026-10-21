package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import com.ironsource.sdk.constants.Constants;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class zzbf extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.JOINER.toString();
    private static final String awj = com.google.android.gms.internal.zzag.ARG0.toString();
    private static final String awB = com.google.android.gms.internal.zzag.ITEM_SEPARATOR.toString();
    private static final String awC = com.google.android.gms.internal.zzag.KEY_VALUE_SEPARATOR.toString();
    private static final String awD = com.google.android.gms.internal.zzag.ESCAPE.toString();

    private enum zza {
        NONE,
        URL,
        BACKSLASH
    }

    public zzbf() {
        super(ID, awj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0012, code lost:
    
        com.google.android.gms.tagmanager.zzbn.zzb("Joiner: unsupported encoding", r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String zza(java.lang.String r7, com.google.android.gms.tagmanager.zzbf.zza r8, java.util.Set<java.lang.Character> r9) {
        /*
            r6 = this;
            int[] r0 = com.google.android.gms.tagmanager.zzbf.AnonymousClass1.awE
            int r1 = r8.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto Lc;
                case 2: goto L18;
                default: goto Lb;
            }
        Lb:
            return r7
        Lc:
            java.lang.String r7 = com.google.android.gms.tagmanager.zzdp.zzoz(r7)     // Catch: java.io.UnsupportedEncodingException -> L11
            goto Lb
        L11:
            r0 = move-exception
            java.lang.String r1 = "Joiner: unsupported encoding"
            com.google.android.gms.tagmanager.zzbn.zzb(r1, r0)
            goto Lb
        L18:
            java.lang.String r0 = "\\"
            java.lang.String r1 = "\\\\"
            java.lang.String r0 = r7.replace(r0, r1)
            java.util.Iterator r2 = r9.iterator()
            r1 = r0
        L25:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L51
            java.lang.Object r0 = r2.next()
            java.lang.Character r0 = (java.lang.Character) r0
            java.lang.String r3 = r0.toString()
            java.lang.String r4 = "\\"
            java.lang.String r0 = java.lang.String.valueOf(r3)
            int r5 = r0.length()
            if (r5 == 0) goto L4b
            java.lang.String r0 = r4.concat(r0)
        L45:
            java.lang.String r0 = r1.replace(r3, r0)
            r1 = r0
            goto L25
        L4b:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r4)
            goto L45
        L51:
            r7 = r1
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzbf.zza(java.lang.String, com.google.android.gms.tagmanager.zzbf$zza, java.util.Set):java.lang.String");
    }

    private void zza(StringBuilder sb, String str, zza zzaVar, Set<Character> set) {
        sb.append(zza(str, zzaVar, set));
    }

    private void zza(Set<Character> set, String str) {
        for (int i = 0; i < str.length(); i++) {
            set.add(Character.valueOf(str.charAt(i)));
        }
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        HashSet hashSet;
        zza zzaVar;
        zzai.zza zzaVar2 = map.get(awj);
        if (zzaVar2 == null) {
            return zzdl.zzcdq();
        }
        zzai.zza zzaVar3 = map.get(awB);
        String strZzg = zzaVar3 != null ? zzdl.zzg(zzaVar3) : "";
        zzai.zza zzaVar4 = map.get(awC);
        String strZzg2 = zzaVar4 != null ? zzdl.zzg(zzaVar4) : Constants.RequestParameters.EQUAL;
        zza zzaVar5 = zza.NONE;
        zzai.zza zzaVar6 = map.get(awD);
        if (zzaVar6 != null) {
            String strZzg3 = zzdl.zzg(zzaVar6);
            if ("url".equals(strZzg3)) {
                zzaVar = zza.URL;
                hashSet = null;
            } else {
                if (!"backslash".equals(strZzg3)) {
                    String strValueOf = String.valueOf(strZzg3);
                    zzbn.e(strValueOf.length() != 0 ? "Joiner: unsupported escape type: ".concat(strValueOf) : new String("Joiner: unsupported escape type: "));
                    return zzdl.zzcdq();
                }
                zzaVar = zza.BACKSLASH;
                hashSet = new HashSet();
                zza(hashSet, strZzg);
                zza(hashSet, strZzg2);
                hashSet.remove('\\');
            }
        } else {
            hashSet = null;
            zzaVar = zzaVar5;
        }
        StringBuilder sb = new StringBuilder();
        switch (zzaVar2.type) {
            case 2:
                boolean z = true;
                zzai.zza[] zzaVarArr = zzaVar2.zzwu;
                int length = zzaVarArr.length;
                int i = 0;
                while (i < length) {
                    zzai.zza zzaVar7 = zzaVarArr[i];
                    if (!z) {
                        sb.append(strZzg);
                    }
                    zza(sb, zzdl.zzg(zzaVar7), zzaVar, hashSet);
                    i++;
                    z = false;
                }
                break;
            case 3:
                for (int i2 = 0; i2 < zzaVar2.zzwv.length; i2++) {
                    if (i2 > 0) {
                        sb.append(strZzg);
                    }
                    String strZzg4 = zzdl.zzg(zzaVar2.zzwv[i2]);
                    String strZzg5 = zzdl.zzg(zzaVar2.zzww[i2]);
                    zza(sb, strZzg4, zzaVar, hashSet);
                    sb.append(strZzg2);
                    zza(sb, strZzg5, zzaVar, hashSet);
                }
                break;
            default:
                zza(sb, zzdl.zzg(zzaVar2), zzaVar, hashSet);
                break;
        }
        return zzdl.zzar(sb.toString());
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
