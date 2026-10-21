###### Class rx.internal.util.ScalarSynchronousObservable (rx.internal.util.ScalarSynchronousObservable)
.class public final Lrx/internal/util/ScalarSynchronousObservable;
.super Lrx/Observable;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;,
        Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;,
        Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;,
        Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final STRONG_MODE:Z


# instance fields
.field final t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    const-string v1, "rx.just.strong-mode"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "wp":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lrx/internal/util/ScalarSynchronousObservable;->STRONG_MODE:Z

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe;

    invoke-direct {v0, p1}, Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onCreate(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 77
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public static create(Ljava/lang/Object;)Lrx/internal/util/ScalarSynchronousObservable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/internal/util/ScalarSynchronousObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-direct {v0, p0}, Lrx/internal/util/ScalarSynchronousObservable;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static createProducer(Lrx/Subscriber;Ljava/lang/Object;)Lrx/Producer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber",
            "<-TT;>;TT;)",
            "Lrx/Producer;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    sget-boolean v0, Lrx/internal/util/ScalarSynchronousObservable;->STRONG_MODE:Z

    if-eqz v0, :cond_a

    .line 60
    new-instance v0, Lrx/internal/producers/SingleProducer;

    invoke-direct {v0, p0, p1}, Lrx/internal/producers/SingleProducer;-><init>(Lrx/Subscriber;Ljava/lang/Object;)V

    .line 62
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;-><init>(Lrx/Subscriber;Ljava/lang/Object;)V

    goto :goto_9
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$3;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$3;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/internal/util/ScalarSynchronousObservable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public scalarScheduleOn(Lrx/Scheduler;)Lrx/Observable;
    .registers 6
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    instance-of v2, p1, Lrx/internal/schedulers/EventLoopsScheduler;

    if-eqz v2, :cond_18

    move-object v0, p1

    .line 98
    check-cast v0, Lrx/internal/schedulers/EventLoopsScheduler;

    .line 99
    .local v0, "els":Lrx/internal/schedulers/EventLoopsScheduler;
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/util/ScalarSynchronousObservable$1;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/internal/schedulers/EventLoopsScheduler;)V

    .line 125
    .end local v0    # "els":Lrx/internal/schedulers/EventLoopsScheduler;
    .local v1, "onSchedule":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/Subscription;>;"
    :goto_c
    new-instance v2, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;

    iget-object v3, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    invoke-direct {v2, v3, v1}, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;-><init>(Ljava/lang/Object;Lrx/functions/Func1;)V

    invoke-static {v2}, Lrx/internal/util/ScalarSynchronousObservable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v2

    return-object v2

    .line 106
    .end local v1    # "onSchedule":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/Subscription;>;"
    :cond_18
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$2;

    invoke-direct {v1, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$2;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/Scheduler;)V

    .restart local v1    # "onSchedule":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/Subscription;>;"
    goto :goto_c
.end method

###### Class rx.internal.util.ScalarSynchronousObservable.AnonymousClass1 (rx.internal.util.ScalarSynchronousObservable$1)
.class Lrx/internal/util/ScalarSynchronousObservable$1;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable;->scalarScheduleOn(Lrx/Scheduler;)Lrx/Observable;
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
        "Lrx/functions/Action0;",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/util/ScalarSynchronousObservable;

