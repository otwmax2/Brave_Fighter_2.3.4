###### Class rx.Scheduler (rx.Scheduler)
.class public abstract Lrx/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Scheduler$Worker;
    }
.end annotation


# static fields
.field static final CLOCK_DRIFT_TOLERANCE_NANOS:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lrx/Scheduler;->CLOCK_DRIFT_TOLERANCE_NANOS:J

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public abstract createWorker()Lrx/Scheduler$Worker;
.end method

.method public now()J
    .registers 3

    .prologue
    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public when(Lrx/functions/Func1;)Lrx/Scheduler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lrx/Scheduler;",
            ":",
            "Lrx/Subscription;",
            ">(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<",
            "Lrx/Completable;",
            ">;>;",
            "Lrx/Completable;",
            ">;)TS;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 262
    .local p1, "combine":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable<Lrx/Observable<Lrx/Completable;>;>;Lrx/Completable;>;"
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen;

    invoke-direct {v0, p1, p0}, Lrx/internal/schedulers/SchedulerWhen;-><init>(Lrx/functions/Func1;Lrx/Scheduler;)V

    return-object v0
.end method

###### Class rx.Scheduler.Worker (rx.Scheduler$Worker)
.class public abstract Lrx/Scheduler$Worker;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Worker"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now()J
    .registers 3

    .prologue
    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract schedule(Lrx/functions/Action0;)Lrx/Subscription;
.end method

.method public abstract schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end method

.method public schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 25
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 124
    move-object/from16 v0, p6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    .line 125
    .local v12, "periodInNanos":J
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p0 .. p0}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 126
    .local v6, "firstNowNanos":J
    move-object/from16 v0, p6

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    add-long v8, v6, v16

    .line 128
    .local v8, "firstStartInNanos":J
    new-instance v14, Lrx/internal/subscriptions/SequentialSubscription;

    invoke-direct {v14}, Lrx/internal/subscriptions/SequentialSubscription;-><init>()V

    .line 129
    .local v14, "first":Lrx/internal/subscriptions/SequentialSubscription;
    new-instance v11, Lrx/internal/subscriptions/SequentialSubscription;

    invoke-direct {v11, v14}, Lrx/internal/subscriptions/SequentialSubscription;-><init>(Lrx/Subscription;)V

    .line 131
    .local v11, "mas":Lrx/internal/subscriptions/SequentialSubscription;
    new-instance v4, Lrx/Scheduler$Worker$1;

    move-object/from16 v5, p0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v13}, Lrx/Scheduler$Worker$1;-><init>(Lrx/Scheduler$Worker;JJLrx/functions/Action0;Lrx/internal/subscriptions/SequentialSubscription;J)V

    .line 163
    .local v4, "recursiveAction":Lrx/functions/Action0;
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p6

    invoke-virtual {v0, v4, v1, v2, v3}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v5

    invoke-virtual {v14, v5}, Lrx/internal/subscriptions/SequentialSubscription;->replace(Lrx/Subscription;)Z

    .line 164
    return-object v11
.end method

###### Class rx.Scheduler.Worker.AnonymousClass1 (rx.Scheduler$Worker$1)
.class Lrx/Scheduler$Worker$1;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:J

.field lastNowNanos:J

.field startInNanos:J

.field final synthetic this$0:Lrx/Scheduler$Worker;

.field final synthetic val$action:Lrx/functions/Action0;

.field final synthetic val$firstNowNanos:J

.field final synthetic val$firstStartInNanos:J

.field final synthetic val$mas:Lrx/internal/subscriptions/SequentialSubscription;

.field final synthetic val$periodInNanos:J


