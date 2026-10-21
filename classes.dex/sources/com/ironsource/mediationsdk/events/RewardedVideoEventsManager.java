package com.ironsource.mediationsdk.events;

import com.ironsource.eventsmodule.EventData;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.SessionDepthManager;

/* JADX INFO: loaded from: classes.dex */
public class RewardedVideoEventsManager extends BaseEventsManager {
    private static RewardedVideoEventsManager sInstance;
    private String mCurrentOWPlacment;
    private String mCurrentRVPlacment;

    private RewardedVideoEventsManager() {
        this.mFormatterType = "outcome";
        this.mAdUnitType = 3;
        this.mEventType = IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE;
        this.mCurrentRVPlacment = "";
        this.mCurrentOWPlacment = "";
    }

    public static synchronized RewardedVideoEventsManager getInstance() {
        if (sInstance == null) {
            sInstance = new RewardedVideoEventsManager();
            sInstance.initState();
        }
        return sInstance;
    }

    @Override // com.ironsource.mediationsdk.events.BaseEventsManager
    protected boolean shouldExtractCurrentPlacement(EventData event) {
        return event.getEventId() == 2 || event.getEventId() == 10;
    }

    @Override // com.ironsource.mediationsdk.events.BaseEventsManager
    protected boolean shouldIncludeCurrentPlacement(EventData event) {
        return event.getEventId() == 5 || event.getEventId() == 6 || event.getEventId() == 8 || event.getEventId() == 9 || event.getEventId() == 19 || event.getEventId() == 20 || event.getEventId() == 305;
    }

    @Override // com.ironsource.mediationsdk.events.BaseEventsManager
    protected boolean isTopPriorityEvent(EventData currentEvent) {
        return currentEvent.getEventId() == 6 || currentEvent.getEventId() == 5 || currentEvent.getEventId() == 10 || currentEvent.getEventId() == 14 || currentEvent.getEventId() == 305;
    }

    @Override // com.ironsource.mediationsdk.events.BaseEventsManager
    protected int getSessionDepth(EventData event) {
        int sessionDepth = SessionDepthManager.getInstance().getSessionDepth(1);
        if (event.getEventId() == 15 || (event.getEventId() >= 300 && event.getEventId() < 400)) {
            return SessionDepthManager.getInstance().getSessionDepth(0);
        }
        return sessionDepth;
    }

    @Override // com.ironsource.mediationsdk.events.BaseEventsManager
    protected void setCurrentPlacement(EventData event) {
        if (event.getEventId() == 15 || (event.getEventId() >= 300 && event.getEventId() < 400)) {
            this.mCurrentOWPlacment = event.getAdditionalDataJSON().optString("placement");
        } else {
            this.mCurrentRVPlacment = event.getAdditionalDataJSON().optString("placement");
        }
    }

    @Override // com.ironsource.mediationsdk.events.BaseEventsManager
    protected String getCurrentPlacement(int eventId) {
        return (eventId == 15 || (eventId >= 300 && eventId < 400)) ? this.mCurrentOWPlacment : this.mCurrentRVPlacment;
    }

    @Override // com.ironsource.mediationsdk.events.BaseEventsManager
    protected boolean increaseSessionDepthIfNeeded(EventData event) {
        if (event.getEventId() == 6) {
            SessionDepthManager.getInstance().increaseSessionDepth(1);
        } else if (event.getEventId() == 305) {
            SessionDepthManager.getInstance().increaseSessionDepth(0);
        }
        return false;
    }
}
