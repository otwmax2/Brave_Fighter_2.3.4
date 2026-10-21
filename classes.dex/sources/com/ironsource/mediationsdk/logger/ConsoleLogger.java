package com.ironsource.mediationsdk.logger;

import android.util.Log;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.sdk.constants.Constants;

/* JADX INFO: loaded from: classes.dex */
public class ConsoleLogger extends IronSourceLogger {
    public static final String NAME = "console";

    private ConsoleLogger() {
        super(NAME);
    }

    public ConsoleLogger(int debugLevel) {
        super(NAME, debugLevel);
    }

    @Override // com.ironsource.mediationsdk.logger.IronSourceLogger
    public void log(IronSourceLogger.IronSourceTag tag, String message, int logLevel) {
        switch (logLevel) {
            case 0:
                Log.v("" + tag, message);
                break;
            case 1:
                Log.i("" + tag, message);
                break;
            case 2:
                Log.w("" + tag, message);
                break;
            case 3:
                Log.e("" + tag, message);
                break;
        }
    }

    @Override // com.ironsource.mediationsdk.logger.IronSourceLogger
    public void logException(IronSourceLogger.IronSourceTag tag, String message, Throwable e) {
        log(tag, message + ":stacktrace[" + Log.getStackTraceString(e) + Constants.RequestParameters.RIGHT_BRACKETS, 3);
    }
}
