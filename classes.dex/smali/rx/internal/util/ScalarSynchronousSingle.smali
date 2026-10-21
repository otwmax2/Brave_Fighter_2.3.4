###### Class rx.internal.util.ScalarSynchronousSingle (rx.internal.util.ScalarSynchronousSingle)
.class public final Lrx/internal/util/ScalarSynchronousSingle;
.super Lrx/Single;
.source "ScalarSynchronousSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;,
        Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;,
        Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Single",
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
.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle;, "Lrx/internal/util/ScalarSynchronousSingle<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousSingle$1;

    invoke-direct {v0, p1}, Lrx/internal/util/ScalarSynchronousSingle$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    .line 44
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousSingle;->value:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public static create(Ljava/lang/Object;)Lrx/internal/util/ScalarSynchronousSingle;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/internal/util/ScalarSynchronousSingle",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousSingle;

    invoke-direct {v0, p0}, Lrx/internal/util/ScalarSynchronousSingle;-><init>(Ljava/lang/Object;)V

    return-object v0
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
    .line 48
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle;, "Lrx/internal/util/ScalarSynchronousSingle<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousSingle;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public scalarFlatMap(Lrx/functions/Func1;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Single",
            "<+TR;>;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle;, "Lrx/internal/util/ScalarSynchronousSingle<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Single<+TR;>;>;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousSingle$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousSingle$2;-><init>(Lrx/internal/util/ScalarSynchronousSingle;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/internal/util/ScalarSynchronousSingle;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public scalarScheduleOn(Lrx/Scheduler;)Lrx/Single;
    .registers 5
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle;, "Lrx/internal/util/ScalarSynchronousSingle<TT;>;"
    instance-of v1, p1, Lrx/internal/schedulers/EventLoopsScheduler;

    if-eqz v1, :cond_13

    move-object v0, p1

    .line 60
    check-cast v0, Lrx/internal/schedulers/EventLoopsScheduler;

    .line 61
    .local v0, "es":Lrx/internal/schedulers/EventLoopsScheduler;
    new-instance v1, Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousSingle;->value:Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;-><init>(Lrx/internal/schedulers/EventLoopsScheduler;Ljava/lang/Object;)V

    invoke-static {v1}, Lrx/internal/util/ScalarSynchronousSingle;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v1

    .line 63
    .end local v0    # "es":Lrx/internal/schedulers/EventLoopsScheduler;
    :goto_12
    return-object v1

    :cond_13
    new-instance v1, Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousSingle;->value:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;-><init>(Lrx/Scheduler;Ljava/lang/Object;)V

    invoke-static {v1}, Lrx/internal/util/ScalarSynchronousSingle;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v1

    goto :goto_12
.end method

###### Class rx.internal.util.ScalarSynchronousSingle.AnonymousClass1 (rx.internal.util.ScalarSynchronousSingle$1)
.class Lrx/internal/util/ScalarSynchronousSingle$1;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousSingle;-><init>(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$1;, "Lrx/internal/util/ScalarSynchronousSingle.1;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousSingle$1;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$1;, "Lrx/internal/util/ScalarSynchronousSingle.1;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousSingle$1;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$1;, "Lrx/internal/util/ScalarSynchronousSingle.1;"
    .local p1, "te":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousSingle$1;->val$t:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

###### Class rx.internal.util.ScalarSynchronousSingle.AnonymousClass2 (rx.internal.util.ScalarSynchronousSingle$2)
.class Lrx/internal/util/ScalarSynchronousSingle$2;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousSingle;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/util/ScalarSynchronousSingle;

.field final synthetic val$func:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousSingle;Lrx/functions/Func1;)V
    .registers 3

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$2;, "Lrx/internal/util/ScalarSynchronousSingle.2;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousSingle$2;->this$0:Lrx/internal/util/ScalarSynchronousSingle;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousSingle$2;->val$func:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$2;, "Lrx/internal/util/ScalarSynchronousSingle.2;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousSingle$2;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$2;, "Lrx/internal/util/ScalarSynchronousSingle.2;"
    .local p1, "child":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TR;>;"
    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousSingle$2;->val$func:Lrx/functions/Func1;

    iget-object v3, p0, Lrx/internal/util/ScalarSynchronousSingle$2;->this$0:Lrx/internal/util/ScalarSynchronousSingle;

    iget-object v3, v3, Lrx/internal/util/ScalarSynchronousSingle;->value:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Single;

    .line 133
    .local v0, "o":Lrx/Single;, "Lrx/Single<+TR;>;"
    instance-of v2, v0, Lrx/internal/util/ScalarSynchronousSingle;

    if-eqz v2, :cond_18

    .line 134
    check-cast v0, Lrx/internal/util/ScalarSynchronousSingle;

    .end local v0    # "o":Lrx/Single;, "Lrx/Single<+TR;>;"
    iget-object v2, v0, Lrx/internal/util/ScalarSynchronousSingle;->value:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 155
    :goto_17
    return-void

    .line 136
    .restart local v0    # "o":Lrx/Single;, "Lrx/Single<+TR;>;"
    :cond_18
    new-instance v1, Lrx/internal/util/ScalarSynchronousSingle$2$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/util/ScalarSynchronousSingle$2$1;-><init>(Lrx/internal/util/ScalarSynchronousSingle$2;Lrx/SingleSubscriber;)V

    .line 152
    .local v1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<TR;>;"
    invoke-virtual {p1, v1}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 153
    invoke-virtual {v0, v1}, Lrx/Single;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_17
.end method

###### Class rx.internal.util.ScalarSynchronousSingle.AnonymousClass2.AnonymousClass1 (rx.internal.util.ScalarSynchronousSingle$2$1)
.class Lrx/internal/util/ScalarSynchronousSingle$2$1;
.super Lrx/Subscriber;
.source "ScalarSynchronousSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousSingle$2;->call(Lrx/SingleSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/util/ScalarSynchronousSingle$2;

.field final synthetic val$child:Lrx/SingleSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousSingle$2;Lrx/SingleSubscriber;)V
    .registers 3

    .prologue
    .line 136
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$2$1;, "Lrx/internal/util/ScalarSynchronousSingle$2.1;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousSingle$2$1;->this$1:Lrx/internal/util/ScalarSynchronousSingle$2;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousSingle$2$1;->val$child:Lrx/SingleSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$2$1;, "Lrx/internal/util/ScalarSynchronousSingle$2.1;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 144
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$2$1;, "Lrx/internal/util/ScalarSynchronousSingle$2.1;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousSingle$2$1;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 145
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$2$1;, "Lrx/internal/util/ScalarSynchronousSingle$2.1;"
    .local p1, "r":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousSingle$2$1;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 150
    return-void
