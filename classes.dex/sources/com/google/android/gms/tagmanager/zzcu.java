package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.internal.zzadx;
import com.google.android.gms.internal.zzadz;
import com.google.android.gms.internal.zzah;
import com.google.android.gms.internal.zzapb;
import com.google.android.gms.internal.zzapc;
import com.google.android.gms.tagmanager.zzp;
import com.ironsource.sdk.precache.DownloadManager;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
class zzcu implements zzp.zzf {
    private final String auZ;
    private final ExecutorService axF = Executors.newSingleThreadExecutor();
    private zzbm<zzadx.zza> axz;
    private final Context mContext;

    zzcu(Context context, String str) {
        this.mContext = context;
        this.auZ = str;
    }

    private zzadz.zzc zza(ByteArrayOutputStream byteArrayOutputStream) {
        try {
            return zzbg.zzoh(byteArrayOutputStream.toString(DownloadManager.UTF8_CHARSET));
        } catch (UnsupportedEncodingException e) {
            zzbn.zzcw("Failed to convert binary resource to string for JSON parsing; the file format is not UTF-8 format.");
            return null;
        } catch (JSONException e2) {
            zzbn.zzcy("Failed to extract the container from the resource file. Resource is a UTF-8 encoded string but doesn't contain a JSON container");
            return null;
        }
    }

    private zzadz.zzc zzal(byte[] bArr) {
        try {
            zzadz.zzc zzcVarZzb = zzadz.zzb(zzah.zzf.zze(bArr));
            if (zzcVarZzb == null) {
                return zzcVarZzb;
            }
            zzbn.v("The container was successfully loaded from the resource (using binary file)");
            return zzcVarZzb;
        } catch (zzadz.zzg e) {
            zzbn.zzcy("The resource file is invalid. The container from the binary file is invalid");
            return null;
        } catch (zzapb e2) {
            zzbn.e("The resource file is corrupted. The container cannot be extracted from the binary file");
            return null;
        }
    }

    private void zzd(zzadx.zza zzaVar) throws IllegalArgumentException {
        if (zzaVar.zzwq == null && zzaVar.aDq == null) {
            throw new IllegalArgumentException("Resource and SupplementedResource are NULL.");
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public synchronized void release() {
        this.axF.shutdown();
    }

    @Override // com.google.android.gms.tagmanager.zzp.zzf
    public void zza(zzbm<zzadx.zza> zzbmVar) {
        this.axz = zzbmVar;
    }

    @Override // com.google.android.gms.tagmanager.zzp.zzf
    public void zzb(final zzadx.zza zzaVar) {
        this.axF.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.zzcu.2
            @Override // java.lang.Runnable
            public void run() {
                zzcu.this.zzc(zzaVar);
            }
        });
    }

