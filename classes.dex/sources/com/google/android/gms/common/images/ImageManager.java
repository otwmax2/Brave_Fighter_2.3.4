package com.google.android.gms.common.images;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.util.LruCache;
import android.util.Log;
import android.widget.ImageView;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.images.zza;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.internal.zzrh;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class ImageManager {
    private static final Object wf = new Object();
    private static HashSet<Uri> wg = new HashSet<>();
    private static ImageManager wh;
    private static ImageManager wi;
    private final Context mContext;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final ExecutorService wj = Executors.newFixedThreadPool(4);
    private final zzb wk;
    private final zzrh wl;
    private final Map<com.google.android.gms.common.images.zza, ImageReceiver> wm;
    private final Map<Uri, ImageReceiver> wn;
    private final Map<Uri, Long> wo;

    @KeepName
    private final class ImageReceiver extends ResultReceiver {
        private final Uri mUri;
        private final ArrayList<com.google.android.gms.common.images.zza> wp;

        ImageReceiver(Uri uri) {
            super(new Handler(Looper.getMainLooper()));
            this.mUri = uri;
            this.wp = new ArrayList<>();
        }

        @Override // android.os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.wj.execute(ImageManager.this.new zzc(this.mUri, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }

        public void zzarl() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.putExtra("com.google.android.gms.extras.uri", this.mUri);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            ImageManager.this.mContext.sendBroadcast(intent);
        }

        public void zzb(com.google.android.gms.common.images.zza zzaVar) {
            com.google.android.gms.common.internal.zzb.zzhj("ImageReceiver.addImageRequest() must be called in the main thread");
            this.wp.add(zzaVar);
        }

        public void zzc(com.google.android.gms.common.images.zza zzaVar) {
            com.google.android.gms.common.internal.zzb.zzhj("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.wp.remove(zzaVar);
        }
    }

    public interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    @TargetApi(11)
    private static final class zza {
        static int zza(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    private static final class zzb extends LruCache<zza.C0070zza, Bitmap> {
        public zzb(Context context) {
            super(zzcc(context));
        }

        @TargetApi(11)
        private static int zzcc(Context context) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            return (int) (((((context.getApplicationInfo().flags & 1048576) != 0) && zzs.zzavj()) ? zza.zza(activityManager) : activityManager.getMemoryClass()) * 1048576 * 0.33f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.util.LruCache
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public int sizeOf(zza.C0070zza c0070zza, Bitmap bitmap) {
            return bitmap.getHeight() * bitmap.getRowBytes();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.util.LruCache
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void entryRemoved(boolean z, zza.C0070zza c0070zza, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z, c0070zza, bitmap, bitmap2);
        }
    }

    private final class zzc implements Runnable {
        private final Uri mUri;
        private final ParcelFileDescriptor wr;

        public zzc(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.mUri = uri;
            this.wr = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzb.zzhk("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            boolean z = false;
            Bitmap bitmapDecodeFileDescriptor = null;
            if (this.wr != null) {
                try {
                    bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(this.wr.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    String strValueOf = String.valueOf(this.mUri);
                    Log.e("ImageManager", new StringBuilder(String.valueOf(strValueOf).length() + 34).append("OOM while loading bitmap for uri: ").append(strValueOf).toString(), e);
                    z = true;
                }
                try {
                    this.wr.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.mHandler.post(ImageManager.this.new zzf(this.mUri, bitmapDecodeFileDescriptor, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                String strValueOf2 = String.valueOf(this.mUri);
                Log.w("ImageManager", new StringBuilder(String.valueOf(strValueOf2).length() + 32).append("Latch interrupted while posting ").append(strValueOf2).toString());
            }
        }
    }

    private final class zzd implements Runnable {
        private final com.google.android.gms.common.images.zza ws;

        public zzd(com.google.android.gms.common.images.zza zzaVar) {
            this.ws = zzaVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzb.zzhj("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.wm.get(this.ws);
            if (imageReceiver != null) {
                ImageManager.this.wm.remove(this.ws);
                imageReceiver.zzc(this.ws);
            }
            zza.C0070zza c0070zza = this.ws.wu;
            if (c0070zza.uri == null) {
                this.ws.zza(ImageManager.this.mContext, ImageManager.this.wl, true);
                return;
            }
            Bitmap bitmapZza = ImageManager.this.zza(c0070zza);
            if (bitmapZza != null) {
                this.ws.zza(ImageManager.this.mContext, bitmapZza, true);
                return;
            }
            Long l = (Long) ImageManager.this.wo.get(c0070zza.uri);
            if (l != null) {
                if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                    this.ws.zza(ImageManager.this.mContext, ImageManager.this.wl, true);
                    return;
                }
                ImageManager.this.wo.remove(c0070zza.uri);
            }
            this.ws.zza(ImageManager.this.mContext, ImageManager.this.wl);
            ImageReceiver imageReceiver2 = (ImageReceiver) ImageManager.this.wn.get(c0070zza.uri);
            if (imageReceiver2 == null) {
                imageReceiver2 = ImageManager.this.new ImageReceiver(c0070zza.uri);
                ImageManager.this.wn.put(c0070zza.uri, imageReceiver2);
            }
            imageReceiver2.zzb(this.ws);
            if (!(this.ws instanceof zza.zzc)) {
                ImageManager.this.wm.put(this.ws, imageReceiver2);
            }
            synchronized (ImageManager.wf) {
                if (!ImageManager.wg.contains(c0070zza.uri)) {
                    ImageManager.wg.add(c0070zza.uri);
                    imageReceiver2.zzarl();
                }
            }
        }
    }

    @TargetApi(14)
    private static final class zze implements ComponentCallbacks2 {
        private final zzb wk;

        public zze(zzb zzbVar) {
            this.wk = zzbVar;
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
            this.wk.evictAll();
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i) {
            if (i >= 60) {
                this.wk.evictAll();
            } else if (i >= 20) {
                this.wk.trimToSize(this.wk.size() / 2);
            }
        }
    }

    private final class zzf implements Runnable {
        private final Bitmap mBitmap;
        private final Uri mUri;
        private boolean wt;
        private final CountDownLatch zzalc;

        public zzf(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.mUri = uri;
            this.mBitmap = bitmap;
            this.wt = z;
            this.zzalc = countDownLatch;
        }

        private void zza(ImageReceiver imageReceiver, boolean z) {
            ArrayList arrayList = imageReceiver.wp;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                com.google.android.gms.common.images.zza zzaVar = (com.google.android.gms.common.images.zza) arrayList.get(i);
                if (z) {
                    zzaVar.zza(ImageManager.this.mContext, this.mBitmap, false);
                } else {
                    ImageManager.this.wo.put(this.mUri, Long.valueOf(SystemClock.elapsedRealtime()));
                    zzaVar.zza(ImageManager.this.mContext, ImageManager.this.wl, false);
                }
                if (!(zzaVar instanceof zza.zzc)) {
                    ImageManager.this.wm.remove(zzaVar);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzb.zzhj("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.mBitmap != null;
            if (ImageManager.this.wk != null) {
                if (this.wt) {
                    ImageManager.this.wk.evictAll();
                    System.gc();
                    this.wt = false;
                    ImageManager.this.mHandler.post(this);
                    return;
                }
                if (z) {
                    ImageManager.this.wk.put(new zza.C0070zza(this.mUri), this.mBitmap);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.wn.remove(this.mUri);
            if (imageReceiver != null) {
                zza(imageReceiver, z);
            }
            this.zzalc.countDown();
            synchronized (ImageManager.wf) {
                ImageManager.wg.remove(this.mUri);
            }
        }
    }

    private ImageManager(Context context, boolean z) {
        this.mContext = context.getApplicationContext();
        if (z) {
            this.wk = new zzb(this.mContext);
            if (zzs.zzavm()) {
                zzarj();
            }
        } else {
            this.wk = null;
        }
        this.wl = new zzrh();
        this.wm = new HashMap();
        this.wn = new HashMap();
        this.wo = new HashMap();
    }

    public static ImageManager create(Context context) {
        return zzg(context, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap zza(zza.C0070zza c0070zza) {
        if (this.wk == null) {
            return null;
        }
        return this.wk.get(c0070zza);
    }

    @TargetApi(14)
    private void zzarj() {
        this.mContext.registerComponentCallbacks(new zze(this.wk));
    }

    public static ImageManager zzg(Context context, boolean z) {
        if (z) {
            if (wi == null) {
                wi = new ImageManager(context, true);
            }
            return wi;
        }
        if (wh == null) {
            wh = new ImageManager(context, false);
        }
        return wh;
    }

    public void loadImage(ImageView imageView, int i) {
        zza(new zza.zzb(imageView, i));
    }

    public void loadImage(ImageView imageView, Uri uri) {
        zza(new zza.zzb(imageView, uri));
    }

    public void loadImage(ImageView imageView, Uri uri, int i) {
        zza.zzb zzbVar = new zza.zzb(imageView, uri);
        zzbVar.zzfu(i);
        zza(zzbVar);
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        zza(new zza.zzc(onImageLoadedListener, uri));
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i) {
        zza.zzc zzcVar = new zza.zzc(onImageLoadedListener, uri);
        zzcVar.zzfu(i);
        zza(zzcVar);
    }

    public void zza(com.google.android.gms.common.images.zza zzaVar) {
        com.google.android.gms.common.internal.zzb.zzhj("ImageManager.loadImage() must be called in the main thread");
        new zzd(zzaVar).run();
    }
}
