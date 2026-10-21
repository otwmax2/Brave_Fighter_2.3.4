package com.google.android.gms.tagmanager;

import android.util.Base64;
import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzae extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.ENCODE.toString();
    private static final String awj = com.google.android.gms.internal.zzag.ARG0.toString();
    private static final String awk = com.google.android.gms.internal.zzag.NO_PADDING.toString();
    private static final String awl = com.google.android.gms.internal.zzag.INPUT_FORMAT.toString();
    private static final String awm = com.google.android.gms.internal.zzag.OUTPUT_FORMAT.toString();

    public zzae() {
        super(ID, awj);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        byte[] bArrDecode;
        String strEncodeToString;
        zzai.zza zzaVar = map.get(awj);
        if (zzaVar == null || zzaVar == zzdl.zzcdq()) {
            return zzdl.zzcdq();
        }
        String strZzg = zzdl.zzg(zzaVar);
        zzai.zza zzaVar2 = map.get(awl);
        String strZzg2 = zzaVar2 == null ? "text" : zzdl.zzg(zzaVar2);
        zzai.zza zzaVar3 = map.get(awm);
        String strZzg3 = zzaVar3 == null ? "base16" : zzdl.zzg(zzaVar3);
        zzai.zza zzaVar4 = map.get(awk);
        int i = (zzaVar4 == null || !zzdl.zzk(zzaVar4).booleanValue()) ? 2 : 3;
        try {
            if ("text".equals(strZzg2)) {
                bArrDecode = strZzg.getBytes();
            } else if ("base16".equals(strZzg2)) {
                bArrDecode = zzk.zznn(strZzg);
            } else if ("base64".equals(strZzg2)) {
                bArrDecode = Base64.decode(strZzg, i);
            } else {
                if (!"base64url".equals(strZzg2)) {
                    String strValueOf = String.valueOf(strZzg2);
                    zzbn.e(strValueOf.length() != 0 ? "Encode: unknown input format: ".concat(strValueOf) : new String("Encode: unknown input format: "));
                    return zzdl.zzcdq();
                }
                bArrDecode = Base64.decode(strZzg, i | 8);
            }
            if ("base16".equals(strZzg3)) {
                strEncodeToString = zzk.zzp(bArrDecode);
            } else if ("base64".equals(strZzg3)) {
                strEncodeToString = Base64.encodeToString(bArrDecode, i);
            } else {
                if (!"base64url".equals(strZzg3)) {
                    String strValueOf2 = String.valueOf(strZzg3);
                    zzbn.e(strValueOf2.length() != 0 ? "Encode: unknown output format: ".concat(strValueOf2) : new String("Encode: unknown output format: "));
                    return zzdl.zzcdq();
                }
                strEncodeToString = Base64.encodeToString(bArrDecode, i | 8);
            }
            return zzdl.zzar(strEncodeToString);
        } catch (IllegalArgumentException e) {
            zzbn.e("Encode: invalid input:");
            return zzdl.zzcdq();
        }
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
