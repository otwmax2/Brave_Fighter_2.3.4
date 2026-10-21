package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public final class zzrf extends Drawable implements Drawable.Callback {
    private int mFrom;
    private int wE;
    private int wF;
    private int wG;
    private int wH;
    private int wI;
    private boolean wJ;
    private zzb wK;
    private Drawable wL;
    private Drawable wM;
    private boolean wN;
    private boolean wO;
    private boolean wP;
    private int wQ;
    private boolean wy;
    private long zzczk;

    private static final class zza extends Drawable {
        private static final zza wR = new zza();
        private static final C0148zza wS = new C0148zza();

        /* JADX INFO: renamed from: com.google.android.gms.internal.zzrf$zza$zza, reason: collision with other inner class name */
        private static final class C0148zza extends Drawable.ConstantState {
            private C0148zza() {
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public int getChangingConfigurations() {
                return 0;
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public Drawable newDrawable() {
                return zza.wR;
            }
        }

        private zza() {
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
        }

        @Override // android.graphics.drawable.Drawable
        public Drawable.ConstantState getConstantState() {
            return wS;
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    static final class zzb extends Drawable.ConstantState {
        int wT;
        int wU;

        zzb(zzb zzbVar) {
            if (zzbVar != null) {
                this.wT = zzbVar.wT;
                this.wU = zzbVar.wU;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.wT;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new zzrf(this);
        }
    }

    public zzrf(Drawable drawable, Drawable drawable2) {
        this(null);
        drawable = drawable == null ? zza.wR : drawable;
        this.wL = drawable;
        drawable.setCallback(this);
        this.wK.wU |= drawable.getChangingConfigurations();
        drawable2 = drawable2 == null ? zza.wR : drawable2;
        this.wM = drawable2;
        drawable2.setCallback(this);
        this.wK.wU |= drawable2.getChangingConfigurations();
    }

    zzrf(zzb zzbVar) {
        this.wE = 0;
        this.wG = 255;
        this.wI = 0;
        this.wy = true;
        this.wK = new zzb(zzbVar);
    }

    public boolean canConstantState() {
        if (!this.wN) {
            this.wO = (this.wL.getConstantState() == null || this.wM.getConstantState() == null) ? false : true;
            this.wN = true;
        }
        return this.wO;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z = false;
        switch (this.wE) {
            case 1:
                this.zzczk = SystemClock.uptimeMillis();
                this.wE = 2;
                break;
            case 2:
                if (this.zzczk >= 0) {
                    float fUptimeMillis = (SystemClock.uptimeMillis() - this.zzczk) / this.wH;
                    z = fUptimeMillis >= 1.0f;
                    if (z) {
                        this.wE = 0;
                    }
                    this.wI = (int) ((Math.min(fUptimeMillis, 1.0f) * (this.wF + 0)) + 0.0f);
                    break;
                }
            default:
                z = z;
                break;
        }
        int i = this.wI;
        boolean z2 = this.wy;
        Drawable drawable = this.wL;
        Drawable drawable2 = this.wM;
        if (z) {
            if (!z2 || i == 0) {
                drawable.draw(canvas);
            }
            if (i == this.wG) {
                drawable2.setAlpha(this.wG);
                drawable2.draw(canvas);
                return;
            }
            return;
        }
        if (z2) {
            drawable.setAlpha(this.wG - i);
        }
        drawable.draw(canvas);
        if (z2) {
            drawable.setAlpha(this.wG);
        }
        if (i > 0) {
            drawable2.setAlpha(i);
            drawable2.draw(canvas);
            drawable2.setAlpha(this.wG);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.wK.wT | this.wK.wU;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (!canConstantState()) {
            return null;
        }
        this.wK.wT = getChangingConfigurations();
        return this.wK;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return Math.max(this.wL.getIntrinsicHeight(), this.wM.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.max(this.wL.getIntrinsicWidth(), this.wM.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (!this.wP) {
            this.wQ = Drawable.resolveOpacity(this.wL.getOpacity(), this.wM.getOpacity());
            this.wP = true;
        }
        return this.wQ;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    @TargetApi(11)
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback;
        if (!com.google.android.gms.common.util.zzs.zzavj() || (callback = getCallback()) == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.wJ && super.mutate() == this) {
            if (!canConstantState()) {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
            this.wL.mutate();
            this.wM.mutate();
            this.wJ = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.wL.setBounds(rect);
        this.wM.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    @TargetApi(11)
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback;
        if (!com.google.android.gms.common.util.zzs.zzavj() || (callback = getCallback()) == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.wI == this.wG) {
            this.wI = i;
        }
        this.wG = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.wL.setColorFilter(colorFilter);
        this.wM.setColorFilter(colorFilter);
    }

    public void startTransition(int i) {
        this.mFrom = 0;
        this.wF = this.wG;
        this.wI = 0;
        this.wH = i;
        this.wE = 1;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    @TargetApi(11)
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback;
        if (!com.google.android.gms.common.util.zzs.zzavj() || (callback = getCallback()) == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public Drawable zzarm() {
        return this.wM;
    }
}
