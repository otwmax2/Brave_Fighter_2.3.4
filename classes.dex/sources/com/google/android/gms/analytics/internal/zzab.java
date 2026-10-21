package com.google.android.gms.analytics.internal;

import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.ironsource.sdk.constants.Constants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class zzab {
    private final List<Command> O;
    private final long P;
    private final long Q;
    private final int R;
    private final boolean S;
    private final String T;
    private final Map<String, String> zzbee;

    public zzab(zzc zzcVar, Map<String, String> map, long j, boolean z) {
        this(zzcVar, map, j, z, 0L, 0, null);
    }

    public zzab(zzc zzcVar, Map<String, String> map, long j, boolean z, long j2, int i) {
        this(zzcVar, map, j, z, j2, i, null);
    }

    public zzab(zzc zzcVar, Map<String, String> map, long j, boolean z, long j2, int i, List<Command> list) {
        String strZza;
        String strZza2;
        com.google.android.gms.common.internal.zzab.zzaa(zzcVar);
        com.google.android.gms.common.internal.zzab.zzaa(map);
        this.Q = j;
        this.S = z;
        this.P = j2;
        this.R = i;
        this.O = list != null ? list : Collections.emptyList();
        this.T = zzr(list);
        HashMap map2 = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (zzm(entry.getKey()) && (strZza2 = zza(zzcVar, entry.getKey())) != null) {
                map2.put(strZza2, zzb(zzcVar, entry.getValue()));
            }
        }
        for (Map.Entry<String, String> entry2 : map.entrySet()) {
            if (!zzm(entry2.getKey()) && (strZza = zza(zzcVar, entry2.getKey())) != null) {
                map2.put(strZza, zzb(zzcVar, entry2.getValue()));
            }
        }
        if (!TextUtils.isEmpty(this.T)) {
            zzao.zzc(map2, "_v", this.T);
            if (this.T.equals("ma4.0.0") || this.T.equals("ma4.0.1")) {
                map2.remove("adid");
            }
        }
        this.zzbee = Collections.unmodifiableMap(map2);
    }

    public static zzab zza(zzc zzcVar, zzab zzabVar, Map<String, String> map) {
        return new zzab(zzcVar, map, zzabVar.zzacz(), zzabVar.zzadb(), zzabVar.zzacy(), zzabVar.zzacx(), zzabVar.zzada());
    }

    private static String zza(zzc zzcVar, Object obj) {
        if (obj == null) {
            return null;
        }
        String string = obj.toString();
        if (string.startsWith(Constants.RequestParameters.AMPERSAND)) {
            string = string.substring(1);
        }
        int length = string.length();
        if (length > 256) {
            string = string.substring(0, 256);
            zzcVar.zzc("Hit param name is too long and will be trimmed", Integer.valueOf(length), string);
        }
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string;
    }

    private static String zzb(zzc zzcVar, Object obj) {
        String string = obj == null ? "" : obj.toString();
        int length = string.length();
        if (length <= 8192) {
            return string;
        }
        String strSubstring = string.substring(0, 8192);
        zzcVar.zzc("Hit param value is too long and will be trimmed", Integer.valueOf(length), strSubstring);
        return strSubstring;
    }

    private static boolean zzm(Object obj) {
        if (obj == null) {
            return false;
        }
        return obj.toString().startsWith(Constants.RequestParameters.AMPERSAND);
    }

    private static String zzr(List<Command> list) {
        String value;
        if (list != null) {
            for (Command command : list) {
                if ("appendVersion".equals(command.getId())) {
                    value = command.getValue();
                    break;
                }
            }
            value = null;
        } else {
            value = null;
        }
        if (TextUtils.isEmpty(value)) {
            return null;
        }
        return value;
    }

    private String zzs(String str, String str2) {
        com.google.android.gms.common.internal.zzab.zzhs(str);
        com.google.android.gms.common.internal.zzab.zzb(!str.startsWith(Constants.RequestParameters.AMPERSAND), "Short param name required");
        String str3 = this.zzbee.get(str);
        return str3 != null ? str3 : str2;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("ht=").append(this.Q);
        if (this.P != 0) {
            stringBuffer.append(", dbId=").append(this.P);
        }
        if (this.R != 0) {
            stringBuffer.append(", appUID=").append(this.R);
        }
        ArrayList<String> arrayList = new ArrayList(this.zzbee.keySet());
        Collections.sort(arrayList);
        for (String str : arrayList) {
            stringBuffer.append(", ");
            stringBuffer.append(str);
            stringBuffer.append(Constants.RequestParameters.EQUAL);
            stringBuffer.append(this.zzbee.get(str));
        }
        return stringBuffer.toString();
    }

    public int zzacx() {
        return this.R;
    }

    public long zzacy() {
        return this.P;
    }

    public long zzacz() {
        return this.Q;
    }

    public List<Command> zzada() {
        return this.O;
    }

    public boolean zzadb() {
        return this.S;
    }

    public long zzadc() {
        return zzao.zzez(zzs("_s", AppEventsConstants.EVENT_PARAM_VALUE_NO));
    }

    public String zzadd() {
        return zzs("_m", "");
    }

    public Map<String, String> zzm() {
        return this.zzbee;
    }
}
