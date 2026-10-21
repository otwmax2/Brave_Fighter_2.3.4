package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class zzbi extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.LANGUAGE.toString();

    public zzbi() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        String language;
        Locale locale = Locale.getDefault();
        if (locale != null && (language = locale.getLanguage()) != null) {
            return zzdl.zzar(language.toLowerCase());
        }
        return zzdl.zzcdq();
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public /* bridge */ /* synthetic */ String zzcbl() {
        return super.zzcbl();
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public /* bridge */ /* synthetic */ Set zzcbm() {
        return super.zzcbm();
    }
}
