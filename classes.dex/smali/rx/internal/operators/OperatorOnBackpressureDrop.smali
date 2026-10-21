###### Class rx.internal.operators.OperatorOnBackpressureDrop (rx.internal.operators.OperatorOnBackpressureDrop)
.class public Lrx/internal/operators/OperatorOnBackpressureDrop;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureDrop.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorOnBackpressureDrop$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final onDrop:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop;, "Lrx/internal/operators/OperatorOnBackpressureDrop<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrx/internal/operators/OperatorOnBackpressureDrop;-><init>(Lrx/functions/Action1;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lrx/functions/Action1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop;, "Lrx/internal/operators/OperatorOnBackpressureDrop<TT;>;"
    .local p1, "onDrop":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureDrop;->onDrop:Lrx/functions/Action1;

    .line 51
    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorOnBackpressureDrop;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorOnBackpressureDrop",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lrx/internal/operators/OperatorOnBackpressureDrop$Holder;->INSTANCE:Lrx/internal/operators/OperatorOnBackpressureDrop;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop;, "Lrx/internal/operators/OperatorOnBackpressureDrop<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnBackpressureDrop;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop;, "Lrx/internal/operators/OperatorOnBackpressureDrop<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 57
    .local v0, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v1, Lrx/internal/operators/OperatorOnBackpressureDrop$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorOnBackpressureDrop$1;-><init>(Lrx/internal/operators/OperatorOnBackpressureDrop;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 65
    new-instance v1, Lrx/internal/operators/OperatorOnBackpressureDrop$2;

    invoke-direct {v1, p0, p1, p1, v0}, Lrx/internal/operators/OperatorOnBackpressureDrop$2;-><init>(Lrx/internal/operators/OperatorOnBackpressureDrop;Lrx/Subscriber;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v1
.end method

###### Class rx.internal.operators.OperatorOnBackpressureDrop.AnonymousClass1 (rx.internal.operators.OperatorOnBackpressureDrop$1)
.class Lrx/internal/operators/OperatorOnBackpressureDrop$1;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureDrop.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnBackpressureDrop;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorOnBackpressureDrop;

.field final synthetic val$requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnBackpressureDrop;Ljava/util/concurrent/atomic/AtomicLong;)V
    .registers 3

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop$1;, "Lrx/internal/operators/OperatorOnBackpressureDrop.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$1;->this$0:Lrx/internal/operators/OperatorOnBackpressureDrop;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$1;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop$1;, "Lrx/internal/operators/OperatorOnBackpressureDrop.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$1;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 62
    return-void
.end method

###### Class rx.internal.operators.OperatorOnBackpressureDrop.AnonymousClass2 (rx.internal.operators.OperatorOnBackpressureDrop$2)
.class Lrx/internal/operators/OperatorOnBackpressureDrop$2;
.super Lrx/Subscriber;
.source "OperatorOnBackpressureDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnBackpressureDrop;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorOnBackpressureDrop;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnBackpressureDrop;Lrx/Subscriber;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicLong;)V
    .registers 5

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop$2;, "Lrx/internal/operators/OperatorOnBackpressureDrop.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->this$0:Lrx/internal/operators/OperatorOnBackpressureDrop;

    iput-object p3, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->val$child:Lrx/Subscriber;

    iput-object p4, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop$2;, "Lrx/internal/operators/OperatorOnBackpressureDrop.2;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->done:Z

    if-nez v0, :cond_c

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->done:Z

    .line 78
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 80
    :cond_c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop$2;, "Lrx/internal/operators/OperatorOnBackpressureDrop.2;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->done:Z

    if-nez v0, :cond_d

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->done:Z

    .line 86
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 90
    :goto_c
    return-void

    .line 88
    :cond_d
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop$2;, "Lrx/internal/operators/OperatorOnBackpressureDrop.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->done:Z

    if-eqz v1, :cond_5

    .line 110
    :cond_4
    :goto_4
    return-void

    .line 97
    :cond_5
    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1c

    .line 98
    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_4

    .line 102
    :cond_1c
    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->this$0:Lrx/internal/operators/OperatorOnBackpressureDrop;

    iget-object v1, v1, Lrx/internal/operators/OperatorOnBackpressureDrop;->onDrop:Lrx/functions/Action1;

    if-eqz v1, :cond_4

    .line 104
    :try_start_22
    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->this$0:Lrx/internal/operators/OperatorOnBackpressureDrop;

    iget-object v1, v1, Lrx/internal/operators/OperatorOnBackpressureDrop;->onDrop:Lrx/functions/Action1;

    invoke-interface {v1, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_29} :catch_2a

    goto :goto_4

    .line 105
    :catch_2a
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop$2;, "Lrx/internal/operators/OperatorOnBackpressureDrop.2;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureDrop$2;->request(J)V

    .line 72
    return-void
.end method

###### Class rx.internal.operators.OperatorOnBackpressureDrop.Holder (rx.internal.operators.OperatorOnBackpressureDrop$Holder)
.class final Lrx/internal/operators/OperatorOnBackpressureDrop$Holder;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureDrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorOnBackpressureDrop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorOnBackpressureDrop",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureDrop;

    invoke-direct {v0}, Lrx/internal/operators/OperatorOnBackpressureDrop;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorOnBackpressureDrop$Holder;->INSTANCE:Lrx/internal/operators/OperatorOnBackpressureDrop;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
