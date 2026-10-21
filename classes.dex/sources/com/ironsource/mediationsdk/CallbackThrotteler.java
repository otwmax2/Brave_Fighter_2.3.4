package com.ironsource.mediationsdk;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener;
import com.ironsource.mediationsdk.sdk.InterstitialListener;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CallbackThrotteler {
    private static final long MAX_CALL_RATE_SEC = 15;
    private static final String MEDIATION = "mediation";
    private InterstitialListener mListener = null;
    private ISDemandOnlyInterstitialListener mDemandOnlyListener = null;
    private Map<String, Long> mLastInvoked = new HashMap();
    private Map<String, Boolean> mIsWaitingForInvocation = new HashMap();

    public void setInterstitialListener(InterstitialListener listener) {
        this.mListener = listener;
    }

    public void setISDemandOnlyInterstitialListener(ISDemandOnlyInterstitialListener listener) {
        this.mDemandOnlyListener = listener;
    }

    public void onInterstitialAdLoadFailed(IronSourceError error) {
        synchronized (this) {
            onInterstitialAdLoadFailedInternal(MEDIATION, error);
        }
    }

    public void onInterstitialAdLoadFailed(String instanceId, IronSourceError error) {
        synchronized (this) {
            onInterstitialAdLoadFailedInternal(instanceId, error);
        }
    }

    public boolean hasPendingInvocation(String instanceId) {
        boolean zHasPendingInvocationInternal;
        synchronized (this) {
            zHasPendingInvocationInternal = hasPendingInvocationInternal(instanceId);
        }
        return zHasPendingInvocationInternal;
    }

    public boolean hasPendingInvocation() {
        boolean zHasPendingInvocationInternal;
        synchronized (this) {
            zHasPendingInvocationInternal = hasPendingInvocationInternal(MEDIATION);
        }
        return zHasPendingInvocationInternal;
    }

    private boolean hasPendingInvocationInternal(String instanceId) {
        if (!TextUtils.isEmpty(instanceId) && this.mIsWaitingForInvocation.containsKey(instanceId)) {
            return this.mIsWaitingForInvocation.get(instanceId).booleanValue();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeCallback(String instanceId, IronSourceError error) {
        this.mLastInvoked.put(instanceId, Long.valueOf(System.currentTimeMillis()));
        if (instanceId.equalsIgnoreCase(MEDIATION)) {
            if (this.mListener != null) {
                this.mListener.onInterstitialAdLoadFailed(error);
            }
        } else if (this.mDemandOnlyListener != null) {
            this.mDemandOnlyListener.onInterstitialAdLoadFailed(instanceId, error);
        }
    }

    private void onInterstitialAdLoadFailedInternal(final String instanceId, final IronSourceError error) {
        if (!hasPendingInvocationInternal(instanceId)) {
            if (!this.mLastInvoked.containsKey(instanceId)) {
                invokeCallback(instanceId, error);
                return;
            }
            long timeSinceLastCallMs = System.currentTimeMillis() - this.mLastInvoked.get(instanceId).longValue();
            if (timeSinceLastCallMs > 15000) {
                invokeCallback(instanceId, error);
                return;
            }
            this.mIsWaitingForInvocation.put(instanceId, true);
            long nextCallMs = 15000 - timeSinceLastCallMs;
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.ironsource.mediationsdk.CallbackThrotteler.1
                @Override // java.lang.Runnable
                public void run() {
                    CallbackThrotteler.this.invokeCallback(instanceId, error);
                    CallbackThrotteler.this.mIsWaitingForInvocation.put(instanceId, false);
                }
            }, nextCallMs);
        }
    }
}
