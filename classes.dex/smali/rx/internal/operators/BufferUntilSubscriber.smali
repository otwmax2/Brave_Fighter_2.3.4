###### Class rx.internal.operators.BufferUntilSubscriber (rx.internal.operators.BufferUntilSubscriber)
.class public final Lrx/internal/operators/BufferUntilSubscriber;
.super Lrx/subjects/Subject;
.source "BufferUntilSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;,
        Lrx/internal/operators/BufferUntilSubscriber$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY_OBSERVER:Lrx/Observer;


# instance fields
.field private forward:Z

.field final state:Lrx/internal/operators/BufferUntilSubscriber$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/BufferUntilSubscriber$State",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 193
    new-instance v0, Lrx/internal/operators/BufferUntilSubscriber$1;

    invoke-direct {v0}, Lrx/internal/operators/BufferUntilSubscriber$1;-><init>()V

    sput-object v0, Lrx/internal/operators/BufferUntilSubscriber;->EMPTY_OBSERVER:Lrx/Observer;

    return-void
.end method

.method private constructor <init>(Lrx/internal/operators/BufferUntilSubscriber$State;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/BufferUntilSubscriber$State",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    .local p1, "state":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    new-instance v0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;

    invoke-direct {v0, p1}, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;-><init>(Lrx/internal/operators/BufferUntilSubscriber$State;)V

    invoke-direct {p0, v0}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 132
    iput-object p1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    .line 133
    return-void
.end method

.method public static create()Lrx/internal/operators/BufferUntilSubscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/BufferUntilSubscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-direct {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;-><init>()V

    .line 61
    .local v0, "state":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    new-instance v1, Lrx/internal/operators/BufferUntilSubscriber;

    invoke-direct {v1, v0}, Lrx/internal/operators/BufferUntilSubscriber;-><init>(Lrx/internal/operators/BufferUntilSubscriber$State;)V

    return-object v1
.end method

.method private emit(Ljava/lang/Object;)V
    .registers 6
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 136
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v2, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 137
    :try_start_5
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v1, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v1}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-boolean v1, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    if-nez v1, :cond_22

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    .line 142
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    .line 144
    :cond_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_41

    .line 145
    iget-boolean v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    if-eqz v1, :cond_44

    .line 147
    :goto_27
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v1, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_44

    .line 148
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v2, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v1}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observer;

    invoke-virtual {v2, v1, v0}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    goto :goto_27

    .line 144
    .end local v0    # "o":Ljava/lang/Object;
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1

    .line 153
    :cond_44
    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .registers 3

    .prologue
    .line 187
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v1, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_5
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 189
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 157
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    if-eqz v0, :cond_10

    .line 158
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 163
    :goto_f
    return-void

    .line 161
    :cond_10
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/internal/operators/BufferUntilSubscriber;->emit(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    if-eqz v0, :cond_10

    .line 168
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 173
    :goto_f
    return-void

    .line 171
    :cond_10
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/internal/operators/BufferUntilSubscriber;->emit(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    if-eqz v0, :cond_10

    .line 178
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 183
    :goto_f
    return-void

    .line 181
    :cond_10
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/internal/operators/BufferUntilSubscriber;->emit(Ljava/lang/Object;)V

    goto :goto_f
.end method

###### Class rx.internal.operators.BufferUntilSubscriber.AnonymousClass1 (rx.internal.operators.BufferUntilSubscriber$1)
.class final Lrx/internal/operators/BufferUntilSubscriber$1;
.super Ljava/lang/Object;
.source "BufferUntilSubscriber.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BufferUntilSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .prologue
    .line 198
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 203
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 208
    return-void
.end method

###### Class rx.internal.operators.BufferUntilSubscriber.OnSubscribeAction (rx.internal.operators.BufferUntilSubscriber$OnSubscribeAction)
.class final Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;
.super Ljava/lang/Object;
.source "BufferUntilSubscriber.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BufferUntilSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnSubscribeAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final state:Lrx/internal/operators/BufferUntilSubscriber$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/BufferUntilSubscriber$State",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/BufferUntilSubscriber$State;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/BufferUntilSubscriber$State",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction<TT;>;"
    .local p1, "state":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    .line 86
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Lrx/internal/operators/BufferUntilSubscriber$State;->casObserverRef(Lrx/Observer;Lrx/Observer;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 91
    new-instance v3, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;

    invoke-direct {v3, p0}, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;-><init>(Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;)V

    invoke-static {v3}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 98
    const/4 v2, 0x0

    .line 99
    .local v2, "win":Z
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v4, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 100
    :try_start_1b
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-boolean v3, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    if-nez v3, :cond_27

    .line 101
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    .line 102
    const/4 v2, 0x1

    .line 104
    :cond_27
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_44

    .line 105
    if-eqz v2, :cond_5c

    .line 106
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    .line 109
    .local v0, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    :goto_2e
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v3, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_47

    .line 110
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v3}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Observer;

    invoke-virtual {v0, v3, v1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    goto :goto_2e

    .line 104
    .end local v0    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .end local v1    # "o":Ljava/lang/Object;
    :catchall_44
    move-exception v3

    :try_start_45
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v3

    .line 112
    .restart local v0    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_47
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v4, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 113
    :try_start_4c
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v3, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 117
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    .line 118
    monitor-exit v4

    .line 126
    .end local v0    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "win":Z
    :cond_5c
    :goto_5c
    return-void

    .line 120
    .restart local v0    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .restart local v1    # "o":Ljava/lang/Object;
    .restart local v2    # "win":Z
    :cond_5d
    monitor-exit v4

    goto :goto_2e

    :catchall_5f
    move-exception v3

    monitor-exit v4
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_5f

    throw v3

    .line 124
    .end local v0    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "win":Z
    :cond_62
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Only one subscriber allowed!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_5c
.end method

###### Class rx.internal.operators.BufferUntilSubscriber.OnSubscribeAction.AnonymousClass1 (rx.internal.operators.BufferUntilSubscriber$OnSubscribeAction$1)
.class Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;
.super Ljava/lang/Object;
.source "BufferUntilSubscriber.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;


# direct methods
.method constructor <init>(Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;)V
    .registers 2

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction.1;"
    iput-object p1, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;->this$0:Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction.1;"
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;->this$0:Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    sget-object v1, Lrx/internal/operators/BufferUntilSubscriber;->EMPTY_OBSERVER:Lrx/Observer;

    invoke-virtual {v0, v1}, Lrx/internal/operators/BufferUntilSubscriber$State;->set(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

###### Class rx.internal.operators.BufferUntilSubscriber.State (rx.internal.operators.BufferUntilSubscriber$State)
.class final Lrx/internal/operators/BufferUntilSubscriber$State;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "BufferUntilSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BufferUntilSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/Observer",
        "<-TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6f6495c06abce580L


# instance fields
.field final buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field emitting:Z

.field final guard:Ljava/lang/Object;

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 74
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lrx/internal/operators/NotificationLite;

    return-void
.end method


# virtual methods
.method casObserverRef(Lrx/Observer;Lrx/Observer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;",
            "Lrx/Observer",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    .local p1, "expected":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    .local p2, "next":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/BufferUntilSubscriber$State;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
