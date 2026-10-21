package com.google.android.gms.analytics.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class zza extends zzd {
    public static boolean zzcwe;
    private AdvertisingIdClient.Info zzcwf;
    private final zzal zzcwg;
    private String zzcwh;
    private boolean zzcwi;
    private Object zzcwj;

    zza(zzf zzfVar) {
        super(zzfVar);
        this.zzcwi = false;
        this.zzcwj = new Object();
        this.zzcwg = new zzal(zzfVar.zzyw());
    }

    private boolean zza(AdvertisingIdClient.Info info, AdvertisingIdClient.Info info2) {
        String strZzaaw;
        String id = info2 == null ? null : info2.getId();
        if (TextUtils.isEmpty(id)) {
            return true;
        }
        String strZzaav = zzzc().zzaav();
        synchronized (this.zzcwj) {
            if (!this.zzcwi) {
                this.zzcwh = zzyn();
                this.zzcwi = true;
            } else if (TextUtils.isEmpty(this.zzcwh)) {
                String id2 = info != null ? info.getId() : null;
                if (id2 == null) {
                    String strValueOf = String.valueOf(id);
                    String strValueOf2 = String.valueOf(strZzaav);
                    return zzeh(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
                }
                String strValueOf3 = String.valueOf(id2);
                String strValueOf4 = String.valueOf(strZzaav);
                this.zzcwh = zzeg(strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3));
            }
            String strValueOf5 = String.valueOf(id);
            String strValueOf6 = String.valueOf(strZzaav);
            String strZzeg = zzeg(strValueOf6.length() != 0 ? strValueOf5.concat(strValueOf6) : new String(strValueOf5));
            if (TextUtils.isEmpty(strZzeg)) {
                return false;
            }
            if (strZzeg.equals(this.zzcwh)) {
                return true;
            }
            if (TextUtils.isEmpty(this.zzcwh)) {
                strZzaaw = strZzaav;
            } else {
                zzei("Resetting the client id because Advertising Id changed.");
                strZzaaw = zzzc().zzaaw();
                zza("New client Id", strZzaaw);
            }
            String strValueOf7 = String.valueOf(id);
            String strValueOf8 = String.valueOf(strZzaaw);
            return zzeh(strValueOf8.length() != 0 ? strValueOf7.concat(strValueOf8) : new String(strValueOf7));
        }
    }

    private static String zzeg(String str) {
        MessageDigest messageDigestZzfb = zzao.zzfb("MD5");
        if (messageDigestZzfb == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestZzfb.digest(str.getBytes())));
    }

    private boolean zzeh(String str) {
        try {
            String strZzeg = zzeg(str);
            zzei("Storing hashed adid.");
            FileOutputStream fileOutputStreamOpenFileOutput = getContext().openFileOutput("gaClientIdData", 0);
            fileOutputStreamOpenFileOutput.write(strZzeg.getBytes());
            fileOutputStreamOpenFileOutput.close();
            this.zzcwh = strZzeg;
            return true;
        } catch (IOException e) {
            zze("Error creating hash file", e);
            return false;
        }
    }

    private synchronized AdvertisingIdClient.Info zzyl() {
        if (this.zzcwg.zzx(1000L)) {
            this.zzcwg.start();
            AdvertisingIdClient.Info infoZzym = zzym();
            if (zza(this.zzcwf, infoZzym)) {
                this.zzcwf = infoZzym;
            } else {
                zzem("Failed to reset client id on adid change. Not using adid");
                this.zzcwf = new AdvertisingIdClient.Info("", false);
            }
        }
        return this.zzcwf;
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzwv() {
    }

    public boolean zzxz() {
        zzzg();
        AdvertisingIdClient.Info infoZzyl = zzyl();
        return (infoZzyl == null || infoZzyl.isLimitAdTrackingEnabled()) ? false : true;
    }

    public String zzyk() {
        zzzg();
        AdvertisingIdClient.Info infoZzyl = zzyl();
        String id = infoZzyl != null ? infoZzyl.getId() : null;
        if (TextUtils.isEmpty(id)) {
            return null;
        }
        return id;
    }

    protected AdvertisingIdClient.Info zzym() {
        try {
            return AdvertisingIdClient.getAdvertisingIdInfo(getContext());
        } catch (IllegalStateException e) {
            zzel("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
            return null;
        } catch (Throwable th) {
            if (zzcwe) {
                return null;
            }
            zzcwe = true;
            zzd("Error getting advertiser id", th);
            return null;
        }
    }

    protected String zzyn() {
        String str = null;
        try {
            FileInputStream fileInputStreamOpenFileInput = getContext().openFileInput("gaClientIdData");
            byte[] bArr = new byte[128];
            int i = fileInputStreamOpenFileInput.read(bArr, 0, 128);
            if (fileInputStreamOpenFileInput.available() > 0) {
                zzel("Hash file seems corrupted, deleting it.");
                fileInputStreamOpenFileInput.close();
                getContext().deleteFile("gaClientIdData");
            } else if (i <= 0) {
                zzei("Hash file is empty.");
                fileInputStreamOpenFileInput.close();
            } else {
                String str2 = new String(bArr, 0, i);
                try {
                    fileInputStreamOpenFileInput.close();
                    str = str2;
                } catch (FileNotFoundException e) {
                    str = str2;
                } catch (IOException e2) {
                    str = str2;
                    e = e2;
                    zzd("Error reading Hash file, deleting it", e);
                    getContext().deleteFile("gaClientIdData");
                    return str;
                }
            }
        } catch (FileNotFoundException e3) {
        } catch (IOException e4) {
            e = e4;
        }
        return str;
    }
}
