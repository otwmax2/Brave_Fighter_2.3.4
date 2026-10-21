package com.google.android.gms.tagmanager;

import android.net.Uri;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.precache.DownloadManager;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

/* JADX INFO: loaded from: classes.dex */
class zzci {
    private static zzci axj;
    private volatile String auZ;
    private volatile zza axk;
    private volatile String axl;
    private volatile String axm;

    enum zza {
        NONE,
        CONTAINER,
        CONTAINER_DEBUG
    }

    zzci() {
        clear();
    }

    static zzci zzcce() {
        zzci zzciVar;
        synchronized (zzci.class) {
            if (axj == null) {
                axj = new zzci();
            }
            zzciVar = axj;
        }
        return zzciVar;
    }

    private String zzoj(String str) {
        return str.split(Constants.RequestParameters.AMPERSAND)[0].split(Constants.RequestParameters.EQUAL)[1];
    }

    private String zzu(Uri uri) {
        return uri.getQuery().replace("&gtm_debug=x", "");
    }

    void clear() {
        this.axk = zza.NONE;
        this.axl = null;
        this.auZ = null;
        this.axm = null;
    }

    String getContainerId() {
        return this.auZ;
    }

    zza zzccf() {
        return this.axk;
    }

    String zzccg() {
        return this.axl;
    }

    synchronized boolean zzt(Uri uri) {
        boolean z = true;
        synchronized (this) {
            try {
                String strDecode = URLDecoder.decode(uri.toString(), DownloadManager.UTF8_CHARSET);
                if (strDecode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) {
                    String strValueOf = String.valueOf(strDecode);
                    zzbn.v(strValueOf.length() != 0 ? "Container preview url: ".concat(strValueOf) : new String("Container preview url: "));
                    if (strDecode.matches(".*?&gtm_debug=x$")) {
                        this.axk = zza.CONTAINER_DEBUG;
                    } else {
                        this.axk = zza.CONTAINER;
                    }
                    this.axm = zzu(uri);
                    if (this.axk == zza.CONTAINER || this.axk == zza.CONTAINER_DEBUG) {
                        String strValueOf2 = String.valueOf("/r?");
                        String strValueOf3 = String.valueOf(this.axm);
                        this.axl = strValueOf3.length() != 0 ? strValueOf2.concat(strValueOf3) : new String(strValueOf2);
                    }
                    this.auZ = zzoj(this.axm);
                } else if (!strDecode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$")) {
                    String strValueOf4 = String.valueOf(strDecode);
                    zzbn.zzcy(strValueOf4.length() != 0 ? "Invalid preview uri: ".concat(strValueOf4) : new String("Invalid preview uri: "));
                    z = false;
                } else if (zzoj(uri.getQuery()).equals(this.auZ)) {
                    String strValueOf5 = String.valueOf(this.auZ);
                    zzbn.v(strValueOf5.length() != 0 ? "Exit preview mode for container: ".concat(strValueOf5) : new String("Exit preview mode for container: "));
                    this.axk = zza.NONE;
                    this.axl = null;
                } else {
                    z = false;
                }
            } catch (UnsupportedEncodingException e) {
                z = false;
            }
        }
        return z;
    }
}
