package com.google.android.gms.analytics.internal;

import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class zzr {
    private final zzf zzcrq;
    private volatile Boolean zzczf;
    private String zzczg;
    private Set<Integer> zzczh;

    protected zzr(zzf zzfVar) {
        com.google.android.gms.common.internal.zzab.zzaa(zzfVar);
        this.zzcrq = zzfVar;
    }

    public boolean zzabc() {
        return false;
    }

    public boolean zzabd() {
        if (this.zzczf == null) {
            synchronized (this) {
                if (this.zzczf == null) {
                    ApplicationInfo applicationInfo = this.zzcrq.getContext().getApplicationInfo();
                    String strZzavv = com.google.android.gms.common.util.zzt.zzavv();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.zzczf = Boolean.valueOf(str != null && str.equals(strZzavv));
                    }
                    if ((this.zzczf == null || !this.zzczf.booleanValue()) && "com.google.android.gms.analytics".equals(strZzavv)) {
                        this.zzczf = Boolean.TRUE;
                    }
                    if (this.zzczf == null) {
                        this.zzczf = Boolean.TRUE;
                        this.zzcrq.zzyx().zzem("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.zzczf.booleanValue();
    }

    public boolean zzabe() {
        return zzy.zzczq.get().booleanValue();
    }

    public int zzabf() {
        return zzy.j.get().intValue();
    }

    public int zzabg() {
        return zzy.n.get().intValue();
    }

    public int zzabh() {
        return zzy.o.get().intValue();
    }

    public int zzabi() {
        return zzy.p.get().intValue();
    }

    public long zzabj() {
        return zzy.zzczy.get().longValue();
    }

    public long zzabk() {
        return zzy.zzczx.get().longValue();
    }

    public long zzabl() {
        return zzy.b.get().longValue();
    }

    public long zzabm() {
        return zzy.c.get().longValue();
    }

    public int zzabn() {
        return zzy.d.get().intValue();
    }

    public int zzabo() {
        return zzy.e.get().intValue();
    }

    public long zzabp() {
        return zzy.r.get().intValue();
    }

    public String zzabq() {
        return zzy.g.get();
    }

    public String zzabr() {
        return zzy.f.get();
    }

    public String zzabs() {
        return zzy.h.get();
    }

    public String zzabt() {
        return zzy.i.get();
    }

    public zzm zzabu() {
        return zzm.zzer(zzy.k.get());
    }

    public zzo zzabv() {
        return zzo.zzes(zzy.l.get());
    }

    public Set<Integer> zzabw() {
        String str = zzy.q.get();
        if (this.zzczh == null || this.zzczg == null || !this.zzczg.equals(str)) {
            String[] strArrSplit = TextUtils.split(str, ",");
            HashSet hashSet = new HashSet();
            for (String str2 : strArrSplit) {
                try {
                    hashSet.add(Integer.valueOf(Integer.parseInt(str2)));
                } catch (NumberFormatException e) {
                }
            }
            this.zzczg = str;
            this.zzczh = hashSet;
        }
        return this.zzczh;
    }

    public long zzabx() {
        return zzy.B.get().longValue();
    }

    public long zzaby() {
        return zzy.C.get().longValue();
    }

    public long zzabz() {
        return zzy.F.get().longValue();
    }

    public int zzaca() {
        return zzy.zzczu.get().intValue();
    }

    public int zzacb() {
        return zzy.zzczw.get().intValue();
    }

    public String zzacc() {
        return "google_analytics_v4.db";
    }

    public String zzacd() {
        return "google_analytics2_v4.db";
    }

    public long zzace() {
        return 86400000L;
    }

    public int zzacf() {
        return zzy.t.get().intValue();
    }

    public int zzacg() {
        return zzy.u.get().intValue();
    }

    public long zzach() {
        return zzy.v.get().longValue();
    }

    public long zzaci() {
        return zzy.G.get().longValue();
    }
}
