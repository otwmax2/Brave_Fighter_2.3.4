###### Class rx.internal.operators.OperatorScan (rx.internal.operators.OperatorScan)
.class public final Lrx/internal/operators/OperatorScan;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorScan$InitialProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TR;TT;>;"
    }
.end annotation


# static fields
.field private static final NO_INITIAL_VALUE:Ljava/lang/Object;


# instance fields
.field final accumulator:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field private final initialValueFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorScan;->NO_INITIAL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lrx/functions/Func2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorScan$1;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorScan$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lrx/internal/operators/OperatorScan;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<TR;>;",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "initialValueFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TR;>;"
    .local p2, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lrx/internal/operators/OperatorScan;->initialValueFactory:Lrx/functions/Func0;

    .line 75
    iput-object p2, p0, Lrx/internal/operators/OperatorScan;->accumulator:Lrx/functions/Func2;

    .line 76
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    sget-object v0, Lrx/internal/operators/OperatorScan;->NO_INITIAL_VALUE:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lrx/internal/operators/OperatorScan;-><init>(Ljava/lang/Object;Lrx/functions/Func2;)V

    .line 89
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorScan;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorScan;->initialValueFactory:Lrx/functions/Func0;

    invoke-interface {v3}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "initialValue":Ljava/lang/Object;, "TR;"
    sget-object v3, Lrx/internal/operators/OperatorScan;->NO_INITIAL_VALUE:Ljava/lang/Object;

    if-ne v0, v3, :cond_10

    .line 96
    new-instance v2, Lrx/internal/operators/OperatorScan$2;

    invoke-direct {v2, p0, p1, p1}, Lrx/internal/operators/OperatorScan$2;-><init>(Lrx/internal/operators/OperatorScan;Lrx/Subscriber;Lrx/Subscriber;)V

    .line 165
    :goto_f
    return-object v2

    .line 129
    :cond_10
    new-instance v1, Lrx/internal/operators/OperatorScan$InitialProducer;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/OperatorScan$InitialProducer;-><init>(Ljava/lang/Object;Lrx/Subscriber;)V

    .line 131
    .local v1, "ip":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    new-instance v2, Lrx/internal/operators/OperatorScan$3;

    invoke-direct {v2, p0, v0, v1}, Lrx/internal/operators/OperatorScan$3;-><init>(Lrx/internal/operators/OperatorScan;Ljava/lang/Object;Lrx/internal/operators/OperatorScan$InitialProducer;)V

    .line 163
    .local v2, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 164
    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    goto :goto_f
.end method

