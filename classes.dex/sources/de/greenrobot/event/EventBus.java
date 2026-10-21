package de.greenrobot.event;

import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public class EventBus {
    private static final String DEFAULT_METHOD_NAME = "onEvent";
    private static volatile EventBus defaultInstance;
    private boolean subscribed;
    static ExecutorService executorService = Executors.newCachedThreadPool();
    public static String TAG = "Event";
    private static final Map<Class<?>, List<Class<?>>> eventTypesCache = new HashMap();
    private final ThreadLocal<PostingThreadState> currentPostingThreadState = new ThreadLocal<PostingThreadState>() { // from class: de.greenrobot.event.EventBus.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public PostingThreadState initialValue() {
            return new PostingThreadState();
        }
    };
    private final Map<Class<?>, CopyOnWriteArrayList<Subscription>> subscriptionsByEventType = new HashMap();
    private final Map<Object, List<Class<?>>> typesBySubscriber = new HashMap();
    private final Map<Class<?>, Object> stickyEvents = new ConcurrentHashMap();
    private final HandlerPoster mainThreadPoster = new HandlerPoster(this, Looper.getMainLooper(), 10);
    private final BackgroundPoster backgroundPoster = new BackgroundPoster(this);
    private final AsyncPoster asyncPoster = new AsyncPoster(this);
    private final SubscriberMethodFinder subscriberMethodFinder = new SubscriberMethodFinder();
    private boolean logSubscriberExceptions = true;

    /* JADX INFO: loaded from: classes2.dex */
    interface PostCallback {
        void onPostCompleted(List<SubscriberExceptionEvent> list);
    }

    public static EventBus getDefault() {
        if (defaultInstance == null) {
            synchronized (EventBus.class) {
                if (defaultInstance == null) {
                    defaultInstance = new EventBus();
                }
            }
        }
        return defaultInstance;
    }

    public static void clearCaches() {
        SubscriberMethodFinder.clearCaches();
        eventTypesCache.clear();
    }

    public static void skipMethodVerificationFor(Class<?> clazz) {
        SubscriberMethodFinder.skipMethodVerificationFor(clazz);
    }

    public static void clearSkipMethodNameVerifications() {
        SubscriberMethodFinder.clearSkipMethodVerifications();
    }

    public void configureLogSubscriberExceptions(boolean logSubscriberExceptions) {
        if (this.subscribed) {
            throw new EventBusException("This method must be called before any registration");
        }
        this.logSubscriberExceptions = logSubscriberExceptions;
    }

    public void register(Object subscriber) {
        register(subscriber, DEFAULT_METHOD_NAME, false, 0);
    }

    public void register(Object subscriber, int priority) {
        register(subscriber, DEFAULT_METHOD_NAME, false, priority);
    }

    @Deprecated
    public void register(Object subscriber, String methodName) {
        register(subscriber, methodName, false, 0);
    }

    public void registerSticky(Object subscriber) {
        register(subscriber, DEFAULT_METHOD_NAME, true, 0);
    }

    public void registerSticky(Object subscriber, int priority) {
        register(subscriber, DEFAULT_METHOD_NAME, true, priority);
    }

    @Deprecated
    public void registerSticky(Object subscriber, String methodName) {
        register(subscriber, methodName, true, 0);
    }

    private synchronized void register(Object subscriber, String methodName, boolean sticky, int priority) {
        List<SubscriberMethod> subscriberMethods = this.subscriberMethodFinder.findSubscriberMethods(subscriber.getClass(), methodName);
        for (SubscriberMethod subscriberMethod : subscriberMethods) {
            subscribe(subscriber, subscriberMethod, sticky, priority);
        }
    }

    @Deprecated
    public void register(Object subscriber, Class<?> eventType, Class<?>... moreEventTypes) {
        register(subscriber, DEFAULT_METHOD_NAME, false, eventType, moreEventTypes);
    }

    @Deprecated
    public void register(Object subscriber, String methodName, Class<?> eventType, Class<?>... moreEventTypes) {
        register(subscriber, methodName, false, eventType, moreEventTypes);
    }

    @Deprecated
    public void registerSticky(Object subscriber, Class<?> eventType, Class<?>... moreEventTypes) {
        register(subscriber, DEFAULT_METHOD_NAME, true, eventType, moreEventTypes);
    }

    @Deprecated
    public void registerSticky(Object subscriber, String methodName, Class<?> eventType, Class<?>... moreEventTypes) {
        register(subscriber, methodName, true, eventType, moreEventTypes);
    }

    private synchronized void register(Object subscriber, String methodName, boolean sticky, Class<?> eventType, Class<?>... moreEventTypes) {
        Class<?> subscriberClass = subscriber.getClass();
        List<SubscriberMethod> subscriberMethods = this.subscriberMethodFinder.findSubscriberMethods(subscriberClass, methodName);
        for (SubscriberMethod subscriberMethod : subscriberMethods) {
            if (eventType == subscriberMethod.eventType) {
                subscribe(subscriber, subscriberMethod, sticky, 0);
            } else if (moreEventTypes != null) {
                int len$ = moreEventTypes.length;
                int i$ = 0;
                while (true) {
                    if (i$ < len$) {
                        Class<?> eventType2 = moreEventTypes[i$];
                        if (eventType2 != subscriberMethod.eventType) {
                            i$++;
                        } else {
                            subscribe(subscriber, subscriberMethod, sticky, 0);
                            break;
                        }
                    }
                }
            }
        }
    }

    private void subscribe(Object subscriber, SubscriberMethod subscriberMethod, boolean sticky, int priority) {
        Object stickyEvent;
        this.subscribed = true;
        Class<?> eventType = subscriberMethod.eventType;
        CopyOnWriteArrayList<Subscription> subscriptions = this.subscriptionsByEventType.get(eventType);
        Subscription newSubscription = new Subscription(subscriber, subscriberMethod, priority);
        if (subscriptions == null) {
            subscriptions = new CopyOnWriteArrayList<>();
            this.subscriptionsByEventType.put(eventType, subscriptions);
        } else {
            for (Subscription subscription : subscriptions) {
                if (subscription.equals(newSubscription)) {
                    throw new EventBusException("Subscriber " + subscriber.getClass() + " already registered to event " + eventType);
                }
            }
        }
        int size = subscriptions.size();
        for (int i = 0; i <= size; i++) {
            if (i == size || newSubscription.priority > subscriptions.get(i).priority) {
                subscriptions.add(i, newSubscription);
                break;
            }
        }
        List<Class<?>> subscribedEvents = this.typesBySubscriber.get(subscriber);
        if (subscribedEvents == null) {
            subscribedEvents = new ArrayList<>();
            this.typesBySubscriber.put(subscriber, subscribedEvents);
        }
        subscribedEvents.add(eventType);
        if (sticky) {
            synchronized (this.stickyEvents) {
                stickyEvent = this.stickyEvents.get(eventType);
            }
            if (stickyEvent != null) {
                postToSubscription(newSubscription, stickyEvent, Looper.getMainLooper() == Looper.myLooper());
            }
        }
    }

    public synchronized boolean isRegistered(Object subscriber) {
        return this.typesBySubscriber.containsKey(subscriber);
    }

    @Deprecated
    public synchronized void unregister(Object subscriber, Class<?>... eventTypes) {
        if (eventTypes.length == 0) {
            throw new IllegalArgumentException("Provide at least one event class");
        }
        List<Class<?>> subscribedClasses = this.typesBySubscriber.get(subscriber);
        if (subscribedClasses != null) {
            for (Class<?> eventType : eventTypes) {
                unubscribeByEventType(subscriber, eventType);
                subscribedClasses.remove(eventType);
            }
            if (subscribedClasses.isEmpty()) {
                this.typesBySubscriber.remove(subscriber);
            }
        } else {
            Log.w(TAG, "Subscriber to unregister was not registered before: " + subscriber.getClass());
        }
    }

    private void unubscribeByEventType(Object subscriber, Class<?> eventType) {
        List<Subscription> subscriptions = this.subscriptionsByEventType.get(eventType);
        if (subscriptions != null) {
            int size = subscriptions.size();
            int i = 0;
            while (i < size) {
                Subscription subscription = subscriptions.get(i);
                if (subscription.subscriber == subscriber) {
                    subscription.active = false;
                    subscriptions.remove(i);
                    i--;
                    size--;
                }
                i++;
            }
        }
    }

    public synchronized void unregister(Object subscriber) {
        List<Class<?>> subscribedTypes = this.typesBySubscriber.get(subscriber);
        if (subscribedTypes != null) {
            for (Class<?> eventType : subscribedTypes) {
                unubscribeByEventType(subscriber, eventType);
            }
            this.typesBySubscriber.remove(subscriber);
        } else {
            Log.w(TAG, "Subscriber to unregister was not registered before: " + subscriber.getClass());
        }
    }

    public void post(Object event) {
        PostingThreadState postingState = this.currentPostingThreadState.get();
        List<Object> eventQueue = postingState.eventQueue;
        eventQueue.add(event);
        if (!postingState.isPosting) {
            postingState.isMainThread = Looper.getMainLooper() == Looper.myLooper();
            postingState.isPosting = true;
            if (postingState.canceled) {
                throw new EventBusException("Internal error. Abort state was not reset");
            }
            while (!eventQueue.isEmpty()) {
                try {
                    postSingleEvent(eventQueue.remove(0), postingState);
                } finally {
                    postingState.isPosting = false;
                    postingState.isMainThread = false;
                }
            }
        }
    }

    public void cancelEventDelivery(Object event) {
        PostingThreadState postingState = this.currentPostingThreadState.get();
        if (!postingState.isPosting) {
            throw new EventBusException("This method may only be called from inside event handling methods on the posting thread");
        }
        if (event == null) {
            throw new EventBusException("Event may not be null");
        }
        if (postingState.event != event) {
            throw new EventBusException("Only the currently handled event may be aborted");
        }
        if (postingState.subscription.subscriberMethod.threadMode != ThreadMode.PostThread) {
            throw new EventBusException(" event handlers may only abort the incoming event");
        }
        postingState.canceled = true;
    }

    public void postSticky(Object event) {
        synchronized (this.stickyEvents) {
            this.stickyEvents.put(event.getClass(), event);
        }
        post(event);
    }

    public <T> T getStickyEvent(Class<T> eventType) {
        T tCast;
        synchronized (this.stickyEvents) {
            tCast = eventType.cast(this.stickyEvents.get(eventType));
        }
        return tCast;
    }

    public <T> T removeStickyEvent(Class<T> eventType) {
        T tCast;
        synchronized (this.stickyEvents) {
            tCast = eventType.cast(this.stickyEvents.remove(eventType));
        }
        return tCast;
    }

    public boolean removeStickyEvent(Object event) {
        boolean z;
        synchronized (this.stickyEvents) {
            Class<?> cls = event.getClass();
            Object existingEvent = this.stickyEvents.get(cls);
            if (event.equals(existingEvent)) {
                this.stickyEvents.remove(cls);
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public void removeAllStickyEvents() {
        synchronized (this.stickyEvents) {
            this.stickyEvents.clear();
        }
    }

    private void postSingleEvent(Object event, PostingThreadState postingState) throws Error {
        CopyOnWriteArrayList<Subscription> subscriptions;
        Class<?> cls = event.getClass();
        List<Class<?>> eventTypes = findEventTypes(cls);
        boolean subscriptionFound = false;
        int countTypes = eventTypes.size();
        for (int h = 0; h < countTypes; h++) {
            Class<?> clazz = eventTypes.get(h);
            synchronized (this) {
                subscriptions = this.subscriptionsByEventType.get(clazz);
            }
            if (subscriptions != null && !subscriptions.isEmpty()) {
                for (Subscription subscription : subscriptions) {
                    postingState.event = event;
                    postingState.subscription = subscription;
                    try {
                        postToSubscription(subscription, event, postingState.isMainThread);
                        boolean aborted = postingState.canceled;
                        if (aborted) {
                            break;
                        }
                    } finally {
                        postingState.event = null;
                        postingState.subscription = null;
                        postingState.canceled = false;
                    }
                }
                subscriptionFound = true;
            }
        }
        if (!subscriptionFound) {
            Log.d(TAG, "No subscribers registered for event " + cls);
            if (cls != NoSubscriberEvent.class && cls != SubscriberExceptionEvent.class) {
                post(new NoSubscriberEvent(this, event));
            }
        }
    }

    private void postToSubscription(Subscription subscription, Object event, boolean isMainThread) {
        switch (subscription.subscriberMethod.threadMode) {
            case PostThread:
                invokeSubscriber(subscription, event);
                return;
            case MainThread:
                if (isMainThread) {
                    invokeSubscriber(subscription, event);
                    return;
                } else {
                    this.mainThreadPoster.enqueue(subscription, event);
                    return;
                }
            case BackgroundThread:
                if (isMainThread) {
                    this.backgroundPoster.enqueue(subscription, event);
                    return;
                } else {
                    invokeSubscriber(subscription, event);
                    return;
                }
            case Async:
                this.asyncPoster.enqueue(subscription, event);
                return;
            default:
                throw new IllegalStateException("Unknown thread mode: " + subscription.subscriberMethod.threadMode);
        }
    }

    private List<Class<?>> findEventTypes(Class<?> eventClass) {
        List<Class<?>> eventTypes;
        synchronized (eventTypesCache) {
            eventTypes = eventTypesCache.get(eventClass);
            if (eventTypes == null) {
                eventTypes = new ArrayList<>();
                for (Class<?> clazz = eventClass; clazz != null; clazz = clazz.getSuperclass()) {
                    eventTypes.add(clazz);
                    addInterfaces(eventTypes, clazz.getInterfaces());
                }
                eventTypesCache.put(eventClass, eventTypes);
            }
        }
        return eventTypes;
    }

    static void addInterfaces(List<Class<?>> eventTypes, Class<?>[] interfaces) {
        for (Class<?> interfaceClass : interfaces) {
            if (!eventTypes.contains(interfaceClass)) {
                eventTypes.add(interfaceClass);
                addInterfaces(eventTypes, interfaceClass.getInterfaces());
            }
        }
    }

    void invokeSubscriber(PendingPost pendingPost) {
        Object event = pendingPost.event;
        Subscription subscription = pendingPost.subscription;
        PendingPost.releasePendingPost(pendingPost);
        if (subscription.active) {
            invokeSubscriber(subscription, event);
        }
    }

    void invokeSubscriber(Subscription subscription, Object event) throws Error {
        try {
            subscription.subscriberMethod.method.invoke(subscription.subscriber, event);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Unexpected exception", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (event instanceof SubscriberExceptionEvent) {
                Log.e(TAG, "SubscriberExceptionEvent subscriber " + subscription.subscriber.getClass() + " threw an exception", cause);
                SubscriberExceptionEvent exEvent = (SubscriberExceptionEvent) event;
                Log.e(TAG, "Initial event " + exEvent.causingEvent + " caused exception in " + exEvent.causingSubscriber, exEvent.throwable);
            } else {
                if (this.logSubscriberExceptions) {
                    Log.e(TAG, "Could not dispatch event: " + event.getClass() + " to subscribing class " + subscription.subscriber.getClass(), cause);
                }
                post(new SubscriberExceptionEvent(this, cause, event, subscription.subscriber));
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    static final class PostingThreadState {
        boolean canceled;
        Object event;
        List<Object> eventQueue = new ArrayList();
        boolean isMainThread;
        boolean isPosting;
        Subscription subscription;

        PostingThreadState() {
        }
    }
}
