package com.facebook.ads.internal.p.b.a;

import android.text.TextUtils;
import com.facebook.ads.internal.p.b.m;

/* JADX INFO: loaded from: classes.dex */
public class f implements c {
    private String b(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return (iLastIndexOf == -1 || iLastIndexOf <= str.lastIndexOf(47) || (iLastIndexOf + 2) + 4 <= str.length()) ? "" : str.substring(iLastIndexOf + 1, str.length());
    }

    @Override // com.facebook.ads.internal.p.b.a.c
    public String a(String str) {
        String strB = b(str);
        String strD = m.d(str);
        return TextUtils.isEmpty(strB) ? strD : strD + "." + strB;
    }
}
