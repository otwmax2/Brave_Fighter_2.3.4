package com.ironsource.mediationsdk.events;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import com.ironsource.eventsmodule.EventData;
import com.ironsource.eventsmodule.EventsSender;
import com.ironsource.eventsmodule.IEventsManager;
import com.ironsource.eventsmodule.IEventsSenderResultListener;
import com.ironsource.mediationsdk.IronSourceSegment;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.ServerSegmetData;
import com.ironsource.mediationsdk.sdk.GeneralProperties;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.sdk.constants.LocationConst;
import com.ironsource.sdk.precache.DownloadManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseEventsManager implements IEventsManager {
    private static final String KEY_SESSION_DEPTH = "sessionDepth";
    int mAdUnitType;
    private DataBaseEventsStorage mDbStorage;
    private EventThread mEventThread;
    String mEventType;
    private AbstractEventsFormatter mFormatter;
    String mFormatterType;
    private boolean mHasServerResponse;
    private ArrayList<EventData> mLocalEvents;
    private IronSourceLoggerManager mLoggerManager;
    private int[] mOptOutEvents;
    private IronSourceSegment mSegment;
    private ServerSegmetData mServerSegmentData;
    private int mTotalEvents;
    final int DEFAULT_BACKUP_THRESHOLD = 1;
    final int DEFAULT_MAX_NUMBER_OF_EVENTS = 100;
    final int DEFAULT_MAX_EVENTS_PER_BATCH = DownloadManager.OPERATION_TIMEOUT;
    final int DATABASE_VERSION = 5;
    final String DATABASE_NAME = "supersonic_sdk.db";
    final String KEY_PROVIDER = LocationConst.PROVIDER;
    final String KEY_PLACEMENT = "placement";
    private final String MEDIATION_ABT = "abt";
    private boolean mHadTopPriorityEvent = false;
    private boolean mIsEventsEnabled = true;
    private int mMaxNumberOfEvents = 100;
    private int mMaxEventsPerBatch = DownloadManager.OPERATION_TIMEOUT;
    private int mBackupThreshold = 1;

    protected abstract String getCurrentPlacement(int i);

    protected abstract int getSessionDepth(EventData eventData);

    protected abstract boolean increaseSessionDepthIfNeeded(EventData eventData);

    protected abstract boolean isTopPriorityEvent(EventData eventData);

    protected abstract void setCurrentPlacement(EventData eventData);

    protected abstract boolean shouldExtractCurrentPlacement(EventData eventData);

    protected abstract boolean shouldIncludeCurrentPlacement(EventData eventData);

    static /* synthetic */ int access$408(BaseEventsManager x0) {
        int i = x0.mTotalEvents;
        x0.mTotalEvents = i + 1;
        return i;
    }

    void initState() {
        this.mLocalEvents = new ArrayList<>();
        this.mTotalEvents = 0;
        this.mFormatter = EventsFormatterFactory.getFormatter(this.mFormatterType, this.mAdUnitType);
        this.mEventThread = new EventThread(this.mEventType + "EventThread");
        this.mEventThread.start();
        this.mEventThread.prepareHandler();
        this.mLoggerManager = IronSourceLoggerManager.getLogger();
    }

    public synchronized void start(Context context, IronSourceSegment segment) {
        this.mFormatterType = IronSourceUtils.getDefaultEventsFormatterType(context, this.mEventType, this.mFormatterType);
        verifyCurrentFormatter(this.mFormatterType);
        this.mFormatter.setEventsServerUrl(IronSourceUtils.getDefaultEventsURL(context, this.mEventType, null));
        this.mDbStorage = DataBaseEventsStorage.getInstance(context, "supersonic_sdk.db", 5);
        backupEventsToDb();
        this.mOptOutEvents = IronSourceUtils.getDefaultOptOutEvents(context, this.mEventType);
        this.mSegment = segment;
    }

    public synchronized void setServerSegmentData(ServerSegmetData serverSegment) {
        this.mServerSegmentData = serverSegment;
    }

    @Override // com.ironsource.eventsmodule.IEventsManager
    public synchronized void log(final EventData event) {
        this.mEventThread.postTask(new Runnable() { // from class: com.ironsource.mediationsdk.events.BaseEventsManager.1
            @Override // java.lang.Runnable
            public void run() {
                if (event != null && BaseEventsManager.this.mIsEventsEnabled) {
                    try {
                        String ret = "{\"eventId\":" + event.getEventId() + ",\"timestamp\":" + event.getTimeStamp() + "," + event.getAdditionalData().substring(1);
                        BaseEventsManager.this.mLoggerManager.log(IronSourceLogger.IronSourceTag.EVENT, ret.replace(",", "\n"), 0);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    if (BaseEventsManager.this.shouldEventBeLogged(event)) {
                        if (event.getEventId() != 14 && event.getEventId() != 40 && event.getEventId() != 41) {
                            int sessionDepth = BaseEventsManager.this.getSessionDepth(event);
                            boolean shouldUseNewDepth = BaseEventsManager.this.increaseSessionDepthIfNeeded(event);
                            if (shouldUseNewDepth) {
                                sessionDepth = BaseEventsManager.this.getSessionDepth(event);
                            }
                            event.addToAdditionalData("sessionDepth", Integer.valueOf(sessionDepth));
                        }
                        if (BaseEventsManager.this.shouldExtractCurrentPlacement(event)) {
                            BaseEventsManager.this.setCurrentPlacement(event);
                        } else if (!TextUtils.isEmpty(BaseEventsManager.this.getCurrentPlacement(event.getEventId())) && BaseEventsManager.this.shouldIncludeCurrentPlacement(event)) {
                            event.addToAdditionalData("placement", BaseEventsManager.this.getCurrentPlacement(event.getEventId()));
                        }
                        BaseEventsManager.this.mLocalEvents.add(event);
                        BaseEventsManager.access$408(BaseEventsManager.this);
                    }
                    boolean isTopPriority = BaseEventsManager.this.isTopPriorityEvent(event);
                    if (!BaseEventsManager.this.mHadTopPriorityEvent && isTopPriority) {
                        BaseEventsManager.this.mHadTopPriorityEvent = true;
                    }
                    if (BaseEventsManager.this.mDbStorage != null) {
                        if (BaseEventsManager.this.shouldSendEvents()) {
                            BaseEventsManager.this.sendEvents();
                        } else if (BaseEventsManager.this.shouldBackupEventsToDb(BaseEventsManager.this.mLocalEvents) || isTopPriority) {
                            BaseEventsManager.this.backupEventsToDb();
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEvents() {
        this.mHadTopPriorityEvent = false;
        ArrayList<EventData> storedEvents = this.mDbStorage.loadEvents(this.mEventType);
        ArrayList<EventData> combinedEventList = initCombinedEventList(this.mLocalEvents, storedEvents, this.mMaxEventsPerBatch);
        this.mLocalEvents.clear();
        this.mDbStorage.clearEvents(this.mEventType);
        this.mTotalEvents = 0;
        if (combinedEventList.size() > 0) {
            JSONObject generalProperties = GeneralProperties.getProperties().toJSON();
            try {
                updateSegmentsData(generalProperties);
                String abt = IronSourceUtils.getAbt();
                if (!TextUtils.isEmpty(abt)) {
                    generalProperties.put("abt", abt);
                }
            } catch (JSONException ex) {
                ex.printStackTrace();
            }
            String dataToSend = this.mFormatter.format(combinedEventList, generalProperties);
            new EventsSender(new IEventsSenderResultListener() { // from class: com.ironsource.mediationsdk.events.BaseEventsManager.2
                @Override // com.ironsource.eventsmodule.IEventsSenderResultListener
                public synchronized void onEventsSenderResult(final ArrayList<EventData> extraData, final boolean success) {
                    BaseEventsManager.this.mEventThread.postTask(new Runnable() { // from class: com.ironsource.mediationsdk.events.BaseEventsManager.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (success) {
                                ArrayList<EventData> events = BaseEventsManager.this.mDbStorage.loadEvents(BaseEventsManager.this.mEventType);
                                BaseEventsManager.this.mTotalEvents = events.size() + BaseEventsManager.this.mLocalEvents.size();
                            } else if (extraData != null) {
                                BaseEventsManager.this.mDbStorage.saveEvents(extraData, BaseEventsManager.this.mEventType);
                                ArrayList<EventData> storedEvents2 = BaseEventsManager.this.mDbStorage.loadEvents(BaseEventsManager.this.mEventType);
                                BaseEventsManager.this.mTotalEvents = storedEvents2.size() + BaseEventsManager.this.mLocalEvents.size();
                            }
                        }
                    });
                }
            }).execute(dataToSend, this.mFormatter.getEventsServerUrl(), combinedEventList);
        }
    }

    private ArrayList<EventData> initCombinedEventList(ArrayList<EventData> localEvents, ArrayList<EventData> storedEvents, int maxSize) {
        ArrayList<EventData> allEvents = new ArrayList<>();
        allEvents.addAll(localEvents);
        allEvents.addAll(storedEvents);
        Collections.sort(allEvents, new Comparator<EventData>() { // from class: com.ironsource.mediationsdk.events.BaseEventsManager.3
            @Override // java.util.Comparator
            public int compare(EventData event1, EventData event2) {
                return event1.getTimeStamp() >= event2.getTimeStamp() ? 1 : -1;
            }
        });
        if (allEvents.size() <= maxSize) {
            ArrayList<EventData> result = new ArrayList<>(allEvents);
            return result;
        }
        ArrayList<EventData> result2 = new ArrayList<>(allEvents.subList(0, maxSize));
        List<EventData> eventsToSave = allEvents.subList(maxSize, allEvents.size());
        this.mDbStorage.saveEvents(eventsToSave, this.mEventType);
        return result2;
    }

    private void verifyCurrentFormatter(String formatterType) {
        if (this.mFormatter == null || !this.mFormatter.getFormatterType().equals(formatterType)) {
            this.mFormatter = EventsFormatterFactory.getFormatter(formatterType, this.mAdUnitType);
        }
    }

    @Override // com.ironsource.eventsmodule.IEventsManager
    public void setBackupThreshold(int backupThreshold) {
        if (backupThreshold > 0) {
            this.mBackupThreshold = backupThreshold;
        }
    }

    @Override // com.ironsource.eventsmodule.IEventsManager
    public void setMaxNumberOfEvents(int maxNumberOfEvents) {
        if (maxNumberOfEvents > 0) {
            this.mMaxNumberOfEvents = maxNumberOfEvents;
        }
    }

    @Override // com.ironsource.eventsmodule.IEventsManager
    public void setMaxEventsPerBatch(int maxEventsPerBatch) {
        if (maxEventsPerBatch > 0) {
            this.mMaxEventsPerBatch = maxEventsPerBatch;
        }
    }

    @Override // com.ironsource.eventsmodule.IEventsManager
    public void setOptOutEvents(int[] optOutEvents, Context context) {
        this.mOptOutEvents = optOutEvents;
        IronSourceUtils.saveDefaultOptOutEvents(context, this.mEventType, optOutEvents);
    }

    @Override // com.ironsource.eventsmodule.IEventsManager
    public void setEventsUrl(String eventsUrl, Context context) {
        if (!TextUtils.isEmpty(eventsUrl)) {
            if (this.mFormatter != null) {
                this.mFormatter.setEventsServerUrl(eventsUrl);
            }
            IronSourceUtils.saveDefaultEventsURL(context, this.mEventType, eventsUrl);
        }
    }

    @Override // com.ironsource.eventsmodule.IEventsManager
    public void setFormatterType(String formatterType, Context context) {
        if (!TextUtils.isEmpty(formatterType)) {
            this.mFormatterType = formatterType;
            IronSourceUtils.saveDefaultEventsFormatterType(context, this.mEventType, formatterType);
            verifyCurrentFormatter(formatterType);
        }
    }

    @Override // com.ironsource.eventsmodule.IEventsManager
    public void setIsEventsEnabled(boolean isEnabled) {
        this.mIsEventsEnabled = isEnabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void backupEventsToDb() {
        this.mDbStorage.saveEvents(this.mLocalEvents, this.mEventType);
        this.mLocalEvents.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldSendEvents() {
        return (this.mTotalEvents >= this.mMaxNumberOfEvents || this.mHadTopPriorityEvent) && this.mHasServerResponse;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldBackupEventsToDb(ArrayList<EventData> events) {
        return events != null && events.size() >= this.mBackupThreshold;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldEventBeLogged(EventData event) {
        if (event == null || this.mOptOutEvents == null || this.mOptOutEvents.length <= 0) {
            return true;
        }
        int eventId = event.getEventId();
        for (int i = 0; i < this.mOptOutEvents.length; i++) {
            if (eventId == this.mOptOutEvents[i]) {
                return false;
            }
        }
        return true;
    }

    public void setHasServerResponse(boolean hasResponse) {
        this.mHasServerResponse = hasResponse;
    }

    String getProviderNameForEvent(EventData event) {
        try {
            JSONObject eventData = new JSONObject(event.getAdditionalData());
            return eventData.optString(LocationConst.PROVIDER, "");
        } catch (JSONException e) {
            return "";
        }
    }

    public void triggerEventsSend() {
        sendEvents();
    }

    public void sendEventToUrl(EventData eventData, String url) {
        try {
            ArrayList<EventData> singleEventArray = new ArrayList<>();
            singleEventArray.add(eventData);
            String dataToSend = this.mFormatter.format(singleEventArray, GeneralProperties.getProperties().toJSON());
            new EventsSender().execute(dataToSend, url, null);
        } catch (Exception e) {
        }
    }

    private void updateSegmentsData(JSONObject object) {
        try {
            if (this.mSegment != null) {
                if (this.mSegment.getAge() > 0) {
                    object.put("age", this.mSegment.getAge());
                }
                if (!TextUtils.isEmpty(this.mSegment.getGender())) {
                    object.put(IronSourceSegment.GENDER, this.mSegment.getGender());
                }
                if (this.mSegment.getLevel() > 0) {
                    object.put(IronSourceSegment.LEVEL, this.mSegment.getLevel());
                }
                if (this.mSegment.getIsPaying() != null) {
                    object.put(IronSourceSegment.PAYING, this.mSegment.getIsPaying().get());
                }
                if (this.mSegment.getIapt() > 0.0d) {
                    object.put(IronSourceSegment.IAPT, this.mSegment.getIapt());
                }
                if (this.mSegment.getUcd() > 0) {
                    object.put(IronSourceSegment.USER_CREATION_DATE, this.mSegment.getUcd());
                }
            }
            if (this.mServerSegmentData != null) {
                String id = this.mServerSegmentData.getSegmentId();
                if (!TextUtils.isEmpty(id)) {
                    object.put("segmentId", id);
                }
                JSONObject customs = this.mServerSegmentData.getCustomSegments();
                Iterator<String> iterator = customs.keys();
                while (iterator.hasNext()) {
                    String key = iterator.next();
                    object.put(key, customs.get(key));
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private class EventThread extends HandlerThread {
        private Handler mHandler;

        EventThread(String name) {
            super(name);
        }

        void postTask(Runnable task) {
            this.mHandler.post(task);
        }

        void prepareHandler() {
            this.mHandler = new Handler(getLooper());
        }
    }
}
