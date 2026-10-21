package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.R;

/* JADX INFO: loaded from: classes.dex */
public class zzai {
    private final Resources zc;
    private final String zd;

    public zzai(Context context) {
        zzab.zzaa(context);
        this.zc = context.getResources();
        this.zd = this.zc.getResourcePackageName(R.string.common_google_play_services_unknown_issue);
    }

    public String getString(String str) {
        int identifier = this.zc.getIdentifier(str, "string", this.zd);
        if (identifier == 0) {
            return null;
        }
        return this.zc.getString(identifier);
    }
}
