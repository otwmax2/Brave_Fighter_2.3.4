###### Class rx.internal.operators.OnSubscribeFromEmitter (rx.internal.operators.OnSubscribeFromEmitter)
.class public final Lrx/internal/operators/OnSubscribeFromEmitter;
.super Ljava/lang/Object;
.source "OnSubscribeFromEmitter.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeFromEmitter$1;,
        Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromEmitter$DropAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromEmitter$NoneAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;,
        Lrx/internal/operators/OnSubscribeFromEmitter$CancellableSubscription;
    }
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
.field final asyncEmitter:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Lrx/AsyncEmitter",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final backpressure:Lrx/AsyncEmitter$BackpressureMode;


# direct methods
.method public constructor <init>(Lrx/functions/Action1;Lrx/AsyncEmitter$BackpressureMode;)V
    .registers 3
    .param p2, "backpressure"    # Lrx/AsyncEmitter$BackpressureMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Lrx/AsyncEmitter",
            "<TT;>;>;",
            "Lrx/AsyncEmitter$BackpressureMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter<TT;>;"
    .local p1, "asyncEmitter":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/AsyncEmitter<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromEmitter;->asyncEmitter:Lrx/functions/Action1;

    .line 39
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFromEmitter;->backpressure:Lrx/AsyncEmitter$BackpressureMode;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter<TT;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    sget-object v1, Lrx/internal/operators/OnSubscribeFromEmitter$1;->$SwitchMap$rx$AsyncEmitter$BackpressureMode:[I

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFromEmitter;->backpressure:Lrx/AsyncEmitter$BackpressureMode;

    invoke-virtual {v2}, Lrx/AsyncEmitter$BackpressureMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    .line 64
    new-instance v0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;-><init>(Lrx/Subscriber;I)V

    .line 69
    .local v0, "emitter":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    :goto_14
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 70
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 71
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromEmitter;->asyncEmitter:Lrx/functions/Action1;

    invoke-interface {v1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 73
    return-void

    .line 48
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    :pswitch_20
    new-instance v0, Lrx/internal/operators/OnSubscribeFromEmitter$NoneAsyncEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$NoneAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 49
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    goto :goto_14

    .line 52
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    :pswitch_26
    new-instance v0, Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 53
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    goto :goto_14

    .line 56
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    :pswitch_2c
    new-instance v0, Lrx/internal/operators/OnSubscribeFromEmitter$DropAsyncEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$DropAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 57
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    goto :goto_14

    .line 60
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    :pswitch_32
    new-instance v0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 61
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    goto :goto_14

    .line 46
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_20
        :pswitch_26
        :pswitch_2c
        :pswitch_32
    .end packed-switch
.end method

###### Class rx.internal.operators.OnSubscribeFromEmitter.AnonymousClass1 (rx.internal.operators.OnSubscribeFromEmitter$1)
.class synthetic Lrx/internal/operators/OnSubscribeFromEmitter$1;
.super Ljava/lang/Object;
.source "OnSubscribeFromEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$rx$AsyncEmitter$BackpressureMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 46
    invoke-static {}, Lrx/AsyncEmitter$BackpressureMode;->values()[Lrx/AsyncEmitter$BackpressureMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lrx/internal/operators/OnSubscribeFromEmitter$1;->$SwitchMap$rx$AsyncEmitter$BackpressureMode:[I

    :try_start_9
    sget-object v0, Lrx/internal/operators/OnSubscribeFromEmitter$1;->$SwitchMap$rx$AsyncEmitter$BackpressureMode:[I

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->NONE:Lrx/AsyncEmitter$BackpressureMode;

    invoke-virtual {v1}, Lrx/AsyncEmitter$BackpressureMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c

    :goto_14
    :try_start_14
    sget-object v0, Lrx/internal/operators/OnSubscribeFromEmitter$1;->$SwitchMap$rx$AsyncEmitter$BackpressureMode:[I

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->ERROR:Lrx/AsyncEmitter$BackpressureMode;

    invoke-virtual {v1}, Lrx/AsyncEmitter$BackpressureMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_1f
    sget-object v0, Lrx/internal/operators/OnSubscribeFromEmitter$1;->$SwitchMap$rx$AsyncEmitter$BackpressureMode:[I

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->DROP:Lrx/AsyncEmitter$BackpressureMode;

    invoke-virtual {v1}, Lrx/AsyncEmitter$BackpressureMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v0, Lrx/internal/operators/OnSubscribeFromEmitter$1;->$SwitchMap$rx$AsyncEmitter$BackpressureMode:[I

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->LATEST:Lrx/AsyncEmitter$BackpressureMode;

    invoke-virtual {v1}, Lrx/AsyncEmitter$BackpressureMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35

    :catch_38
    move-exception v0

    goto :goto_2a

    :catch_3a
    move-exception v0

    goto :goto_1f

    :catch_3c
    move-exception v0

    goto :goto_14
.end method

###### Class rx.internal.operators.OnSubscribeFromEmitter.BaseAsyncEmitter (rx.internal.operators.OnSubscribeFromEmitter$BaseAsyncEmitter)
.class abstract Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeFromEmitter.java"

# interfaces
.implements Lrx/AsyncEmitter;
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/AsyncEmitter",
        "<TT;>;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65ac35ee8a56a4bfL


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final serial:Lrx/subscriptions/SerialSubscription;


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 121
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->actual:Lrx/Subscriber;

    .line 122
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    .line 123
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .registers 2

    .prologue
    .line 161
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 127
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 135
    :goto_8
    return-void

    .line 131
    :cond_9
    :try_start_9
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_14

    .line 133
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    goto :goto_8

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 147
    :goto_8
    return-void

    .line 143
    :cond_9
    :try_start_9
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_14

    .line 145
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    goto :goto_8

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    throw v0
.end method

.method onRequested()V
    .registers 1

    .prologue
    .line 174
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    return-void
.end method

.method onUnsubscribed()V
    .registers 1

    .prologue
    .line 157
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    return-void
.end method

.method public final request(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 166
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    invoke-static {p1, p2}, Lrx/internal/operators/BackpressureUtils;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 167
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 168
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->onRequested()V

    .line 170
    :cond_c
    return-void
.end method

.method public final requested()J
    .registers 3

    .prologue
    .line 188
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final setCancellation(Lrx/AsyncEmitter$Cancellable;)V
    .registers 3
    .param p1, "c"    # Lrx/AsyncEmitter$Cancellable;

    .prologue
    .line 183
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeFromEmitter$CancellableSubscription;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$CancellableSubscription;-><init>(Lrx/AsyncEmitter$Cancellable;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->setSubscription(Lrx/Subscription;)V

    .line 184
    return-void
.end method

.method public final setSubscription(Lrx/Subscription;)V
    .registers 3
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 178
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 179
    return-void
.end method

.method public final unsubscribe()V
    .registers 2

    .prologue
    .line 151
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 152
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->onUnsubscribed()V

    .line 153
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeFromEmitter.BufferAsyncEmitter (rx.internal.operators.OnSubscribeFromEmitter$BufferAsyncEmitter)
.class final Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;
.source "OnSubscribeFromEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x21aef8f9f7f1cbc3L


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;I)V
    .registers 4
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 326
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;

    invoke-direct {v0, p2}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;-><init>(I)V

    :goto_e
    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->queue:Ljava/util/Queue;

    .line 329
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 330
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->nl:Lrx/internal/operators/NotificationLite;

    .line 331
    return-void

    .line 326
    :cond_1e
    new-instance v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    invoke-direct {v0, p2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;-><init>(I)V

    goto :goto_e
.end method


# virtual methods
.method drain()V
    .registers 15

    .prologue
    .line 365
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter<TT;>;"
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_9

    .line 438
    :goto_8
    return-void

    .line 369
    :cond_9
    const/4 v6, 0x1

    .line 370
    .local v6, "missed":I
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->actual:Lrx/Subscriber;

    .line 371
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->queue:Ljava/util/Queue;

    .line 374
    .local v8, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_e
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->get()J

    move-result-wide v10

    .line 375
    .local v10, "r":J
    const-wide/16 v2, 0x0

    .line 377
    .local v2, "e":J
    :goto_14
    cmp-long v9, v2, v10

    if-eqz v9, :cond_3f

    .line 378
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 379
    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    goto :goto_8

    .line 383
    :cond_22
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->done:Z

    .line 385
    .local v1, "d":Z
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    .line 387
    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_37

    const/4 v4, 0x1

    .line 389
    .local v4, "empty":Z
    :goto_2b
    if-eqz v1, :cond_3d

    if-eqz v4, :cond_3d

    .line 390
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->error:Ljava/lang/Throwable;

    .line 391
    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_39

    .line 392
    invoke-super {p0, v5}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 387
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_37
    const/4 v4, 0x0

    goto :goto_2b

    .line 394
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_39
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->onCompleted()V

    goto :goto_8

    .line 399
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_3d
    if-eqz v4, :cond_4d

    .line 408
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "o":Ljava/lang/Object;
    :cond_3f
    cmp-long v9, v2, v10

    if-nez v9, :cond_70

    .line 409
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 410
    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    goto :goto_8

    .line 403
    .restart local v1    # "d":Z
    .restart local v4    # "empty":Z
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_4d
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v9, v7}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 405
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 406
    goto :goto_14

    .line 414
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "o":Ljava/lang/Object;
    :cond_5a
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->done:Z

    .line 416
    .restart local v1    # "d":Z
    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    .line 418
    .restart local v4    # "empty":Z
    if-eqz v1, :cond_70

    if-eqz v4, :cond_70

    .line 419
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->error:Ljava/lang/Throwable;

    .line 420
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_6c

    .line 421
    invoke-super {p0, v5}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 423
    :cond_6c
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->onCompleted()V

    goto :goto_8

    .line 429
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_70
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_79

    .line 430
    invoke-static {p0, v2, v3}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 433
    :cond_79
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v12, v6

    invoke-virtual {v9, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    .line 434
    if-nez v6, :cond_e

    goto :goto_8
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 348
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->done:Z

    .line 349
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->drain()V

    .line 350
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 341
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->error:Ljava/lang/Throwable;

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->done:Z

    .line 343
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->drain()V

    .line 344
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->drain()V

    .line 337
    return-void
.end method

.method onRequested()V
    .registers 1

    .prologue
    .line 354
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->drain()V

    .line 355
    return-void
.end method

.method onUnsubscribed()V
    .registers 2

    .prologue
    .line 359
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_d

    .line 360
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferAsyncEmitter;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 362
    :cond_d
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeFromEmitter.CancellableSubscription (rx.internal.operators.OnSubscribeFromEmitter$CancellableSubscription)
.class final Lrx/internal/operators/OnSubscribeFromEmitter$CancellableSubscription;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "OnSubscribeFromEmitter.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CancellableSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/AsyncEmitter$Cancellable;",
        ">;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f5c453163a88dc2L


# direct methods
.method public constructor <init>(Lrx/AsyncEmitter$Cancellable;)V
    .registers 2
    .param p1, "cancellable"    # Lrx/AsyncEmitter$Cancellable;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 87
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$CancellableSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public unsubscribe()V
    .registers 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$CancellableSubscription;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 97
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lrx/internal/operators/OnSubscribeFromEmitter$CancellableSubscription;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/AsyncEmitter$Cancellable;

    .line 98
    .local v0, "c":Lrx/AsyncEmitter$Cancellable;
    if-eqz v0, :cond_12

    .line 100
    :try_start_f
    invoke-interface {v0}, Lrx/AsyncEmitter$Cancellable;->cancel()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    .line 107
    .end local v0    # "c":Lrx/AsyncEmitter$Cancellable;
    :cond_12
    :goto_12
    return-void

    .line 101
    .restart local v0    # "c":Lrx/AsyncEmitter$Cancellable;
    :catch_13
    move-exception v1

    .line 102
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 103
    invoke-static {v1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

###### Class rx.internal.operators.OnSubscribeFromEmitter.DropAsyncEmitter (rx.internal.operators.OnSubscribeFromEmitter$DropAsyncEmitter)
.class final Lrx/internal/operators/OnSubscribeFromEmitter$DropAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter;
.source "OnSubscribeFromEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DropAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7404e4d77326a273L


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$DropAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$DropAsyncEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 252
    return-void
.end method


# virtual methods
.method onOverflow()V
    .registers 1

    .prologue
    .line 257
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$DropAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$DropAsyncEmitter<TT;>;"
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeFromEmitter.ErrorAsyncEmitter (rx.internal.operators.OnSubscribeFromEmitter$ErrorAsyncEmitter)
.class final Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter;
.source "OnSubscribeFromEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ErrorAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4b43427a9c2e580L


# instance fields
.field private done:Z


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 270
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter;->done:Z

    if-eqz v0, :cond_5

    .line 289
    :goto_4
    return-void

    .line 287
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter;->done:Z

    .line 288
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter;->onCompleted()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 294
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter;->done:Z

    if-eqz v0, :cond_8

    .line 295
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 300
    :goto_7
    return-void

    .line 298
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter;->done:Z

    .line 299
    invoke-super {p0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter;->done:Z

    if-eqz v0, :cond_5

    .line 279
    :goto_4
    return-void

    .line 278
    :cond_5
    invoke-super {p0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method onOverflow()V
    .registers 3

    .prologue
    .line 305
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter<TT;>;"
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    const-string v1, "fromEmitter: could not emit value due to lack of requests"

    invoke-direct {v0, v1}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeFromEmitter$ErrorAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    .line 306
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeFromEmitter.LatestAsyncEmitter (rx.internal.operators.OnSubscribeFromEmitter$LatestAsyncEmitter)
.class final Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;
.source "OnSubscribeFromEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x37d61f4a35bdda6fL


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 457
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 458
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 459
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->nl:Lrx/internal/operators/NotificationLite;

    .line 460
    return-void
.end method


# virtual methods
.method drain()V
    .registers 15

    .prologue
    .line 494
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter<TT;>;"
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_9

    .line 567
    :goto_8
    return-void

    .line 498
    :cond_9
    const/4 v6, 0x1

    .line 499
    .local v6, "missed":I
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->actual:Lrx/Subscriber;

    .line 500
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 503
    .local v8, "q":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    :cond_e
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->get()J

    move-result-wide v10

    .line 504
    .local v10, "r":J
    const-wide/16 v2, 0x0

    .line 506
    .local v2, "e":J
    :goto_14
    cmp-long v9, v2, v10

    if-eqz v9, :cond_41

    .line 507
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 508
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_8

    .line 512
    :cond_23
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->done:Z

    .line 514
    .local v1, "d":Z
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 516
    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_39

    const/4 v4, 0x1

    .line 518
    .local v4, "empty":Z
    :goto_2d
    if-eqz v1, :cond_3f

    if-eqz v4, :cond_3f

    .line 519
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    .line 520
    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_3b

    .line 521
    invoke-super {p0, v5}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 516
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_39
    const/4 v4, 0x0

    goto :goto_2d

    .line 523
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_3b
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->onCompleted()V

    goto :goto_8

    .line 528
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_3f
    if-eqz v4, :cond_50

    .line 537
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "o":Ljava/lang/Object;
    :cond_41
    cmp-long v9, v2, v10

    if-nez v9, :cond_78

    .line 538
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 539
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_8

    .line 532
    .restart local v1    # "d":Z
    .restart local v4    # "empty":Z
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_50
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v9, v7}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 534
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 535
    goto :goto_14

    .line 543
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "o":Ljava/lang/Object;
    :cond_5d
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->done:Z

    .line 545
    .restart local v1    # "d":Z
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_72

    const/4 v4, 0x1

    .line 547
    .restart local v4    # "empty":Z
    :goto_66
    if-eqz v1, :cond_78

    if-eqz v4, :cond_78

    .line 548
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    .line 549
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_74

    .line 550
    invoke-super {p0, v5}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 545
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_72
    const/4 v4, 0x0

    goto :goto_66

    .line 552
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_74
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;->onCompleted()V

    goto :goto_8

    .line 558
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_78
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_81

    .line 559
    invoke-static {p0, v2, v3}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 562
    :cond_81
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v12, v6

    invoke-virtual {v9, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    .line 563
    if-nez v6, :cond_e

    goto/16 :goto_8
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 477
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->done:Z

    .line 478
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->drain()V

    .line 479
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 470
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->done:Z

    .line 472
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->drain()V

    .line 473
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 465
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->drain()V

    .line 466
    return-void
.end method

.method onRequested()V
    .registers 1

    .prologue
    .line 483
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->drain()V

    .line 484
    return-void
.end method

.method onUnsubscribed()V
    .registers 3

    .prologue
    .line 488
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_e

    .line 489
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 491
    :cond_e
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeFromEmitter.NoOverflowBaseAsyncEmitter (rx.internal.operators.OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter)
.class abstract Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;
.source "OnSubscribeFromEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NoOverflowBaseAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3948ba7d6479d0d1L


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 226
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 240
    :goto_8
    return-void

    .line 234
    :cond_9
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 235
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 236
    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_8

    .line 238
    :cond_1e
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseAsyncEmitter;->onOverflow()V

    goto :goto_8
.end method

.method abstract onOverflow()V
.end method

###### Class rx.internal.operators.OnSubscribeFromEmitter.NoneAsyncEmitter (rx.internal.operators.OnSubscribeFromEmitter$NoneAsyncEmitter)
.class final Lrx/internal/operators/OnSubscribeFromEmitter$NoneAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;
.source "OnSubscribeFromEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoneAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34699b00190316f1L


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$NoneAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$NoneAsyncEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 199
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromEmitter$NoneAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromEmitter$NoneAsyncEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFromEmitter$NoneAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 212
    :cond_8
    :goto_8
    return-void

    .line 207
    :cond_9
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFromEmitter$NoneAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 210
    :cond_e
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$NoneAsyncEmitter;->get()J

    move-result-wide v0

    .line 211
    .local v0, "r":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_8

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OnSubscribeFromEmitter$NoneAsyncEmitter;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_8
.end method
