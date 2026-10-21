###### Class com.ironsource.mediationsdk.utils.DailyCappingManager (com.ironsource.mediationsdk.utils.DailyCappingManager)
.class public Lcom/ironsource/mediationsdk/utils/DailyCappingManager;
.super Ljava/lang/Object;
.source "DailyCappingManager.java"


# static fields
.field private static final RAND_MINUTES:I = 0xa


# instance fields
.field private mAdUnitName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/ironsource/mediationsdk/utils/DailyCappingListener;

.field private mLogger:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mSmashIdToCounter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSmashIdToCounterDate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSmashIdToMaxShowsPerDay:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/DailyCappingListener;)V
    .registers 4
    .param p1, "adUnitName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/utils/DailyCappingListener;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mTimer:Ljava/util/Timer;

    .line 40
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mAdUnitName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mListener:Lcom/ironsource/mediationsdk/utils/DailyCappingListener;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounter:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounterDate:Ljava/util/Map;

    .line 45
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mLogger:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 46
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->scheduleTimer()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/utils/DailyCappingManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->onTimerTick()V

    return-void
.end method

.method private getCounter(Ljava/lang/String;)I
    .registers 6
    .param p1, "smashId"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounter:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 197
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounter:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 201
    :goto_14
    return v0

    .line 199
    :cond_15
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getCounterKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 200
    .local v0, "ret":I
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounter:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method private getCounterDate(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "smashId"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounterDate:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 186
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounterDate:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 190
    :goto_10
    return-object v1

    .line 188
    :cond_11
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getDayKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getStringFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounterDate:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 190
    goto :goto_10
.end method

.method private getCounterKeyName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "smashId"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_counter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDayKeyName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "smashId"    # Ljava/lang/String;

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_day"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTodayDate()Ljava/lang/String;
    .registers 4

    .prologue
    .line 243
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 244
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 245
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTodayShowCount(Ljava/lang/String;)I
    .registers 4
    .param p1, "smashId"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getCounterDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 176
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->zeroCounter(Ljava/lang/String;)V

    .line 179
    :cond_11
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getCounter(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getUniqueId(Lcom/ironsource/mediationsdk/AbstractSmash;)Ljava/lang/String;
    .registers 4
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/AbstractSmash;

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mAdUnitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUtcMidnight()Ljava/util/Date;
    .registers 5

    .prologue
    .line 162
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 163
    .local v1, "random":Ljava/util/Random;
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 164
    .local v0, "date":Ljava/util/Calendar;
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 165
    const/16 v2, 0xc

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 166
    const/16 v2, 0xd

    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 167
    const/16 v2, 0xe

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 168
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 169
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method private onTimerTick()V
    .registers 6

    .prologue
    .line 130
    monitor-enter p0

    .line 132
    :try_start_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    .local v1, "smashId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->zeroCounter(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1b
    .catchall {:try_start_1 .. :try_end_1a} :catchall_30

    goto :goto_b

    .line 138
    .end local v1    # "smashId":Ljava/lang/String;
    :catch_1b
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1c
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mLogger:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "onTimerTick"

    invoke-virtual {v2, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_30

    .line 142
    return-void

    .line 136
    :cond_27
    :try_start_27
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mListener:Lcom/ironsource/mediationsdk/utils/DailyCappingListener;

    invoke-interface {v2}, Lcom/ironsource/mediationsdk/utils/DailyCappingListener;->onDailyCapReleased()V

    .line 137
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->scheduleTimer()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_1b
    .catchall {:try_start_27 .. :try_end_2f} :catchall_30

    goto :goto_25

    .line 141
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2
.end method

.method private saveCounter(Ljava/lang/String;I)V
    .registers 6
    .param p1, "smashId"    # Ljava/lang/String;
    .param p2, "counter"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounter:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounterDate:Ljava/util/Map;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getCounterKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 210
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getDayKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveStringToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private scheduleTimer()V
    .registers 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 148
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 150
    :cond_9
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mTimer:Ljava/util/Timer;

    .line 151
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/utils/DailyCappingManager$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager$1;-><init>(Lcom/ironsource/mediationsdk/utils/DailyCappingManager;)V

    .line 156
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getUtcMidnight()Ljava/util/Date;

    move-result-object v2

    .line 151
    invoke-virtual {v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V

    .line 157
    return-void
.end method

.method private zeroCounter(Ljava/lang/String;)V
    .registers 5
    .param p1, "smashId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounter:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounterDate:Ljava/util/Map;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getCounterKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 219
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getDayKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveStringToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method


# virtual methods
.method public addSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)V
    .registers 6
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/AbstractSmash;

    .prologue
    .line 58
    monitor-enter p0

    .line 60
    :try_start_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMaxAdsPerDay()I

    move-result v1

    const/16 v2, 0x63

    if-eq v1, v2, :cond_1a

    .line 61
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getUniqueId(Lcom/ironsource/mediationsdk/AbstractSmash;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMaxAdsPerDay()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c
    .catchall {:try_start_1 .. :try_end_1a} :catchall_27

    .line 66
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit p0

    .line 67
    return-void

    .line 63
    :catch_1c
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mLogger:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "addSmash"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_27
    move-exception v1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_27

    throw v1
.end method

.method public increaseShowCounter(Lcom/ironsource/mediationsdk/AbstractSmash;)V
    .registers 8
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/AbstractSmash;

    .prologue
    .line 72
    monitor-enter p0

    .line 74
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getUniqueId(Lcom/ironsource/mediationsdk/AbstractSmash;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "smashId":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_1d
    .catchall {:try_start_1 .. :try_end_a} :catchall_1a

    move-result v3

    if-nez v3, :cond_f

    .line 76
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_1a

    .line 85
    .end local v2    # "smashId":Ljava/lang/String;
    :goto_e
    return-void

    .line 79
    .restart local v2    # "smashId":Ljava/lang/String;
    :cond_f
    :try_start_f
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayShowCount(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "count":I
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->saveCounter(Ljava/lang/String;I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_1d
    .catchall {:try_start_f .. :try_end_18} :catchall_1a

    .line 84
    .end local v0    # "count":I
    .end local v2    # "smashId":Ljava/lang/String;
    :goto_18
    :try_start_18
    monitor-exit p0

    goto :goto_e

    :catchall_1a
    move-exception v3

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v3

    .line 81
    :catch_1d
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1e
    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mLogger:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "increaseShowCounter"

    invoke-virtual {v3, v4, v5, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_1a

    goto :goto_18
.end method

.method public isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z
    .registers 8
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/AbstractSmash;

    .prologue
    const/4 v3, 0x0

    .line 112
    monitor-enter p0

    .line 114
    :try_start_2
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getUniqueId(Lcom/ironsource/mediationsdk/AbstractSmash;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "smashId":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_2b
    .catchall {:try_start_2 .. :try_end_b} :catchall_26

    move-result v2

    if-nez v2, :cond_11

    .line 116
    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_26

    move v2, v3

    .line 122
    .end local v1    # "smashId":Ljava/lang/String;
    :goto_10
    return v2

    .line 119
    .restart local v1    # "smashId":Ljava/lang/String;
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayShowCount(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_20} :catch_2b
    .catchall {:try_start_11 .. :try_end_20} :catchall_26

    move-result v4

    if-gt v2, v4, :cond_29

    const/4 v2, 0x1

    :goto_24
    :try_start_24
    monitor-exit p0

    goto :goto_10

    .line 124
    .end local v1    # "smashId":Ljava/lang/String;
    :catchall_26
    move-exception v2

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_26

    throw v2

    .restart local v1    # "smashId":Ljava/lang/String;
    :cond_29
    move v2, v3

    .line 119
    goto :goto_24

    .line 120
    .end local v1    # "smashId":Ljava/lang/String;
    :catch_2b
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2c
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mLogger:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "isCapped"

    invoke-virtual {v2, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_26

    move v2, v3

    goto :goto_10
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public shouldSendCapReleasedEvent(Lcom/ironsource/mediationsdk/AbstractSmash;)Z
    .registers 8
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/AbstractSmash;

    .prologue
    const/4 v3, 0x0

    .line 90
    monitor-enter p0

    .line 92
    :try_start_2
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getUniqueId(Lcom/ironsource/mediationsdk/AbstractSmash;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "smashId":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_3c
    .catchall {:try_start_2 .. :try_end_b} :catchall_37

    move-result v2

    if-nez v2, :cond_11

    .line 94
    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_37

    move v2, v3

    .line 104
    .end local v1    # "smashId":Ljava/lang/String;
    :goto_10
    return v2

    .line 97
    .restart local v1    # "smashId":Ljava/lang/String;
    :cond_11
    :try_start_11
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayDate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getCounterDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_3c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_37

    move-result v2

    if-eqz v2, :cond_22

    .line 98
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_37

    move v2, v3

    goto :goto_10

    .line 101
    :cond_22
    :try_start_22
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getCounter(Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_31} :catch_3c
    .catchall {:try_start_22 .. :try_end_31} :catchall_37

    move-result v4

    if-gt v2, v4, :cond_3a

    const/4 v2, 0x1

    :goto_35
    :try_start_35
    monitor-exit p0

    goto :goto_10

    .line 106
    .end local v1    # "smashId":Ljava/lang/String;
    :catchall_37
    move-exception v2

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_37

    throw v2

    .restart local v1    # "smashId":Ljava/lang/String;
    :cond_3a
    move v2, v3

    .line 101
    goto :goto_35

    .line 102
    .end local v1    # "smashId":Ljava/lang/String;
    :catch_3c
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3d
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mLogger:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "shouldSendCapReleasedEvent"

    invoke-virtual {v2, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_37

    move v2, v3

    goto :goto_10
.end method

###### Class com.ironsource.mediationsdk.utils.DailyCappingManager.AnonymousClass1 (com.ironsource.mediationsdk.utils.DailyCappingManager$1)
.class Lcom/ironsource/mediationsdk/utils/DailyCappingManager$1;
.super Ljava/util/TimerTask;
.source "DailyCappingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->scheduleTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/utils/DailyCappingManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager$1;->this$0:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager$1;->this$0:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->access$000(Lcom/ironsource/mediationsdk/utils/DailyCappingManager;)V

    .line 155
    return-void
.end method
