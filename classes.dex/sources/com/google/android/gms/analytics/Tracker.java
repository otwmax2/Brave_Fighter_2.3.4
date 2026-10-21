package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.support.v7.internal.widget.ActivityChooserView;
import android.text.TextUtils;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.internal.zzad;
import com.google.android.gms.analytics.internal.zzan;
import com.google.android.gms.analytics.internal.zzao;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzly;
import com.ironsource.sdk.constants.Constants;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class Tracker extends com.google.android.gms.analytics.internal.zzd {
    private final Map<String, String> zzbee;
    private boolean zzctw;
    private final Map<String, String> zzctx;
    private final zzad zzcty;
    private final zza zzctz;
    private ExceptionReporter zzcua;
    private zzan zzcub;

    private class zza extends com.google.android.gms.analytics.internal.zzd implements GoogleAnalytics.zza {
        private boolean zzcuk;
        private int zzcul;
        private long zzcum;
        private boolean zzcun;
        private long zzcuo;

        protected zza(com.google.android.gms.analytics.internal.zzf zzfVar) {
            super(zzfVar);
            this.zzcum = -1L;
        }

        private void zzwz() {
            if (this.zzcum >= 0 || this.zzcuk) {
                zzvx().zza(Tracker.this.zzctz);
            } else {
                zzvx().zzb(Tracker.this.zzctz);
            }
        }

        public void enableAutoActivityTracking(boolean z) {
            this.zzcuk = z;
            zzwz();
        }

        public void setSessionTimeout(long j) {
            this.zzcum = j;
            zzwz();
        }

        @Override // com.google.android.gms.analytics.GoogleAnalytics.zza
        public void zzo(Activity activity) {
            if (this.zzcul == 0 && zzxa()) {
                this.zzcun = true;
            }
            this.zzcul++;
            if (this.zzcuk) {
                Intent intent = activity.getIntent();
                if (intent != null) {
                    Tracker.this.setCampaignParamsOnNextHit(intent.getData());
                }
                HashMap map = new HashMap();
                map.put("&t", "screenview");
                Tracker.this.set("&cd", Tracker.this.zzcub != null ? Tracker.this.zzcub.zzr(activity) : activity.getClass().getCanonicalName());
                if (TextUtils.isEmpty((CharSequence) map.get("&dr"))) {
                    String strZzq = Tracker.zzq(activity);
                    if (!TextUtils.isEmpty(strZzq)) {
                        map.put("&dr", strZzq);
                    }
                }
                Tracker.this.send(map);
            }
        }

        @Override // com.google.android.gms.analytics.GoogleAnalytics.zza
        public void zzp(Activity activity) {
            this.zzcul--;
            this.zzcul = Math.max(0, this.zzcul);
            if (this.zzcul == 0) {
                this.zzcuo = zzyw().elapsedRealtime();
            }
        }

        @Override // com.google.android.gms.analytics.internal.zzd
        protected void zzwv() {
        }

        public synchronized boolean zzwy() {
            boolean z;
            z = this.zzcun;
            this.zzcun = false;
            return z;
        }

        boolean zzxa() {
            return zzyw().elapsedRealtime() >= this.zzcuo + Math.max(1000L, this.zzcum);
        }
    }

    Tracker(com.google.android.gms.analytics.internal.zzf zzfVar, String str, zzad zzadVar) {
        super(zzfVar);
        this.zzbee = new HashMap();
        this.zzctx = new HashMap();
        if (str != null) {
            this.zzbee.put("&tid", str);
        }
        this.zzbee.put("useSecure", "1");
        this.zzbee.put("&a", Integer.toString(new Random().nextInt(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) + 1));
        if (zzadVar == null) {
            this.zzcty = new zzad("tracking", zzyw());
        } else {
            this.zzcty = zzadVar;
        }
        this.zzctz = new zza(zzfVar);
    }

    private static boolean zza(Map.Entry<String, String> entry) {
        String key = entry.getKey();
        entry.getValue();
        return key.startsWith(Constants.RequestParameters.AMPERSAND) && key.length() >= 2;
    }

    private static String zzb(Map.Entry<String, String> entry) {
        if (zza(entry)) {
            return entry.getKey().substring(1);
        }
        return null;
    }

    private static void zzb(Map<String, String> map, Map<String, String> map2) {
        zzab.zzaa(map2);
        if (map == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String strZzb = zzb(entry);
            if (strZzb != null) {
                map2.put(strZzb, entry.getValue());
            }
        }
    }

    private static void zzc(Map<String, String> map, Map<String, String> map2) {
        zzab.zzaa(map2);
        if (map == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String strZzb = zzb(entry);
            if (strZzb != null && !map2.containsKey(strZzb)) {
                map2.put(strZzb, entry.getValue());
            }
        }
    }

    static String zzq(Activity activity) {
        zzab.zzaa(activity);
        Intent intent = activity.getIntent();
        if (intent == null) {
            return null;
        }
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        if (TextUtils.isEmpty(stringExtra)) {
            return null;
        }
        return stringExtra;
    }

    private boolean zzww() {
        return this.zzcua != null;
    }

    public void enableAdvertisingIdCollection(boolean z) {
        this.zzctw = z;
    }

    public void enableAutoActivityTracking(boolean z) {
        this.zzctz.enableAutoActivityTracking(z);
    }

    public void enableExceptionReporting(boolean z) {
        synchronized (this) {
            if (zzww() == z) {
                return;
            }
            if (z) {
                this.zzcua = new ExceptionReporter(this, Thread.getDefaultUncaughtExceptionHandler(), getContext());
                Thread.setDefaultUncaughtExceptionHandler(this.zzcua);
                zzei("Uncaught exceptions will be reported to Google Analytics");
            } else {
                Thread.setDefaultUncaughtExceptionHandler(this.zzcua.zzvy());
                zzei("Uncaught exceptions will not be reported to Google Analytics");
            }
        }
    }

    public String get(String str) {
        zzzg();
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.zzbee.containsKey(str)) {
            return this.zzbee.get(str);
        }
        if (str.equals("&ul")) {
            return zzao.zza(Locale.getDefault());
        }
        if (str.equals("&cid")) {
            return zzzc().zzaav();
        }
        if (str.equals("&sr")) {
            return zzzf().zzacl();
        }
        if (str.equals("&aid")) {
            return zzze().zzaad().zzsi();
        }
        if (str.equals("&an")) {
            return zzze().zzaad().zzxb();
        }
        if (str.equals("&av")) {
            return zzze().zzaad().zzxc();
        }
        if (str.equals("&aiid")) {
            return zzze().zzaad().zzxd();
        }
        return null;
    }

    public void send(Map<String, String> map) {
        final long jCurrentTimeMillis = zzyw().currentTimeMillis();
        if (zzvx().getAppOptOut()) {
            zzej("AppOptOut is set to true. Not sending Google Analytics hit");
            return;
        }
        final boolean zIsDryRunEnabled = zzvx().isDryRunEnabled();
        final HashMap map2 = new HashMap();
        zzb(this.zzbee, map2);
        zzb(map, map2);
        final boolean zZzi = zzao.zzi(this.zzbee.get("useSecure"), true);
        zzc(this.zzctx, map2);
        this.zzctx.clear();
        final String str = map2.get("t");
        if (TextUtils.isEmpty(str)) {
            zzyx().zzh(map2, "Missing hit type parameter");
            return;
        }
        final String str2 = map2.get("tid");
        if (TextUtils.isEmpty(str2)) {
            zzyx().zzh(map2, "Missing tracking id parameter");
            return;
        }
        final boolean zZzwx = zzwx();
        synchronized (this) {
            if ("screenview".equalsIgnoreCase(str) || "pageview".equalsIgnoreCase(str) || "appview".equalsIgnoreCase(str) || TextUtils.isEmpty(str)) {
                int i = Integer.parseInt(this.zzbee.get("&a")) + 1;
                if (i >= Integer.MAX_VALUE) {
                    i = 1;
                }
                this.zzbee.put("&a", Integer.toString(i));
            }
        }
        zzyz().zzf(new Runnable() { // from class: com.google.android.gms.analytics.Tracker.1
            @Override // java.lang.Runnable
            public void run() {
                if (Tracker.this.zzctz.zzwy()) {
                    map2.put("sc", "start");
                }
                zzao.zzd(map2, "cid", Tracker.this.zzvx().zzwb());
                String str3 = (String) map2.get("sf");
                if (str3 != null) {
                    double dZza = zzao.zza(str3, 100.0d);
                    if (zzao.zza(dZza, (String) map2.get("cid"))) {
                        Tracker.this.zzb("Sampling enabled. Hit sampled out. sample rate", Double.valueOf(dZza));
                        return;
                    }
                }
                com.google.android.gms.analytics.internal.zza zzaVarZzzd = Tracker.this.zzzd();
                if (zZzwx) {
                    zzao.zzb((Map<String, String>) map2, "ate", zzaVarZzzd.zzxz());
                    zzao.zzc(map2, "adid", zzaVarZzzd.zzyk());
                } else {
                    map2.remove("ate");
                    map2.remove("adid");
                }
                zzly zzlyVarZzaad = Tracker.this.zzze().zzaad();
                zzao.zzc(map2, "an", zzlyVarZzaad.zzxb());
                zzao.zzc(map2, "av", zzlyVarZzaad.zzxc());
                zzao.zzc(map2, "aid", zzlyVarZzaad.zzsi());
                zzao.zzc(map2, "aiid", zzlyVarZzaad.zzxd());
                map2.put("v", "1");
                map2.put("_v", com.google.android.gms.analytics.internal.zze.zzcwu);
                zzao.zzc(map2, "ul", Tracker.this.zzzf().zzack().getLanguage());
                zzao.zzc(map2, "sr", Tracker.this.zzzf().zzacl());
                if (!(str.equals("transaction") || str.equals("item")) && !Tracker.this.zzcty.zzade()) {
                    Tracker.this.zzyx().zzh(map2, "Too many hits sent too quickly, rate limiting invoked");
                    return;
                }
                long jZzez = zzao.zzez((String) map2.get("ht"));
                if (jZzez == 0) {
                    jZzez = jCurrentTimeMillis;
                }
                if (zIsDryRunEnabled) {
                    Tracker.this.zzyx().zzc("Dry run enabled. Would have sent hit", new com.google.android.gms.analytics.internal.zzab(Tracker.this, map2, jZzez, zZzi));
                    return;
                }
                String str4 = (String) map2.get("cid");
                HashMap map3 = new HashMap();
                zzao.zza(map3, "uid", map2);
                zzao.zza(map3, "an", map2);
                zzao.zza(map3, "aid", map2);
                zzao.zza(map3, "av", map2);
                zzao.zza(map3, "aiid", map2);
                map2.put("_s", String.valueOf(Tracker.this.zzwd().zza(new com.google.android.gms.analytics.internal.zzh(0L, str4, str2, TextUtils.isEmpty((CharSequence) map2.get("adid")) ? false : true, 0L, map3))));
                Tracker.this.zzwd().zza(new com.google.android.gms.analytics.internal.zzab(Tracker.this, map2, jZzez, zZzi));
            }
        });
    }

    public void set(String str, String str2) {
        zzab.zzb(str, "Key should be non-null");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.zzbee.put(str, str2);
    }

    public void setAnonymizeIp(boolean z) {
        set("&aip", zzao.zzat(z));
    }

    public void setAppId(String str) {
        set("&aid", str);
    }

    public void setAppInstallerId(String str) {
        set("&aiid", str);
    }

    public void setAppName(String str) {
        set("&an", str);
    }

    public void setAppVersion(String str) {
        set("&av", str);
    }

    public void setCampaignParamsOnNextHit(Uri uri) {
        if (uri == null || uri.isOpaque()) {
            return;
        }
        String queryParameter = uri.getQueryParameter("referrer");
        if (TextUtils.isEmpty(queryParameter)) {
            return;
        }
        String strValueOf = String.valueOf(queryParameter);
        Uri uri2 = Uri.parse(strValueOf.length() != 0 ? "http://hostname/?".concat(strValueOf) : new String("http://hostname/?"));
        String queryParameter2 = uri2.getQueryParameter("utm_id");
        if (queryParameter2 != null) {
            this.zzctx.put("&ci", queryParameter2);
        }
        String queryParameter3 = uri2.getQueryParameter("anid");
        if (queryParameter3 != null) {
            this.zzctx.put("&anid", queryParameter3);
        }
        String queryParameter4 = uri2.getQueryParameter("utm_campaign");
        if (queryParameter4 != null) {
            this.zzctx.put("&cn", queryParameter4);
        }
        String queryParameter5 = uri2.getQueryParameter("utm_content");
        if (queryParameter5 != null) {
            this.zzctx.put("&cc", queryParameter5);
        }
        String queryParameter6 = uri2.getQueryParameter("utm_medium");
        if (queryParameter6 != null) {
            this.zzctx.put("&cm", queryParameter6);
        }
        String queryParameter7 = uri2.getQueryParameter("utm_source");
        if (queryParameter7 != null) {
            this.zzctx.put("&cs", queryParameter7);
        }
        String queryParameter8 = uri2.getQueryParameter("utm_term");
        if (queryParameter8 != null) {
            this.zzctx.put("&ck", queryParameter8);
        }
        String queryParameter9 = uri2.getQueryParameter("dclid");
        if (queryParameter9 != null) {
            this.zzctx.put("&dclid", queryParameter9);
        }
        String queryParameter10 = uri2.getQueryParameter("gclid");
        if (queryParameter10 != null) {
            this.zzctx.put("&gclid", queryParameter10);
        }
        String queryParameter11 = uri2.getQueryParameter("aclid");
        if (queryParameter11 != null) {
            this.zzctx.put("&aclid", queryParameter11);
        }
    }

    public void setClientId(String str) {
        set("&cid", str);
    }

    public void setEncoding(String str) {
        set("&de", str);
    }

    public void setHostname(String str) {
        set("&dh", str);
    }

    public void setLanguage(String str) {
        set("&ul", str);
    }

    public void setLocation(String str) {
        set("&dl", str);
    }

    public void setPage(String str) {
        set("&dp", str);
    }

    public void setReferrer(String str) {
        set("&dr", str);
    }

    public void setSampleRate(double d) {
        set("&sf", Double.toString(d));
    }

    public void setScreenColors(String str) {
        set("&sd", str);
    }

    public void setScreenName(String str) {
        set("&cd", str);
    }

    public void setScreenResolution(int i, int i2) {
        if (i >= 0 || i2 >= 0) {
            set("&sr", new StringBuilder(23).append(i).append("x").append(i2).toString());
        } else {
            zzel("Invalid width or height. The values should be non-negative.");
        }
    }

    public void setSessionTimeout(long j) {
        this.zzctz.setSessionTimeout(1000 * j);
    }

    public void setTitle(String str) {
        set("&dt", str);
    }

    public void setUseSecure(boolean z) {
        set("useSecure", zzao.zzat(z));
    }

    public void setViewportSize(String str) {
        set("&vp", str);
    }

    void zza(zzan zzanVar) {
        zzei("Loading Tracker config values");
        this.zzcub = zzanVar;
        if (this.zzcub.zzaeb()) {
            String trackingId = this.zzcub.getTrackingId();
            set("&tid", trackingId);
            zza("trackingId loaded", trackingId);
        }
        if (this.zzcub.zzaec()) {
            String string = Double.toString(this.zzcub.zzaed());
            set("&sf", string);
            zza("Sample frequency loaded", string);
        }
        if (this.zzcub.zzaee()) {
            int sessionTimeout = this.zzcub.getSessionTimeout();
            setSessionTimeout(sessionTimeout);
            zza("Session timeout loaded", Integer.valueOf(sessionTimeout));
        }
        if (this.zzcub.zzaef()) {
            boolean zZzaeg = this.zzcub.zzaeg();
            enableAutoActivityTracking(zZzaeg);
            zza("Auto activity tracking loaded", Boolean.valueOf(zZzaeg));
        }
        if (this.zzcub.zzaeh()) {
            boolean zZzaei = this.zzcub.zzaei();
            if (zZzaei) {
                set("&aip", "1");
            }
            zza("Anonymize ip loaded", Boolean.valueOf(zZzaei));
        }
        enableExceptionReporting(this.zzcub.zzaej());
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzwv() {
        this.zzctz.initialize();
        String strZzxb = zzwe().zzxb();
        if (strZzxb != null) {
            set("&an", strZzxb);
        }
        String strZzxc = zzwe().zzxc();
        if (strZzxc != null) {
            set("&av", strZzxc);
        }
    }

    boolean zzwx() {
        return this.zzctw;
    }
}
