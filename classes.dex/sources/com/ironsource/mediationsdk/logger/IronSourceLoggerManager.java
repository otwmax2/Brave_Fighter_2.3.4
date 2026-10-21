package com.ironsource.mediationsdk.logger;

import com.ironsource.mediationsdk.logger.IronSourceLogger;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class IronSourceLoggerManager extends IronSourceLogger implements LogListener {
    private static IronSourceLoggerManager mInstance;
    private boolean mIsDebugEnabled;
    private ArrayList<IronSourceLogger> mLoggers;

    private IronSourceLoggerManager(String loggerName) {
        super(loggerName);
        this.mIsDebugEnabled = false;
        this.mLoggers = new ArrayList<>();
        initSubLoggers();
    }

    private IronSourceLoggerManager(String loggerName, int debugLevel) {
        super(loggerName, debugLevel);
        this.mIsDebugEnabled = false;
        this.mLoggers = new ArrayList<>();
        initSubLoggers();
    }

    private void initSubLoggers() {
        this.mLoggers.add(new ConsoleLogger(1));
    }

    public static synchronized IronSourceLoggerManager getLogger() {
        if (mInstance == null) {
            mInstance = new IronSourceLoggerManager(IronSourceLoggerManager.class.getSimpleName());
        }
        return mInstance;
    }

    public static synchronized IronSourceLoggerManager getLogger(int debugLevel) {
        if (mInstance == null) {
            mInstance = new IronSourceLoggerManager(IronSourceLoggerManager.class.getSimpleName());
        } else {
            mInstance.mDebugLevel = debugLevel;
        }
        return mInstance;
    }

    public void addLogger(IronSourceLogger toAdd) {
        this.mLoggers.add(toAdd);
    }

    @Override // com.ironsource.mediationsdk.logger.IronSourceLogger
    public synchronized void log(IronSourceLogger.IronSourceTag tag, String message, int logLevel) {
        if (logLevel >= this.mDebugLevel) {
            for (IronSourceLogger logger : this.mLoggers) {
                if (logger.getDebugLevel() <= logLevel) {
                    logger.log(tag, message, logLevel);
                }
            }
        }
    }

    @Override // com.ironsource.mediationsdk.logger.LogListener
    public synchronized void onLog(IronSourceLogger.IronSourceTag tag, String message, int logLevel) {
        log(tag, message, logLevel);
    }

    @Override // com.ironsource.mediationsdk.logger.IronSourceLogger
    public synchronized void logException(IronSourceLogger.IronSourceTag tag, String message, Throwable e) {
        if (e == null) {
            for (IronSourceLogger logger : this.mLoggers) {
                logger.log(tag, message, 3);
            }
        } else {
            for (IronSourceLogger logger2 : this.mLoggers) {
                logger2.logException(tag, message, e);
            }
        }
    }

    private IronSourceLogger findLoggerByName(String loggerName) {
        for (IronSourceLogger logger : this.mLoggers) {
            if (logger.getLoggerName().equals(loggerName)) {
                return logger;
            }
        }
        return null;
    }

    public void setLoggerDebugLevel(String loggerName, int debugLevel) {
        if (loggerName != null) {
            IronSourceLogger logger = findLoggerByName(loggerName);
            if (logger != null) {
                if (debugLevel >= 0 && debugLevel <= 3) {
                    log(IronSourceLogger.IronSourceTag.NATIVE, "setLoggerDebugLevel(loggerName:" + loggerName + " ,debugLevel:" + debugLevel + ")", 0);
                    logger.setDebugLevel(debugLevel);
                    return;
                } else {
                    this.mLoggers.remove(logger);
                    return;
                }
            }
            log(IronSourceLogger.IronSourceTag.NATIVE, "Failed to find logger:setLoggerDebugLevel(loggerName:" + loggerName + " ,debugLevel:" + debugLevel + ")", 0);
        }
    }

    public boolean isDebugEnabled() {
        return this.mIsDebugEnabled;
    }

    public void setAdaptersDebug(boolean enabled) {
        this.mIsDebugEnabled = enabled;
    }
}