.field final synthetic val$els:Lrx/internal/schedulers/EventLoopsScheduler;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/internal/schedulers/EventLoopsScheduler;)V
    .registers 3

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$1;, "Lrx/internal/util/ScalarSynchronousObservable.1;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$1;->this$0:Lrx/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$1;->val$els:Lrx/internal/schedulers/EventLoopsScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$1;, "Lrx/internal/util/ScalarSynchronousObservable.1;"
    check-cast p1, Lrx/functions/Action0;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$1;->call(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 3
    .param p1, "a"    # Lrx/functions/Action0;

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$1;, "Lrx/internal/util/ScalarSynchronousObservable.1;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$1;->val$els:Lrx/internal/schedulers/EventLoopsScheduler;

    invoke-virtual {v0, p1}, Lrx/internal/schedulers/EventLoopsScheduler;->scheduleDirect(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.ScalarSynchronousObservable.AnonymousClass2 (rx.internal.util.ScalarSynchronousObservable$2)
.class Lrx/internal/util/ScalarSynchronousObservable$2;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable;->scalarScheduleOn(Lrx/Scheduler;)Lrx/Observable;
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
        "Lrx/functions/Action0;",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/util/ScalarSynchronousObservable;

.field final synthetic val$scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/Scheduler;)V
    .registers 3

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2;, "Lrx/internal/util/ScalarSynchronousObservable.2;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->this$0:Lrx/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->val$scheduler:Lrx/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2;, "Lrx/internal/util/ScalarSynchronousObservable.2;"
    check-cast p1, Lrx/functions/Action0;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$2;->call(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 4
    .param p1, "a"    # Lrx/functions/Action0;

    .prologue
    .line 109
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2;, "Lrx/internal/util/ScalarSynchronousObservable.2;"
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->val$scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 110
    .local v0, "w":Lrx/Scheduler$Worker;
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$2$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/util/ScalarSynchronousObservable$2$1;-><init>(Lrx/internal/util/ScalarSynchronousObservable$2;Lrx/functions/Action0;Lrx/Scheduler$Worker;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 120
    return-object v0
.end method

###### Class rx.internal.util.ScalarSynchronousObservable.AnonymousClass2.AnonymousClass1 (rx.internal.util.ScalarSynchronousObservable$2$1)
.class Lrx/internal/util/ScalarSynchronousObservable$2$1;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable$2;->call(Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/util/ScalarSynchronousObservable$2;

.field final synthetic val$a:Lrx/functions/Action0;

.field final synthetic val$w:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable$2;Lrx/functions/Action0;Lrx/Scheduler$Worker;)V
    .registers 4

    .prologue
    .line 110
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2$1;, "Lrx/internal/util/ScalarSynchronousObservable$2.1;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->this$1:Lrx/internal/util/ScalarSynchronousObservable$2;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->val$a:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->val$w:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2$1;, "Lrx/internal/util/ScalarSynchronousObservable$2.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->val$a:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 116
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 118
    return-void

    .line 116
    :catchall_b
    move-exception v0

    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v0
.end method

###### Class rx.internal.util.ScalarSynchronousObservable.AnonymousClass3 (rx.internal.util.ScalarSynchronousObservable$3)
.class Lrx/internal/util/ScalarSynchronousObservable$3;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/util/ScalarSynchronousObservable;

.field final synthetic val$func:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/functions/Func1;)V
    .registers 3

    .prologue
    .line 228
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$3;, "Lrx/internal/util/ScalarSynchronousObservable.3;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$3;->this$0:Lrx/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$3;->val$func:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 228
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$3;, "Lrx/internal/util/ScalarSynchronousObservable.3;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$3;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$3;, "Lrx/internal/util/ScalarSynchronousObservable.3;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$3;->val$func:Lrx/functions/Func1;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$3;->this$0:Lrx/internal/util/ScalarSynchronousObservable;

    iget-object v2, v2, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    .line 232
    .local v0, "o":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    instance-of v1, v0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v1, :cond_1c

    .line 233
    check-cast v0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local v0    # "o":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    iget-object v1, v0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    invoke-static {p1, v1}, Lrx/internal/util/ScalarSynchronousObservable;->createProducer(Lrx/Subscriber;Ljava/lang/Object;)Lrx/Producer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 237
    :goto_1b
    return-void

    .line 235
    .restart local v0    # "o":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    :cond_1c
    invoke-static {p1}, Lrx/observers/Subscribers;->wrap(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_1b
.end method

###### Class rx.internal.util.ScalarSynchronousObservable.JustOnSubscribe (rx.internal.util.ScalarSynchronousObservable$JustOnSubscribe)
.class final Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JustOnSubscribe"
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
.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe;, "Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe;->value:Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 129
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe;, "Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe;, "Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe;->value:Ljava/lang/Object;

    invoke-static {p1, v0}, Lrx/internal/util/ScalarSynchronousObservable;->createProducer(Lrx/Subscriber;Ljava/lang/Object;)Lrx/Producer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 139
    return-void
.end method

###### Class rx.internal.util.ScalarSynchronousObservable.ScalarAsyncOnSubscribe (rx.internal.util.ScalarSynchronousObservable$ScalarAsyncOnSubscribe)
.class final Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScalarAsyncOnSubscribe"
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
.field final onSchedule:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action0;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lrx/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action0;",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "onSchedule":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/Subscription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;->value:Ljava/lang/Object;

    .line 154
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;->onSchedule:Lrx/functions/Func1;

    .line 155
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;->call(Lrx/Subscriber;)V

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
    .line 159
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;

    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;->value:Ljava/lang/Object;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;->onSchedule:Lrx/functions/Func1;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;-><init>(Lrx/Subscriber;Ljava/lang/Object;Lrx/functions/Func1;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 160
    return-void
.end method

###### Class rx.internal.util.ScalarSynchronousObservable.ScalarAsyncProducer (rx.internal.util.ScalarSynchronousObservable$ScalarAsyncProducer)
.class final Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScalarAsyncProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/Producer;",
        "Lrx/functions/Action0;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x223a1f24fb024573L


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final onSchedule:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action0;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Ljava/lang/Object;Lrx/functions/Func1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;TT;",
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action0;",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    .local p3, "onSchedule":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/Subscription;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 177
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->actual:Lrx/Subscriber;

    .line 178
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->value:Ljava/lang/Object;

    .line 179
    iput-object p3, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->onSchedule:Lrx/functions/Func1;

    .line 180
    return-void
.end method


# virtual methods
.method public call()V
    .registers 5

    .prologue
    .line 194
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->actual:Lrx/Subscriber;

    .line 195
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 209
    :cond_8
    :goto_8
    return-void

    .line 198
    :cond_9
    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->value:Ljava/lang/Object;

    .line 200
    .local v2, "v":Ljava/lang/Object;, "TT;"
    :try_start_b
    invoke-virtual {v0, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_18

    .line 205
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 208
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_8

    .line 201
    :catch_18
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v2}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer<TT;>;"
    const-wide/16 v2, 0x0

    .line 184
    cmp-long v0, p1, v2

    if-gez v0, :cond_1f

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1f
    cmp-long v0, p1, v2

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 188
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->actual:Lrx/Subscriber;

    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->onSchedule:Lrx/functions/Func1;

    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 190
    :cond_38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 213
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScalarAsyncProducer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.ScalarSynchronousObservable.WeakSingleProducer (rx.internal.util.ScalarSynchronousObservable$WeakSingleProducer)
.class final Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakSingleProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field once:Z

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;, "Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->actual:Lrx/Subscriber;

    .line 255
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->value:Ljava/lang/Object;

    .line 256
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 10
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;, "Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer<TT;>;"
    const-wide/16 v4, 0x0

    .line 260
    iget-boolean v3, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->once:Z

    if-eqz v3, :cond_7

    .line 286
    :cond_6
    :goto_6
    return-void

    .line 263
    :cond_7
    cmp-long v3, p1, v4

    if-gez v3, :cond_24

    .line 264
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "n >= required but it was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    :cond_24
    cmp-long v3, p1, v4

    if-eqz v3, :cond_6

    .line 269
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->once:Z

    .line 270
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->actual:Lrx/Subscriber;

    .line 271
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 274
    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->value:Ljava/lang/Object;

    .line 276
    .local v2, "v":Ljava/lang/Object;, "TT;"
    :try_start_35
    invoke-virtual {v0, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_42

    .line 282
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 285
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_6

    .line 277
    :catch_42
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v2}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_6
.end method
