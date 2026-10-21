###### Class rx.internal.operators.OnSubscribeJoin (rx.internal.operators.OnSubscribeJoin)
.class public final Lrx/internal/operators/OnSubscribeJoin;
.super Ljava/lang/Object;
.source "OnSubscribeJoin.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeJoin$ResultSink;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftDuration:Ljava/lang/Object;",
        "TRightDuration:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final left:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT",
            "Left;",
            ">;"
        }
    .end annotation
.end field

.field final leftDurationSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<TT",
            "Left;",
            "Lrx/Observable",
            "<TT",
            "LeftDuration;",
            ">;>;"
        }
    .end annotation
.end field

.field final resultSelector:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<TT",
            "Left;",
            "TTRight;TR;>;"
        }
    .end annotation
.end field

.field final right:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TTRight;>;"
        }
    .end annotation
.end field

.field final rightDurationSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<TTRight;",
            "Lrx/Observable",
            "<TTRightDuration;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT",
            "Left;",
            ">;",
            "Lrx/Observable",
            "<TTRight;>;",
            "Lrx/functions/Func1",
            "<TT",
            "Left;",
            "Lrx/Observable",
            "<TT",
            "LeftDuration;",
            ">;>;",
            "Lrx/functions/Func1",
            "<TTRight;",
            "Lrx/Observable",
            "<TTRightDuration;>;>;",
            "Lrx/functions/Func2",
            "<TT",
            "Left;",
            "TTRight;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>;"
    .local p1, "left":Lrx/Observable;, "Lrx/Observable<TTLeft;>;"
    .local p2, "right":Lrx/Observable;, "Lrx/Observable<TTRight;>;"
    .local p3, "leftDurationSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<TTLeft;Lrx/Observable<TTLeftDuration;>;>;"
    .local p4, "rightDurationSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<TTRight;Lrx/Observable<TTRightDuration;>;>;"
    .local p5, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<TTLeft;TTRight;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin;->left:Lrx/Observable;

    .line 51
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeJoin;->right:Lrx/Observable;

    .line 52
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeJoin;->leftDurationSelector:Lrx/functions/Func1;

    .line 53
    iput-object p4, p0, Lrx/internal/operators/OnSubscribeJoin;->rightDurationSelector:Lrx/functions/Func1;

    .line 54
    iput-object p5, p0, Lrx/internal/operators/OnSubscribeJoin;->resultSelector:Lrx/functions/Func2;

    .line 55
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeJoin;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>;"
    .local p1, "t1":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    new-instance v1, Lrx/observers/SerializedSubscriber;

    invoke-direct {v1, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;-><init>(Lrx/internal/operators/OnSubscribeJoin;Lrx/Subscriber;)V

    .line 60
    .local v0, "result":Lrx/internal/operators/OnSubscribeJoin$ResultSink;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink;"
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->run()V

    .line 61
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeJoin.ResultSink (rx.internal.operators.OnSubscribeJoin$ResultSink)
.class final Lrx/internal/operators/OnSubscribeJoin$ResultSink;
.super Ljava/util/HashMap;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResultSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;,
        Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "TT",
        "Left;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3074e6f3404b26c4L


# instance fields
.field final group:Lrx/subscriptions/CompositeSubscription;

.field leftDone:Z

.field leftId:I

.field rightDone:Z

.field rightId:I

.field final rightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field

.field final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeJoin;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeJoin;Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink;"
    .local p2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    .line 83
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 84
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    .line 85
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    .line 88
    return-void
.end method


# virtual methods
.method leftMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "TT",
            "Left;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink;"
    return-object p0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 97
    new-instance v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;-><init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink;)V

    .line 98
    .local v0, "s1":Lrx/Subscriber;, "Lrx/Subscriber<TTLeft;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;

    invoke-direct {v1, p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;-><init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink;)V

    .line 100
    .local v1, "s2":Lrx/Subscriber;, "Lrx/Subscriber<TTRight;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 101
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 103
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeJoin;->left:Lrx/Observable;

    invoke-virtual {v2, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 104
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeJoin;->right:Lrx/Observable;

    invoke-virtual {v2, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 105
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeJoin.ResultSink.LeftSubscriber (rx.internal.operators.OnSubscribeJoin$ResultSink$LeftSubscriber)
.class final Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeJoin$ResultSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LeftSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT",
        "Left;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink;)V
    .registers 2

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 186
    return-void
.end method


# virtual methods
.method protected expire(ILrx/Subscription;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "resource"    # Lrx/Subscription;

    .prologue
    .line 111
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber;"
    const/4 v0, 0x0

    .line 112
    .local v0, "complete":Z
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v2

    .line 113
    :try_start_4
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    invoke-virtual {v1}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    invoke-virtual {v1}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-boolean v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftDone:Z

    if-eqz v1, :cond_27

    .line 114
    const/4 v0, 0x1

    .line 116
    :cond_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_39

    .line 117
    if-eqz v0, :cond_3c

    .line 118
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 119
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    .line 123
    :goto_38
    return-void

    .line 116
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1

    .line 121
    :cond_3c
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, p2}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    goto :goto_38
.end method

.method public onCompleted()V
    .registers 5

    .prologue
    .line 170
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber;"
    const/4 v0, 0x0

    .line 171
    .local v0, "complete":Z
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v2

    .line 172
    :try_start_4
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftDone:Z

    .line 173
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-boolean v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightDone:Z

    if-nez v1, :cond_1b

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    invoke-virtual {v1}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 174
    :cond_1b
    const/4 v0, 0x1

    .line 176
    :cond_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_2e

    .line 177
    if-eqz v0, :cond_31

    .line 178
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 179
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    .line 183
    :goto_2d
    return-void

    .line 176
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1

    .line 181
    :cond_31
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, p0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    goto :goto_2d
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 165
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 166
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Left;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber;"
    .local p1, "args":Ljava/lang/Object;, "TTLeft;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v11

    .line 131
    :try_start_3
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget v5, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftId:I

    add-int/lit8 v12, v5, 0x1

    iput v12, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftId:I

    .line 132
    .local v5, "id":I
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    invoke-virtual {v10}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap()Ljava/util/HashMap;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget v3, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightId:I

    .line 134
    .local v3, "highRightId":I
    monitor-exit v11
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_74

    .line 138
    :try_start_1d
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin;->leftDurationSelector:Lrx/functions/Func1;

    invoke-interface {v10, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 140
    .local v1, "duration":Lrx/Observable;, "Lrx/Observable<TTLeftDuration;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;

    invoke-direct {v0, p0, v5}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;-><init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;I)V

    .line 141
    .local v0, "d1":Lrx/Subscriber;, "Lrx/Subscriber<TTLeftDuration;>;"
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v10, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 143
    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 145
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v8, "rightValues":Ljava/util/List;, "Ljava/util/List<TTRight;>;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v11
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_40} :catch_6f

    .line 147
    :try_start_40
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4c
    :goto_4c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_77

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 148
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTRight;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v10, v3, :cond_4c

    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 152
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTRight;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_6c
    move-exception v10

    monitor-exit v11
    :try_end_6e
    .catchall {:try_start_40 .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v10
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6f} :catch_6f

    .line 157
    .end local v0    # "d1":Lrx/Subscriber;, "Lrx/Subscriber<TTLeftDuration;>;"
    .end local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TTLeftDuration;>;"
    .end local v8    # "rightValues":Ljava/util/List;, "Ljava/util/List<TTRight;>;"
    :catch_6f
    move-exception v9

    .line 158
    .local v9, "t":Ljava/lang/Throwable;
    invoke-static {v9, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 160
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_73
    return-void

    .line 134
    .end local v3    # "highRightId":I
    .end local v5    # "id":I
    :catchall_74
    move-exception v10

    :try_start_75
    monitor-exit v11
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v10

    .line 152
    .restart local v0    # "d1":Lrx/Subscriber;, "Lrx/Subscriber<TTLeftDuration;>;"
    .restart local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TTLeftDuration;>;"
    .restart local v3    # "highRightId":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "id":I
    .restart local v8    # "rightValues":Ljava/util/List;, "Ljava/util/List<TTRight;>;"
    :cond_77
    :try_start_77
    monitor-exit v11
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_6c

    .line 153
    :try_start_78
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 154
    .local v6, "r":Ljava/lang/Object;, "TTRight;"
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin;->resultSelector:Lrx/functions/Func2;

    invoke-interface {v10, p1, v6}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 155
    .local v7, "result":Ljava/lang/Object;, "TR;"
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v10, v7}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_97} :catch_6f

    goto :goto_7c