.end method

###### Class rx.internal.util.ScalarSynchronousSingle.DirectScheduledEmission (rx.internal.util.ScalarSynchronousSingle$DirectScheduledEmission)
.class final Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DirectScheduledEmission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final es:Lrx/internal/schedulers/EventLoopsScheduler;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/schedulers/EventLoopsScheduler;Ljava/lang/Object;)V
    .registers 3
    .param p1, "es"    # Lrx/internal/schedulers/EventLoopsScheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/schedulers/EventLoopsScheduler;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;, "Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;->es:Lrx/internal/schedulers/EventLoopsScheduler;

    .line 75
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;->value:Ljava/lang/Object;

    .line 76
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;, "Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission<TT;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;, "Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission<TT;>;"
    .local p1, "singleSubscriber":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;->es:Lrx/internal/schedulers/EventLoopsScheduler;

    new-instance v1, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission;->value:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;-><init>(Lrx/SingleSubscriber;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/EventLoopsScheduler;->scheduleDirect(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 81
    return-void
.end method

###### Class rx.internal.util.ScalarSynchronousSingle.NormalScheduledEmission (rx.internal.util.ScalarSynchronousSingle$NormalScheduledEmission)
.class final Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NormalScheduledEmission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/Scheduler;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Scheduler;Ljava/lang/Object;)V
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;, "Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;->scheduler:Lrx/Scheduler;

    .line 93
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;->value:Ljava/lang/Object;

    .line 94
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;, "Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission<TT;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;, "Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission<TT;>;"
    .local p1, "singleSubscriber":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 99
    .local v0, "worker":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 100
    new-instance v1, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission;->value:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;-><init>(Lrx/SingleSubscriber;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 101
    return-void
.end method

###### Class rx.internal.util.ScalarSynchronousSingle.ScalarSynchronousSingleAction (rx.internal.util.ScalarSynchronousSingle$ScalarSynchronousSingleAction)
.class final Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScalarSynchronousSingleAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action0;"
    }
.end annotation


# instance fields
.field private final subscriber:Lrx/SingleSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/SingleSubscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/SingleSubscriber;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;, "Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction<TT;>;"
    .local p1, "subscriber":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;->subscriber:Lrx/SingleSubscriber;

    .line 114
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;->value:Ljava/lang/Object;

    .line 115
    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;, "Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction<TT;>;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;->subscriber:Lrx/SingleSubscriber;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 124
    :goto_7
    return-void

    .line 121
    :catch_8
    move-exception v0

    .line 122
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;->subscriber:Lrx/SingleSubscriber;

    invoke-virtual {v1, v0}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method
