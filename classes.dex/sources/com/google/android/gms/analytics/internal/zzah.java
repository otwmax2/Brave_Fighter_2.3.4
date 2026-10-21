package com.google.android.gms.analytics.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.ironsource.sdk.precache.DownloadManager;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes.dex */
class zzah extends zzd {
    private static final byte[] ah = "\n".getBytes();
    private final zzal ag;
    private final String zzbjj;

    private class zza {
        private int ai;
        private ByteArrayOutputStream aj = new ByteArrayOutputStream();

        public zza() {
        }

        public byte[] getPayload() {
            return this.aj.toByteArray();
        }

        public int zzadm() {
            return this.ai;
        }

        public boolean zzj(zzab zzabVar) {
            com.google.android.gms.common.internal.zzab.zzaa(zzabVar);
            if (this.ai + 1 > zzah.this.zzyy().zzabo()) {
                return false;
            }
            String strZza = zzah.this.zza(zzabVar, false);
            if (strZza == null) {
                zzah.this.zzyx().zza(zzabVar, "Error formatting hit");
                return true;
            }
            byte[] bytes = strZza.getBytes();
            int length = bytes.length;
            if (length > zzah.this.zzyy().zzabg()) {
                zzah.this.zzyx().zza(zzabVar, "Hit size exceeds the maximum size limit");
                return true;
            }
            if (this.aj.size() > 0) {
                length++;
            }
            if (length + this.aj.size() > zzah.this.zzyy().zzabi()) {
                return false;
            }
            try {
                if (this.aj.size() > 0) {
                    this.aj.write(zzah.ah);
                }
                this.aj.write(bytes);
                this.ai++;
                return true;
            } catch (IOException e) {
                zzah.this.zze("Failed to write payload when batching hits", e);
                return true;
            }
        }
    }

