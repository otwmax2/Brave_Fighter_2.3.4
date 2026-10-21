package com.ironsource.mediationsdk.events;

import com.ironsource.eventsmodule.EventData;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.SessionDepthManager;

/* JADX INFO: loaded from: classes.dex */
public class InterstitialEventsManager extends BaseEventsManager {
    private static InterstitialEventsManager sInstance;
    private String mCurrentBNPlacement;
    private String mCurrentISPlacement;

    private InterstitialEventsManager() {
        this.mFormatterType = "ironbeast";
        this.mAdUnitType = 2;
        this.mEventType = IronSourceConstants.INTERSTITIAL_EVENT_TYPE;
        this.mCurrentISPlacement = "";
        this.mCurrentBNPlacement = "";
    }

    public static synchronized InterstitialEventsManager getInstance() {
        if (sInstance == null) {
            sInstance = new InterstitialEventsManager();
            sInstance.initState();
        }
        return sInstance;
    }

    @Override // com.ironsource.mediationsdk.events.BaseEventsManager
    protected boolean shouldExtractCurrentPlacement(EventData event) {
        return event.getEventId() == 23 || event.getEventId() == 402;
    }

    @Override // com.ironsource.mediationsdk.events.BaseEventsManager
    protected boolean shouldIncludeCurrentPlacement(EventData event) {
        return event.getEventId() == 25 || event.getEventId() == 26 || event.getEventId() == 28 || event.getEventId() == 29 || event.getEventId() == 34 || event.getEventId() == 405 || event.getEventId() == 407 || event.getEventId() == 408 || event.getEventId() == 414;
    }

    @Override // com.ironsource.mediationsdk.events.BaseEventsManager
    protected boolean isTopPriorityEvent(EventData currentEvent) {
        return currentEvent.getEventId() == 26 || currentEvent.getEventId() == 25 || currentEvent.getEventId() == 405;
    }

    @Override // com.ironsource.mediationsdk.events.BaseEventsManager
    protected int getSessionDepth(EventData event) {
        int sessionDepth = SessionDepthManager.getInstance().getSessionDepth(2);
        if (event.getEventId() >= 400 && event.getEventId() < 500) {
            return SessionDepthManager.getInstance().getSessionDepth(3);
        }
        return sessionDepth;
    }

    @Override // com.ironsource.mediationsdk.events.BaseEventsManager
    protected boolean increaseSessionDepthIfNeeded(EventData event) {
        if (event.getEventId() == 26) {
            SessionDepthManager.getInstance().increaseSessionDepth(2);
            return false;
        }
        if (event.getEventId() != 402 || !getProviderNameForEvent(event).equals("Mediation")) {
            return false;
        }
        SessionDepthManager.getInstance().increaseSessionDepth(3);
        return true;
    }

    @Override // com.ironsource.mediationsdk.events.BaseEventsManager
    protected void setCurrentPlacement(EventData event) {
        if (event.getEventId() >= 400 && event.getEventId() < 500) {
            this.mCurrentBNPlacement = event.getAdditionalDataJSON().optString("placement");
        } else {
            this.mCurrentISPlacement = event.getAdditionalDataJSON().optString("placement");
        }
    }

    @Override // com.ironsource.mediationsdk.events.BaseEventsManager
    protected String getCurrentPlacement(int eventId) {
        return (eventId < 400 || eventId >= 500) ? this.mCurrentISPlacement : this.mCurrentBNPlacement;
    }
}
