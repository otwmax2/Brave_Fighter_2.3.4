package com.facebook.ads.internal.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.ads.internal.p.a.p;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static final String a = c.class.getSimpleName();
    private static c b;
    private final Context c;

    private c(Context context) {
        this.c = context;
    }

    private Bitmap a(String str) {
        byte[] bArrD = com.facebook.ads.internal.q.c.d.a(this.c).a(str, (p) null).d();
        return BitmapFactory.decodeByteArray(bArrD, 0, bArrD.length);
    }

    public static c a(Context context) {
        if (b == null) {
            Context applicationContext = context.getApplicationContext();
            synchronized (c.class) {
                if (b == null) {
                    b = new c(applicationContext);
                }
            }
        }
        return b;
    }

    private static void a(@Nullable Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15, types: [java.io.ByteArrayOutputStream, java.io.Closeable, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r9v0, types: [android.graphics.Bitmap] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x00a2 -> B:46:0x0044). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00b2 -> B:46:0x0044). Please report as a decompilation issue!!! */
    private void a(String str, Bitmap bitmap) throws Throwable {
        ?? r2;
        ?? r4;
        FileOutputStream fileOutputStream = null;
        ?? byteArrayOutputStream = ".png";
        ?? file = new File(this.c.getCacheDir(), str.hashCode() + ".png");
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    if (byteArrayOutputStream.size() >= 3145728) {
                        Log.d(a, "Bitmap size exceeds max size for storage");
                        a((Closeable) byteArrayOutputStream);
                        a((Closeable) null);
                        byteArrayOutputStream = byteArrayOutputStream;
                        file = file;
                    } else {
                        FileOutputStream fileOutputStream2 = new FileOutputStream((File) file);
                        try {
                            byteArrayOutputStream.writeTo(fileOutputStream2);
                            fileOutputStream2.flush();
                            a((Closeable) byteArrayOutputStream);
                            a(fileOutputStream2);
                            byteArrayOutputStream = byteArrayOutputStream;
                            file = file;
                        } catch (FileNotFoundException e) {
                            e = e;
                            fileOutputStream = fileOutputStream2;
                            r2 = byteArrayOutputStream;
                            r4 = file;
                            try {
                                Log.e(a, "Bad output destination (file=" + r4.getAbsolutePath() + ").", e);
                                a((Closeable) r2);
                                a(fileOutputStream);
                            } catch (Throwable th) {
                                th = th;
                                byteArrayOutputStream = r2;
                                a((Closeable) byteArrayOutputStream);
                                a(fileOutputStream);
                                throw th;
                            }
                        } catch (IOException e2) {
                            e = e2;
                            fileOutputStream = fileOutputStream2;
                            String str2 = "Unable to write bitmap to file (url=" + str + ").";
                            Log.e(a, str2, e);
                            a((Closeable) byteArrayOutputStream);
                            a(fileOutputStream);
                            byteArrayOutputStream = byteArrayOutputStream;
                            file = str2;
                        } catch (OutOfMemoryError e3) {
                            e = e3;
                            fileOutputStream = fileOutputStream2;
                            String str3 = "Unable to write bitmap to output stream";
                            Log.e(a, "Unable to write bitmap to output stream", e);
                            a((Closeable) byteArrayOutputStream);
                            a(fileOutputStream);
                            byteArrayOutputStream = byteArrayOutputStream;
                            file = str3;
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream = fileOutputStream2;
                            a((Closeable) byteArrayOutputStream);
                            a(fileOutputStream);
                            throw th;
                        }
                    }
                } catch (FileNotFoundException e4) {
                    e = e4;
                    r2 = byteArrayOutputStream;
                    r4 = file;
                } catch (IOException e5) {
                    e = e5;
                } catch (OutOfMemoryError e6) {
                    e = e6;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            r2 = 0;
            r4 = file;
        } catch (IOException e8) {
            e = e8;
            byteArrayOutputStream = 0;
        } catch (OutOfMemoryError e9) {
            e = e9;
            byteArrayOutputStream = 0;
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = 0;
        }
    }

    private boolean a(int i, int i2) {
        return i > 0 && i2 > 0 && com.facebook.ads.internal.l.a.d(this.c);
    }

    @Nullable
    private Bitmap b(String str, int i, int i2) throws Throwable {
        try {
            Bitmap bitmapA = a(i, i2) ? com.facebook.ads.internal.q.b.c.a(str.substring("file://".length()), i, i2) : BitmapFactory.decodeStream(new FileInputStream(str.substring("file://".length())), null, null);
            a(str, bitmapA);
            return bitmapA;
        } catch (IOException e) {
            Log.e(a, "Failed to copy local image into cache (url=" + str + ").", e);
            return null;
        }
    }

    @Nullable
    private Bitmap c(String str, int i, int i2) throws Throwable {
        InputStream inputStreamOpen;
        Throwable th;
        Bitmap bitmapA = null;
        if (str.startsWith("asset:///")) {
            try {
                inputStreamOpen = this.c.getAssets().open(str.substring(9, str.length()));
            } catch (IOException e) {
                inputStreamOpen = null;
            } catch (Throwable th2) {
                inputStreamOpen = null;
                th = th2;
            }
            try {
                bitmapA = a(i, i2) ? com.facebook.ads.internal.q.b.c.a(inputStreamOpen, i, i2) : BitmapFactory.decodeStream(inputStreamOpen);
                if (inputStreamOpen != null) {
                    a(inputStreamOpen);
                }
            } catch (IOException e2) {
                if (inputStreamOpen != null) {
                    a(inputStreamOpen);
                }
            } catch (Throwable th3) {
                th = th3;
                if (inputStreamOpen != null) {
                    a(inputStreamOpen);
                }
                throw th;
            }
        } else if (a(i, i2)) {
            try {
                bitmapA = d(str, i, i2);
            } catch (IOException e3) {
                bitmapA = a(str);
            }
        } else {
            bitmapA = a(str);
        }
        a(str, bitmapA);
        return bitmapA;
    }

    private Bitmap d(String str, int i, int i2) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setDoInput(true);
        httpURLConnection.connect();
        InputStream inputStream = httpURLConnection.getInputStream();
        Bitmap bitmapA = com.facebook.ads.internal.q.b.c.a(inputStream, i, i2);
        a(inputStream);
        return bitmapA;
    }

    @Nullable
    public Bitmap a(String str, int i, int i2) {
        File file = new File(this.c.getCacheDir(), str.hashCode() + ".png");
        return !file.exists() ? str.startsWith("file://") ? b(str, i, i2) : c(str, i, i2) : a(i, i2) ? com.facebook.ads.internal.q.b.c.a(file.getAbsolutePath(), i, i2) : BitmapFactory.decodeFile(file.getAbsolutePath());
    }
}
