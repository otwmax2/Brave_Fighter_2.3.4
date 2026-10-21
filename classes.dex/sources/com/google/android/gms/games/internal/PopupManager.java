package com.google.android.gms.games.internal;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.common.util.zzs;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class PopupManager {
    protected GamesClientImpl Uq;
    protected PopupLocationInfo Ur;

    public static final class PopupLocationInfo {
        public IBinder Us;
        public int Ut;
        public int bottom;
        public int gravity;
        public int left;
        public int right;
        public int top;

        private PopupLocationInfo(int i, IBinder iBinder) {
            this.Ut = -1;
            this.left = 0;
            this.top = 0;
            this.right = 0;
            this.bottom = 0;
            this.gravity = i;
            this.Us = iBinder;
        }

        public Bundle zzbjn() {
            Bundle bundle = new Bundle();
            bundle.putInt("popupLocationInfo.gravity", this.gravity);
            bundle.putInt("popupLocationInfo.displayId", this.Ut);
            bundle.putInt("popupLocationInfo.left", this.left);
            bundle.putInt("popupLocationInfo.top", this.top);
            bundle.putInt("popupLocationInfo.right", this.right);
            bundle.putInt("popupLocationInfo.bottom", this.bottom);
            return bundle;
        }
    }

    @TargetApi(12)
    private static final class PopupManagerHCMR1 extends PopupManager implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {
        private boolean SE;
        private WeakReference<View> Uu;

        protected PopupManagerHCMR1(GamesClientImpl gamesClientImpl, int i) {
            super(gamesClientImpl, i);
            this.SE = false;
        }

        @TargetApi(17)
        private void zzs(View view) {
            Display display;
            int displayId = -1;
            if (zzs.zzavo() && (display = view.getDisplay()) != null) {
                displayId = display.getDisplayId();
            }
            IBinder windowToken = view.getWindowToken();
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            int width = view.getWidth();
            int height = view.getHeight();
            this.Ur.Ut = displayId;
            this.Ur.Us = windowToken;
            this.Ur.left = iArr[0];
            this.Ur.top = iArr[1];
            this.Ur.right = iArr[0] + width;
            this.Ur.bottom = iArr[1] + height;
            if (this.SE) {
                zzbjo();
                this.SE = false;
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            View view;
            if (this.Uu == null || (view = this.Uu.get()) == null) {
                return;
            }
            zzs(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            zzs(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            this.Uq.zzbiz();
            view.removeOnAttachStateChangeListener(this);
        }

        @Override // com.google.android.gms.games.internal.PopupManager
        public void zzbjo() {
            if (this.Ur.Us != null) {
                super.zzbjo();
            } else {
                this.SE = this.Uu != null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.games.internal.PopupManager
        protected void zzqr(int i) {
            this.Ur = new PopupLocationInfo(i, null);
        }

        @Override // com.google.android.gms.games.internal.PopupManager
        @TargetApi(16)
        public void zzr(View view) {
            this.Uq.zzbiz();
            if (this.Uu != null) {
                View decorView = this.Uu.get();
                Context context = this.Uq.getContext();
                if (decorView == null && (context instanceof Activity)) {
                    decorView = ((Activity) context).getWindow().getDecorView();
                }
                if (decorView != null) {
                    decorView.removeOnAttachStateChangeListener(this);
                    ViewTreeObserver viewTreeObserver = decorView.getViewTreeObserver();
                    if (zzs.zzavn()) {
                        viewTreeObserver.removeOnGlobalLayoutListener(this);
                    } else {
                        viewTreeObserver.removeGlobalOnLayoutListener(this);
                    }
                }
            }
            this.Uu = null;
            Context context2 = this.Uq.getContext();
            if (view == null && (context2 instanceof Activity)) {
                View viewFindViewById = ((Activity) context2).findViewById(R.id.content);
                if (viewFindViewById == null) {
                    viewFindViewById = ((Activity) context2).getWindow().getDecorView();
                }
                GamesLog.zzaf("PopupManager", "You have not specified a View to use as content view for popups. Falling back to the Activity content view. Note that this may not work as expected in multi-screen environments");
                view = viewFindViewById;
            }
            if (view == null) {
                GamesLog.zzag("PopupManager", "No content view usable to display popups. Popups will not be displayed in response to this client's calls. Use setViewForPopups() to set your content view.");
                return;
            }
            zzs(view);
            this.Uu = new WeakReference<>(view);
            view.addOnAttachStateChangeListener(this);
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }
    }

    private PopupManager(GamesClientImpl gamesClientImpl, int i) {
        this.Uq = gamesClientImpl;
        zzqr(i);
    }

    public static PopupManager zza(GamesClientImpl gamesClientImpl, int i) {
        return zzs.zzavk() ? new PopupManagerHCMR1(gamesClientImpl, i) : new PopupManager(gamesClientImpl, i);
    }

    public void setGravity(int i) {
        this.Ur.gravity = i;
    }

    public void zzbjo() {
        this.Uq.zza(this.Ur.Us, this.Ur.zzbjn());
    }

    public Bundle zzbjp() {
        return this.Ur.zzbjn();
    }

    public IBinder zzbjq() {
        return this.Ur.Us;
    }

    public PopupLocationInfo zzbjr() {
        return this.Ur;
    }

    protected void zzqr(int i) {
        this.Ur = new PopupLocationInfo(i, new Binder());
    }

    public void zzr(View view) {
    }
}
