###### Class com.facebook.appevents.AppEventStore (com.facebook.appevents.AppEventStore)
.class Lcom/facebook/appevents/AppEventStore;
.super Ljava/lang/Object;
.source "AppEventStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    }
.end annotation


# static fields
.field private static final PERSISTED_EVENTS_FILENAME:Ljava/lang/String; = "AppEventsLogger.persistedevents"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/facebook/appevents/AppEventStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized persistEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V
    .registers 6
    .param p0, "accessTokenAppIdPair"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "appEvents"    # Lcom/facebook/appevents/SessionEventsState;

    .prologue
    .line 46
    const-class v2, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 47
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v0

    .line 49
    .local v0, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-virtual {v0, p0}, Lcom/facebook/appevents/PersistedEvents;->containsKey(Lcom/facebook/appevents/AccessTokenAppIdPair;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 51
    invoke-virtual {v0, p0}, Lcom/facebook/appevents/PersistedEvents;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Ljava/util/List;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    :goto_1b
    invoke-static {v0}, Lcom/facebook/appevents/AppEventStore;->saveEventsToDisk(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_28

    .line 58
    monitor-exit v2

    return-void

    .line 54
    :cond_20
    :try_start_20
    invoke-virtual {p1}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/appevents/PersistedEvents;->addEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Ljava/util/List;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_28

    goto :goto_1b

    .line 46
    .end local v0    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized persistEvents(Lcom/facebook/appevents/AppEventCollection;)V
    .registers 7
    .param p0, "eventsToPersist"    # Lcom/facebook/appevents/AppEventCollection;

    .prologue
    .line 62
    const-class v4, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v4

    :try_start_3
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 63
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v1

    .line 64
    .local v1, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 65
    .local v0, "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/AppEventCollection;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v2

    .line 69
    .local v2, "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    invoke-virtual {v2}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v5

    .line 67
    invoke-virtual {v1, v0, v5}, Lcom/facebook/appevents/PersistedEvents;->addEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Ljava/util/List;)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2a

    goto :goto_12

    .line 62
    .end local v0    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local v1    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .end local v2    # "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    :catchall_2a
    move-exception v3

    monitor-exit v4

    throw v3

    .line 72
    .restart local v1    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :cond_2d
    :try_start_2d
    invoke-static {v1}, Lcom/facebook/appevents/AppEventStore;->saveEventsToDisk(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2a

    .line 73
    monitor-exit v4

    return-void
.end method

.method public static declared-synchronized readAndClearStore()Lcom/facebook/appevents/PersistedEvents;
    .registers 12

    .prologue
    .line 77
    const-class v9, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v9

    :try_start_3
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 79
    const/4 v5, 0x0

    .line 80
    .local v5, "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    const/4 v7, 0x0

    .line 81
    .local v7, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_5b

    move-result-object v1

    .line 83
    .local v1, "context":Landroid/content/Context;
    :try_start_c
    const-string v8, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 84
    .local v4, "is":Ljava/io/InputStream;
    new-instance v6, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1c} :catch_44
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_5e
    .catchall {:try_start_c .. :try_end_1c} :catchall_7c

    .line 86
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .local v6, "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :try_start_1c
    invoke-virtual {v6}, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/facebook/appevents/PersistedEvents;

    move-object v7, v0
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_24} :catch_99
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_96
    .catchall {:try_start_1c .. :try_end_24} :catchall_93

    .line 92
    :try_start_24
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_5b

    .line 101
    :try_start_27
    const-string v8, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_30} :catch_3a
    .catchall {:try_start_27 .. :try_end_30} :catchall_5b

    move-object v5, v6

    .line 107
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :goto_31
    if-nez v7, :cond_38

    .line 108
    :try_start_33
    new-instance v7, Lcom/facebook/appevents/PersistedEvents;

    .end local v7    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-direct {v7}, Lcom/facebook/appevents/PersistedEvents;-><init>()V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_5b

    .line 111
    .restart local v7    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :cond_38
    monitor-exit v9

    return-object v7

    .line 102
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catch_3a
    move-exception v3

    .line 103
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3b
    sget-object v8, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v10, "Got unexpected exception when removing events file: "

    invoke-static {v8, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 105
    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto :goto_31

    .line 87
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_44
    move-exception v8

    .line 92
    :goto_45
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_5b

    .line 101
    :try_start_48
    const-string v8, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_51} :catch_52
    .catchall {:try_start_48 .. :try_end_51} :catchall_5b

    goto :goto_31

    .line 102
    :catch_52
    move-exception v3

    .line 103
    .restart local v3    # "ex":Ljava/lang/Exception;
    :try_start_53
    sget-object v8, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v10, "Got unexpected exception when removing events file: "

    invoke-static {v8, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5b

    goto :goto_31

    .line 77
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .end local v7    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :catchall_5b
    move-exception v8

    monitor-exit v9

    throw v8

    .line 89
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v7    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :catch_5e
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    :goto_5f
    :try_start_5f
    sget-object v8, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v10, "Got unexpected exception while reading events: "

    invoke-static {v8, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_7c

    .line 92
    :try_start_66
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_5b

    .line 101
    :try_start_69
    const-string v8, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_72} :catch_73
    .catchall {:try_start_69 .. :try_end_72} :catchall_5b

    goto :goto_31

    .line 102
    :catch_73
    move-exception v3

    .line 103
    .restart local v3    # "ex":Ljava/lang/Exception;
    :try_start_74
    sget-object v8, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v10, "Got unexpected exception when removing events file: "

    invoke-static {v8, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 92
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_7c
    move-exception v8

    :goto_7d
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_80
    .catchall {:try_start_74 .. :try_end_80} :catchall_5b

    .line 101
    :try_start_80
    const-string v10, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_89} :catch_8a
    .catchall {:try_start_80 .. :try_end_89} :catchall_5b

    .line 104
    :goto_89
    :try_start_89
    throw v8

    .line 102
    :catch_8a
    move-exception v3

    .line 103
    .restart local v3    # "ex":Ljava/lang/Exception;
    sget-object v10, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v11, "Got unexpected exception when removing events file: "

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_5b

    goto :goto_89

    .line 92
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catchall_93
    move-exception v8

    move-object v5, v6

    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto :goto_7d

    .line 89
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catch_96
    move-exception v2

    move-object v5, v6

    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto :goto_5f

    .line 87
    .end local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catch_99
    move-exception v8

    move-object v5, v6

    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v5    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto :goto_45
.end method

.method private static saveEventsToDisk(Lcom/facebook/appevents/PersistedEvents;)V
    .registers 8
    .param p0, "eventsToPersist"    # Lcom/facebook/appevents/PersistedEvents;

    .prologue
    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    .local v0, "context":Landroid/content/Context;
    :try_start_5
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    const-string v5, "AppEventsLogger.persistedevents"

    const/4 v6, 0x0

    .line 122
    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_1e
    .catchall {:try_start_5 .. :try_end_16} :catchall_33

    .line 123
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_16
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_3d
    .catchall {:try_start_16 .. :try_end_19} :catchall_38

    .line 132
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 134
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :goto_1d
    return-void

    .line 124
    :catch_1e
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    :goto_1f
    :try_start_1f
    sget-object v4, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v5, "Got unexpected exception while persisting events: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_33

    .line 127
    :try_start_26
    const-string v4, "AppEventsLogger.persistedevents"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_3b
    .catchall {:try_start_26 .. :try_end_2f} :catchall_33

    .line 132
    :goto_2f
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1d

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_33
    move-exception v4

    :goto_34
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_38
    move-exception v4

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_34

    .line 128
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_3b
    move-exception v4

    goto :goto_2f

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_3d
    move-exception v1

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_1f
.end method

###### Class com.facebook.appevents.AppEventStore.MovedClassObjectInputStream (com.facebook.appevents.AppEventStore$MovedClassObjectInputStream)
.class Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "AppEventStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MovedClassObjectInputStream"
.end annotation


# static fields
.field private static final ACCESS_TOKEN_APP_ID_PAIR_SERIALIZATION_PROXY_V1_CLASS_NAME:Ljava/lang/String; = "com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1"

.field private static final APP_EVENT_SERIALIZATION_PROXY_V1_CLASS_NAME:Ljava/lang/String; = "com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV1"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 144
    return-void
.end method


# virtual methods
.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-super {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 151
    .local v0, "resultClassDescriptor":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 153
    const-class v1, Lcom/facebook/appevents/AccessTokenAppIdPair$SerializationProxyV1;

    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 161
    :cond_16
    :goto_16
    return-object v0

    .line 155
    :cond_17
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 157
    const-class v1, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;

    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    goto :goto_16
.end method