# direct methods
.method constructor <init>(Lrx/Scheduler$Worker;JJLrx/functions/Action0;Lrx/internal/subscriptions/SequentialSubscription;J)V
    .registers 12

    .prologue
    .line 131
    iput-object p1, p0, Lrx/Scheduler$Worker$1;->this$0:Lrx/Scheduler$Worker;

    iput-wide p2, p0, Lrx/Scheduler$Worker$1;->val$firstNowNanos:J

    iput-wide p4, p0, Lrx/Scheduler$Worker$1;->val$firstStartInNanos:J

    iput-object p6, p0, Lrx/Scheduler$Worker$1;->val$action:Lrx/functions/Action0;

    iput-object p7, p0, Lrx/Scheduler$Worker$1;->val$mas:Lrx/internal/subscriptions/SequentialSubscription;

    iput-wide p8, p0, Lrx/Scheduler$Worker$1;->val$periodInNanos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iget-wide v0, p0, Lrx/Scheduler$Worker$1;->val$firstNowNanos:J

    iput-wide v0, p0, Lrx/Scheduler$Worker$1;->lastNowNanos:J

    .line 134
    iget-wide v0, p0, Lrx/Scheduler$Worker$1;->val$firstStartInNanos:J

    iput-wide v0, p0, Lrx/Scheduler$Worker$1;->startInNanos:J

    return-void
.end method


# virtual methods
.method public call()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x1

    .line 137
    iget-object v6, p0, Lrx/Scheduler$Worker$1;->val$action:Lrx/functions/Action0;

    invoke-interface {v6}, Lrx/functions/Action0;->call()V

    .line 139
    iget-object v6, p0, Lrx/Scheduler$Worker$1;->val$mas:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v6}, Lrx/internal/subscriptions/SequentialSubscription;->isUnsubscribed()Z

    move-result v6

    if-nez v6, :cond_51

    .line 143
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lrx/Scheduler$Worker$1;->this$0:Lrx/Scheduler$Worker;

    invoke-virtual {v7}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 145
    .local v4, "nowNanos":J
    sget-wide v6, Lrx/Scheduler;->CLOCK_DRIFT_TOLERANCE_NANOS:J

    add-long/2addr v6, v4

    iget-wide v8, p0, Lrx/Scheduler$Worker$1;->lastNowNanos:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_30

    iget-wide v6, p0, Lrx/Scheduler$Worker$1;->lastNowNanos:J

    iget-wide v8, p0, Lrx/Scheduler$Worker$1;->val$periodInNanos:J

    add-long/2addr v6, v8

    sget-wide v8, Lrx/Scheduler;->CLOCK_DRIFT_TOLERANCE_NANOS:J

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_52

    .line 147
    :cond_30
    iget-wide v6, p0, Lrx/Scheduler$Worker$1;->val$periodInNanos:J

    add-long v2, v4, v6

    .line 152
    .local v2, "nextTick":J
    iget-wide v6, p0, Lrx/Scheduler$Worker$1;->val$periodInNanos:J

    iget-wide v8, p0, Lrx/Scheduler$Worker$1;->count:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lrx/Scheduler$Worker$1;->count:J

    mul-long/2addr v6, v8

    sub-long v6, v2, v6

    iput-wide v6, p0, Lrx/Scheduler$Worker$1;->startInNanos:J

    .line 156
    :goto_40
    iput-wide v4, p0, Lrx/Scheduler$Worker$1;->lastNowNanos:J

    .line 158
    sub-long v0, v2, v4

    .line 159
    .local v0, "delay":J
    iget-object v6, p0, Lrx/Scheduler$Worker$1;->val$mas:Lrx/internal/subscriptions/SequentialSubscription;

    iget-object v7, p0, Lrx/Scheduler$Worker$1;->this$0:Lrx/Scheduler$Worker;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, p0, v0, v1, v8}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/internal/subscriptions/SequentialSubscription;->replace(Lrx/Subscription;)Z

    .line 161
    .end local v0    # "delay":J
    .end local v2    # "nextTick":J
    .end local v4    # "nowNanos":J
    :cond_51
    return-void

    .line 154
    .restart local v4    # "nowNanos":J
    :cond_52
    iget-wide v6, p0, Lrx/Scheduler$Worker$1;->startInNanos:J

    iget-wide v8, p0, Lrx/Scheduler$Worker$1;->count:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lrx/Scheduler$Worker$1;->count:J

    iget-wide v10, p0, Lrx/Scheduler$Worker$1;->val$periodInNanos:J

    mul-long/2addr v8, v10

    add-long v2, v6, v8

    .restart local v2    # "nextTick":J
    goto :goto_40
.end method