.end method

###### Class rx.internal.operators.OnSubscribeJoin.ResultSink.LeftSubscriber.LeftDurationSubscriber (rx.internal.operators.OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber)
.class final Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LeftDurationSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT",
        "LeftDuration;",
        ">;"
    }
.end annotation


# instance fields
.field final id:I

.field once:Z

.field final synthetic this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;I)V
    .registers 4
    .param p2, "id"    # I

    .prologue
    .line 190
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber.LeftDurationSubscriber;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->once:Z

    .line 191
    iput p2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->id:I

    .line 192
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 206
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber.LeftDurationSubscriber;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->once:Z

    if-eqz v0, :cond_e

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->once:Z

    .line 208
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;

    iget v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->id:I

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->expire(ILrx/Subscription;)V

    .line 210
    :cond_e
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 201
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber.LeftDurationSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 202
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "LeftDuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber.LeftDurationSubscriber;"
    .local p1, "args":Ljava/lang/Object;, "TTLeftDuration;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->onCompleted()V

    .line 197
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeJoin.ResultSink.RightSubscriber (rx.internal.operators.OnSubscribeJoin$ResultSink$RightSubscriber)
.class final Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeJoin$ResultSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RightSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TTRight;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink;)V
    .registers 2

    .prologue
    .line 216
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 298
    return-void
