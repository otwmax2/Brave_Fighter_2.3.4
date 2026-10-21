package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes.dex */
class zzcl extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.REGEX_GROUP.toString();
    private static final String axt = com.google.android.gms.internal.zzag.ARG0.toString();
    private static final String axu = com.google.android.gms.internal.zzag.ARG1.toString();
    private static final String axv = com.google.android.gms.internal.zzag.IGNORE_CASE.toString();
    private static final String axw = com.google.android.gms.internal.zzag.GROUP.toString();

    public zzcl() {
        super(ID, axt, axu);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        int iIntValue;
        zzai.zza zzaVar = map.get(axt);
        zzai.zza zzaVar2 = map.get(axu);
        if (zzaVar == null || zzaVar == zzdl.zzcdq() || zzaVar2 == null || zzaVar2 == zzdl.zzcdq()) {
            return zzdl.zzcdq();
        }
        int i = zzdl.zzk(map.get(axv)).booleanValue() ? 66 : 64;
        zzai.zza zzaVar3 = map.get(axw);
        if (zzaVar3 != null) {
            Long lZzi = zzdl.zzi(zzaVar3);
            if (lZzi == zzdl.zzcdl()) {
                return zzdl.zzcdq();
            }
            iIntValue = lZzi.intValue();
            if (iIntValue < 0) {
                return zzdl.zzcdq();
            }
        } else {
            iIntValue = 1;
        }
        try {
            String strZzg = zzdl.zzg(zzaVar);
            String strGroup = null;
            Matcher matcher = Pattern.compile(zzdl.zzg(zzaVar2), i).matcher(strZzg);
            if (matcher.find() && matcher.groupCount() >= iIntValue) {
                strGroup = matcher.group(iIntValue);
            }
            return strGroup == null ? zzdl.zzcdq() : zzdl.zzar(strGroup);
        } catch (PatternSyntaxException e) {
            return zzdl.zzcdq();
        }
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
