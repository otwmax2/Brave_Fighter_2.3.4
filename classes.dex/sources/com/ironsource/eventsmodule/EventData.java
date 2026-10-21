package com.ironsource.eventsmodule;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class EventData {
    private JSONObject mAdditionalData;
    private int mEventId;
    private long mTimeStamp;

    public EventData(int eventId, long timeStamp, JSONObject additionalData) {
        this.mEventId = -1;
        this.mTimeStamp = -1L;
        this.mEventId = eventId;
        this.mTimeStamp = timeStamp;
        if (additionalData == null) {
            this.mAdditionalData = new JSONObject();
        } else {
            this.mAdditionalData = additionalData;
        }
    }

    public EventData(int eventId, JSONObject additionalData) {
        this.mEventId = -1;
        this.mTimeStamp = -1L;
        this.mEventId = eventId;
        this.mTimeStamp = System.currentTimeMillis();
        if (additionalData == null) {
            this.mAdditionalData = new JSONObject();
        } else {
            this.mAdditionalData = additionalData;
        }
    }

    public int getEventId() {
        return this.mEventId;
    }

    public long getTimeStamp() {
        return this.mTimeStamp;
    }

    public String getAdditionalData() {
        return this.mAdditionalData.toString();
    }

    public JSONObject getAdditionalDataJSON() {
        return this.mAdditionalData;
    }

    public void addToAdditionalData(String key, Object value) {
        try {
            this.mAdditionalData.put(key, value);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