    zzah(zzf zzfVar) {
        super(zzfVar);
        this.zzbjj = zza("GoogleAnalytics", zze.VERSION, Build.VERSION.RELEASE, zzao.zza(Locale.getDefault()), Build.MODEL, Build.ID);
        this.ag = new zzal(zzfVar.zzyw());
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0093 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int zza(java.net.URL r6, byte[] r7) throws java.lang.Throwable {
        /*
            r5 = this;
            r1 = 0
            com.google.android.gms.common.internal.zzab.zzaa(r6)
            com.google.android.gms.common.internal.zzab.zzaa(r7)
            java.lang.String r0 = "POST bytes, url"
            int r2 = r7.length
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r5.zzb(r0, r2, r6)
            boolean r0 = r5.zztc()
            if (r0 == 0) goto L21
            java.lang.String r0 = "Post payload\n"
            java.lang.String r2 = new java.lang.String
            r2.<init>(r7)
            r5.zza(r0, r2)
        L21:
            android.content.Context r0 = r5.getContext()     // Catch: java.io.IOException -> L72 java.lang.Throwable -> L8f
            java.lang.String r0 = r0.getPackageName()     // Catch: java.io.IOException -> L72 java.lang.Throwable -> L8f
            r5.zzeu(r0)     // Catch: java.io.IOException -> L72 java.lang.Throwable -> L8f
            java.net.HttpURLConnection r2 = r5.zzc(r6)     // Catch: java.io.IOException -> L72 java.lang.Throwable -> L8f
            r0 = 1
            r2.setDoOutput(r0)     // Catch: java.lang.Throwable -> La6 java.io.IOException -> La8
            int r0 = r7.length     // Catch: java.lang.Throwable -> La6 java.io.IOException -> La8
            r2.setFixedLengthStreamingMode(r0)     // Catch: java.lang.Throwable -> La6 java.io.IOException -> La8
            r2.connect()     // Catch: java.lang.Throwable -> La6 java.io.IOException -> La8
            java.io.OutputStream r1 = r2.getOutputStream()     // Catch: java.lang.Throwable -> La6 java.io.IOException -> La8
            r1.write(r7)     // Catch: java.lang.Throwable -> La6 java.io.IOException -> La8
            r5.zzb(r2)     // Catch: java.lang.Throwable -> La6 java.io.IOException -> La8
            int r0 = r2.getResponseCode()     // Catch: java.lang.Throwable -> La6 java.io.IOException -> La8
            r3 = 200(0xc8, float:2.8E-43)
            if (r0 != r3) goto L54
            com.google.android.gms.analytics.internal.zzb r3 = r5.zzwd()     // Catch: java.lang.Throwable -> La6 java.io.IOException -> La8
            r3.zzyt()     // Catch: java.lang.Throwable -> La6 java.io.IOException -> La8
        L54:
            java.lang.String r3 = "POST status"
            java.lang.Integer r4 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> La6 java.io.IOException -> La8
            r5.zzb(r3, r4)     // Catch: java.lang.Throwable -> La6 java.io.IOException -> La8
            if (r1 == 0) goto L62
            r1.close()     // Catch: java.io.IOException -> L6b
        L62:
            if (r2 == 0) goto L67
            r2.disconnect()
        L67:
            r5.zzrq()
        L6a:
            return r0
        L6b:
            r1 = move-exception
            java.lang.String r3 = "Error closing http post connection output stream"
            r5.zze(r3, r1)
            goto L62
        L72:
            r0 = move-exception
            r2 = r1
        L74:
            java.lang.String r3 = "Network POST connection error"
            r5.zzd(r3, r0)     // Catch: java.lang.Throwable -> La6
            if (r1 == 0) goto L7e
            r1.close()     // Catch: java.io.IOException -> L88
        L7e:
            if (r2 == 0) goto L83
            r2.disconnect()
        L83:
            r5.zzrq()
            r0 = 0
            goto L6a
        L88:
            r0 = move-exception
            java.lang.String r1 = "Error closing http post connection output stream"
            r5.zze(r1, r0)
            goto L7e
        L8f:
            r0 = move-exception
            r2 = r1
        L91:
            if (r1 == 0) goto L96
            r1.close()     // Catch: java.io.IOException -> L9f
        L96:
            if (r2 == 0) goto L9b
            r2.disconnect()
        L9b:
            r5.zzrq()
            throw r0
        L9f:
            r1 = move-exception
            java.lang.String r3 = "Error closing http post connection output stream"
            r5.zze(r3, r1)
            goto L96
        La6:
            r0 = move-exception
            goto L91
        La8:
            r0 = move-exception
            goto L74
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zzah.zza(java.net.URL, byte[]):int");
    }

    private static String zza(String str, String str2, String str3, String str4, String str5, String str6) {
        return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", str, str2, str3, str4, str5, str6);
    }

    private void zza(StringBuilder sb, String str, String str2) throws UnsupportedEncodingException {
        if (sb.length() != 0) {
            sb.append('&');
        }
        sb.append(URLEncoder.encode(str, DownloadManager.UTF8_CHARSET));
        sb.append('=');
        sb.append(URLEncoder.encode(str2, DownloadManager.UTF8_CHARSET));
    }

    private URL zzadk() {
        String strValueOf = String.valueOf(zzyy().zzabq());
        String strValueOf2 = String.valueOf(zzyy().zzabt());
        try {
            return new URL(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private int zzb(URL url) {
        com.google.android.gms.common.internal.zzab.zzaa(url);
        zzb("GET request", url);
        HttpURLConnection httpURLConnectionZzc = null;
        try {
            try {
                httpURLConnectionZzc = zzc(url);
                httpURLConnectionZzc.connect();
                zzb(httpURLConnectionZzc);
                int responseCode = httpURLConnectionZzc.getResponseCode();
                if (responseCode == 200) {
                    zzwd().zzyt();
                }
                zzb("GET status", Integer.valueOf(responseCode));
                if (httpURLConnectionZzc == null) {
                    return responseCode;
                }
                httpURLConnectionZzc.disconnect();
                return responseCode;
            } catch (IOException e) {
                zzd("Network GET connection error", e);
                if (httpURLConnectionZzc != null) {
                    httpURLConnectionZzc.disconnect();
                }
                return 0;
            }
        } catch (Throwable th) {
            if (httpURLConnectionZzc != null) {
                httpURLConnectionZzc.disconnect();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int zzb(java.net.URL r11, byte[] r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 236
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zzah.zzb(java.net.URL, byte[]):int");
    }

    private URL zzb(zzab zzabVar, String str) {
        String string;
        if (zzabVar.zzadb()) {
            String strValueOf = String.valueOf(zzyy().zzabq());
            String strValueOf2 = String.valueOf(zzyy().zzabs());
            string = new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(strValueOf2).length() + String.valueOf(str).length()).append(strValueOf).append(strValueOf2).append("?").append(str).toString();
        } else {
            String strValueOf3 = String.valueOf(zzyy().zzabr());
            String strValueOf4 = String.valueOf(zzyy().zzabs());
            string = new StringBuilder(String.valueOf(strValueOf3).length() + 1 + String.valueOf(strValueOf4).length() + String.valueOf(str).length()).append(strValueOf3).append(strValueOf4).append("?").append(str).toString();
        }
        try {
            return new URL(string);
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private void zzb(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = httpURLConnection.getInputStream();
            do {
            } while (inputStream.read(new byte[1024]) > 0);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    zze("Error closing http connection input stream", e);
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    zze("Error closing http connection input stream", e2);
                }
            }
            throw th;
        }
    }

    private boolean zzg(zzab zzabVar) {
        com.google.android.gms.common.internal.zzab.zzaa(zzabVar);
        String strZza = zza(zzabVar, !zzabVar.zzadb());
        if (strZza == null) {
            zzyx().zza(zzabVar, "Error formatting hit for upload");
            return true;
        }
        if (strZza.length() <= zzyy().zzabf()) {
            URL urlZzb = zzb(zzabVar, strZza);
            if (urlZzb != null) {
                return zzb(urlZzb) == 200;
            }
            zzem("Failed to build collect GET endpoint url");
            return false;
        }
        String strZza2 = zza(zzabVar, false);
        if (strZza2 == null) {
            zzyx().zza(zzabVar, "Error formatting hit for POST upload");
            return true;
        }
        byte[] bytes = strZza2.getBytes();
        if (bytes.length > zzyy().zzabh()) {
            zzyx().zza(zzabVar, "Hit payload exceeds size limit");
            return true;
        }
        URL urlZzh = zzh(zzabVar);
        if (urlZzh != null) {
            return zza(urlZzh, bytes) == 200;
        }
        zzem("Failed to build collect POST endpoint url");
        return false;
    }

    private URL zzh(zzab zzabVar) {
        String strConcat;
        if (zzabVar.zzadb()) {
            String strValueOf = String.valueOf(zzyy().zzabq());
            String strValueOf2 = String.valueOf(zzyy().zzabs());
            strConcat = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
        } else {
            String strValueOf3 = String.valueOf(zzyy().zzabr());
            String strValueOf4 = String.valueOf(zzyy().zzabs());
            strConcat = strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3);
        }
        try {
            return new URL(strConcat);
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private String zzi(zzab zzabVar) {
        return String.valueOf(zzabVar.zzacy());
    }

    private static byte[] zzj(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(bArr);
        gZIPOutputStream.close();
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    String zza(zzab zzabVar, boolean z) {
        com.google.android.gms.common.internal.zzab.zzaa(zzabVar);
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : zzabVar.zzm().entrySet()) {
                String key = entry.getKey();
                if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key) && !"z".equals(key) && !"_gmsv".equals(key)) {
                    zza(sb, key, entry.getValue());
                }
            }
            zza(sb, "ht", String.valueOf(zzabVar.zzacz()));
            zza(sb, "qt", String.valueOf(zzyw().currentTimeMillis() - zzabVar.zzacz()));
            if (zzyy().zzabc()) {
                zza(sb, "_gmsv", zze.VERSION);
            }
            if (z) {
                long jZzadc = zzabVar.zzadc();
                zza(sb, "z", jZzadc != 0 ? String.valueOf(jZzadc) : zzi(zzabVar));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            zze("Failed to encode name or value", e);
            return null;
        }
    }

    List<Long> zza(List<zzab> list, boolean z) {
        com.google.android.gms.common.internal.zzab.zzbn(!list.isEmpty());
        zza("Uploading batched hits. compression, count", Boolean.valueOf(z), Integer.valueOf(list.size()));
        zza zzaVar = new zza();
        ArrayList arrayList = new ArrayList();
        for (zzab zzabVar : list) {
            if (!zzaVar.zzj(zzabVar)) {
                break;
            }
            arrayList.add(Long.valueOf(zzabVar.zzacy()));
        }
        if (zzaVar.zzadm() == 0) {
            return arrayList;
        }
        URL urlZzadk = zzadk();
        if (urlZzadk == null) {
            zzem("Failed to build batching endpoint url");
            return Collections.emptyList();
        }
        int iZzb = z ? zzb(urlZzadk, zzaVar.getPayload()) : zza(urlZzadk, zzaVar.getPayload());
        if (200 == iZzb) {
            zza("Batched upload completed. Hits batched", Integer.valueOf(zzaVar.zzadm()));
            return arrayList;
        }
        zza("Network error uploading hits. status code", Integer.valueOf(iZzb));
        if (zzyy().zzabw().contains(Integer.valueOf(iZzb))) {
            zzel("Server instructed the client to stop batching");
            this.ag.start();
        }
        return Collections.emptyList();
    }

    public boolean zzadj() {
        NetworkInfo activeNetworkInfo;
        zzwu();
        zzzg();
        try {
            activeNetworkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException e) {
            activeNetworkInfo = null;
        }
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        zzei("No network connectivity");
        return false;
    }

    HttpURLConnection zzc(URL url) throws IOException {
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
            throw new IOException("Failed to obtain http connection");
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setDefaultUseCaches(false);
        httpURLConnection.setConnectTimeout(zzyy().zzacf());
        httpURLConnection.setReadTimeout(zzyy().zzacg());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestProperty("User-Agent", this.zzbjj);
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }

    protected void zzeu(String str) {
    }

    protected void zzrq() {
    }

    public List<Long> zzs(List<zzab> list) {
        boolean z;
        boolean z2 = true;
        zzwu();
        zzzg();
        com.google.android.gms.common.internal.zzab.zzaa(list);
        if (zzyy().zzabw().isEmpty() || !this.ag.zzx(zzyy().zzabp() * 1000)) {
            z2 = false;
            z = false;
        } else {
            z = zzyy().zzabu() != zzm.NONE;
            if (zzyy().zzabv() != zzo.GZIP) {
                z2 = false;
            }
        }
        return z ? zza(list, z2) : zzt(list);
    }

    List<Long> zzt(List<zzab> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (zzab zzabVar : list) {
            if (!zzg(zzabVar)) {
                break;
            }
            arrayList.add(Long.valueOf(zzabVar.zzacy()));
            if (arrayList.size() >= zzyy().zzabn()) {
                break;
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzwv() {
        zza("Network initialized. User agent", this.zzbjj);
    }
}
