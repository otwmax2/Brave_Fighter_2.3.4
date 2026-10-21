package com.google.android.gms.internal;

import android.support.v7.internal.widget.ActivityChooserView;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.AnalyticsEvents;
import java.util.HashMap;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class zzmi extends com.google.android.gms.analytics.zzg<zzmi> {
    private String zzcvs;
    private int zzcvt;
    private int zzcvu;
    private String zzcvv;
    private String zzcvw;
    private boolean zzcvx;
    private boolean zzcvy;

    public zzmi() {
        this(false);
    }

    public zzmi(boolean z) {
        this(z, zzyd());
    }

    public zzmi(boolean z, int i) {
        com.google.android.gms.common.internal.zzab.zzgd(i);
        this.zzcvt = i;
        this.zzcvy = z;
    }

    static int zzyd() {
        UUID uuidRandomUUID = UUID.randomUUID();
        int leastSignificantBits = (int) (uuidRandomUUID.getLeastSignificantBits() & 2147483647L);
        if (leastSignificantBits != 0) {
            return leastSignificantBits;
        }
        int mostSignificantBits = (int) (uuidRandomUUID.getMostSignificantBits() & 2147483647L);
        if (mostSignificantBits != 0) {
            return mostSignificantBits;
        }
        Log.e("GAv4", "UUID.randomUUID() returned 0.");
        return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    private void zzyh() {
    }

    public void setScreenName(String str) {
        zzyh();
        this.zzcvs = str;
    }

    public String toString() {
        HashMap map = new HashMap();
        map.put("screenName", this.zzcvs);
        map.put("interstitial", Boolean.valueOf(this.zzcvx));
        map.put(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_AUTOMATIC, Boolean.valueOf(this.zzcvy));
        map.put("screenId", Integer.valueOf(this.zzcvt));
        map.put("referrerScreenId", Integer.valueOf(this.zzcvu));
        map.put("referrerScreenName", this.zzcvv);
        map.put("referrerUri", this.zzcvw);
        return zzk(map);
    }

    @Override // com.google.android.gms.analytics.zzg
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void zzb(zzmi zzmiVar) {
        if (!TextUtils.isEmpty(this.zzcvs)) {
            zzmiVar.setScreenName(this.zzcvs);
        }
        if (this.zzcvt != 0) {
            zzmiVar.zzbu(this.zzcvt);
        }
        if (this.zzcvu != 0) {
            zzmiVar.zzbv(this.zzcvu);
        }
        if (!TextUtils.isEmpty(this.zzcvv)) {
            zzmiVar.zzea(this.zzcvv);
        }
        if (!TextUtils.isEmpty(this.zzcvw)) {
            zzmiVar.zzeb(this.zzcvw);
        }
        if (this.zzcvx) {
            zzmiVar.zzar(this.zzcvx);
        }
        if (this.zzcvy) {
            zzmiVar.zzaq(this.zzcvy);
        }
    }

    public void zzaq(boolean z) {
        zzyh();
        this.zzcvy = z;
    }

    public void zzar(boolean z) {
        zzyh();
        this.zzcvx = z;
    }

    public void zzbu(int i) {
        zzyh();
        this.zzcvt = i;
    }

    public void zzbv(int i) {
        zzyh();
        this.zzcvu = i;
    }

    public void zzea(String str) {
        zzyh();
        this.zzcvv = str;
    }

    public void zzeb(String str) {
        zzyh();
        if (TextUtils.isEmpty(str)) {
            this.zzcvw = null;
        } else {
            this.zzcvw = str;
        }
    }

    public String zzye() {
        return this.zzcvs;
    }

    public int zzyf() {
        return this.zzcvt;
    }

    public String zzyg() {
        return this.zzcvw;
    }
}
