package com.ironsource.mediationsdk.events;

import android.text.TextUtils;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import com.ironsource.eventsmodule.EventData;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
abstract class AbstractEventsFormatter {
    int mAdUnit;
    JSONObject mGeneralProperties;
    private String mServerUrl;
    private final String KEY_EVENT_ID = "eventId";
    private final String KEY_TIMESTAMP = DataBaseEventsStorage.EventEntry.COLUMN_NAME_TIMESTAMP;
    private final String KEY_AD_UNIT = "adUnit";
    private final String EVENTS_KEY_IS = "InterstitialEvents";
    private final String EVENTS_KEY_RV = DataBaseEventsStorage.EventEntry.TABLE_NAME;
    private final String EVENTS_KEY_DEFAULT = DataBaseEventsStorage.EventEntry.TABLE_NAME;

    public abstract String format(ArrayList<EventData> arrayList, JSONObject jSONObject);

    protected abstract String getDefaultEventsUrl();

    public abstract String getFormatterType();

    AbstractEventsFormatter() {
    }

    private String getEventsKey(int adUnit) {
        switch (adUnit) {
            case 2:
                return "InterstitialEvents";
            case 3:
                return DataBaseEventsStorage.EventEntry.TABLE_NAME;
            default:
                return DataBaseEventsStorage.EventEntry.TABLE_NAME;
        }
    }

    JSONObject createJSONForEvent(EventData event) {
        try {
            JSONObject jsonEvent = new JSONObject(event.getAdditionalData());
            jsonEvent.put("eventId", event.getEventId());
            jsonEvent.put(DataBaseEventsStorage.EventEntry.COLUMN_NAME_TIMESTAMP, event.getTimeStamp());
            return jsonEvent;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    String createDataToSend(JSONArray eventsArray) {
        try {
            if (this.mGeneralProperties == null) {
                return "";
            }
            JSONObject data = new JSONObject(this.mGeneralProperties.toString());
            long timeStamp = IronSourceUtils.getTimeStamp();
            data.put(DataBaseEventsStorage.EventEntry.COLUMN_NAME_TIMESTAMP, timeStamp);
            data.put("adUnit", this.mAdUnit);
            data.put(getEventsKey(this.mAdUnit), eventsArray);
            String result = data.toString();
            return result;
        } catch (Exception e) {
            return "";
        }
    }

    String getEventsServerUrl() {
        return TextUtils.isEmpty(this.mServerUrl) ? getDefaultEventsUrl() : this.mServerUrl;
    }

    void setEventsServerUrl(String url) {
        this.mServerUrl = url;
    }
}
