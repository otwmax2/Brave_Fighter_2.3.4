package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzaq extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.HASH.toString();
    private static final String awj = com.google.android.gms.internal.zzag.ARG0.toString();
    private static final String awp = com.google.android.gms.internal.zzag.ALGORITHM.toString();
    private static final String awl = com.google.android.gms.internal.zzag.INPUT_FORMAT.toString();

    public zzaq() {
        super(ID, awj);
    }

    private byte[] zzf(String str, byte[] bArr) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(bArr);
        return messageDigest.digest();
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        byte[] bArrZznn;
        zzai.zza zzaVar = map.get(awj);
        if (zzaVar == null || zzaVar == zzdl.zzcdq()) {
            return zzdl.zzcdq();
        }
        String strZzg = zzdl.zzg(zzaVar);
        zzai.zza zzaVar2 = map.get(awp);
        String strZzg2 = zzaVar2 == null ? "MD5" : zzdl.zzg(zzaVar2);
        zzai.zza zzaVar3 = map.get(awl);
        String strZzg3 = zzaVar3 == null ? "text" : zzdl.zzg(zzaVar3);
        if ("text".equals(strZzg3)) {
            bArrZznn = strZzg.getBytes();
        } else {
            if (!"base16".equals(strZzg3)) {
                String strValueOf = String.valueOf(strZzg3);
                zzbn.e(strValueOf.length() != 0 ? "Hash: unknown input format: ".concat(strValueOf) : new String("Hash: unknown input format: "));
                return zzdl.zzcdq();
            }
            bArrZznn = zzk.zznn(strZzg);
        }
        try {
            return zzdl.zzar(zzk.zzp(zzf(strZzg2, bArrZznn)));
        } catch (NoSuchAlgorithmException e) {
            String strValueOf2 = String.valueOf(strZzg2);
            zzbn.e(strValueOf2.length() != 0 ? "Hash: unknown algorithm: ".concat(strValueOf2) : new String("Hash: unknown algorithm: "));
            return zzdl.zzcdq();
        }
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
