###### Class rx.internal.operators.SingleOperatorOnErrorResumeNext (rx.internal.operators.SingleOperatorOnErrorResumeNext)
.class public final Lrx/internal/operators/SingleOperatorOnErrorResumeNext;
.super Ljava/lang/Object;
.source "SingleOperatorOnErrorResumeNext.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
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
.field private final originalSingle:Lrx/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final resumeFunctionInCaseOfError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Single",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Single;Lrx/functions/Func1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Single",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNext;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext<TT;>;"
    .local p1, "originalSingle":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "resumeFunctionInCaseOfError":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+Lrx/Single<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_d

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "originalSingle must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_d
    if-nez p2, :cond_17

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resumeFunctionInCaseOfError must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_17
    iput-object p1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->originalSingle:Lrx/Single;

    .line 38
    iput-object p2, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->resumeFunctionInCaseOfError:Lrx/functions/Func1;

    .line 39
    return-void
.end method

.method public static withFunction(Lrx/Single;Lrx/functions/Func1;)Lrx/internal/operators/SingleOperatorOnErrorResumeNext;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Single",
            "<+TT;>;>;)",
            "Lrx/internal/operators/SingleOperatorOnErrorResumeNext",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "originalSingle":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "resumeFunctionInCaseOfError":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+Lrx/Single<+TT;>;>;"
    new-instance v0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;-><init>(Lrx/Single;Lrx/functions/Func1;)V

    return-object v0
.end method

.method public static withOther(Lrx/Single;Lrx/Single;)Lrx/internal/operators/SingleOperatorOnErrorResumeNext;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/internal/operators/SingleOperatorOnErrorResumeNext",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "originalSingle":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "resumeSingleInCaseOfError":Lrx/Single;, "Lrx/Single<+TT;>;"
    if-nez p1, :cond_a

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resumeSingleInCaseOfError must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_a
    new-instance v0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    new-instance v1, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$1;

    invoke-direct {v1, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$1;-><init>(Lrx/Single;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;-><init>(Lrx/Single;Lrx/functions/Func1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNext;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext<TT;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNext;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext<TT;>;"
    .local p1, "child":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;-><init>(Lrx/internal/operators/SingleOperatorOnErrorResumeNext;Lrx/SingleSubscriber;)V

    .line 76
    .local v0, "parent":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 77
    iget-object v1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->originalSingle:Lrx/Single;

    invoke-virtual {v1, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 78
    return-void
.end method

###### Class rx.internal.operators.SingleOperatorOnErrorResumeNext.AnonymousClass1 (rx.internal.operators.SingleOperatorOnErrorResumeNext$1)
.class final Lrx/internal/operators/SingleOperatorOnErrorResumeNext$1;
.super Ljava/lang/Object;
.source "SingleOperatorOnErrorResumeNext.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->withOther(Lrx/Single;Lrx/Single;)Lrx/internal/operators/SingleOperatorOnErrorResumeNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Throwable;",
        "Lrx/Single",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$resumeSingleInCaseOfError:Lrx/Single;


# direct methods
.method constructor <init>(Lrx/Single;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$1;->val$resumeSingleInCaseOfError:Lrx/Single;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$1;->call(Ljava/lang/Throwable;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Throwable;)Lrx/Single;
    .registers 3
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Single",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$1;->val$resumeSingleInCaseOfError:Lrx/Single;

    return-object v0
.end method

###### Class rx.internal.operators.SingleOperatorOnErrorResumeNext.AnonymousClass2 (rx.internal.operators.SingleOperatorOnErrorResumeNext$2)
.class Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;
.super Lrx/SingleSubscriber;
.source "SingleOperatorOnErrorResumeNext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->call(Lrx/SingleSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/SingleSubscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

.field final synthetic val$child:Lrx/SingleSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/SingleOperatorOnErrorResumeNext;Lrx/SingleSubscriber;)V
    .registers 3

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext.2;"
    iput-object p1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;->this$0:Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    iput-object p2, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;->val$child:Lrx/SingleSubscriber;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext.2;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;->this$0:Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    iget-object v1, v1, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->resumeFunctionInCaseOfError:Lrx/functions/Func1;

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Single;

    iget-object v2, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v1, v2}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 73
    :goto_f
    return-void

    .line 70
    :catch_10
    move-exception v0

    .line 71
    .local v0, "innerError":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;->val$child:Lrx/SingleSubscriber;

    invoke-static {v0, v1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/SingleSubscriber;)V

    goto :goto_f
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext.2;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 64
    return-void
.end method