.end method


# virtual methods
.method expire(ILrx/Subscription;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "resource"    # Lrx/Subscription;

    .prologue
    .line 219
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber;"
    const/4 v0, 0x0

    .line 220
    .local v0, "complete":Z
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v2

    .line 221
    :try_start_4
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-boolean v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightDone:Z

    if-eqz v1, :cond_23

    .line 222
    const/4 v0, 0x1

    .line 224
    :cond_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_35

    .line 225
    if-eqz v0, :cond_38

    .line 226
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 227
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    .line 231
    :goto_34
    return-void

    .line 224
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1

    .line 229
    :cond_38
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, p2}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    goto :goto_34
.end method

.method public onCompleted()V
    .registers 5

    .prologue
    .line 282
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber;"
    const/4 v0, 0x0

    .line 283
    .local v0, "complete":Z
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v2

    .line 284
    :try_start_4
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightDone:Z

    .line 285
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-boolean v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftDone:Z

    if-nez v1, :cond_19

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 286
    :cond_19
    const/4 v0, 0x1

    .line 288
    :cond_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_2c

    .line 289
    if-eqz v0, :cond_2f

    .line 290
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 291
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    .line 295
    :goto_2b
    return-void

    .line 288
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1

    .line 293
    :cond_2f
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, p0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    goto :goto_2b
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 276
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 277
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 278
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRight;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber;"
    .local p1, "args":Ljava/lang/Object;, "TTRight;"
    iget-object v12, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v12

    .line 238
    :try_start_3
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget v5, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightId:I

    add-int/lit8 v13, v5, 0x1

    iput v13, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightId:I

    .line 239
    .local v5, "id":I
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget v3, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftId:I

    .line 241
    .local v3, "highLeftId":I
    monitor-exit v12
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_80

    .line 242
    new-instance v8, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v8}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 243
    .local v8, "md":Lrx/subscriptions/SerialSubscription;
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v11, v8}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 247
    :try_start_27
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin;->rightDurationSelector:Lrx/functions/Func1;

    invoke-interface {v11, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 249
    .local v1, "duration":Lrx/Observable;, "Lrx/Observable<TTRightDuration;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;

    invoke-direct {v0, p0, v5}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;-><init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;I)V

    .line 250
    .local v0, "d2":Lrx/Subscriber;, "Lrx/Subscriber<TTRightDuration;>;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v11, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 252
    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 255
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v6, "leftValues":Ljava/util/List;, "Ljava/util/List<TTLeft;>;"
    iget-object v12, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v12
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_4a} :catch_7b

    .line 257
    :try_start_4a
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    invoke-virtual {v11}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_58
    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_83

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 258
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTLeft;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v11, v3, :cond_58

    .line 259
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 262
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTLeft;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_78
    move-exception v11

    monitor-exit v12
    :try_end_7a
    .catchall {:try_start_4a .. :try_end_7a} :catchall_78

    :try_start_7a
    throw v11
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7b} :catch_7b

    .line 269
    .end local v0    # "d2":Lrx/Subscriber;, "Lrx/Subscriber<TTRightDuration;>;"
    .end local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TTRightDuration;>;"
    .end local v6    # "leftValues":Ljava/util/List;, "Ljava/util/List<TTLeft;>;"
    :catch_7b
    move-exception v10

    .line 270
    .local v10, "t":Ljava/lang/Throwable;
    invoke-static {v10, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 272
    .end local v10    # "t":Ljava/lang/Throwable;
    :cond_7f
    return-void

    .line 241
    .end local v3    # "highLeftId":I
    .end local v5    # "id":I
    .end local v8    # "md":Lrx/subscriptions/SerialSubscription;
    :catchall_80
    move-exception v11

    :try_start_81
    monitor-exit v12
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v11

    .line 262
    .restart local v0    # "d2":Lrx/Subscriber;, "Lrx/Subscriber<TTRightDuration;>;"
    .restart local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TTRightDuration;>;"
    .restart local v3    # "highLeftId":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "id":I
    .restart local v6    # "leftValues":Ljava/util/List;, "Ljava/util/List<TTLeft;>;"
    .restart local v8    # "md":Lrx/subscriptions/SerialSubscription;
    :cond_83
    :try_start_83
    monitor-exit v12
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_78

    .line 264
    :try_start_84
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_88
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 265
    .local v7, "lv":Ljava/lang/Object;, "TTLeft;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin;->resultSelector:Lrx/functions/Func2;

    invoke-interface {v11, v7, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 266
    .local v9, "result":Ljava/lang/Object;, "TR;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v11, v9}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_a3} :catch_7b

    goto :goto_88
.end method

###### Class rx.internal.operators.OnSubscribeJoin.ResultSink.RightSubscriber.RightDurationSubscriber (rx.internal.operators.OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber)
.class final Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RightDurationSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TTRightDuration;>;"
    }
.end annotation


# instance fields
.field final id:I

.field once:Z

.field final synthetic this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;I)V
    .registers 4
    .param p2, "id"    # I

    .prologue
    .line 302
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber.RightDurationSubscriber;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->once:Z

    .line 303
    iput p2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->id:I

    .line 304
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 318
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber.RightDurationSubscriber;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->once:Z

    if-eqz v0, :cond_e

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->once:Z

    .line 320
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;

    iget v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->id:I

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->expire(ILrx/Subscription;)V

    .line 322
    :cond_e
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 313
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber.RightDurationSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 314
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRightDuration;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber.RightDurationSubscriber;"
    .local p1, "args":Ljava/lang/Object;, "TTRightDuration;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->onCompleted()V

    .line 309
    return-void
.end method