    boolean zzc(zzadx.zza zzaVar) {
        File fileZzccn = zzccn();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(fileZzccn);
            try {
                try {
                    fileOutputStream.write(zzapc.zzf(zzaVar));
                    return true;
                } catch (IOException e) {
                    zzbn.zzcy("Error writing resource to disk. Removing resource from disk.");
                    fileZzccn.delete();
                    try {
                        fileOutputStream.close();
                        return false;
                    } catch (IOException e2) {
                        zzbn.zzcy("error closing stream for writing resource to disk");
                        return false;
                    }
                }
            } finally {
                try {
                    fileOutputStream.close();
                } catch (IOException e3) {
                    zzbn.zzcy("error closing stream for writing resource to disk");
                }
            }
        } catch (FileNotFoundException e4) {
            zzbn.e("Error opening resource file for writing");
            return false;
        }
    }

    @Override // com.google.android.gms.tagmanager.zzp.zzf
    public void zzcar() {
        this.axF.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.zzcu.1
            @Override // java.lang.Runnable
            public void run() {
                zzcu.this.zzccm();
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void zzccm() {
        /*
            r3 = this;
            com.google.android.gms.tagmanager.zzbm<com.google.android.gms.internal.zzadx$zza> r0 = r3.axz
            if (r0 != 0) goto Lc
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Callback must be set before execute"
            r0.<init>(r1)
            throw r0
        Lc:
            com.google.android.gms.tagmanager.zzbm<com.google.android.gms.internal.zzadx$zza> r0 = r3.axz
            r0.zzcaq()
            java.lang.String r0 = "Attempting to load resource from disk"
            com.google.android.gms.tagmanager.zzbn.v(r0)
            com.google.android.gms.tagmanager.zzci r0 = com.google.android.gms.tagmanager.zzci.zzcce()
            com.google.android.gms.tagmanager.zzci$zza r0 = r0.zzccf()
            com.google.android.gms.tagmanager.zzci$zza r1 = com.google.android.gms.tagmanager.zzci.zza.CONTAINER
            if (r0 == r1) goto L2e
            com.google.android.gms.tagmanager.zzci r0 = com.google.android.gms.tagmanager.zzci.zzcce()
            com.google.android.gms.tagmanager.zzci$zza r0 = r0.zzccf()
            com.google.android.gms.tagmanager.zzci$zza r1 = com.google.android.gms.tagmanager.zzci.zza.CONTAINER_DEBUG
            if (r0 != r1) goto L46
        L2e:
            java.lang.String r0 = r3.auZ
            com.google.android.gms.tagmanager.zzci r1 = com.google.android.gms.tagmanager.zzci.zzcce()
            java.lang.String r1 = r1.getContainerId()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L46
            com.google.android.gms.tagmanager.zzbm<com.google.android.gms.internal.zzadx$zza> r0 = r3.axz
            com.google.android.gms.tagmanager.zzbm$zza r1 = com.google.android.gms.tagmanager.zzbm.zza.NOT_AVAILABLE
            r0.zza(r1)
        L45:
            return
        L46:
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.io.FileNotFoundException -> L70
            java.io.File r0 = r3.zzccn()     // Catch: java.io.FileNotFoundException -> L70
            r1.<init>(r0)     // Catch: java.io.FileNotFoundException -> L70
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch: java.io.IOException -> L85 java.lang.IllegalArgumentException -> L9d java.lang.Throwable -> Lb5
            r0.<init>()     // Catch: java.io.IOException -> L85 java.lang.IllegalArgumentException -> L9d java.lang.Throwable -> Lb5
            com.google.android.gms.internal.zzadz.zzc(r1, r0)     // Catch: java.io.IOException -> L85 java.lang.IllegalArgumentException -> L9d java.lang.Throwable -> Lb5
            byte[] r0 = r0.toByteArray()     // Catch: java.io.IOException -> L85 java.lang.IllegalArgumentException -> L9d java.lang.Throwable -> Lb5
            com.google.android.gms.internal.zzadx$zza r0 = com.google.android.gms.internal.zzadx.zza.zzap(r0)     // Catch: java.io.IOException -> L85 java.lang.IllegalArgumentException -> L9d java.lang.Throwable -> Lb5
            r3.zzd(r0)     // Catch: java.io.IOException -> L85 java.lang.IllegalArgumentException -> L9d java.lang.Throwable -> Lb5
            com.google.android.gms.tagmanager.zzbm<com.google.android.gms.internal.zzadx$zza> r2 = r3.axz     // Catch: java.io.IOException -> L85 java.lang.IllegalArgumentException -> L9d java.lang.Throwable -> Lb5
            r2.onSuccess(r0)     // Catch: java.io.IOException -> L85 java.lang.IllegalArgumentException -> L9d java.lang.Throwable -> Lb5
            r1.close()     // Catch: java.io.IOException -> L7e
        L6a:
            java.lang.String r0 = "The Disk resource was successfully read."
            com.google.android.gms.tagmanager.zzbn.v(r0)
            goto L45
        L70:
            r0 = move-exception
            java.lang.String r0 = "Failed to find the resource in the disk"
            com.google.android.gms.tagmanager.zzbn.zzcw(r0)
            com.google.android.gms.tagmanager.zzbm<com.google.android.gms.internal.zzadx$zza> r0 = r3.axz
            com.google.android.gms.tagmanager.zzbm$zza r1 = com.google.android.gms.tagmanager.zzbm.zza.NOT_AVAILABLE
            r0.zza(r1)
            goto L45
        L7e:
            r0 = move-exception
            java.lang.String r0 = "Error closing stream for reading resource from disk"
            com.google.android.gms.tagmanager.zzbn.zzcy(r0)
            goto L6a
        L85:
            r0 = move-exception
            com.google.android.gms.tagmanager.zzbm<com.google.android.gms.internal.zzadx$zza> r0 = r3.axz     // Catch: java.lang.Throwable -> Lb5
            com.google.android.gms.tagmanager.zzbm$zza r2 = com.google.android.gms.tagmanager.zzbm.zza.IO_ERROR     // Catch: java.lang.Throwable -> Lb5
            r0.zza(r2)     // Catch: java.lang.Throwable -> Lb5
            java.lang.String r0 = "Failed to read the resource from disk"
            com.google.android.gms.tagmanager.zzbn.zzcy(r0)     // Catch: java.lang.Throwable -> Lb5
            r1.close()     // Catch: java.io.IOException -> L96
            goto L6a
        L96:
            r0 = move-exception
            java.lang.String r0 = "Error closing stream for reading resource from disk"
            com.google.android.gms.tagmanager.zzbn.zzcy(r0)
            goto L6a
        L9d:
            r0 = move-exception
            com.google.android.gms.tagmanager.zzbm<com.google.android.gms.internal.zzadx$zza> r0 = r3.axz     // Catch: java.lang.Throwable -> Lb5
            com.google.android.gms.tagmanager.zzbm$zza r2 = com.google.android.gms.tagmanager.zzbm.zza.IO_ERROR     // Catch: java.lang.Throwable -> Lb5
            r0.zza(r2)     // Catch: java.lang.Throwable -> Lb5
            java.lang.String r0 = "Failed to read the resource from disk. The resource is inconsistent"
            com.google.android.gms.tagmanager.zzbn.zzcy(r0)     // Catch: java.lang.Throwable -> Lb5
            r1.close()     // Catch: java.io.IOException -> Lae
            goto L6a
        Lae:
            r0 = move-exception
            java.lang.String r0 = "Error closing stream for reading resource from disk"
            com.google.android.gms.tagmanager.zzbn.zzcy(r0)
            goto L6a
        Lb5:
            r0 = move-exception
            r1.close()     // Catch: java.io.IOException -> Lba
        Lb9:
            throw r0
        Lba:
            r1 = move-exception
            java.lang.String r1 = "Error closing stream for reading resource from disk"
            com.google.android.gms.tagmanager.zzbn.zzcy(r1)
            goto Lb9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzcu.zzccm():void");
    }

    File zzccn() {
        String strValueOf = String.valueOf("resource_");
        String strValueOf2 = String.valueOf(this.auZ);
        return new File(this.mContext.getDir("google_tagmanager", 0), strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
    }

    @Override // com.google.android.gms.tagmanager.zzp.zzf
    public zzadz.zzc zzxw(int i) {
        try {
            InputStream inputStreamOpenRawResource = this.mContext.getResources().openRawResource(i);
            String strValueOf = String.valueOf(this.mContext.getResources().getResourceName(i));
            zzbn.v(new StringBuilder(String.valueOf(strValueOf).length() + 66).append("Attempting to load a container from the resource ID ").append(i).append(" (").append(strValueOf).append(")").toString());
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                zzadz.zzc(inputStreamOpenRawResource, byteArrayOutputStream);
                zzadz.zzc zzcVarZza = zza(byteArrayOutputStream);
                if (zzcVarZza != null) {
                    zzbn.v("The container was successfully loaded from the resource (using JSON file format)");
                } else {
                    zzcVarZza = zzal(byteArrayOutputStream.toByteArray());
                }
                return zzcVarZza;
            } catch (IOException e) {
                String strValueOf2 = String.valueOf(this.mContext.getResources().getResourceName(i));
                zzbn.zzcy(new StringBuilder(String.valueOf(strValueOf2).length() + 67).append("Error reading the default container with resource ID ").append(i).append(" (").append(strValueOf2).append(")").toString());
                return null;
            }
        } catch (Resources.NotFoundException e2) {
            zzbn.zzcy(new StringBuilder(98).append("Failed to load the container. No default container resource found with the resource ID ").append(i).toString());
            return null;
        }
    }
}
