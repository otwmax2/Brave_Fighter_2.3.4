package com.chartboost.sdk.Libraries;

import android.content.Context;
import com.chartboost.sdk.impl.bg;
import com.chartboost.sdk.impl.s;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f {
    public final File a;
    public final File b;
    private final AtomicReference<com.chartboost.sdk.Model.e> c;
    private final g d;
    private final AtomicReference<g> e = new AtomicReference<>();
    private s f;

    public f(s sVar, Context context, AtomicReference<com.chartboost.sdk.Model.e> atomicReference) {
        File[] fileArrListFiles;
        this.f = sVar;
        this.d = new g(context.getCacheDir());
        this.c = atomicReference;
        try {
            File fileB = sVar.b();
            if (fileB != null) {
                this.e.set(new g(fileB));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.b = new File(this.d.a, "track");
        this.a = new File(this.d.a, "session");
        g[] gVarArr = {this.d, this.e.get()};
        int length = gVarArr.length;
        for (int i = 0; i < length; i++) {
            g gVar = gVarArr[i];
            try {
                boolean z = gVar == this.d;
                if (gVar != null && (z || a())) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - TimeUnit.DAYS.toMillis(atomicReference.get().w);
                    File file = new File(gVar.a, "templates");
                    if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
                        for (File file2 : fileArrListFiles) {
                            if (file2.isDirectory()) {
                                File[] fileArrListFiles2 = file2.listFiles();
                                if (fileArrListFiles2 != null) {
                                    for (File file3 : fileArrListFiles2) {
                                        if ((z || file3.lastModified() < jCurrentTimeMillis) && !file3.delete()) {
                                            CBLogging.b("FileCache", "Unable to delete " + file3.getPath());
                                        }
                                    }
                                }
                                File[] fileArrListFiles3 = file2.listFiles();
                                if (fileArrListFiles3 != null && fileArrListFiles3.length == 0 && !file2.delete()) {
                                    CBLogging.b("FileCache", "Unable to delete " + file2.getPath());
                                }
                            }
                        }
                    }
                    File file4 = new File(gVar.a, ".adId");
                    if (file4.exists() && ((z || file4.lastModified() < jCurrentTimeMillis) && !file4.delete())) {
                        CBLogging.b("FileCache", "Unable to delete " + file4.getPath());
                    }
                }
            } catch (Exception e2) {
                CBLogging.b("FileCache", "Exception while cleaning up templates directory at " + gVar.f.getPath(), e2);
                e2.printStackTrace();
            }
        }
    }

    public synchronized void a(File file, byte[] bArr) {
        try {
            bg.a(file, bArr);
        } catch (IOException e) {
            CBLogging.b("FileCache", "IOException attempting to write cache to disk", e);
            com.chartboost.sdk.Tracking.a.a(getClass(), "writeToDisk(File, byte[])", e);
        }
    }

    public synchronized JSONObject a(File file) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(new String(bg.b(file)));
        } catch (Exception e) {
            CBLogging.b("FileCache", "Error loading cache from disk", e);
            com.chartboost.sdk.Tracking.a.a(getClass(), "readJSONObject", e);
            jSONObject = null;
        }
        return jSONObject;
    }

    public synchronized byte[] b(File file) {
        byte[] bArrB = null;
        synchronized (this) {
            if (file != null) {
                try {
                    bArrB = bg.b(file);
                } catch (Exception e) {
                    CBLogging.b("FileCache", "Error loading cache from disk", e);
                    com.chartboost.sdk.Tracking.a.a(getClass(), "readByteArrayFromDisk", e);
                }
            }
        }
        return bArrB;
    }

    public String a(String str) {
        File file = new File(d().g, str);
        if (file.exists()) {
            return file.getPath();
        }
        return null;
    }

    public boolean a() {
        try {
            String strC = this.f.c();
            if (strC != null && strC.equals("mounted")) {
                if (!com.chartboost.sdk.i.n) {
                    return true;
                }
            }
        } catch (Exception e) {
            com.chartboost.sdk.Tracking.a.a(getClass(), "isExternalStorageAvailable", e);
        }
        CBLogging.e("FileCache", "External Storage unavailable");
        return false;
    }

    public boolean b(String str) {
        if (d().d == null || str == null) {
            return false;
        }
        return new File(d().d, str).exists();
    }

    public JSONArray b() {
        JSONArray jSONArray = new JSONArray();
        String[] list = d().g.list();
        if (list != null) {
            for (String str : list) {
                if (!str.equals(".nomedia") && !str.endsWith(".tmp")) {
                    jSONArray.put(str);
                }
            }
        }
        return jSONArray;
    }

    public JSONObject c() {
        String[] list;
        JSONObject jSONObject = new JSONObject();
        try {
            File file = d().a;
            for (String str : this.c.get().x) {
                if (!str.equals("templates")) {
                    File file2 = new File(file, str);
                    JSONArray jSONArray = new JSONArray();
                    if (file2.exists() && (list = file2.list()) != null) {
                        for (String str2 : list) {
                            if (!str2.equals(".nomedia") && !str2.endsWith(".tmp")) {
                                jSONArray.put(str2);
                            }
                        }
                    }
                    e.a(jSONObject, str, jSONArray);
                }
            }
        } catch (Exception e) {
            com.chartboost.sdk.Tracking.a.a(getClass(), "getWebViewCacheAssets", e);
        }
        return jSONObject;
    }

    public g d() {
        if (a()) {
            g gVar = this.e.get();
            if (gVar == null) {
                try {
                    File fileB = this.f.b();
                    if (fileB != null) {
                        this.e.compareAndSet(null, new g(fileB));
                        gVar = this.e.get();
                    }
                } catch (Exception e) {
                    com.chartboost.sdk.Tracking.a.a(getClass(), "currentLocations", e);
                }
            }
            if (gVar != null) {
                return gVar;
            }
        }
        return this.d;
    }

    public long c(File file) {
        long j = 0;
        if (file != null) {
            try {
                if (file.isDirectory()) {
                    File[] fileArrListFiles = file.listFiles();
                    if (fileArrListFiles == null) {
                        return 0L;
                    }
                    int length = fileArrListFiles.length;
                    int i = 0;
                    while (i < length) {
                        long jC = c(fileArrListFiles[i]) + j;
                        i++;
                        j = jC;
                    }
                    return j;
                }
            } catch (Exception e) {
                com.chartboost.sdk.Tracking.a.a(f.class, "getFolderSize", e);
                return 0L;
            }
        }
        if (file == null) {
            return 0L;
        }
        return file.length();
    }

    public JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        g gVar = this.e.get();
        if (gVar != null) {
            e.a(jSONObject, ".chartboost-external-folder-size", Long.valueOf(c(gVar.a)));
        }
        e.a(jSONObject, ".chartboost-internal-folder-size", Long.valueOf(c(this.d.a)));
        File file = d().a;
        String[] list = file.list();
        if (list != null && list.length > 0) {
            for (String str : list) {
                File file2 = new File(file, str);
                JSONObject jSONObject2 = new JSONObject();
                e.a(jSONObject2, file2.getName() + "-size", Long.valueOf(c(file2)));
                String[] list2 = file2.list();
                if (list2 != null) {
                    e.a(jSONObject2, "count", Integer.valueOf(list2.length));
                }
                e.a(jSONObject, file2.getName(), jSONObject2);
            }
        }
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d(java.io.File r5) throws java.lang.Throwable {
        /*
            r4 = this;
            r2 = 0
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch: java.io.FileNotFoundException -> L1f java.io.IOException -> L30 java.lang.Throwable -> L41
            java.lang.String r0 = "rw"
            r1.<init>(r5, r0)     // Catch: java.io.FileNotFoundException -> L1f java.io.IOException -> L30 java.lang.Throwable -> L41
            r2 = 0
            r1.seek(r2)     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L4f java.io.FileNotFoundException -> L51
            int r0 = r1.read()     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L4f java.io.FileNotFoundException -> L51
            r2 = 0
            r1.seek(r2)     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L4f java.io.FileNotFoundException -> L51
            r1.write(r0)     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L4f java.io.FileNotFoundException -> L51
            if (r1 == 0) goto L1e
            r1.close()     // Catch: java.io.IOException -> L49
        L1e:
            return
        L1f:
            r0 = move-exception
            r1 = r2
        L21:
            java.lang.String r2 = "FileCache"
            java.lang.String r3 = "File not found when attempting to touch"
            com.chartboost.sdk.Libraries.CBLogging.b(r2, r3, r0)     // Catch: java.lang.Throwable -> L4d
            if (r1 == 0) goto L1e
            r1.close()     // Catch: java.io.IOException -> L2e
            goto L1e
        L2e:
            r0 = move-exception
            goto L1e
        L30:
            r0 = move-exception
            r1 = r2
        L32:
            java.lang.String r2 = "FileCache"
            java.lang.String r3 = "IOException when attempting to touch file"
            com.chartboost.sdk.Libraries.CBLogging.b(r2, r3, r0)     // Catch: java.lang.Throwable -> L4d
            if (r1 == 0) goto L1e
            r1.close()     // Catch: java.io.IOException -> L3f
            goto L1e
        L3f:
            r0 = move-exception
            goto L1e
        L41:
            r0 = move-exception
            r1 = r2
        L43:
            if (r1 == 0) goto L48
            r1.close()     // Catch: java.io.IOException -> L4b
        L48:
            throw r0
        L49:
            r0 = move-exception
            goto L1e
        L4b:
            r1 = move-exception
            goto L48
        L4d:
            r0 = move-exception
            goto L43
        L4f:
            r0 = move-exception
            goto L32
        L51:
            r0 = move-exception
            goto L21
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chartboost.sdk.Libraries.f.d(java.io.File):void");
    }
}
