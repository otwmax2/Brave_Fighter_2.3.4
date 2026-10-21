###### Class rx.schedulers.TestScheduler (rx.schedulers.TestScheduler)
.class public Lrx/schedulers/TestScheduler;
.super Lrx/Scheduler;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/schedulers/TestScheduler$InnerTestScheduler;,
        Lrx/schedulers/TestScheduler$CompareActionsByTime;,
        Lrx/schedulers/TestScheduler$TimedAction;
    }
.end annotation


# static fields
.field static counter:J


# instance fields
.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lrx/schedulers/TestScheduler$TimedAction;",
            ">;"
        }
    .end annotation
.end field

.field time:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 34
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xb

    new-instance v2, Lrx/schedulers/TestScheduler$CompareActionsByTime;

    invoke-direct {v2}, Lrx/schedulers/TestScheduler$CompareActionsByTime;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    .line 133
    return-void
.end method

.method private triggerActions(J)V
    .registers 10
    .param p1, "targetTimeInNanos"    # J

    .prologue
    .line 111
    :cond_0
    :goto_0
    iget-object v1, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 112
    iget-object v1, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/TestScheduler$TimedAction;

    .line 113
    .local v0, "current":Lrx/schedulers/TestScheduler$TimedAction;
    iget-wide v2, v0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    cmp-long v1, v2, p1

    if-lez v1, :cond_19

    .line 125
    .end local v0    # "current":Lrx/schedulers/TestScheduler$TimedAction;
    :cond_16
    iput-wide p1, p0, Lrx/schedulers/TestScheduler;->time:J

    .line 126
    return-void

    .line 117
    .restart local v0    # "current":Lrx/schedulers/TestScheduler$TimedAction;
    :cond_19
    iget-wide v2, v0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_38

    iget-wide v2, p0, Lrx/schedulers/TestScheduler;->time:J

    :goto_23
    iput-wide v2, p0, Lrx/schedulers/TestScheduler;->time:J

    .line 118
    iget-object v1, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 121
    iget-object v1, v0, Lrx/schedulers/TestScheduler$TimedAction;->scheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object v1, v0, Lrx/schedulers/TestScheduler$TimedAction;->action:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V

    goto :goto_0

    .line 117
    :cond_38
    iget-wide v2, v0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    goto :goto_23
.end method


