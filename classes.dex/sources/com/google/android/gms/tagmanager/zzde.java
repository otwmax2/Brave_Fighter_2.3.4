package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
class zzde implements zzac {
    private final zzb ayB;
    private final zza ayC;
    private final Context mContext;
    private final String zzbjj;

    public interface zza {
        void zza(zzar zzarVar);

        void zzb(zzar zzarVar);

        void zzc(zzar zzarVar);
    }

    interface zzb {
        HttpURLConnection zzd(URL url) throws IOException;
    }

    zzde(Context context, zza zzaVar) {
        this(new zzb() { // from class: com.google.android.gms.tagmanager.zzde.1
            @Override // com.google.android.gms.tagmanager.zzde.zzb
            public HttpURLConnection zzd(URL url) throws IOException {
                return (HttpURLConnection) url.openConnection();
            }
        }, context, zzaVar);
    }

    zzde(zzb zzbVar, Context context, zza zzaVar) {
        this.ayB = zzbVar;
        this.mContext = context.getApplicationContext();
        this.ayC = zzaVar;
        this.zzbjj = zza("GoogleTagManager", "4.00", Build.VERSION.RELEASE, zzc(Locale.getDefault()), Build.MODEL, Build.ID);
    }

    static String zzc(Locale locale) {
        if (locale == null || locale.getLanguage() == null || locale.getLanguage().length() == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(locale.getLanguage().toLowerCase());
        if (locale.getCountry() != null && locale.getCountry().length() != 0) {
            sb.append("-").append(locale.getCountry().toLowerCase());
        }
        return sb.toString();
    }

    String zza(String str, String str2, String str3, String str4, String str5, String str6) {
        return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", str, str2, str3, str4, str5, str6);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.tagmanager.zzac
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void zzai(java.util.List<com.google.android.gms.tagmanager.zzar> r12) throws java.lang.Throwable {
        /*
            r11 = this;
            r4 = 0
            int r0 = r12.size()
            r1 = 40
            int r6 = java.lang.Math.min(r0, r1)
            r1 = 1
            r5 = r4
        Ld:
            if (r5 >= r6) goto Lbb
            java.lang.Object r0 = r12.get(r5)
            com.google.android.gms.tagmanager.zzar r0 = (com.google.android.gms.tagmanager.zzar) r0
            java.net.URL r2 = r11.zzd(r0)
            if (r2 != 0) goto L2b
            java.lang.String r2 = "No destination: discarding hit."
            com.google.android.gms.tagmanager.zzbn.zzcy(r2)
            com.google.android.gms.tagmanager.zzde$zza r2 = r11.ayC
            r2.zzb(r0)
            r0 = r1
        L26:
            int r1 = r5 + 1
            r5 = r1
            r1 = r0
            goto Ld
        L2b:
            r3 = 0
            com.google.android.gms.tagmanager.zzde$zzb r7 = r11.ayB     // Catch: java.io.IOException -> Lbc
            java.net.HttpURLConnection r7 = r7.zzd(r2)     // Catch: java.io.IOException -> Lbc
            if (r1 == 0) goto L3a
            android.content.Context r2 = r11.mContext     // Catch: java.lang.Throwable -> Lc0
            com.google.android.gms.tagmanager.zzbs.zzeb(r2)     // Catch: java.lang.Throwable -> Lc0
            r1 = r4
        L3a:
            java.lang.String r2 = "User-Agent"
            java.lang.String r8 = r11.zzbjj     // Catch: java.lang.Throwable -> Lc0
            r7.setRequestProperty(r2, r8)     // Catch: java.lang.Throwable -> Lc0
            int r2 = r7.getResponseCode()     // Catch: java.lang.Throwable -> Lc0
            java.io.InputStream r3 = r7.getInputStream()     // Catch: java.lang.Throwable -> Lc0
            r8 = 200(0xc8, float:2.8E-43)
            if (r2 == r8) goto L74
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7a
            r9 = 25
            r8.<init>(r9)     // Catch: java.lang.Throwable -> L7a
            java.lang.String r9 = "Bad response: "
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch: java.lang.Throwable -> L7a
            java.lang.StringBuilder r2 = r8.append(r2)     // Catch: java.lang.Throwable -> L7a
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L7a
            com.google.android.gms.tagmanager.zzbn.zzcy(r2)     // Catch: java.lang.Throwable -> L7a
            com.google.android.gms.tagmanager.zzde$zza r2 = r11.ayC     // Catch: java.lang.Throwable -> L7a
            r2.zzc(r0)     // Catch: java.lang.Throwable -> L7a
        L6a:
            if (r3 == 0) goto L6f
            r3.close()     // Catch: java.io.IOException -> Lbc
        L6f:
            r7.disconnect()     // Catch: java.io.IOException -> Lbc
            r0 = r1
            goto L26
        L74:
            com.google.android.gms.tagmanager.zzde$zza r2 = r11.ayC     // Catch: java.lang.Throwable -> L7a
            r2.zza(r0)     // Catch: java.lang.Throwable -> L7a
            goto L6a
        L7a:
            r2 = move-exception
            r10 = r2
            r2 = r3
            r3 = r1
            r1 = r10
        L7f:
            if (r2 == 0) goto L84
            r2.close()     // Catch: java.io.IOException -> L88
        L84:
            r7.disconnect()     // Catch: java.io.IOException -> L88
            throw r1     // Catch: java.io.IOException -> L88
        L88:
            r1 = move-exception
            r2 = r3
            r3 = r1
        L8b:
            java.lang.String r7 = "Exception sending hit: "
            java.lang.Class r1 = r3.getClass()
            java.lang.String r1 = r1.getSimpleName()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            int r8 = r1.length()
            if (r8 == 0) goto Lb5
            java.lang.String r1 = r7.concat(r1)
        La3:
            com.google.android.gms.tagmanager.zzbn.zzcy(r1)
            java.lang.String r1 = r3.getMessage()
            com.google.android.gms.tagmanager.zzbn.zzcy(r1)
            com.google.android.gms.tagmanager.zzde$zza r1 = r11.ayC
            r1.zzc(r0)
            r0 = r2
            goto L26
        Lb5:
            java.lang.String r1 = new java.lang.String
            r1.<init>(r7)
            goto La3
        Lbb:
            return
        Lbc:
            r2 = move-exception
            r3 = r2
            r2 = r1
            goto L8b
        Lc0:
            r2 = move-exception
            r10 = r2
            r2 = r3
            r3 = r1
            r1 = r10
            goto L7f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzde.zzai(java.util.List):void");
    }

    @Override // com.google.android.gms.tagmanager.zzac
    public boolean zzcbc() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        zzbn.v("...no network connectivity");
        return false;
    }

    URL zzd(zzar zzarVar) {
        try {
            return new URL(zzarVar.zzcbp());
        } catch (MalformedURLException e) {
            zzbn.e("Error trying to parse the GTM url.");
            return null;
        }
    }
}
