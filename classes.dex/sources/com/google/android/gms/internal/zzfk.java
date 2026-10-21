package com.google.android.gms.internal;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@zzir
public class zzfk extends zzfh {
    private static final Set<String> zzbjt = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzbju = new DecimalFormat("#,###");
    private File zzbjv;
    private boolean zzbjw;

    public zzfk(zzll zzllVar) {
        super(zzllVar);
        File cacheDir = this.mContext.getCacheDir();
        if (cacheDir == null) {
            zzkh.zzcy("Context.getCacheDir() returned null");
            return;
        }
        this.zzbjv = new File(cacheDir, "admobVideoStreams");
        if (!this.zzbjv.isDirectory() && !this.zzbjv.mkdirs()) {
            String strValueOf = String.valueOf(this.zzbjv.getAbsolutePath());
            zzkh.zzcy(strValueOf.length() != 0 ? "Could not create preload cache directory at ".concat(strValueOf) : new String("Could not create preload cache directory at "));
            this.zzbjv = null;
        } else {
            if (this.zzbjv.setReadable(true, false) && this.zzbjv.setExecutable(true, false)) {
                return;
            }
            String strValueOf2 = String.valueOf(this.zzbjv.getAbsolutePath());
            zzkh.zzcy(strValueOf2.length() != 0 ? "Could not set cache file permissions at ".concat(strValueOf2) : new String("Could not set cache file permissions at "));
            this.zzbjv = null;
        }
    }

    private File zzb(File file) {
        return new File(this.zzbjv, String.valueOf(file.getName()).concat(".done"));
    }

    private static void zzc(File file) {
        if (file.isFile()) {
            file.setLastModified(System.currentTimeMillis());
        } else {
            try {
                file.createNewFile();
            } catch (IOException e) {
            }
        }
    }

    @Override // com.google.android.gms.internal.zzfh
    public void abort() {
        this.zzbjw = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x03be, code lost:
    
        r11.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x03c6, code lost:
    
        if (com.google.android.gms.internal.zzkh.zzaz(3) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x03c8, code lost:
    
        r2 = com.google.android.gms.internal.zzfk.zzbju.format(r5);
        com.google.android.gms.internal.zzkh.zzcw(new java.lang.StringBuilder((java.lang.String.valueOf(r2).length() + 22) + java.lang.String.valueOf(r27).length()).append("Preloaded ").append(r2).append(" bytes from ").append(r27).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0404, code lost:
    
        r12.setReadable(true, false);
        zzc(r13);
        zza(r27, r12.getAbsolutePath(), r5);
        com.google.android.gms.internal.zzfk.zzbjt.remove(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x041c, code lost:
    
        return true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27, types: [java.lang.String] */
    @Override // com.google.android.gms.internal.zzfh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean zzba(java.lang.String r27) {
        /*
            Method dump skipped, instruction units count: 1123
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzfk.zzba(java.lang.String):boolean");
    }

    public int zzln() {
        int i = 0;
        if (this.zzbjv != null) {
            for (File file : this.zzbjv.listFiles()) {
                if (!file.getName().endsWith(".done")) {
                    i++;
                }
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean zzlo() {
        /*
            r11 = this;
            r6 = 0
            java.io.File r0 = r11.zzbjv
            if (r0 != 0) goto L6
        L5:
            return r6
        L6:
            r5 = 0
            r2 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            java.io.File r0 = r11.zzbjv
            java.io.File[] r8 = r0.listFiles()
            int r9 = r8.length
            r7 = r6
        L14:
            if (r7 >= r9) goto L33
            r4 = r8[r7]
            java.lang.String r0 = r4.getName()
            java.lang.String r1 = ".done"
            boolean r0 = r0.endsWith(r1)
            if (r0 != 0) goto L4c
            long r0 = r4.lastModified()
            int r10 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r10 >= 0) goto L4c
            r2 = r4
        L2d:
            int r3 = r7 + 1
            r7 = r3
            r5 = r2
            r2 = r0
            goto L14
        L33:
            if (r5 == 0) goto L4a
            boolean r0 = r5.delete()
            java.io.File r1 = r11.zzb(r5)
            boolean r2 = r1.isFile()
            if (r2 == 0) goto L48
            boolean r1 = r1.delete()
            r0 = r0 & r1
        L48:
            r6 = r0
            goto L5
        L4a:
            r0 = r6
            goto L48
        L4c:
            r0 = r2
            r2 = r5
            goto L2d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzfk.zzlo():boolean");
    }
}
