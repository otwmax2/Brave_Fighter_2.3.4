package com.google.android.gms.analytics.internal;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Pair;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class zzai extends zzd {
    private SharedPreferences al;
    private long am;
    private long an;
    private final zza ao;

    public final class zza {
        private final long ap;
        private final String mName;

        private zza(String str, long j) {
            com.google.android.gms.common.internal.zzab.zzhs(str);
            com.google.android.gms.common.internal.zzab.zzbn(j > 0);
            this.mName = str;
            this.ap = j;
        }

        private void zzadt() {
            long jCurrentTimeMillis = zzai.this.zzyw().currentTimeMillis();
            SharedPreferences.Editor editorEdit = zzai.this.al.edit();
            editorEdit.remove(zzady());
            editorEdit.remove(zzadz());
            editorEdit.putLong(zzadx(), jCurrentTimeMillis);
            editorEdit.commit();
        }

        private long zzadu() {
            long jZzadw = zzadw();
            if (jZzadw == 0) {
                return 0L;
            }
            return Math.abs(jZzadw - zzai.this.zzyw().currentTimeMillis());
        }

        private long zzadw() {
            return zzai.this.al.getLong(zzadx(), 0L);
        }

        private String zzadx() {
            return String.valueOf(this.mName).concat(":start");
        }

        private String zzady() {
            return String.valueOf(this.mName).concat(":count");
        }

        public Pair<String, Long> zzadv() {
            long jZzadu = zzadu();
            if (jZzadu < this.ap) {
                return null;
            }
            if (jZzadu > this.ap * 2) {
                zzadt();
                return null;
            }
            String string = zzai.this.al.getString(zzadz(), null);
            long j = zzai.this.al.getLong(zzady(), 0L);
            zzadt();
            if (string == null || j <= 0) {
                return null;
            }
            return new Pair<>(string, Long.valueOf(j));
        }

        protected String zzadz() {
            return String.valueOf(this.mName).concat(":value");
        }

        public void zzew(String str) {
            if (zzadw() == 0) {
                zzadt();
            }
            if (str == null) {
                str = "";
            }
            synchronized (this) {
                long j = zzai.this.al.getLong(zzady(), 0L);
                if (j <= 0) {
                    SharedPreferences.Editor editorEdit = zzai.this.al.edit();
                    editorEdit.putString(zzadz(), str);
                    editorEdit.putLong(zzady(), 1L);
                    editorEdit.apply();
                    return;
                }
                boolean z = (UUID.randomUUID().getLeastSignificantBits() & Long.MAX_VALUE) < Long.MAX_VALUE / (j + 1);
                SharedPreferences.Editor editorEdit2 = zzai.this.al.edit();
                if (z) {
                    editorEdit2.putString(zzadz(), str);
                }
                editorEdit2.putLong(zzady(), j + 1);
                editorEdit2.apply();
            }
        }
    }

    protected zzai(zzf zzfVar) {
        super(zzfVar);
        this.an = -1L;
        this.ao = new zza("monitoring", zzyy().zzaci());
    }

    public long zzadn() {
        zzwu();
        zzzg();
        if (this.am == 0) {
            long j = this.al.getLong("first_run", 0L);
            if (j != 0) {
                this.am = j;
            } else {
                long jCurrentTimeMillis = zzyw().currentTimeMillis();
                SharedPreferences.Editor editorEdit = this.al.edit();
                editorEdit.putLong("first_run", jCurrentTimeMillis);
                if (!editorEdit.commit()) {
                    zzel("Failed to commit first run time");
                }
                this.am = jCurrentTimeMillis;
            }
        }
        return this.am;
    }

    public zzal zzado() {
        return new zzal(zzyw(), zzadn());
    }

    public long zzadp() {
        zzwu();
        zzzg();
        if (this.an == -1) {
            this.an = this.al.getLong("last_dispatch", 0L);
        }
        return this.an;
    }

    public void zzadq() {
        zzwu();
        zzzg();
        long jCurrentTimeMillis = zzyw().currentTimeMillis();
        SharedPreferences.Editor editorEdit = this.al.edit();
        editorEdit.putLong("last_dispatch", jCurrentTimeMillis);
        editorEdit.apply();
        this.an = jCurrentTimeMillis;
    }

    public String zzadr() {
        zzwu();
        zzzg();
        String string = this.al.getString("installation_campaign", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string;
    }

    public zza zzads() {
        return this.ao;
    }

    public void zzev(String str) {
        zzwu();
        zzzg();
        SharedPreferences.Editor editorEdit = this.al.edit();
        if (TextUtils.isEmpty(str)) {
            editorEdit.remove("installation_campaign");
        } else {
            editorEdit.putString("installation_campaign", str);
        }
        if (editorEdit.commit()) {
            return;
        }
        zzel("Failed to commit campaign data");
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzwv() {
        this.al = getContext().getSharedPreferences("com.google.android.gms.analytics.prefs", 0);
    }
}
