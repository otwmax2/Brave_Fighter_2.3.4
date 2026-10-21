package com.ironsource.mediationsdk.logger;

import com.facebook.share.internal.ShareConstants;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.tendcloud.tenddata.game.ao;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class ServerLogEntry {
    private int mLogLevel;
    private String mMessage;
    private IronSourceLogger.IronSourceTag mTag;
    private String mTimetamp;

    public ServerLogEntry(IronSourceLogger.IronSourceTag tag, String timestamp, String message, int level) {
        this.mTag = tag;
        this.mTimetamp = timestamp;
        this.mMessage = message;
        this.mLogLevel = level;
    }

    public JSONObject toJSON() {
        JSONObject result = new JSONObject();
        try {
            result.put(DataBaseEventsStorage.EventEntry.COLUMN_NAME_TIMESTAMP, this.mTimetamp);
            result.put("tag", this.mTag);
            result.put(ao.f, this.mLogLevel);
            result.put(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, this.mMessage);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return result;
    }

    public int getLogLevel() {
        return this.mLogLevel;
    }
}
