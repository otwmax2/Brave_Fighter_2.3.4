package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes.dex */
class zzcm extends zzdg {
    private static final String ID = com.google.android.gms.internal.zzaf.REGEX.toString();
    private static final String axv = com.google.android.gms.internal.zzag.IGNORE_CASE.toString();

    public zzcm() {
        super(ID);
    }

    @Override // com.google.android.gms.tagmanager.zzdg
    protected boolean zza(String str, String str2, Map<String, zzai.zza> map) {
        try {
            return Pattern.compile(str2, zzdl.zzk(map.get(axv)).booleanValue() ? 66 : 64).matcher(str).find();
        } catch (PatternSyntaxException e) {
            return false;
        }
    }
}
