package com.ironsource.mediationsdk.logger;

import com.ironsource.mediationsdk.logger.IronSourceLogger;

/* JADX INFO: loaded from: classes.dex */
public class PublisherLogger extends IronSourceLogger {
    private static final String NAME = "publisher";
    private LogListener mLogListener;

    private PublisherLogger() {
        super(NAME);
    }

    public PublisherLogger(LogListener logListener, int debugLevel) {
        super(NAME, debugLevel);
        this.mLogListener = logListener;
    }

    @Override // com.ironsource.mediationsdk.logger.IronSourceLogger
    public synchronized void log(IronSourceLogger.IronSourceTag tag, String message, int logLevel) {
        if (this.mLogListener != null && message != null) {
            this.mLogListener.onLog(tag, message, logLevel);
        }
    }

    @Override // com.ironsource.mediationsdk.logger.IronSourceLogger
    public void logException(IronSourceLogger.IronSourceTag tag, String message, Throwable e) {
        if (e != null) {
            log(tag, e.getMessage(), 3);
        }
    }

    public void setLogListener(LogListener listener) {
        this.mLogListener = listener;
    }
}
