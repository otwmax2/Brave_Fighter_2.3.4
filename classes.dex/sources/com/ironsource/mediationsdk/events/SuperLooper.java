package com.ironsource.mediationsdk.events;

import android.os.Handler;
import android.os.HandlerThread;
import com.ironsource.mediationsdk.logger.ThreadExceptionHandler;

/* JADX INFO: loaded from: classes.dex */
public class SuperLooper extends Thread {
    private static SuperLooper mInstance;
    private SupersonicSdkThread mSdkThread = new SupersonicSdkThread(getClass().getSimpleName());

    private SuperLooper() {
        this.mSdkThread.start();
        this.mSdkThread.prepareHandler();
    }

    public static synchronized SuperLooper getLooper() {
        if (mInstance == null) {
            mInstance = new SuperLooper();
        }
        return mInstance;
    }

    public synchronized void post(Runnable runnable) {
        Handler callbackHandler;
        if (this.mSdkThread != null && (callbackHandler = this.mSdkThread.getCallbackHandler()) != null) {
            callbackHandler.post(runnable);
        }
    }

    private class SupersonicSdkThread extends HandlerThread {
        private Handler mHandler;

        SupersonicSdkThread(String name) {
            super(name);
            setUncaughtExceptionHandler(new ThreadExceptionHandler());
        }

        void prepareHandler() {
            this.mHandler = new Handler(getLooper());
        }

        Handler getCallbackHandler() {
            return this.mHandler;
        }
    }
}
