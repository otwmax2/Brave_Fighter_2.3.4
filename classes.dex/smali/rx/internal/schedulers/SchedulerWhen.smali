###### Class rx.internal.schedulers.SchedulerWhen (rx.internal.schedulers.SchedulerWhen)
.class public Lrx/internal/schedulers/SchedulerWhen;
.super Lrx/Scheduler;
.source "SchedulerWhen.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/SchedulerWhen$DelayedAction;,
        Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;,
        Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# static fields
.field static final SUBSCRIBED:Lrx/Subscription;

.field static final UNSUBSCRIBED:Lrx/Subscription;


# instance fields
.field private final actualScheduler:Lrx/Scheduler;

.field private final subscription:Lrx/Subscription;

.field private final workerObserver:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<",
            "Lrx/Completable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 196
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$3;

    invoke-direct {v0}, Lrx/internal/schedulers/SchedulerWhen$3;-><init>()V

    sput-object v0, Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;

    .line 207
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    sput-object v0, Lrx/internal/schedulers/SchedulerWhen;->UNSUBSCRIBED:Lrx/Subscription;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/Scheduler;)V
    .registers 5
    .param p2, "actualScheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<",
            "Lrx/Completable;",
            ">;>;",
            "Lrx/Completable;",
            ">;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "combine":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable<Lrx/Observable<Lrx/Completable;>;>;Lrx/Completable;>;"
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 112
    iput-object p2, p0, Lrx/internal/schedulers/SchedulerWhen;->actualScheduler:Lrx/Scheduler;

    .line 114
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v0

    .line 115
    .local v0, "workerSubject":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<Lrx/Observable<Lrx/Completable;>;>;"
    new-instance v1, Lrx/observers/SerializedObserver;

    invoke-direct {v1, v0}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    iput-object v1, p0, Lrx/internal/schedulers/SchedulerWhen;->workerObserver:Lrx/Observer;

    .line 118
    invoke-virtual {v0}, Lrx/subjects/PublishSubject;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v1

    invoke-interface {p1, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Completable;

    invoke-virtual {v1}, Lrx/Completable;->subscribe()Lrx/Subscription;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/schedulers/SchedulerWhen;->subscription:Lrx/Subscription;

    .line 119
    return-void
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .registers 7

    .prologue
    .line 133
    iget-object v5, p0, Lrx/internal/schedulers/SchedulerWhen;->actualScheduler:Lrx/Scheduler;

    invoke-virtual {v5}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v3

    .line 136
    .local v3, "actualWorker":Lrx/Scheduler$Worker;
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->create()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v1

    .line 137
    .local v1, "actionSubject":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;>;"
    new-instance v0, Lrx/observers/SerializedObserver;

    invoke-direct {v0, v1}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    .line 139
    .local v0, "actionObserver":Lrx/Observer;, "Lrx/Observer<Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;>;"
    new-instance v5, Lrx/internal/schedulers/SchedulerWhen$1;

    invoke-direct {v5, p0, v3}, Lrx/internal/schedulers/SchedulerWhen$1;-><init>(Lrx/internal/schedulers/SchedulerWhen;Lrx/Scheduler$Worker;)V

    invoke-virtual {v1, v5}, Lrx/internal/operators/BufferUntilSubscriber;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    .line 154
    .local v2, "actions":Lrx/Observable;, "Lrx/Observable<Lrx/Completable;>;"
    new-instance v4, Lrx/internal/schedulers/SchedulerWhen$2;

    invoke-direct {v4, p0, v3, v0}, Lrx/internal/schedulers/SchedulerWhen$2;-><init>(Lrx/internal/schedulers/SchedulerWhen;Lrx/Scheduler$Worker;Lrx/Observer;)V

    .line 190
    .local v4, "worker":Lrx/Scheduler$Worker;
    iget-object v5, p0, Lrx/internal/schedulers/SchedulerWhen;->workerObserver:Lrx/Observer;

    invoke-interface {v5, v2}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 193
    return-object v4
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen;->subscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen;->subscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 124
    return-void
.end method

###### Class rx.internal.schedulers.SchedulerWhen.AnonymousClass1 (rx.internal.schedulers.SchedulerWhen$1)
.class Lrx/internal/schedulers/SchedulerWhen$1;
.super Ljava/lang/Object;
.source "SchedulerWhen.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/SchedulerWhen;->createWorker()Lrx/Scheduler$Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;",
        "Lrx/Completable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/schedulers/SchedulerWhen;

.field final synthetic val$actualWorker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/SchedulerWhen;Lrx/Scheduler$Worker;)V
    .registers 3

    .prologue
    .line 139
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$1;->this$0:Lrx/internal/schedulers/SchedulerWhen;

    iput-object p2, p0, Lrx/internal/schedulers/SchedulerWhen$1;->val$actualWorker:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 139
    check-cast p1, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/schedulers/SchedulerWhen$1;->call(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;)Lrx/Completable;
    .registers 3
    .param p1, "action"    # Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    .prologue
    .line 142
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$1$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/schedulers/SchedulerWhen$1$1;-><init>(Lrx/internal/schedulers/SchedulerWhen$1;Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.schedulers.SchedulerWhen.AnonymousClass1.C01981 (rx.internal.schedulers.SchedulerWhen$1$1)
.class Lrx/internal/schedulers/SchedulerWhen$1$1;
.super Ljava/lang/Object;
.source "SchedulerWhen.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/SchedulerWhen$1;->call(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/schedulers/SchedulerWhen$1;

.field final synthetic val$action:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/SchedulerWhen$1;Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;)V
    .registers 3

    .prologue
    .line 142
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$1$1;->this$1:Lrx/internal/schedulers/SchedulerWhen$1;

    iput-object p2, p0, Lrx/internal/schedulers/SchedulerWhen$1$1;->val$action:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 142
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/schedulers/SchedulerWhen$1$1;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 4
    .param p1, "actionCompletable"    # Lrx/CompletableSubscriber;

    .prologue
    .line 145
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$1$1;->val$action:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 146
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$1$1;->val$action:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    iget-object v1, p0, Lrx/internal/schedulers/SchedulerWhen$1$1;->this$1:Lrx/internal/schedulers/SchedulerWhen$1;

    iget-object v1, v1, Lrx/internal/schedulers/SchedulerWhen$1;->val$actualWorker:Lrx/Scheduler$Worker;

    invoke-static {v0, v1}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->access$000(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;Lrx/Scheduler$Worker;)V

    .line 147
    invoke-interface {p1}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 148
    return-void
