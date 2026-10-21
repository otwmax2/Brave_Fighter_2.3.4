###### Class rx.internal.operators.OperatorDistinctUntilChanged (rx.internal.operators.OperatorDistinctUntilChanged)
.class public final Lrx/internal/operators/OperatorDistinctUntilChanged;
.super Ljava/lang/Object;
.source "OperatorDistinctUntilChanged.java"

# interfaces
.implements Lrx/Observable$Operator;
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorDistinctUntilChanged$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;",
        "Lrx/functions/Func2",
        "<TU;TU;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final comparator:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<-TU;-TU;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TU;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged;, "Lrx/internal/operators/OperatorDistinctUntilChanged<TT;TU;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lrx/internal/operators/OperatorDistinctUntilChanged;->keySelector:Lrx/functions/Func1;

    .line 53
    iput-object p0, p0, Lrx/internal/operators/OperatorDistinctUntilChanged;->comparator:Lrx/functions/Func2;

    .line 55
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<-TU;-TU;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged;, "Lrx/internal/operators/OperatorDistinctUntilChanged<TT;TU;>;"
    .local p1, "comparator":Lrx/functions/Func2;, "Lrx/functions/Func2<-TU;-TU;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorDistinctUntilChanged;->keySelector:Lrx/functions/Func1;

    .line 60
    iput-object p1, p0, Lrx/internal/operators/OperatorDistinctUntilChanged;->comparator:Lrx/functions/Func2;

    .line 61
    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorDistinctUntilChanged;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorDistinctUntilChanged",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lrx/internal/operators/OperatorDistinctUntilChanged$Holder;->INSTANCE:Lrx/internal/operators/OperatorDistinctUntilChanged;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TU;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged;, "Lrx/internal/operators/OperatorDistinctUntilChanged<TT;TU;>;"
    .local p1, "t1":Ljava/lang/Object;, "TU;"
    .local p2, "t2":Ljava/lang/Object;, "TU;"
    if-eq p1, p2, :cond_a

    if-eqz p1, :cond_10

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_a
    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged;, "Lrx/internal/operators/OperatorDistinctUntilChanged<TT;TU;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDistinctUntilChanged;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged;, "Lrx/internal/operators/OperatorDistinctUntilChanged<TT;TU;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorDistinctUntilChanged;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
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
    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged;, "Lrx/internal/operators/OperatorDistinctUntilChanged<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorDistinctUntilChanged$1;-><init>(Lrx/internal/operators/OperatorDistinctUntilChanged;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorDistinctUntilChanged.AnonymousClass1 (rx.internal.operators.OperatorDistinctUntilChanged$1)
.class Lrx/internal/operators/OperatorDistinctUntilChanged$1;
.super Lrx/Subscriber;
.source "OperatorDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDistinctUntilChanged;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field hasPrevious:Z

.field previousKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorDistinctUntilChanged;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDistinctUntilChanged;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->this$0:Lrx/internal/operators/OperatorDistinctUntilChanged;

    iput-object p3, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 114
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->this$0:Lrx/internal/operators/OperatorDistinctUntilChanged;

    iget-object v4, v4, Lrx/internal/operators/OperatorDistinctUntilChanged;->keySelector:Lrx/functions/Func1;

    invoke-interface {v4, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_26

    move-result-object v3

    .line 82
    .local v3, "key":Ljava/lang/Object;, "TU;"
    iget-object v1, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->previousKey:Ljava/lang/Object;

    .line 83
    .local v1, "currentKey":Ljava/lang/Object;, "TU;"
    iput-object v3, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->previousKey:Ljava/lang/Object;

    .line 85
    iget-boolean v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->hasPrevious:Z

    if-eqz v4, :cond_3a

    .line 89
    :try_start_10
    iget-object v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->this$0:Lrx/internal/operators/OperatorDistinctUntilChanged;

    iget-object v4, v4, Lrx/internal/operators/OperatorDistinctUntilChanged;->comparator:Lrx/functions/Func2;

    invoke-interface {v4, v1, v3}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1d} :catch_2d

    move-result v0

    .line 95
    .local v0, "comparison":Z
    if-nez v0, :cond_34

    .line 96
    iget-object v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v4, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 104
    .end local v0    # "comparison":Z
    .end local v1    # "currentKey":Ljava/lang/Object;, "TU;"
    .end local v3    # "key":Ljava/lang/Object;, "TU;"
    :goto_25
    return-void

    .line 78
    :catch_26
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-static {v2, v4, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_25

    .line 90
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "currentKey":Ljava/lang/Object;, "TU;"
    .restart local v3    # "key":Ljava/lang/Object;, "TU;"
    :catch_2d
    move-exception v2

    .line 91
    .restart local v2    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-static {v2, v4, v3}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_25

    .line 98
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "comparison":Z
    :cond_34
    const-wide/16 v4, 0x1

    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->request(J)V

    goto :goto_25

    .line 101
    .end local v0    # "comparison":Z
    :cond_3a
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->hasPrevious:Z

    .line 102
    iget-object v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v4, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_25
.end method

###### Class rx.internal.operators.OperatorDistinctUntilChanged.Holder (rx.internal.operators.OperatorDistinctUntilChanged$Holder)
.class final Lrx/internal/operators/OperatorDistinctUntilChanged$Holder;
.super Ljava/lang/Object;
.source "OperatorDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorDistinctUntilChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorDistinctUntilChanged;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorDistinctUntilChanged",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lrx/internal/operators/OperatorDistinctUntilChanged;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorDistinctUntilChanged;-><init>(Lrx/functions/Func1;)V

    sput-object v0, Lrx/internal/operators/OperatorDistinctUntilChanged$Holder;->INSTANCE:Lrx/internal/operators/OperatorDistinctUntilChanged;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
