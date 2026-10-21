package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import android.util.LogPrinter;
import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class zzd implements zzk {
    private static final Uri zzcsv;
    private final LogPrinter zzcsw = new LogPrinter(4, "GA/LogCatTransport");

    static {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(ShareConstants.MEDIA_URI);
        builder.authority("local");
        zzcsv = builder.build();
    }

    @Override // com.google.android.gms.analytics.zzk
    public void zzb(zze zzeVar) {
        ArrayList arrayList = new ArrayList(zzeVar.zzwg());
        Collections.sort(arrayList, new Comparator<zzg>() { // from class: com.google.android.gms.analytics.zzd.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
            public int compare(zzg zzgVar, zzg zzgVar2) {
                return zzgVar.getClass().getCanonicalName().compareTo(zzgVar2.getClass().getCanonicalName());
            }
        });
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String string = ((zzg) it.next()).toString();
            if (!TextUtils.isEmpty(string)) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(string);
            }
        }
        this.zzcsw.println(sb.toString());
    }

    @Override // com.google.android.gms.analytics.zzk
    public Uri zzvu() {
        return zzcsv;
    }
}
