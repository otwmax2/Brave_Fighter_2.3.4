###### Class rx.internal.operators.OperatorSequenceEqual (rx.internal.operators.OperatorSequenceEqual)
.class public final Lrx/internal/operators/OperatorSequenceEqual;
.super Ljava/lang/Object;
.source "OperatorSequenceEqual.java"


# static fields
.field static final LOCAL_ON_COMPLETED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorSequenceEqual;->LOCAL_ON_COMPLETED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static materializeLite(Lrx/Observable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorSequenceEqual;->LOCAL_ON_COMPLETED:Ljava/lang/Object;

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sequenceEqual(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func2",
            "<-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "first":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "second":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "equality":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lrx/internal/operators/OperatorSequenceEqual;->materializeLite(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    .line 60
    .local v0, "firstObservable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Object;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorSequenceEqual;->materializeLite(Lrx/Observable;)Lrx/Observable;

    move-result-object v1

    .line 62
    .local v1, "secondObservable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Object;>;"
    new-instance v2, Lrx/internal/operators/OperatorSequenceEqual$1;

    invoke-direct {v2, p2}, Lrx/internal/operators/OperatorSequenceEqual$1;-><init>(Lrx/functions/Func2;)V

    invoke-static {v0, v1, v2}, Lrx/Observable;->zip(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->all(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    return-object v2
.end method

###### Class rx.internal.operators.OperatorSequenceEqual.AnonymousClass1 (rx.internal.operators.OperatorSequenceEqual$1)
.class final Lrx/internal/operators/OperatorSequenceEqual$1;
.super Ljava/lang/Object;
.source "OperatorSequenceEqual.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSequenceEqual;->sequenceEqual(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$equality:Lrx/functions/Func2;


# direct methods
.method constructor <init>(Lrx/functions/Func2;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lrx/internal/operators/OperatorSequenceEqual$1;->val$equality:Lrx/functions/Func2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 8
    .param p1, "t1"    # Ljava/lang/Object;
    .param p2, "t2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    sget-object v4, Lrx/internal/operators/OperatorSequenceEqual;->LOCAL_ON_COMPLETED:Ljava/lang/Object;

    if-ne p1, v4, :cond_15

    move v0, v2

    .line 69
    .local v0, "c1":Z
    :goto_7
    sget-object v4, Lrx/internal/operators/OperatorSequenceEqual;->LOCAL_ON_COMPLETED:Ljava/lang/Object;

    if-ne p2, v4, :cond_17

    move v1, v2

    .line 70
    .local v1, "c2":Z
    :goto_c
    if-eqz v0, :cond_19

    if-eqz v1, :cond_19

    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 77
    :goto_14
    return-object v2

    .end local v0    # "c1":Z
    .end local v1    # "c2":Z
    :cond_15
    move v0, v3

    .line 68
    goto :goto_7

    .restart local v0    # "c1":Z
    :cond_17
    move v1, v3

    .line 69
    goto :goto_c

    .line 73
    .restart local v1    # "c2":Z
    :cond_19
    if-nez v0, :cond_1d

    if-eqz v1, :cond_22

    .line 74
    :cond_1d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_14

    .line 77
    :cond_22
    iget-object v2, p0, Lrx/internal/operators/OperatorSequenceEqual$1;->val$equality:Lrx/functions/Func2;

    invoke-interface {v2, p1, p2}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_14
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorSequenceEqual$1;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