###### Class rx.internal.operators.OperatorScan.AnonymousClass1 (rx.internal.operators.OperatorScan$1)
.class Lrx/internal/operators/OperatorScan$1;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorScan;-><init>(Ljava/lang/Object;Lrx/functions/Func2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$initialValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorScan$1;, "Lrx/internal/operators/OperatorScan.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$1;->val$initialValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorScan$1;, "Lrx/internal/operators/OperatorScan.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$1;->val$initialValue:Ljava/lang/Object;

    return-object v0
.end method

###### Class rx.internal.operators.OperatorScan.AnonymousClass2 (rx.internal.operators.OperatorScan$2)
.class Lrx/internal/operators/OperatorScan$2;
.super Lrx/Subscriber;
.source "OperatorScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorScan;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field once:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorScan;

.field final synthetic val$child:Lrx/Subscriber;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorScan;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$2;->this$0:Lrx/internal/operators/OperatorScan;

    iput-object p3, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 125
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 121
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorScan$2;->once:Z

    if-nez v2, :cond_10

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorScan$2;->once:Z

    .line 105
    move-object v1, p1

    .line 115
    .local v1, "v":Ljava/lang/Object;, "TR;"
    :goto_8
    iput-object v1, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    .line 116
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 117
    :goto_f
    return-void

    .line 107
    .end local v1    # "v":Ljava/lang/Object;, "TR;"
    :cond_10
    iget-object v1, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    .line 109
    .restart local v1    # "v":Ljava/lang/Object;, "TR;"
    :try_start_12
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$2;->this$0:Lrx/internal/operators/OperatorScan;

    iget-object v2, v2, Lrx/internal/operators/OperatorScan;->accumulator:Lrx/functions/Func2;

    invoke-interface {v2, v1, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_19} :catch_1b

    move-result-object v1

    goto :goto_8

    .line 110
    :catch_1b
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-static {v0, v2, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_f
.end method

###### Class rx.internal.operators.OperatorScan.AnonymousClass3 (rx.internal.operators.OperatorScan$3)
.class Lrx/internal/operators/OperatorScan$3;
.super Lrx/Subscriber;
.source "OperatorScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorScan;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorScan;

.field final synthetic val$initialValue:Ljava/lang/Object;

.field final synthetic val$ip:Lrx/internal/operators/OperatorScan$InitialProducer;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorScan;Ljava/lang/Object;Lrx/internal/operators/OperatorScan$InitialProducer;)V
    .registers 5

    .prologue
    .line 131
    .local p0, "this":Lrx/internal/operators/OperatorScan$3;, "Lrx/internal/operators/OperatorScan.3;"
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$3;->this$0:Lrx/internal/operators/OperatorScan;

    iput-object p2, p0, Lrx/internal/operators/OperatorScan$3;->val$initialValue:Ljava/lang/Object;

    iput-object p3, p0, Lrx/internal/operators/OperatorScan$3;->val$ip:Lrx/internal/operators/OperatorScan$InitialProducer;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 132
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$3;->val$initialValue:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OperatorScan$3;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 154
    .local p0, "this":Lrx/internal/operators/OperatorScan$3;, "Lrx/internal/operators/OperatorScan.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$3;->val$ip:Lrx/internal/operators/OperatorScan$InitialProducer;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorScan$InitialProducer;->onCompleted()V

    .line 155
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/operators/OperatorScan$3;, "Lrx/internal/operators/OperatorScan.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$3;->val$ip:Lrx/internal/operators/OperatorScan$InitialProducer;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorScan$InitialProducer;->onError(Ljava/lang/Throwable;)V

    .line 150
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lrx/internal/operators/OperatorScan$3;, "Lrx/internal/operators/OperatorScan.3;"
    .local p1, "currentValue":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/internal/operators/OperatorScan$3;->value:Ljava/lang/Object;

    .line 138
    .local v1, "v":Ljava/lang/Object;, "TR;"
    :try_start_2
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$3;->this$0:Lrx/internal/operators/OperatorScan;

    iget-object v2, v2, Lrx/internal/operators/OperatorScan;->accumulator:Lrx/functions/Func2;

    invoke-interface {v2, v1, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_12

    move-result-object v1

    .line 143
    iput-object v1, p0, Lrx/internal/operators/OperatorScan$3;->value:Ljava/lang/Object;

    .line 144
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$3;->val$ip:Lrx/internal/operators/OperatorScan$InitialProducer;

    invoke-virtual {v2, v1}, Lrx/internal/operators/OperatorScan$InitialProducer;->onNext(Ljava/lang/Object;)V

    .line 145
    :goto_11
    return-void

    .line 139
    :catch_12
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 159
    .local p0, "this":Lrx/internal/operators/OperatorScan$3;, "Lrx/internal/operators/OperatorScan.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$3;->val$ip:Lrx/internal/operators/OperatorScan$InitialProducer;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorScan$InitialProducer;->setProducer(Lrx/Producer;)V

    .line 160
    return-void
.end method

###### Class rx.internal.operators.OperatorScan.InitialProducer (rx.internal.operators.OperatorScan$InitialProducer)
.class final Lrx/internal/operators/OperatorScan$InitialProducer;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InitialProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;",
        "Lrx/Observer",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field emitting:Z

.field error:Ljava/lang/Throwable;

.field missed:Z

.field missedRequested:J

.field volatile producer:Lrx/Producer;

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

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->child:Lrx/Subscriber;

    .line 189
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 190
    new-instance v0, Lrx/internal/util/unsafe/SpscLinkedQueue;

    invoke-direct {v0}, Lrx/internal/util/unsafe/SpscLinkedQueue;-><init>()V

    .line 194
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_10
    iput-object v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->queue:Ljava/util/Queue;

    .line 195
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 196
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 197
    return-void

    .line 192
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_25
    new-instance v0, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;

    invoke-direct {v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;-><init>()V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_10
.end method


# virtual methods
.method checkTerminated(ZZLrx/Subscriber;)Z
    .registers 7
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<-TR;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    .local p3, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    const/4 v1, 0x1

    .line 206
    invoke-virtual {p3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 220
    :goto_7
    return v1

    .line 209
    :cond_8
    if-eqz p1, :cond_18

    .line 210
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->error:Ljava/lang/Throwable;

    .line 211
    .local v0, "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_12

    .line 212
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 215
    :cond_12
    if-eqz p2, :cond_18

    .line 216
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_7

    .line 220
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_18
    const/4 v1, 0x0

    goto :goto_7
.end method

.method emit()V
    .registers 2

    .prologue
    .line 288
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    monitor-enter p0

    .line 289
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->emitting:Z

    if-eqz v0, :cond_a

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missed:Z

    .line 291
    monitor-exit p0

    .line 296
    :goto_9
    return-void

    .line 293
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->emitting:Z

    .line 294
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    .line 295
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emitLoop()V

    goto :goto_9

    .line 294
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method emitLoop()V
    .registers 19

    .prologue
    .line 299
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->child:Lrx/Subscriber;

    .line 300
    .local v2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->queue:Ljava/util/Queue;

    .line 301
    .local v10, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v8

    .line 302
    .local v8, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TR;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 304
    .local v11, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 306
    .local v12, "r":J
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 307
    .local v3, "d":Z
    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    .line 308
    .local v6, "empty":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2}, Lrx/internal/operators/OperatorScan$InitialProducer;->checkTerminated(ZZLrx/Subscriber;)Z

    move-result v15

    if-eqz v15, :cond_25

    .line 339
    :cond_24
    :goto_24
    return-void

    .line 311
    :cond_25
    const-wide/16 v4, 0x0

    .line 312
    .local v4, "e":J
    :goto_27
    cmp-long v15, v4, v12

    if-eqz v15, :cond_40

    .line 313
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 314
    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .line 315
    .local v9, "o":Ljava/lang/Object;
    if-nez v9, :cond_64

    const/4 v6, 0x1

    .line 316
    :goto_36
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2}, Lrx/internal/operators/OperatorScan$InitialProducer;->checkTerminated(ZZLrx/Subscriber;)Z

    move-result v15

    if-nez v15, :cond_24

    .line 319
    if-eqz v6, :cond_66

    .line 332
    .end local v9    # "o":Ljava/lang/Object;
    :cond_40
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-eqz v15, :cond_53

    const-wide v16, 0x7fffffffffffffffL

    cmp-long v15, v12, v16

    if-eqz v15, :cond_53

    .line 333
    invoke-static {v11, v4, v5}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v12

    .line 336
    :cond_53
    monitor-enter p0

    .line 337
    :try_start_54
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->missed:Z

    if-nez v15, :cond_77

    .line 338
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->emitting:Z

    .line 339
    monitor-exit p0

    goto :goto_24

    .line 342
    :catchall_61
    move-exception v15

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_61

    throw v15

    .line 315
    .restart local v9    # "o":Ljava/lang/Object;
    :cond_64
    const/4 v6, 0x0

    goto :goto_36

    .line 322
    :cond_66
    invoke-virtual {v8, v9}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 324
    .local v14, "v":Ljava/lang/Object;, "TR;"
    :try_start_6a
    invoke-virtual {v2, v14}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6d} :catch_72

    .line 329
    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    .line 330
    goto :goto_27

    .line 325
    :catch_72
    move-exception v7

    .line 326
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-static {v7, v2, v14}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_24

    .line 341
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v9    # "o":Ljava/lang/Object;
    .end local v14    # "v":Ljava/lang/Object;, "TR;"
    :cond_77
    const/4 v15, 0x0

    :try_start_78
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->missed:Z

    .line 342
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_61

    goto :goto_14
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 232
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 233
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    .line 234
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 225
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->error:Ljava/lang/Throwable;

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 227
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    .line 228
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->queue:Ljava/util/Queue;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    .line 203
    return-void
.end method

.method public request(J)V
    .registers 12
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    const-wide/16 v4, 0x0

    .line 238
    cmp-long v3, p1, v4

    if-gez v3, :cond_1f

    .line 239
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "n >= required but it was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_1f
    cmp-long v3, p1, v4

    if-eqz v3, :cond_44

    .line 242
    iget-object v3, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 243
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    .line 244
    .local v2, "p":Lrx/Producer;
    if-nez v2, :cond_3c

    .line 246
    iget-object v4, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v4

    .line 247
    :try_start_2f
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    .line 248
    if-nez v2, :cond_3b

    .line 249
    iget-wide v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    .line 250
    .local v0, "mr":J
    invoke-static {v0, v1, p1, p2}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    .line 252
    .end local v0    # "mr":J
    :cond_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_45

    .line 254
    :cond_3c
    if-eqz v2, :cond_41

    .line 255
    invoke-interface {v2, p1, p2}, Lrx/Producer;->request(J)V

    .line 257
    :cond_41
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    .line 259
    .end local v2    # "p":Lrx/Producer;
    :cond_44
    return-void

    .line 252
    .restart local v2    # "p":Lrx/Producer;
    :catchall_45
    move-exception v3

    :try_start_46
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v3
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 10
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    const-wide/16 v6, 0x0

    .line 262
    if-nez p1, :cond_a

    .line 263
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 267
    :cond_a
    iget-object v3, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v3

    .line 268
    :try_start_d
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    if-eqz v2, :cond_1c

    .line 269
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t set more than one Producer!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_19

    throw v2

    .line 271
    :cond_1c
    :try_start_1c
    iget-wide v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    .line 274
    .local v0, "mr":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2a

    .line 275
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    .line 277
    :cond_2a
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    .line 278
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    .line 279
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_19

    .line 281
    cmp-long v2, v0, v6

    if-lez v2, :cond_38

    .line 282
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    .line 284
    :cond_38
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    .line 285
    return-void
.end method
