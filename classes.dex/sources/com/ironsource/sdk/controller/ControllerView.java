package com.ironsource.sdk.controller;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.ironsource.environment.DeviceStatus;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.controller.IronSourceWebView;
import com.ironsource.sdk.handlers.BackButtonHandler;
import com.ironsource.sdk.listeners.OnWebViewChangeListener;

/* JADX INFO: loaded from: classes.dex */
public class ControllerView extends FrameLayout implements OnWebViewChangeListener {
    private Context mContext;
    private IronSourceWebView mWebViewController;

    public ControllerView(Context context) {
        super(context);
        this.mContext = context;
        setClickable(true);
    }

    public void showInterstitial(IronSourceWebView webView) {
        this.mWebViewController = webView;
        this.mWebViewController.setOnWebViewControllerChangeListener(this);
        this.mWebViewController.requestFocus();
        this.mContext = this.mWebViewController.getCurrentActivityContext();
        setPaddingByOrientation(getStatusBarPadding(), getNavigationBarPadding());
        addViewToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mWebViewController.resume();
        this.mWebViewController.viewableChange(true, Constants.ParametersKeys.MAIN);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mWebViewController.pause();
        this.mWebViewController.viewableChange(false, Constants.ParametersKeys.MAIN);
        if (this.mWebViewController != null) {
            this.mWebViewController.setState(IronSourceWebView.State.Gone);
            this.mWebViewController.removeVideoEventsListener();
        }
        removeAllViews();
    }

    private void addViewToWindow() {
        Activity activity = (Activity) this.mContext;
        activity.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.ControllerView.1
            @Override // java.lang.Runnable
            public void run() {
                ViewGroup decorView = ControllerView.this.getWindowDecorViewGroup();
                if (decorView != null) {
                    decorView.addView(ControllerView.this);
                }
            }
        });
    }

    private void removeViewFromWindow() {
        Activity activity = (Activity) this.mContext;
        activity.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.ControllerView.2
            @Override // java.lang.Runnable
            public void run() {
                ViewGroup decorView = ControllerView.this.getWindowDecorViewGroup();
                if (decorView != null) {
                    decorView.removeView(ControllerView.this);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewGroup getWindowDecorViewGroup() {
        Activity activity = (Activity) this.mContext;
        if (activity != null) {
            return (ViewGroup) activity.getWindow().getDecorView();
        }
        return null;
    }

    private void setPaddingByOrientation(int statusBarHeight, int navigationBarSize) {
        try {
            if (this.mContext != null) {
                int orientation = DeviceStatus.getDeviceOrientation(this.mContext);
                if (orientation == 1) {
                    setPadding(0, statusBarHeight, 0, navigationBarSize);
                } else if (orientation == 2) {
                    setPadding(0, statusBarHeight, navigationBarSize, 0);
                }
            }
        } catch (Exception e) {
        }
    }

    private int getStatusBarPadding() {
        Activity activity = (Activity) this.mContext;
        boolean isFullScreen = (activity.getWindow().getAttributes().flags & 1024) != 0;
        if (isFullScreen) {
            return 0;
        }
        int top = getStatusBarHeight();
        if (top <= 0) {
            top = 0;
        }
        return top;
    }

    private int getStatusBarHeight() {
        int resourceId;
        try {
            if (this.mContext == null || (resourceId = this.mContext.getResources().getIdentifier("status_bar_height", "dimen", "android")) <= 0) {
                return 0;
            }
            int result = this.mContext.getResources().getDimensionPixelSize(resourceId);
            return result;
        } catch (Exception e) {
            return 0;
        }
    }

    private int getNavigationBarPadding() {
        int i = 0;
        Activity activity = (Activity) this.mContext;
        try {
            if (Build.VERSION.SDK_INT > 9) {
                Rect screenRect = new Rect();
                activity.getWindow().getDecorView().getDrawingRect(screenRect);
                Rect visibleFrame = new Rect();
                activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(visibleFrame);
                int orientation = DeviceStatus.getDeviceOrientation(activity);
                if (orientation == 1) {
                    if (screenRect.bottom - visibleFrame.bottom > 0) {
                        i = screenRect.bottom - visibleFrame.bottom;
                    }
                } else if (screenRect.right - visibleFrame.right > 0) {
                    i = screenRect.right - visibleFrame.right;
                }
            }
        } catch (Exception e) {
        }
        return i;
    }

    @Override // com.ironsource.sdk.listeners.OnWebViewChangeListener
    public void onCloseRequested() {
        removeViewFromWindow();
    }

    @Override // com.ironsource.sdk.listeners.OnWebViewChangeListener
    public void onOrientationChanged(String orientation, int rotation) {
    }

    @Override // com.ironsource.sdk.listeners.OnWebViewChangeListener
    public boolean onBackButtonPressed() {
        return BackButtonHandler.getInstance().handleBackButton((Activity) this.mContext);
    }
}
