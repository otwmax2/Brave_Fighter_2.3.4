package com.chartboost.sdk.Libraries;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class h {
    private a a;
    private final com.chartboost.sdk.e b;
    private String c;
    private float d = 1.0f;

    public static class a {
        private final String b;
        private final File c;
        private final f e;
        private int f = -1;
        private int g = -1;
        private Bitmap d = null;
        private int a = 1;

        public a(String str, File file, f fVar) {
            this.c = file;
            this.b = str;
            this.e = fVar;
        }

        public Bitmap a() {
            if (this.d == null) {
                b();
            }
            return this.d;
        }

        public void b() {
            if (this.d == null) {
                CBLogging.a("MemoryBitmap", "Loading image '" + this.b + "' from cache");
                byte[] bArrB = this.e.b(this.c);
                if (bArrB == null) {
                    CBLogging.b("MemoryBitmap", "decode() - bitmap not found");
                    return;
                }
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeByteArray(bArrB, 0, bArrB.length, options);
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inJustDecodeBounds = false;
                options2.inDither = false;
                options2.inPurgeable = true;
                options2.inInputShareable = true;
                options2.inTempStorage = new byte[32768];
                options2.inSampleSize = 1;
                while (options2.inSampleSize < 32) {
                    try {
                        this.d = BitmapFactory.decodeByteArray(bArrB, 0, bArrB.length, options2);
                    } catch (Exception e) {
                        CBLogging.b("MemoryBitmap", "Exception raised decoding bitmap", e);
                        com.chartboost.sdk.Tracking.a.a(getClass(), "decodeByteArray", e);
                    } catch (OutOfMemoryError e2) {
                        CBLogging.b("MemoryBitmap", "OutOfMemoryError suppressed - trying larger sample size", e2);
                        options2.inSampleSize *= 2;
                    }
                    if (this.d == null) {
                        this.c.delete();
                        throw new RuntimeException("Unable to decode " + this.b);
                    }
                    this.a = options2.inSampleSize;
                }
                this.a = options2.inSampleSize;
            }
        }

        public int c() {
            return this.a;
        }

        public void d() {
            try {
                if (this.d != null && !this.d.isRecycled()) {
                    this.d.recycle();
                }
            } catch (Exception e) {
                com.chartboost.sdk.Tracking.a.a(getClass(), "recycle", e);
            }
            this.d = null;
        }

        public int e() {
            if (this.d != null) {
                return this.d.getWidth();
            }
            if (this.f >= 0) {
                return this.f;
            }
            g();
            return this.f;
        }

        public int f() {
            if (this.d != null) {
                return this.d.getHeight();
            }
            if (this.g >= 0) {
                return this.g;
            }
            g();
            return this.g;
        }

        private void g() {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(this.c.getAbsolutePath(), options);
                this.f = options.outWidth;
                this.g = options.outHeight;
            } catch (Exception e) {
                CBLogging.b("MemoryBitmap", "Error decoding file size", e);
                com.chartboost.sdk.Tracking.a.a(getClass(), "decodeSize", e);
            }
        }
    }

    public h(com.chartboost.sdk.e eVar) {
        this.b = eVar;
    }

    public int a() {
        return this.a.e() * this.a.c();
    }

    public int b() {
        return this.a.f() * this.a.c();
    }

    public boolean a(String str) {
        return a(this.b.g(), str);
    }

    public boolean a(JSONObject jSONObject, String str) {
        JSONObject jSONObjectA = e.a(jSONObject, str);
        this.c = str;
        if (jSONObjectA == null) {
            return true;
        }
        String strOptString = jSONObjectA.optString("url");
        this.d = (float) jSONObjectA.optDouble("scale", 1.0d);
        if (strOptString.isEmpty()) {
            return true;
        }
        String strOptString2 = jSONObjectA.optString("checksum");
        if (strOptString2.isEmpty()) {
            return false;
        }
        this.a = this.b.e.j.a(strOptString2);
        return this.a != null;
    }

    public void c() {
        if (this.a != null) {
            this.a.d();
        }
    }

    public boolean d() {
        return this.a != null;
    }

    public Bitmap e() {
        if (this.a != null) {
            return this.a.a();
        }
        return null;
    }

    public float f() {
        return this.d;
    }
}
