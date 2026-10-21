package com.google.android.gms.internal;

import com.ironsource.sdk.constants.Constants;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@zzir
public class zzhf {
    private final zzll zzbgj;
    private final boolean zzbqw;
    private final String zzbqx;

    public zzhf(zzll zzllVar, Map<String, String> map) {
        this.zzbgj = zzllVar;
        this.zzbqx = map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.zzbqw = Boolean.parseBoolean(map.get("allowOrientationChange"));
        } else {
            this.zzbqw = true;
        }
    }

    public void execute() {
        if (this.zzbgj == null) {
            zzkh.zzcy("AdWebView is null");
        } else {
            this.zzbgj.setRequestedOrientation(Constants.ParametersKeys.ORIENTATION_PORTRAIT.equalsIgnoreCase(this.zzbqx) ? com.google.android.gms.ads.internal.zzu.zzfs().zztl() : Constants.ParametersKeys.ORIENTATION_LANDSCAPE.equalsIgnoreCase(this.zzbqx) ? com.google.android.gms.ads.internal.zzu.zzfs().zztk() : this.zzbqw ? -1 : com.google.android.gms.ads.internal.zzu.zzfs().zztm());
        }
    }
}
