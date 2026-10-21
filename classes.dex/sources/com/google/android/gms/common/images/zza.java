package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzrf;
import com.google.android.gms.internal.zzrg;
import com.google.android.gms.internal.zzrh;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class zza {
    final C0070zza wu;
    protected int ww;
    protected int wv = 0;
    protected boolean wx = false;
    private boolean wy = true;
    private boolean wz = false;
    private boolean wA = true;

    /* JADX INFO: renamed from: com.google.android.gms.common.images.zza$zza, reason: collision with other inner class name */
    static final class C0070zza {
        public final Uri uri;

        public C0070zza(Uri uri) {
            this.uri = uri;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C0070zza)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            return zzaa.equal(((C0070zza) obj).uri, this.uri);
        }

        public int hashCode() {
            return zzaa.hashCode(this.uri);
        }
    }

    public static final class zzb extends zza {
        private WeakReference<ImageView> wB;

        public zzb(ImageView imageView, int i) {
            super(null, i);
            com.google.android.gms.common.internal.zzb.zzw(imageView);
            this.wB = new WeakReference<>(imageView);
        }

        public zzb(ImageView imageView, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.zzb.zzw(imageView);
            this.wB = new WeakReference<>(imageView);
        }

        private void zza(ImageView imageView, Drawable drawable, boolean z, boolean z2, boolean z3) {
            boolean z4 = (z2 || z3) ? false : true;
            if (z4 && (imageView instanceof zzrg)) {
                int iZzaro = ((zzrg) imageView).zzaro();
                if (this.ww != 0 && iZzaro == this.ww) {
                    return;
                }
            }
            boolean zZzc = zzc(z, z2);
            Drawable drawableZza = zZzc ? zza(imageView.getDrawable(), drawable) : drawable;
            imageView.setImageDrawable(drawableZza);
            if (imageView instanceof zzrg) {
                zzrg zzrgVar = (zzrg) imageView;
                zzrgVar.zzp(z3 ? this.wu.uri : null);
                zzrgVar.zzfw(z4 ? this.ww : 0);
            }
            if (zZzc) {
                ((zzrf) drawableZza).startTransition(IronSourceConstants.INTERSTITIAL_DAILY_CAPPED);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzb)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            ImageView imageView = this.wB.get();
            ImageView imageView2 = ((zzb) obj).wB.get();
            return (imageView2 == null || imageView == null || !zzaa.equal(imageView2, imageView)) ? false : true;
        }

        public int hashCode() {
            return 0;
        }

        @Override // com.google.android.gms.common.images.zza
        protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
            ImageView imageView = this.wB.get();
            if (imageView != null) {
                zza(imageView, drawable, z, z2, z3);
            }
        }
    }

    public static final class zzc extends zza {
        private WeakReference<ImageManager.OnImageLoadedListener> wC;

        public zzc(ImageManager.OnImageLoadedListener onImageLoadedListener, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.zzb.zzw(onImageLoadedListener);
            this.wC = new WeakReference<>(onImageLoadedListener);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzc)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            zzc zzcVar = (zzc) obj;
            ImageManager.OnImageLoadedListener onImageLoadedListener = this.wC.get();
            ImageManager.OnImageLoadedListener onImageLoadedListener2 = zzcVar.wC.get();
            return onImageLoadedListener2 != null && onImageLoadedListener != null && zzaa.equal(onImageLoadedListener2, onImageLoadedListener) && zzaa.equal(zzcVar.wu, this.wu);
        }

        public int hashCode() {
            return zzaa.hashCode(this.wu);
        }

        @Override // com.google.android.gms.common.images.zza
        protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
            ImageManager.OnImageLoadedListener onImageLoadedListener;
            if (z2 || (onImageLoadedListener = this.wC.get()) == null) {
                return;
            }
            onImageLoadedListener.onImageLoaded(this.wu.uri, drawable, z3);
        }
    }

    public zza(Uri uri, int i) {
        this.ww = 0;
        this.wu = new C0070zza(uri);
        this.ww = i;
    }

    private Drawable zza(Context context, zzrh zzrhVar, int i) {
        return context.getResources().getDrawable(i);
    }

    protected zzrf zza(Drawable drawable, Drawable drawable2) {
        if (drawable == null) {
            drawable = null;
        } else if (drawable instanceof zzrf) {
            drawable = ((zzrf) drawable).zzarm();
        }
        return new zzrf(drawable, drawable2);
    }

    void zza(Context context, Bitmap bitmap, boolean z) {
        com.google.android.gms.common.internal.zzb.zzw(bitmap);
        zza(new BitmapDrawable(context.getResources(), bitmap), z, false, true);
    }

    void zza(Context context, zzrh zzrhVar) {
        if (this.wA) {
            zza(null, false, true, false);
        }
    }

    void zza(Context context, zzrh zzrhVar, boolean z) {
        zza(this.ww != 0 ? zza(context, zzrhVar, this.ww) : null, z, false, false);
    }

    protected abstract void zza(Drawable drawable, boolean z, boolean z2, boolean z3);

    protected boolean zzc(boolean z, boolean z2) {
        return (!this.wy || z2 || z) ? false : true;
    }

    public void zzfu(int i) {
        this.ww = i;
    }
}