.end method

###### Class rx.internal.schedulers.SchedulerWhen.AnonymousClass2 (rx.internal.schedulers.SchedulerWhen$2)
.class Lrx/internal/schedulers/SchedulerWhen$2;
.super Lrx/Scheduler$Worker;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/SchedulerWhen;->createWorker()Lrx/Scheduler$Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/schedulers/SchedulerWhen;

.field private final unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$actionObserver:Lrx/Observer;

.field final synthetic val$actualWorker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/SchedulerWhen;Lrx/Scheduler$Worker;Lrx/Observer;)V
    .registers 5

    .prologue
    .line 154
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$2;->this$0:Lrx/internal/schedulers/SchedulerWhen;

    iput-object p2, p0, Lrx/internal/schedulers/SchedulerWhen$2;->val$actualWorker:Lrx/Scheduler$Worker;

    iput-object p3, p0, Lrx/internal/schedulers/SchedulerWhen$2;->val$actionObserver:Lrx/Observer;

    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 155
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$2;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$2;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 4
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 183
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;

    invoke-direct {v0, p1}, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;-><init>(Lrx/functions/Action0;)V

    .line 184
    .local v0, "immediateAction":Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;
    iget-object v1, p0, Lrx/internal/schedulers/SchedulerWhen$2;->val$actionObserver:Lrx/Observer;

    invoke-interface {v1, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 185
    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 7
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 175
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;-><init>(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)V

    .line 176
    .local v0, "delayedAction":Lrx/internal/schedulers/SchedulerWhen$DelayedAction;
    iget-object v1, p0, Lrx/internal/schedulers/SchedulerWhen$2;->val$actionObserver:Lrx/Observer;

    invoke-interface {v1, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 177
    return-object v0
.end method

.method public unsubscribe()V
    .registers 4

    .prologue
    .line 161
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$2;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 162
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$2;->val$actualWorker:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 163
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$2;->val$actionObserver:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 165
    :cond_14
    return-void
.end method

###### Class rx.internal.schedulers.SchedulerWhen.AnonymousClass3 (rx.internal.schedulers.SchedulerWhen$3)
.class final Lrx/internal/schedulers/SchedulerWhen$3;
.super Ljava/lang/Object;
.source "SchedulerWhen.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public unsubscribe()V
    .registers 1

    .prologue
    .line 199
    return-void
.end method

###### Class rx.internal.schedulers.SchedulerWhen.DelayedAction (rx.internal.schedulers.SchedulerWhen$DelayedAction)
.class Lrx/internal/schedulers/SchedulerWhen$DelayedAction;
.super Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedAction"
.end annotation


# instance fields
.field private final action:Lrx/functions/Action0;

.field private final delayTime:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 287
    invoke-direct {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;-><init>()V

    .line 288
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->action:Lrx/functions/Action0;

    .line 289
    iput-wide p2, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->delayTime:J

    .line 290
    iput-object p4, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->unit:Ljava/util/concurrent/TimeUnit;

    .line 291
    return-void
.end method


# virtual methods
.method protected callActual(Lrx/Scheduler$Worker;)Lrx/Subscription;
    .registers 6
    .param p1, "actualWorker"    # Lrx/Scheduler$Worker;

    .prologue
    .line 295
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->action:Lrx/functions/Action0;

    iget-wide v2, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->delayTime:J

    iget-object v1, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v2, v3, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.schedulers.SchedulerWhen.ImmediateAction (rx.internal.schedulers.SchedulerWhen$ImmediateAction)
.class Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;
.super Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateAction"
.end annotation


# instance fields
.field private final action:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;)V
    .registers 2
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 271
    invoke-direct {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;-><init>()V

    .line 272
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;->action:Lrx/functions/Action0;

    .line 273
    return-void
.end method


# virtual methods
.method protected callActual(Lrx/Scheduler$Worker;)Lrx/Subscription;
    .registers 3
    .param p1, "actualWorker"    # Lrx/Scheduler$Worker;

    .prologue
    .line 277
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;->action:Lrx/functions/Action0;

    invoke-virtual {p1, v0}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.schedulers.SchedulerWhen.ScheduledAction (rx.internal.schedulers.SchedulerWhen$ScheduledAction)
.class abstract Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SchedulerWhen.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ScheduledAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/Subscription;",
        ">;",
        "Lrx/Subscription;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 212
    sget-object v0, Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method static synthetic access$000(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;Lrx/Scheduler$Worker;)V
    .registers 2
    .param p0, "x0"    # Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
    .param p1, "x1"    # Lrx/Scheduler$Worker;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->call(Lrx/Scheduler$Worker;)V

    return-void
.end method

.method private call(Lrx/Scheduler$Worker;)V
    .registers 5
    .param p1, "actualWorker"    # Lrx/Scheduler$Worker;

    .prologue
    .line 216
    invoke-virtual {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscription;

    .line 218
    .local v1, "oldState":Lrx/Subscription;
    sget-object v2, Lrx/internal/schedulers/SchedulerWhen;->UNSUBSCRIBED:Lrx/Subscription;

    if-ne v1, v2, :cond_b

    .line 238
    :cond_a
    :goto_a
    return-void

    .line 222
    :cond_b
    sget-object v2, Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;

    if-ne v1, v2, :cond_a

    .line 229
    invoke-virtual {p0, p1}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->callActual(Lrx/Scheduler$Worker;)Lrx/Subscription;

    move-result-object v0

    .line 231
    .local v0, "newState":Lrx/Subscription;
    sget-object v2, Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;

    invoke-virtual {p0, v2, v0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 236
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    goto :goto_a
.end method


# virtual methods
.method protected abstract callActual(Lrx/Scheduler$Worker;)Lrx/Subscription;
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .registers 4

    .prologue
    .line 251
    sget-object v0, Lrx/internal/schedulers/SchedulerWhen;->UNSUBSCRIBED:Lrx/Subscription;

    .line 253
    .local v0, "newState":Lrx/Subscription;
    :cond_2
    invoke-virtual {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscription;

    .line 254
    .local v1, "oldState":Lrx/Subscription;
    sget-object v2, Lrx/internal/schedulers/SchedulerWhen;->UNSUBSCRIBED:Lrx/Subscription;

    if-ne v1, v2, :cond_d

    .line 264
    :cond_c
    :goto_c
    return-void

    .line 258
    :cond_d
    invoke-virtual {p0, v1, v0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    sget-object v2, Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;

    if-eq v1, v2, :cond_c

    .line 262
    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    goto :goto_c
.end method
