package com.ironsource.mediationsdk.events;

import com.ironsource.eventsmodule.EventData;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class OutcomeEventsFormatter extends AbstractEventsFormatter {
    private final String DEFAULT_OC_EVENTS_URL = "https://outcome.supersonicads.com/mediation/";

    OutcomeEventsFormatter(int adUnit) {
        this.mAdUnit = adUnit;
    }

    @Override // com.ironsource.mediationsdk.events.AbstractEventsFormatter
    public String getDefaultEventsUrl() {
        return "https://outcome.supersonicads.com/mediation/";
    }

    @Override // com.ironsource.mediationsdk.events.AbstractEventsFormatter
    public String getFormatterType() {
        return "outcome";
    }

    @Override // com.ironsource.mediationsdk.events.AbstractEventsFormatter
    public String format(ArrayList<EventData> toSend, JSONObject generalProperties) {
        if (generalProperties == null) {
            this.mGeneralProperties = new JSONObject();
        } else {
            this.mGeneralProperties = generalProperties;
        }
        JSONArray eventsArray = new JSONArray();
        if (toSend != null && !toSend.isEmpty()) {
            for (EventData event : toSend) {
                JSONObject jsonEvent = createJSONForEvent(event);
                if (jsonEvent != null) {
                    eventsArray.put(jsonEvent);
                }
            }
        }
        return createDataToSend(eventsArray);
    }
}
