package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.ironsource.sdk.constants.Constants;
import java.io.File;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
@zzir
public class zzde {
    final Context mContext;
    final String zzarh;
    String zzbdn;
    BlockingQueue<zzdk> zzbdp;
    ExecutorService zzbdq;
    LinkedHashMap<String, String> zzbdr = new LinkedHashMap<>();
    Map<String, zzdh> zzbds = new HashMap();
    private AtomicBoolean zzbdt = new AtomicBoolean(false);
    private File zzbdu;

    public zzde(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.mContext = context;
        this.zzarh = str;
        this.zzbdn = str2;
        this.zzbdt.set(zzdc.zzaze.get().booleanValue());
        if (this.zzbdt.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.zzbdu = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.zzbdr.put(entry.getKey(), entry.getValue());
        }
        this.zzbdp = new ArrayBlockingQueue(30);
        this.zzbdq = Executors.newSingleThreadExecutor();
        this.zzbdq.execute(new Runnable() { // from class: com.google.android.gms.internal.zzde.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                zzde.this.zzkc();
            }
        });
        this.zzbds.put("action", zzdh.zzbdx);
        this.zzbds.put("ad_format", zzdh.zzbdx);
        this.zzbds.put("e", zzdh.zzbdy);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void zzc(java.io.File r4, java.lang.String r5) throws java.lang.Throwable {
        /*
            r3 = this;
            if (r4 == 0) goto L45
            r2 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L22 java.lang.Throwable -> L36
            r0 = 1
            r1.<init>(r4, r0)     // Catch: java.io.IOException -> L22 java.lang.Throwable -> L36
            byte[] r0 = r5.getBytes()     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4d
            r1.write(r0)     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4d
            r0 = 10
            r1.write(r0)     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4d
            if (r1 == 0) goto L1a
            r1.close()     // Catch: java.io.IOException -> L1b
        L1a:
            return
        L1b:
            r0 = move-exception
            java.lang.String r1 = "CsiReporter: Cannot close file: sdk_csi_data.txt."
            com.google.android.gms.internal.zzkh.zzd(r1, r0)
            goto L1a
        L22:
            r0 = move-exception
            r1 = r2
        L24:
            java.lang.String r2 = "CsiReporter: Cannot write to file: sdk_csi_data.txt."
            com.google.android.gms.internal.zzkh.zzd(r2, r0)     // Catch: java.lang.Throwable -> L4b
            if (r1 == 0) goto L1a
            r1.close()     // Catch: java.io.IOException -> L2f
            goto L1a
        L2f:
            r0 = move-exception
            java.lang.String r1 = "CsiReporter: Cannot close file: sdk_csi_data.txt."
            com.google.android.gms.internal.zzkh.zzd(r1, r0)
            goto L1a
        L36:
            r0 = move-exception
            r1 = r2
        L38:
            if (r1 == 0) goto L3d
            r1.close()     // Catch: java.io.IOException -> L3e
        L3d:
            throw r0
        L3e:
            r1 = move-exception
            java.lang.String r2 = "CsiReporter: Cannot close file: sdk_csi_data.txt."
            com.google.android.gms.internal.zzkh.zzd(r2, r1)
            goto L3d
        L45:
            java.lang.String r0 = "CsiReporter: File doesn't exists. Cannot write CSI data to file."
            com.google.android.gms.internal.zzkh.zzcy(r0)
            goto L1a
        L4b:
            r0 = move-exception
            goto L38
        L4d:
            r0 = move-exception
            goto L24
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzde.zzc(java.io.File, java.lang.String):void");
    }

    private void zzc(Map<String, String> map, String str) throws Throwable {
        String strZza = zza(this.zzbdn, map, str);
        if (this.zzbdt.get()) {
            zzc(this.zzbdu, strZza);
        } else {
            com.google.android.gms.ads.internal.zzu.zzfq().zzc(this.mContext, this.zzarh, strZza);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzkc() throws Throwable {
        while (true) {
            try {
                zzdk zzdkVarTake = this.zzbdp.take();
                String strZzki = zzdkVarTake.zzki();
                if (!TextUtils.isEmpty(strZzki)) {
                    zzc(zza(this.zzbdr, zzdkVarTake.zzm()), strZzki);
                }
            } catch (InterruptedException e) {
                zzkh.zzd("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }

    String zza(String str, Map<String, String> map, @NonNull String str2) {
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        StringBuilder sb = new StringBuilder(builderBuildUpon.build().toString());
        sb.append(Constants.RequestParameters.AMPERSAND).append("it").append(Constants.RequestParameters.EQUAL).append(str2);
        return sb.toString();
    }

    Map<String, String> zza(Map<String, String> map, @Nullable Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, zzaq(key).zzg((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    public boolean zza(zzdk zzdkVar) {
        return this.zzbdp.offer(zzdkVar);
    }

    public zzdh zzaq(String str) {
        zzdh zzdhVar = this.zzbds.get(str);
        return zzdhVar != null ? zzdhVar : zzdh.zzbdw;
    }

    public void zzc(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.zzbdr.put("e", TextUtils.join(",", list));
    }
}
