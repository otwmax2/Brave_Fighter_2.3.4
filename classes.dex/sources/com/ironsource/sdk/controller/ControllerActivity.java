package com.ironsource.sdk.controller;

import android.app.Activity;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.InputDeviceCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.ironsource.environment.DeviceStatus;
import com.ironsource.sdk.agent.IronSourceAdsPublisherAgent;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.controller.IronSourceWebView;
import com.ironsource.sdk.data.AdUnitsState;
import com.ironsource.sdk.data.SSAEnums;
import com.ironsource.sdk.handlers.BackButtonHandler;
import com.ironsource.sdk.listeners.OnWebViewChangeListener;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;

/* JADX INFO: loaded from: classes.dex */
public class ControllerActivity extends Activity implements OnWebViewChangeListener, VideoEventsListener {
    private static final String TAG = ControllerActivity.class.getSimpleName();
    private static final int WEB_VIEW_VIEW_ID = 1;
    private RelativeLayout mContainer;
    private String mProductType;
    private AdUnitsState mState;
    private IronSourceWebView mWebViewController;
    private FrameLayout mWebViewFrameContainer;
    public int currentRequestedRotation = -1;
    private boolean mIsImmersive = false;
    private Handler mUiThreadHandler = new Handler();
    private final Runnable decorViewSettings = new Runnable() { // from class: com.ironsource.sdk.controller.ControllerActivity.1
        @Override // java.lang.Runnable
        public void run() {
            ControllerActivity.this.getWindow().getDecorView().setSystemUiVisibility(SDKUtils.getActivityUIFlags(ControllerActivity.this.mIsImmersive));
        }
    };
    final RelativeLayout.LayoutParams MATCH_PARENT_LAYOUT_PARAMS = new RelativeLayout.LayoutParams(-1, -1);
    private boolean calledFromOnCreate = false;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        try {
            Logger.i(TAG, "onCreate");
            hideActivityTitle();
            hideActivtiyStatusBar();
            IronSourceAdsPublisherAgent ssaPubAgt = IronSourceAdsPublisherAgent.getInstance(this);
            this.mWebViewController = ssaPubAgt.getWebViewController();
            this.mWebViewController.setId(1);
            this.mWebViewController.setOnWebViewControllerChangeListener(this);
            this.mWebViewController.setVideoEventsListener(this);
            Intent intent = getIntent();
            this.mProductType = intent.getStringExtra(Constants.ParametersKeys.PRODUCT_TYPE);
            this.mIsImmersive = intent.getBooleanExtra(Constants.ParametersKeys.IMMERSIVE, false);
            if (this.mIsImmersive) {
                getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.ironsource.sdk.controller.ControllerActivity.2
                    @Override // android.view.View.OnSystemUiVisibilityChangeListener
                    public void onSystemUiVisibilityChange(int visibility) {
                        if ((visibility & InputDeviceCompat.SOURCE_TOUCHSCREEN) == 0) {
                            ControllerActivity.this.mUiThreadHandler.removeCallbacks(ControllerActivity.this.decorViewSettings);
                            ControllerActivity.this.mUiThreadHandler.postDelayed(ControllerActivity.this.decorViewSettings, 500L);
                        }
                    }
                });
                runOnUiThread(this.decorViewSettings);
            }
            if (!TextUtils.isEmpty(this.mProductType) && SSAEnums.ProductType.OfferWall.toString().equalsIgnoreCase(this.mProductType)) {
                if (savedInstanceState != null) {
                    AdUnitsState state = (AdUnitsState) savedInstanceState.getParcelable("state");
                    if (state != null) {
                        this.mState = state;
                        this.mWebViewController.restoreState(state);
                    }
                    finish();
                } else {
                    this.mState = this.mWebViewController.getSavedState();
                }
            }
            this.mContainer = new RelativeLayout(this);
            setContentView(this.mContainer, this.MATCH_PARENT_LAYOUT_PARAMS);
            this.mWebViewFrameContainer = this.mWebViewController.getLayout();
            View view = this.mContainer.findViewById(1);
            if (view == null && this.mWebViewFrameContainer.getParent() != null) {
                this.calledFromOnCreate = true;
                finish();
            }
            initOrientationState();
        } catch (Exception e) {
            e.printStackTrace();
            finish();
        }
    }

    private void initOrientationState() {
        Intent intent = getIntent();
        String orientation = intent.getStringExtra(Constants.ParametersKeys.ORIENTATION_SET_FLAG);
        int rotation = intent.getIntExtra(Constants.ParametersKeys.ROTATION_SET_FLAG, 0);
        handleOrientationState(orientation, rotation);
    }

    private void handleOrientationState(String orientation, int rotation) {
        if (orientation != null) {
            if (Constants.ParametersKeys.ORIENTATION_LANDSCAPE.equalsIgnoreCase(orientation)) {
                setInitiateLandscapeOrientation();
                return;
            }
            if (Constants.ParametersKeys.ORIENTATION_PORTRAIT.equalsIgnoreCase(orientation)) {
                setInitiatePortraitOrientation();
                return;
            }
            if (Constants.ParametersKeys.ORIENTATION_DEVICE.equalsIgnoreCase(orientation)) {
                if (DeviceStatus.isDeviceOrientationLocked(this)) {
                    setRequestedOrientation(1);
                }
            } else if (getRequestedOrientation() == -1) {
                setRequestedOrientation(4);
            }
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        if (!TextUtils.isEmpty(this.mProductType) && SSAEnums.ProductType.OfferWall.toString().equalsIgnoreCase(this.mProductType)) {
            this.mState.setShouldRestore(true);
            outState.putParcelable("state", this.mState);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Logger.i(TAG, "onResume");
        this.mContainer.addView(this.mWebViewFrameContainer, this.MATCH_PARENT_LAYOUT_PARAMS);
        if (this.mWebViewController != null) {
            this.mWebViewController.registerConnectionReceiver(this);
            this.mWebViewController.resume();
            this.mWebViewController.viewableChange(true, Constants.ParametersKeys.MAIN);
        }
        ((AudioManager) getSystemService("audio")).requestAudioFocus(null, 3, 2);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        Logger.i(TAG, "onPause");
        ((AudioManager) getSystemService("audio")).abandonAudioFocus(null);
        if (this.mWebViewController != null) {
            this.mWebViewController.unregisterConnectionReceiver(this);
            this.mWebViewController.pause();
            this.mWebViewController.viewableChange(false, Constants.ParametersKeys.MAIN);
        }
        removeWebViewContainerView();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Logger.i(TAG, "onDestroy");
        if (this.calledFromOnCreate) {
            removeWebViewContainerView();
        }
        if (this.mWebViewController != null) {
            this.mWebViewController.setState(IronSourceWebView.State.Gone);
            this.mWebViewController.removeVideoEventsListener();
            this.mWebViewController.notifyLifeCycle(this.mProductType, "onDestroy");
        }
    }

    private void removeWebViewContainerView() {
        if (this.mContainer != null) {
            ViewGroup parent = (ViewGroup) this.mWebViewFrameContainer.getParent();
            View view = parent.findViewById(1);
            if (view != null) {
                parent.removeView(this.mWebViewFrameContainer);
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.OnWebViewChangeListener
    public void onCloseRequested() {
        finish();
    }

    @Override // com.ironsource.sdk.listeners.OnWebViewChangeListener
    public void onOrientationChanged(String orientation, int rotation) {
        handleOrientationState(orientation, rotation);
    }

    @Override // com.ironsource.sdk.listeners.OnWebViewChangeListener
    public boolean onBackButtonPressed() {
        onBackPressed();
        return true;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        Logger.i(TAG, "onBackPressed");
        boolean isHandled = BackButtonHandler.getInstance().handleBackButton(this);
        if (!isHandled) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    protected void onUserLeaveHint() {
        super.onUserLeaveHint();
        Logger.i(TAG, "onUserLeaveHint");
    }

    private void hideActivityTitle() {
        requestWindowFeature(1);
    }

    private void hideActivtiyStatusBar() {
        getWindow().setFlags(1024, 1024);
    }

    private void keepScreenOn() {
        runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.ControllerActivity.3
            @Override // java.lang.Runnable
            public void run() {
                ControllerActivity.this.getWindow().addFlags(128);
            }
        });
    }

    private void cancelScreenOn() {
        runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.ControllerActivity.4
            @Override // java.lang.Runnable
            public void run() {
                ControllerActivity.this.getWindow().clearFlags(128);
            }
        });
    }

    private void setInitiateLandscapeOrientation() {
        int rotation = DeviceStatus.getApplicationRotation(this);
        Logger.i(TAG, "setInitiateLandscapeOrientation");
        if (rotation == 0) {
            Logger.i(TAG, "ROTATION_0");
            setRequestedOrientation(0);
            return;
        }
        if (rotation == 2) {
            Logger.i(TAG, "ROTATION_180");
            setRequestedOrientation(8);
        } else if (rotation == 3) {
            Logger.i(TAG, "ROTATION_270 Right Landscape");
            setRequestedOrientation(8);
        } else if (rotation == 1) {
            Logger.i(TAG, "ROTATION_90 Left Landscape");
            setRequestedOrientation(0);
        } else {
            Logger.i(TAG, "No Rotation");
        }
    }

    private void setInitiatePortraitOrientation() {
        int rotation = DeviceStatus.getApplicationRotation(this);
        Logger.i(TAG, "setInitiatePortraitOrientation");
        if (rotation == 0) {
            Logger.i(TAG, "ROTATION_0");
            setRequestedOrientation(1);
            return;
        }
        if (rotation == 2) {
            Logger.i(TAG, "ROTATION_180");
            setRequestedOrientation(9);
        } else if (rotation == 1) {
            Logger.i(TAG, "ROTATION_270 Right Landscape");
            setRequestedOrientation(1);
        } else if (rotation == 3) {
            Logger.i(TAG, "ROTATION_90 Left Landscape");
            setRequestedOrientation(1);
        } else {
            Logger.i(TAG, "No Rotation");
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4 && this.mWebViewController.inCustomView()) {
            this.mWebViewController.hideCustomView();
            return true;
        }
        if (this.mIsImmersive && (keyCode == 25 || keyCode == 24)) {
            this.mUiThreadHandler.removeCallbacks(this.decorViewSettings);
            this.mUiThreadHandler.postDelayed(this.decorViewSettings, 500L);
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int requestedOrientation) {
        if (this.currentRequestedRotation != requestedOrientation) {
            Logger.i(TAG, "Rotation: Req = " + requestedOrientation + " Curr = " + this.currentRequestedRotation);
            this.currentRequestedRotation = requestedOrientation;
            super.setRequestedOrientation(requestedOrientation);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (this.mIsImmersive && hasFocus) {
            runOnUiThread(this.decorViewSettings);
        }
    }

    @Override // com.ironsource.sdk.controller.VideoEventsListener
    public void onVideoStarted() {
        toggleKeepScreen(true);
    }

    @Override // com.ironsource.sdk.controller.VideoEventsListener
    public void onVideoPaused() {
        toggleKeepScreen(false);
    }

    @Override // com.ironsource.sdk.controller.VideoEventsListener
    public void onVideoResumed() {
        toggleKeepScreen(true);
    }

    @Override // com.ironsource.sdk.controller.VideoEventsListener
    public void onVideoEnded() {
        toggleKeepScreen(false);
    }

    @Override // com.ironsource.sdk.controller.VideoEventsListener
    public void onVideoStopped() {
        toggleKeepScreen(false);
    }

    public void toggleKeepScreen(boolean screenOn) {
        if (screenOn) {
            keepScreenOn();
        } else {
            cancelScreenOn();
        }
    }
}
