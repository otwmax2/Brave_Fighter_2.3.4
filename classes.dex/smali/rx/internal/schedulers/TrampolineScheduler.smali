###### Class rx.internal.schedulers.TrampolineScheduler (rx.internal.schedulers.TrampolineScheduler)
.class public final Lrx/internal/schedulers/TrampolineScheduler;
.super Lrx/Scheduler;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/TrampolineScheduler$TimedAction;,
        Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lrx/internal/schedulers/TrampolineScheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lrx/internal/schedulers/TrampolineScheduler;

    invoke-direct {v0}, Lrx/internal/schedulers/TrampolineScheduler;-><init>()V

    sput-object v0, Lrx/internal/schedulers/TrampolineScheduler;->INSTANCE:Lrx/internal/schedulers/TrampolineScheduler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 41
    return-void
.end method

.method static compare(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 125
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .registers 2

    .prologue
    .line 37
    new-instance v0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    invoke-direct {v0}, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;-><init>()V

    return-object v0
.end method

###### Class rx.internal.schedulers.TrampolineScheduler.InnerCurrentThreadScheduler (rx.internal.schedulers.TrampolineScheduler$InnerCurrentThreadScheduler)
.class final Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;
.super Lrx/Scheduler$Worker;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerCurrentThreadScheduler"
.end annotation


# instance fields
.field final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final innerSubscription:Lrx/subscriptions/BooleanSubscription;

.field final queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lrx/internal/schedulers/TrampolineScheduler$TimedAction;",
            ">;"
        }
    .end annotation
.end field

.field private final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 47
    new-instance v0, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {v0}, Lrx/subscriptions/BooleanSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private enqueue(Lrx/functions/Action0;J)Lrx/Subscription;
    .registers 8
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "execTime"    # J

    .prologue
    .line 63
    iget-object v2, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 64
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    .line 79
    :goto_c
    return-object v2

    .line 66
    :cond_d
    new-instance v1, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;-><init>(Lrx/functions/Action0;Ljava/lang/Long;I)V

    .line 67
    .local v1, "timedAction":Lrx/internal/schedulers/TrampolineScheduler$TimedAction;
    iget-object v2, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v2, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-nez v2, :cond_45

    .line 71
    :cond_29
    iget-object v2, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;

    .line 72
    .local v0, "polled":Lrx/internal/schedulers/TrampolineScheduler$TimedAction;
    if-eqz v0, :cond_38

    .line 73
    iget-object v2, v0, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->action:Lrx/functions/Action0;

    invoke-interface {v2}, Lrx/functions/Action0;->call()V

    .line 75
    :cond_38
    iget-object v2, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gtz v2, :cond_29

    .line 76
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    goto :goto_c

    .line 79
    .end local v0    # "polled":Lrx/internal/schedulers/TrampolineScheduler$TimedAction;
    :cond_45
    new-instance v2, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;

    invoke-direct {v2, p0, v1}, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;-><init>(Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;Lrx/internal/schedulers/TrampolineScheduler$TimedAction;)V

    invoke-static {v2}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    goto :goto_c
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 4
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 52
    invoke-virtual {p0}, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->now()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->enqueue(Lrx/functions/Action0;J)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 11
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 57
    invoke-virtual {p0}, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->now()J

    move-result-wide v2

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 59
    .local v0, "execTime":J
    new-instance v2, Lrx/internal/schedulers/SleepingAction;

    invoke-direct {v2, p1, p0, v0, v1}, Lrx/internal/schedulers/SleepingAction;-><init>(Lrx/functions/Action0;Lrx/Scheduler$Worker;J)V

    invoke-direct {p0, v2, v0, v1}, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->enqueue(Lrx/functions/Action0;J)Lrx/Subscription;

    move-result-object v2

    return-object v2
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->unsubscribe()V

    .line 93
    return-void
.end method

###### Class rx.internal.schedulers.TrampolineScheduler.InnerCurrentThreadScheduler.AnonymousClass1 (rx.internal.schedulers.TrampolineScheduler$InnerCurrentThreadScheduler$1)
.class Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->enqueue(Lrx/functions/Action0;J)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

.field final synthetic val$timedAction:Lrx/internal/schedulers/TrampolineScheduler$TimedAction;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;Lrx/internal/schedulers/TrampolineScheduler$TimedAction;)V
    .registers 3

    .prologue
    .line 79
    iput-object p1, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->this$0:Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    iput-object p2, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->val$timedAction:Lrx/internal/schedulers/TrampolineScheduler$TimedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->this$0:Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    iget-object v0, v0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->val$timedAction:Lrx/internal/schedulers/TrampolineScheduler$TimedAction;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

###### Class rx.internal.schedulers.TrampolineScheduler.TimedAction (rx.internal.schedulers.TrampolineScheduler$TimedAction)
.class final Lrx/internal/schedulers/TrampolineScheduler$TimedAction;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lrx/internal/schedulers/TrampolineScheduler$TimedAction;",
        ">;"
    }
.end annotation


# instance fields
.field final action:Lrx/functions/Action0;

.field final count:I

.field final execTime:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lrx/functions/Action0;Ljava/lang/Long;I)V
    .registers 4
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "execTime"    # Ljava/lang/Long;
    .param p3, "count"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->action:Lrx/functions/Action0;

    .line 109
    iput-object p2, p0, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->execTime:Ljava/lang/Long;

    .line 110
    iput p3, p0, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->count:I

    .line 111
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->compareTo(Lrx/internal/schedulers/TrampolineScheduler$TimedAction;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lrx/internal/schedulers/TrampolineScheduler$TimedAction;)I
    .registers 5
    .param p1, "that"    # Lrx/internal/schedulers/TrampolineScheduler$TimedAction;

    .prologue
    .line 115
    iget-object v1, p0, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->execTime:Ljava/lang/Long;

    iget-object v2, p1, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->execTime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 116
    .local v0, "result":I
    if-nez v0, :cond_12

    .line 117
    iget v1, p0, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->count:I

    iget v2, p1, Lrx/internal/schedulers/TrampolineScheduler$TimedAction;->count:I

    invoke-static {v1, v2}, Lrx/internal/schedulers/TrampolineScheduler;->compare(II)I

    move-result v0

    .line 119
    .end local v0    # "result":I
    :cond_12
    return v0
.end method
