package com.google.android.gms.analytics.internal;

import android.util.Log;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class zzaf extends zzd {
    private static String aa = "3";
    private static String ab = "01VDIWEA?";
    private static zzaf ac;

    public zzaf(zzf zzfVar) {
        super(zzfVar);
    }

    public static zzaf zzadf() {
        return ac;
    }

    public void zza(int i, String str, Object obj, Object obj2, Object obj3) {
        String str2 = zzy.zzczr.get();
        if (Log.isLoggable(str2, i)) {
            Log.println(i, str2, zzc(str, obj, obj2, obj3));
        }
        if (i >= 5) {
            zzb(i, str, obj, obj2, obj3);
        }
    }

    public void zza(zzab zzabVar, String str) {
        if (str == null) {
            str = "no reason provided";
        }
        String string = zzabVar != null ? zzabVar.toString() : "no hit data";
        String strValueOf = String.valueOf(str);
        zzd(strValueOf.length() != 0 ? "Discarding hit. ".concat(strValueOf) : new String("Discarding hit. "), string);
    }

    public synchronized void zzb(int i, String str, Object obj, Object obj2, Object obj3) {
        synchronized (this) {
            com.google.android.gms.common.internal.zzab.zzaa(str);
            int i2 = i >= 0 ? i : 0;
            int length = i2 >= ab.length() ? ab.length() - 1 : i2;
            char c = zzyy().zzabd() ? zzyy().zzabc() ? 'P' : 'C' : zzyy().zzabc() ? 'p' : 'c';
            String str2 = aa;
            char cCharAt = ab.charAt(length);
            String str3 = zze.VERSION;
            String strValueOf = String.valueOf(zzc(str, zzn(obj), zzn(obj2), zzn(obj3)));
            String string = new StringBuilder(String.valueOf(str2).length() + 3 + String.valueOf(str3).length() + String.valueOf(strValueOf).length()).append(str2).append(cCharAt).append(c).append(str3).append(":").append(strValueOf).toString();
            if (string.length() > 1024) {
                string = string.substring(0, 1024);
            }
            zzai zzaiVarZzzl = zzyu().zzzl();
            if (zzaiVarZzzl != null) {
                zzaiVarZzzl.zzads().zzew(string);
            }
        }
    }

    public void zzh(Map<String, String> map, String str) {
        String string;
        if (str == null) {
            str = "no reason provided";
        }
        if (map != null) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (sb.length() > 0) {
                    sb.append(',');
                }
                sb.append(entry.getKey());
                sb.append('=');
                sb.append(entry.getValue());
            }
            string = sb.toString();
        } else {
            string = "no hit data";
        }
        String strValueOf = String.valueOf(str);
        zzd(strValueOf.length() != 0 ? "Discarding hit. ".concat(strValueOf) : new String("Discarding hit. "), string);
    }

    protected String zzn(Object obj) {
        if (obj == null) {
            return null;
        }
        Object l = obj instanceof Integer ? new Long(((Integer) obj).intValue()) : obj;
        if (!(l instanceof Long)) {
            return l instanceof Boolean ? String.valueOf(l) : l instanceof Throwable ? l.getClass().getCanonicalName() : "-";
        }
        if (Math.abs(((Long) l).longValue()) < 100) {
            return String.valueOf(l);
        }
        String str = String.valueOf(l).charAt(0) == '-' ? "-" : "";
        String strValueOf = String.valueOf(Math.abs(((Long) l).longValue()));
        return str + Math.round(Math.pow(10.0d, strValueOf.length() - 1)) + "..." + str + Math.round(Math.pow(10.0d, strValueOf.length()) - 1.0d);
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzwv() {
        synchronized (zzaf.class) {
            ac = this;
        }
    }
}
