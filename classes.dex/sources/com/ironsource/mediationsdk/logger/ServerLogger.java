package com.ironsource.mediationsdk.logger;

import android.util.Log;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.sdk.constants.Constants;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class ServerLogger extends IronSourceLogger {
    public static final String NAME = "server";
    private final int SERVER_LOGS_SIZE_LIMIT;
    private ArrayList<ServerLogEntry> mLogs;

    public ServerLogger() {
        super(NAME);
        this.SERVER_LOGS_SIZE_LIMIT = 1000;
        this.mLogs = new ArrayList<>();
    }

    public ServerLogger(int debugLevel) {
        super(NAME, debugLevel);
        this.SERVER_LOGS_SIZE_LIMIT = 1000;
        this.mLogs = new ArrayList<>();
    }

    private synchronized void addLogEntry(ServerLogEntry entry) {
        this.mLogs.add(entry);
        boolean shouldSendLogs = shouldSendLogs();
        if (shouldSendLogs) {
            send();
        } else if (this.mLogs.size() > 1000) {
            try {
                ArrayList<ServerLogEntry> newerLog = new ArrayList<>();
                for (int i = 500; i < this.mLogs.size(); i++) {
                    newerLog.add(this.mLogs.get(i));
                }
                this.mLogs = newerLog;
            } catch (Exception e) {
                this.mLogs = new ArrayList<>();
            }
        }
    }

    private boolean shouldSendLogs() {
        return this.mLogs.get(this.mLogs.size() + (-1)).getLogLevel() == 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void send() {
        IronSourceUtils.createAndStartWorker(new LogsSender(this.mLogs), "LogsSender");
        this.mLogs = new ArrayList<>();
    }

    private String getTimestamp() {
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        return dateFormat.format(date);
    }

    @Override // com.ironsource.mediationsdk.logger.IronSourceLogger
    public synchronized void log(IronSourceLogger.IronSourceTag tag, String message, int logLevel) {
        addLogEntry(new ServerLogEntry(tag, getTimestamp(), message, logLevel));
    }

    @Override // com.ironsource.mediationsdk.logger.IronSourceLogger
    public synchronized void logException(IronSourceLogger.IronSourceTag tag, String message, Throwable e) {
        StringBuilder logMessage = new StringBuilder(message);
        if (e != null) {
            logMessage.append(":stacktrace[");
            logMessage.append(Log.getStackTraceString(e)).append(Constants.RequestParameters.RIGHT_BRACKETS);
        }
        addLogEntry(new ServerLogEntry(tag, getTimestamp(), logMessage.toString(), 3));
    }

    private class SendingCalc {
        private int DEFAULT_SIZE = 1;
        private int DEFAULT_TIME = 1;
        private int DEFAULT_DEBUG_LEVEL = 3;

        public SendingCalc() {
            initDefaults();
        }

        private void initDefaults() {
        }

        public void notifyEvent(int event) {
            if (calc(event)) {
                ServerLogger.this.send();
            }
        }

        private boolean calc(int event) {
            return error(event) || size() || time();
        }

        private boolean time() {
            return false;
        }

        private boolean error(int event) {
            return event == 3;
        }

        private boolean size() {
            return false;
        }
    }
}
