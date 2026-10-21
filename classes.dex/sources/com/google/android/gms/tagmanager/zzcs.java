package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.internal.zzadz;
import com.google.android.gms.internal.zzaec;
import com.google.android.gms.internal.zzaed;
import com.google.android.gms.internal.zzah;
import com.google.android.gms.tagmanager.zzbm;
import com.google.android.gms.tagmanager.zzci;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
class zzcs implements Runnable {
    private final String auZ;
    private volatile String avw;
    private volatile zzs axA;
    private volatile String axB;
    private final zzaed axx;
    private final String axy;
    private zzbm<zzah.zzj> axz;
    private final Context mContext;

    zzcs(Context context, String str, zzaed zzaedVar, zzs zzsVar) {
        this.mContext = context;
        this.axx = zzaedVar;
        this.auZ = str;
        this.axA = zzsVar;
        String strValueOf = String.valueOf("/r?id=");
        String strValueOf2 = String.valueOf(str);
        this.axy = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
        this.avw = this.axy;
        this.axB = null;
    }

    public zzcs(Context context, String str, zzs zzsVar) {
        this(context, str, new zzaed(), zzsVar);
    }

    private boolean zzcch() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        zzbn.v("...no network connectivity");
        return false;
    }

    private void zzcci() {
        if (!zzcch()) {
            this.axz.zza(zzbm.zza.NOT_AVAILABLE);
            return;
        }
        zzbn.v("Start loading resource from network ...");
        String strZzccj = zzccj();
        zzaec zzaecVarZzchh = this.axx.zzchh();
        try {
            try {
                try {
                    InputStream inputStreamZzpt = zzaecVarZzchh.zzpt(strZzccj);
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        zzadz.zzc(inputStreamZzpt, byteArrayOutputStream);
                        zzah.zzj zzjVarZzf = zzah.zzj.zzf(byteArrayOutputStream.toByteArray());
                        String strValueOf = String.valueOf(zzjVarZzf);
                        zzbn.v(new StringBuilder(String.valueOf(strValueOf).length() + 43).append("Successfully loaded supplemented resource: ").append(strValueOf).toString());
                        if (zzjVarZzf.zzwq == null && zzjVarZzf.zzwp.length == 0) {
                            String strValueOf2 = String.valueOf(this.auZ);
                            zzbn.v(strValueOf2.length() != 0 ? "No change for container: ".concat(strValueOf2) : new String("No change for container: "));
                        }
                        this.axz.onSuccess(zzjVarZzf);
                        zzaecVarZzchh.close();
                        zzbn.v("Load resource from network finished.");
                    } catch (IOException e) {
                        String strValueOf3 = String.valueOf(e.getMessage());
                        zzbn.zzd(new StringBuilder(String.valueOf(strZzccj).length() + 51 + String.valueOf(strValueOf3).length()).append("Error when parsing downloaded resources from url: ").append(strZzccj).append(" ").append(strValueOf3).toString(), e);
                        this.axz.zza(zzbm.zza.SERVER_ERROR);
                        zzaecVarZzchh.close();
                    }
                } catch (IOException e2) {
                    String strValueOf4 = String.valueOf(e2.getMessage());
                    zzbn.zzd(new StringBuilder(String.valueOf(strZzccj).length() + 40 + String.valueOf(strValueOf4).length()).append("Error when loading resources from url: ").append(strZzccj).append(" ").append(strValueOf4).toString(), e2);
                    this.axz.zza(zzbm.zza.IO_ERROR);
                    zzaecVarZzchh.close();
                }
            } catch (FileNotFoundException e3) {
                String str = this.auZ;
                zzbn.zzcy(new StringBuilder(String.valueOf(strZzccj).length() + 79 + String.valueOf(str).length()).append("No data is retrieved from the given url: ").append(strZzccj).append(". Make sure container_id: ").append(str).append(" is correct.").toString());
                this.axz.zza(zzbm.zza.SERVER_ERROR);
                zzaecVarZzchh.close();
            }
        } catch (Throwable th) {
            zzaecVarZzchh.close();
            throw th;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.axz == null) {
            throw new IllegalStateException("callback must be set before execute");
        }
        this.axz.zzcaq();
        zzcci();
    }

    void zza(zzbm<zzah.zzj> zzbmVar) {
        this.axz = zzbmVar;
    }

    String zzccj() {
        String strValueOf = String.valueOf(this.axA.zzcas());
        String str = this.avw;
        String strValueOf2 = String.valueOf("&v=a65833898");
        String string = new StringBuilder(String.valueOf(strValueOf).length() + 0 + String.valueOf(str).length() + String.valueOf(strValueOf2).length()).append(strValueOf).append(str).append(strValueOf2).toString();
        if (this.axB != null && !this.axB.trim().equals("")) {
            String strValueOf3 = String.valueOf(string);
            String strValueOf4 = String.valueOf("&pv=");
            String str2 = this.axB;
            string = new StringBuilder(String.valueOf(strValueOf3).length() + 0 + String.valueOf(strValueOf4).length() + String.valueOf(str2).length()).append(strValueOf3).append(strValueOf4).append(str2).toString();
        }
        if (!zzci.zzcce().zzccf().equals(zzci.zza.CONTAINER_DEBUG)) {
            return string;
        }
        String strValueOf5 = String.valueOf(string);
        String strValueOf6 = String.valueOf("&gtm_debug=x");
        return strValueOf6.length() != 0 ? strValueOf5.concat(strValueOf6) : new String(strValueOf5);
    }

    void zznv(String str) {
        if (str == null) {
            this.avw = this.axy;
            return;
        }
        String strValueOf = String.valueOf(str);
        zzbn.zzcw(strValueOf.length() != 0 ? "Setting CTFE URL path: ".concat(strValueOf) : new String("Setting CTFE URL path: "));
        this.avw = str;
    }

    void zzok(String str) {
        String strValueOf = String.valueOf(str);
        zzbn.zzcw(strValueOf.length() != 0 ? "Setting previous container version: ".concat(strValueOf) : new String("Setting previous container version: "));
        this.axB = str;
    }
}