# virtual methods
.method public advanceTimeBy(JLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .param p1, "delayTime"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 86
    iget-wide v0, p0, Lrx/schedulers/TestScheduler;->time:J

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lrx/schedulers/TestScheduler;->advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V

    .line 87
    return-void
.end method

.method public advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .param p1, "delayTime"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 98
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 99
    .local v0, "targetTime":J
    invoke-direct {p0, v0, v1}, Lrx/schedulers/TestScheduler;->triggerActions(J)V

    .line 100
    return-void
.end method

.method public createWorker()Lrx/Scheduler$Worker;
    .registers 2

    .prologue
    .line 130
    new-instance v0, Lrx/schedulers/TestScheduler$InnerTestScheduler;

    invoke-direct {v0, p0}, Lrx/schedulers/TestScheduler$InnerTestScheduler;-><init>(Lrx/schedulers/TestScheduler;)V

    return-object v0
.end method

.method public now()J
    .registers 5

    .prologue
    .line 74
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lrx/schedulers/TestScheduler;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public triggerActions()V
    .registers 3

    .prologue
    .line 107
    iget-wide v0, p0, Lrx/schedulers/TestScheduler;->time:J

    invoke-direct {p0, v0, v1}, Lrx/schedulers/TestScheduler;->triggerActions(J)V

    .line 108
    return-void
.end method

###### Class rx.schedulers.TestScheduler.CompareActionsByTime (rx.schedulers.TestScheduler$CompareActionsByTime)
.class final Lrx/schedulers/TestScheduler$CompareActionsByTime;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompareActionsByTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lrx/schedulers/TestScheduler$TimedAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, Lrx/schedulers/TestScheduler$TimedAction;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/schedulers/TestScheduler$TimedAction;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/schedulers/TestScheduler$CompareActionsByTime;->compare(Lrx/schedulers/TestScheduler$TimedAction;Lrx/schedulers/TestScheduler$TimedAction;)I

    move-result v0

    return v0
.end method

.method public compare(Lrx/schedulers/TestScheduler$TimedAction;Lrx/schedulers/TestScheduler$TimedAction;)I
    .registers 11
    .param p1, "action1"    # Lrx/schedulers/TestScheduler$TimedAction;
    .param p2, "action2"    # Lrx/schedulers/TestScheduler$TimedAction;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 64
    iget-wide v4, p1, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    iget-wide v6, p2, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_28

    .line 65
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$000(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v4

    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$000(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_18

    .line 67
    :cond_17
    :goto_17
    return v0

    .line 65
    :cond_18
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$000(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v4

    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$000(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_26

    move v0, v1

    goto :goto_17

    :cond_26
    move v0, v2

    goto :goto_17

    .line 67
    :cond_28
    iget-wide v4, p1, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    iget-wide v6, p2, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_17

    iget-wide v4, p1, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    iget-wide v6, p2, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_3a

    move v0, v1

    goto :goto_17

    :cond_3a
    move v0, v2

    goto :goto_17
.end method

###### Class rx.schedulers.TestScheduler.InnerTestScheduler (rx.schedulers.TestScheduler$InnerTestScheduler)
.class final Lrx/schedulers/TestScheduler$InnerTestScheduler;
.super Lrx/Scheduler$Worker;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InnerTestScheduler"
.end annotation


# instance fields
.field private final s:Lrx/subscriptions/BooleanSubscription;

.field final synthetic this$0:Lrx/schedulers/TestScheduler;


# direct methods
.method constructor <init>(Lrx/schedulers/TestScheduler;)V
    .registers 3

    .prologue
    .line 133
    iput-object p1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 135
    new-instance v0, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {v0}, Lrx/subscriptions/BooleanSubscription;-><init>()V

    iput-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->s:Lrx/subscriptions/BooleanSubscription;

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->s:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public now()J
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    invoke-virtual {v0}, Lrx/schedulers/TestScheduler;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 6
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 163
    new-instance v0, Lrx/schedulers/TestScheduler$TimedAction;

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v2, v3, p1}, Lrx/schedulers/TestScheduler$TimedAction;-><init>(Lrx/Scheduler$Worker;JLrx/functions/Action0;)V

    .line 164
    .local v0, "timedAction":Lrx/schedulers/TestScheduler$TimedAction;
    iget-object v1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    iget-object v1, v1, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;

    invoke-direct {v1, p0, v0}, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;-><init>(Lrx/schedulers/TestScheduler$InnerTestScheduler;Lrx/schedulers/TestScheduler$TimedAction;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    return-object v1
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 11
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 149
    new-instance v0, Lrx/schedulers/TestScheduler$TimedAction;

    iget-object v1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    iget-wide v2, v1, Lrx/schedulers/TestScheduler;->time:J

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v0, p0, v2, v3, p1}, Lrx/schedulers/TestScheduler$TimedAction;-><init>(Lrx/Scheduler$Worker;JLrx/functions/Action0;)V

    .line 150
    .local v0, "timedAction":Lrx/schedulers/TestScheduler$TimedAction;
    iget-object v1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    iget-object v1, v1, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lrx/schedulers/TestScheduler$InnerTestScheduler$1;

    invoke-direct {v1, p0, v0}, Lrx/schedulers/TestScheduler$InnerTestScheduler$1;-><init>(Lrx/schedulers/TestScheduler$InnerTestScheduler;Lrx/schedulers/TestScheduler$TimedAction;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    return-object v1
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->s:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->unsubscribe()V

    .line 140
    return-void
.end method

###### Class rx.schedulers.TestScheduler.InnerTestScheduler.AnonymousClass1 (rx.schedulers.TestScheduler$InnerTestScheduler$1)
.class Lrx/schedulers/TestScheduler$InnerTestScheduler$1;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/schedulers/TestScheduler$InnerTestScheduler;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/schedulers/TestScheduler$InnerTestScheduler;

.field final synthetic val$timedAction:Lrx/schedulers/TestScheduler$TimedAction;


# direct methods
.method constructor <init>(Lrx/schedulers/TestScheduler$InnerTestScheduler;Lrx/schedulers/TestScheduler$TimedAction;)V
    .registers 3

    .prologue
    .line 151
    iput-object p1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$1;->this$1:Lrx/schedulers/TestScheduler$InnerTestScheduler;

    iput-object p2, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$1;->val$timedAction:Lrx/schedulers/TestScheduler$TimedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$1;->this$1:Lrx/schedulers/TestScheduler$InnerTestScheduler;

    iget-object v0, v0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    iget-object v0, v0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$1;->val$timedAction:Lrx/schedulers/TestScheduler$TimedAction;

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

###### Class rx.schedulers.TestScheduler.InnerTestScheduler.AnonymousClass2 (rx.schedulers.TestScheduler$InnerTestScheduler$2)
.class Lrx/schedulers/TestScheduler$InnerTestScheduler$2;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/schedulers/TestScheduler$InnerTestScheduler;->schedule(Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/schedulers/TestScheduler$InnerTestScheduler;

.field final synthetic val$timedAction:Lrx/schedulers/TestScheduler$TimedAction;


# direct methods
.method constructor <init>(Lrx/schedulers/TestScheduler$InnerTestScheduler;Lrx/schedulers/TestScheduler$TimedAction;)V
    .registers 3

    .prologue
    .line 165
    iput-object p1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;->this$1:Lrx/schedulers/TestScheduler$InnerTestScheduler;

    iput-object p2, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;->val$timedAction:Lrx/schedulers/TestScheduler$TimedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;->this$1:Lrx/schedulers/TestScheduler$InnerTestScheduler;

    iget-object v0, v0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    iget-object v0, v0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;->val$timedAction:Lrx/schedulers/TestScheduler$TimedAction;

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

###### Class rx.schedulers.TestScheduler.TimedAction (rx.schedulers.TestScheduler$TimedAction)
.class final Lrx/schedulers/TestScheduler$TimedAction;
.super Ljava/lang/Object;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimedAction"
.end annotation


# instance fields
.field final action:Lrx/functions/Action0;

.field private final count:J

.field final scheduler:Lrx/Scheduler$Worker;

.field final time:J


# direct methods
.method constructor <init>(Lrx/Scheduler$Worker;JLrx/functions/Action0;)V
    .registers 9
    .param p1, "scheduler"    # Lrx/Scheduler$Worker;
    .param p2, "time"    # J
    .param p4, "action"    # Lrx/functions/Action0;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-wide v0, Lrx/schedulers/TestScheduler;->counter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lrx/schedulers/TestScheduler;->counter:J

    iput-wide v0, p0, Lrx/schedulers/TestScheduler$TimedAction;->count:J

    .line 49
    iput-wide p2, p0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    .line 50
    iput-object p4, p0, Lrx/schedulers/TestScheduler$TimedAction;->action:Lrx/functions/Action0;

    .line 51
    iput-object p1, p0, Lrx/schedulers/TestScheduler$TimedAction;->scheduler:Lrx/Scheduler$Worker;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lrx/schedulers/TestScheduler$TimedAction;)J
    .registers 3
    .param p0, "x0"    # Lrx/schedulers/TestScheduler$TimedAction;

    .prologue
    .line 41
    iget-wide v0, p0, Lrx/schedulers/TestScheduler$TimedAction;->count:J

    return-wide v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 56
    const-string v0, "TimedAction(time = %d, action = %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lrx/schedulers/TestScheduler$TimedAction;->action:Lrx/functions/Action0;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
