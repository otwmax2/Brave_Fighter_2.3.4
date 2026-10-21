###### Class com.moat.analytics.mobile.iro.h (com.moat.analytics.mobile.iro.h)
.class final Lcom/moat/analytics/mobile/iro/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ˎ:Lcom/moat/analytics/mobile/iro/h;


# instance fields
.field private ʽ:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final ˊ:Ljava/util/concurrent/ScheduledExecutorService;

.field private final ˋ:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/moat/analytics/mobile/iro/f;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ˏ:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final ॱ:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/moat/analytics/mobile/iro/c;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lcom/moat/analytics/mobile/iro/h;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/h;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/iro/h;->ˎ:Lcom/moat/analytics/mobile/iro/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ˊ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ˋ:Ljava/util/WeakHashMap;

    .line 47
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ॱ:Ljava/util/WeakHashMap;

    .line 48
    return-void
.end method

.method static synthetic ˊ(Lcom/moat/analytics/mobile/iro/h;)Ljava/util/WeakHashMap;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ॱ:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static ˋ()Lcom/moat/analytics/mobile/iro/h;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/moat/analytics/mobile/iro/h;->ˎ:Lcom/moat/analytics/mobile/iro/h;

    return-object v0
.end method

.method static synthetic ˎ(Lcom/moat/analytics/mobile/iro/h;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ʽ:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic ˏ(Lcom/moat/analytics/mobile/iro/h;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ˏ:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic ॱ(Lcom/moat/analytics/mobile/iro/h;)Ljava/util/WeakHashMap;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ˋ:Ljava/util/WeakHashMap;

    return-object v0
.end method


# virtual methods
.method final ˋ(Landroid/content/Context;Lcom/moat/analytics/mobile/iro/c;)V
    .registers 10

    .prologue
    const/4 v3, 0x3

    .line 67
    if-eqz p2, :cond_55

    .line 68
    const-string v0, "JSUpdateLooper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addActiveTracker"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, p0, v1}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ॱ:Ljava/util/WeakHashMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 71
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ॱ:Ljava/util/WeakHashMap;

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ˏ:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ˏ:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1111
    :cond_36
    const-string v0, "JSUpdateLooper"

    const-string v1, "Starting view update loop"

    invoke-static {v3, v0, p0, v1}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1112
    new-instance v1, Lcom/moat/analytics/mobile/iro/h$4;

    invoke-direct {v1, p0, p1}, Lcom/moat/analytics/mobile/iro/h$4;-><init>(Lcom/moat/analytics/mobile/iro/h;Landroid/content/Context;)V

    .line 1127
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ˊ:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    .line 1128
    invoke-static {}, Lcom/moat/analytics/mobile/iro/t;->ˋ()Lcom/moat/analytics/mobile/iro/t;

    move-result-object v4

    iget v4, v4, Lcom/moat/analytics/mobile/iro/t;->ॱ:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1127
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ˏ:Ljava/util/concurrent/ScheduledFuture;

    .line 76
    :cond_55
    return-void
.end method

.method final ˎ(Landroid/content/Context;Lcom/moat/analytics/mobile/iro/f;)V
    .registers 10

    .prologue
    .line 51
    if-eqz p2, :cond_30

    .line 52
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ˋ:Ljava/util/WeakHashMap;

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ʽ:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ʽ:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1089
    :cond_15
    const/4 v0, 0x3

    const-string v1, "JSUpdateLooper"

    const-string v2, "Starting metadata reporting loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1090
    new-instance v1, Lcom/moat/analytics/mobile/iro/h$1;

    invoke-direct {v1, p0, p1}, Lcom/moat/analytics/mobile/iro/h$1;-><init>(Lcom/moat/analytics/mobile/iro/h;Landroid/content/Context;)V

    .line 1105
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ˊ:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ʽ:Ljava/util/concurrent/ScheduledFuture;

    .line 55
    :cond_30
    return-void
.end method

.method final ˎ(Lcom/moat/analytics/mobile/iro/f;)V
    .registers 6

    .prologue
    .line 58
    if-eqz p1, :cond_20

    .line 59
    const/4 v0, 0x3

    const-string v1, "JSUpdateLooper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeSetupNeededBridge"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ˋ:Ljava/util/WeakHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_20
    return-void
.end method

.method final ॱ(Lcom/moat/analytics/mobile/iro/c;)V
    .registers 6

    .prologue
    .line 79
    if-eqz p1, :cond_20

    .line 80
    const/4 v0, 0x3

    const-string v1, "JSUpdateLooper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeActiveTracker"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->ॱ:Ljava/util/WeakHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_20
    return-void
.end method

###### Class com.moat.analytics.mobile.iro.h.AnonymousClass1 (com.moat.analytics.mobile.iro.h$1)
.class final Lcom/moat/analytics/mobile/iro/h$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ˋ:Landroid/content/Context;

.field private synthetic ॱ:Lcom/moat/analytics/mobile/iro/h;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/iro/h;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 90
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/h$1;->ॱ:Lcom/moat/analytics/mobile/iro/h;

    iput-object p2, p0, Lcom/moat/analytics/mobile/iro/h$1;->ˋ:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 94
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "UPDATE_METADATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/h$1;->ˋ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 96
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h$1;->ॱ:Lcom/moat/analytics/mobile/iro/h;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/h;->ॱ(Lcom/moat/analytics/mobile/iro/h;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 97
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h$1;->ॱ:Lcom/moat/analytics/mobile/iro/h;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/h;->ˎ(Lcom/moat/analytics/mobile/iro/h;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 103
    :cond_2a
    :goto_2a
    return-void

    .line 101
    :catch_2b
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_2a
.end method

###### Class com.moat.analytics.mobile.iro.h.AnonymousClass4 (com.moat.analytics.mobile.iro.h$4)
.class final Lcom/moat/analytics/mobile/iro/h$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ˋ:Landroid/content/Context;

.field private synthetic ˎ:Lcom/moat/analytics/mobile/iro/h;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/iro/h;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 112
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/h$4;->ˎ:Lcom/moat/analytics/mobile/iro/h;

    iput-object p2, p0, Lcom/moat/analytics/mobile/iro/h$4;->ˋ:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 116
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "UPDATE_VIEW_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/h$4;->ˋ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 118
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h$4;->ˎ:Lcom/moat/analytics/mobile/iro/h;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/h;->ˊ(Lcom/moat/analytics/mobile/iro/h;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 119
    const/4 v0, 0x3

    const-string v1, "JSUpdateLooper"

    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/h$4;->ˎ:Lcom/moat/analytics/mobile/iro/h;

    const-string v3, "No more active trackers"

    invoke-static {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/h$4;->ˎ:Lcom/moat/analytics/mobile/iro/h;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/h;->ˏ(Lcom/moat/analytics/mobile/iro/h;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    .line 125
    :cond_34
    :goto_34
    return-void

    .line 123
    :catch_35
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_34
.end method
