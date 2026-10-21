###### Class com.facebook.appevents.internal.SessionLogger (com.facebook.appevents.internal.SessionLogger)
.class Lcom/facebook/appevents/internal/SessionLogger;
.super Ljava/lang/Object;
.source "SessionLogger.java"


# static fields
.field private static final INACTIVE_SECONDS_QUANTA:[J

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/facebook/appevents/internal/SessionLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/SessionLogger;->TAG:Ljava/lang/String;

    .line 36
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_12

    sput-object v0, Lcom/facebook/appevents/internal/SessionLogger;->INACTIVE_SECONDS_QUANTA:[J

    return-void

    :array_12
    .array-data 8
        0x493e0
        0xdbba0
        0x1b7740
        0x36ee80
        0x1499700
        0x2932e00
        0x5265c00
        0xa4cb800
        0xf731400
        0x240c8400
        0x48190800
        0x6c258c00
        0x90321000L
        0x134fd9000L
        0x1cf7c5800L
        0x269fb2000L
        0x30479e800L
        0x39ef8b000L
        0x757b12c00L
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getQuantaIndex(J)I
    .registers 6
    .param p0, "timeBetweenSessions"    # J

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "quantaIndex":I
    :goto_1
    sget-object v1, Lcom/facebook/appevents/internal/SessionLogger;->INACTIVE_SECONDS_QUANTA:[J

    array-length v1, v1

    if-ge v0, v1, :cond_11

    sget-object v1, Lcom/facebook/appevents/internal/SessionLogger;->INACTIVE_SECONDS_QUANTA:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p0

    if-gez v1, :cond_11

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 144
    :cond_11
    return v0
.end method

.method public static logActivateApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;)V
    .registers 8
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "sourceApplicationInfo"    # Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .param p3, "appId"    # Ljava/lang/String;

    .prologue
    .line 65
    if-eqz p2, :cond_1c

    .line 66
    invoke-virtual {p2}, Lcom/facebook/appevents/internal/SourceApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "sourAppInfoStr":Ljava/lang/String;
    :goto_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v0, "eventParams":Landroid/os/Bundle;
    const-string v2, "fb_mobile_launch_source"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v2, Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p3, v3}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    const-string v3, "fb_mobile_activate_app"

    .line 77
    invoke-virtual {v2, v3, v0}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 78
    return-void

    .line 66
    .end local v0    # "eventParams":Landroid/os/Bundle;
    .end local v1    # "sourAppInfoStr":Ljava/lang/String;
    :cond_1c
    const-string v1, "Unclassified"

    goto :goto_6
.end method

.method private static logClockSkewEvent()V
    .registers 3

    .prologue
    .line 131
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v1, Lcom/facebook/appevents/internal/SessionLogger;->TAG:Ljava/lang/String;

    const-string v2, "Clock skew detected"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static logDeactivateApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V
    .registers 16
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Lcom/facebook/appevents/internal/SessionInfo;
    .param p3, "appId"    # Ljava/lang/String;

    .prologue
    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/facebook/appevents/internal/SessionInfo;->getDiskRestoreTime()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 88
    .local v1, "interruptionDurationMillis":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_24

    .line 89
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 90
    invoke-static {}, Lcom/facebook/appevents/internal/SessionLogger;->logClockSkewEvent()V

    .line 93
    :cond_24
    invoke-virtual {p2}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLength()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 94
    .local v2, "sessionLength":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_3f

    .line 95
    invoke-static {}, Lcom/facebook/appevents/internal/SessionLogger;->logClockSkewEvent()V

    .line 96
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 99
    :cond_3f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, "eventParams":Landroid/os/Bundle;
    const-string v5, "fb_mobile_app_interruptions"

    .line 102
    invoke-virtual {p2}, Lcom/facebook/appevents/internal/SessionInfo;->getInterruptionCount()I

    move-result v6

    .line 100
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string v5, "fb_mobile_time_between_sessions"

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "session_quanta_%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 108
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/facebook/appevents/internal/SessionLogger;->getQuantaIndex(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 105
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 103
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Lcom/facebook/appevents/internal/SessionInfo;->getSourceApplicationInfo()Lcom/facebook/appevents/internal/SourceApplicationInfo;

    move-result-object v4

    .line 110
    .local v4, "sourceApplicationInfo":Lcom/facebook/appevents/internal/SourceApplicationInfo;
    if-eqz v4, :cond_9f

    .line 111
    invoke-virtual {v4}, Lcom/facebook/appevents/internal/SourceApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "sourAppInfoStr":Ljava/lang/String;
    :goto_76
    const-string v5, "fb_mobile_launch_source"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v5, "_logTime"

    .line 118
    invoke-virtual {p2}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 117
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 120
    new-instance v5, Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    const/4 v6, 0x0

    invoke-direct {v5, p1, p3, v6}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    const-string v6, "fb_mobile_deactivate_app"

    .line 126
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-double v8, v8

    .line 124
    invoke-virtual {v5, v6, v8, v9, v0}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 128
    return-void

    .line 111
    .end local v3    # "sourAppInfoStr":Ljava/lang/String;
    :cond_9f
    const-string v3, "Unclassified"

    goto :goto_76
.end method
