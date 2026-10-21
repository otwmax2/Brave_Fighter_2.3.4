###### Class rx.internal.util.InternalObservableUtils (rx.internal.util.InternalObservableUtils)
.class public final enum Lrx/internal/util/InternalObservableUtils;
.super Ljava/lang/Enum;
.source "InternalObservableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/InternalObservableUtils$ErrorNotImplementedAction;,
        Lrx/internal/util/InternalObservableUtils$CollectorCaller;,
        Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;,
        Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;,
        Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;,
        Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;,
        Lrx/internal/util/InternalObservableUtils$NotificationErrorExtractor;,
        Lrx/internal/util/InternalObservableUtils$RetryNotificationDematerializer;,
        Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn;,
        Lrx/internal/util/InternalObservableUtils$ReturnsVoidFunc1;,
        Lrx/internal/util/InternalObservableUtils$RepeatNotificationDematerializer;,
        Lrx/internal/util/InternalObservableUtils$IsInstanceOfFunc1;,
        Lrx/internal/util/InternalObservableUtils$EqualsWithFunc1;,
        Lrx/internal/util/InternalObservableUtils$ToArrayFunc1;,
        Lrx/internal/util/InternalObservableUtils$ObjectEqualsFunc2;,
        Lrx/internal/util/InternalObservableUtils$PlusOneLongFunc2;,
        Lrx/internal/util/InternalObservableUtils$PlusOneFunc2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/internal/util/InternalObservableUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/internal/util/InternalObservableUtils;

.field public static final COUNTER:Lrx/internal/util/InternalObservableUtils$PlusOneFunc2;

.field static final ERROR_EXTRACTOR:Lrx/internal/util/InternalObservableUtils$NotificationErrorExtractor;

.field public static final ERROR_NOT_IMPLEMENTED:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_EMPTY:Lrx/Observable$Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$Operator",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_COUNTER:Lrx/internal/util/InternalObservableUtils$PlusOneLongFunc2;

.field public static final OBJECT_EQUALS:Lrx/internal/util/InternalObservableUtils$ObjectEqualsFunc2;

.field static final RETURNS_VOID:Lrx/internal/util/InternalObservableUtils$ReturnsVoidFunc1;

.field public static final TO_ARRAY:Lrx/internal/util/InternalObservableUtils$ToArrayFunc1;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/util/InternalObservableUtils;

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->$VALUES:[Lrx/internal/util/InternalObservableUtils;

    .line 38
    new-instance v0, Lrx/internal/util/InternalObservableUtils$PlusOneLongFunc2;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$PlusOneLongFunc2;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->LONG_COUNTER:Lrx/internal/util/InternalObservableUtils$PlusOneLongFunc2;

    .line 43
    new-instance v0, Lrx/internal/util/InternalObservableUtils$ObjectEqualsFunc2;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$ObjectEqualsFunc2;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->OBJECT_EQUALS:Lrx/internal/util/InternalObservableUtils$ObjectEqualsFunc2;

    .line 47
    new-instance v0, Lrx/internal/util/InternalObservableUtils$ToArrayFunc1;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$ToArrayFunc1;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->TO_ARRAY:Lrx/internal/util/InternalObservableUtils$ToArrayFunc1;

    .line 49
    new-instance v0, Lrx/internal/util/InternalObservableUtils$ReturnsVoidFunc1;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$ReturnsVoidFunc1;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->RETURNS_VOID:Lrx/internal/util/InternalObservableUtils$ReturnsVoidFunc1;

    .line 54
    new-instance v0, Lrx/internal/util/InternalObservableUtils$PlusOneFunc2;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$PlusOneFunc2;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->COUNTER:Lrx/internal/util/InternalObservableUtils$PlusOneFunc2;

    .line 56
    new-instance v0, Lrx/internal/util/InternalObservableUtils$NotificationErrorExtractor;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$NotificationErrorExtractor;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->ERROR_EXTRACTOR:Lrx/internal/util/InternalObservableUtils$NotificationErrorExtractor;

    .line 61
    new-instance v0, Lrx/internal/util/InternalObservableUtils$ErrorNotImplementedAction;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$ErrorNotImplementedAction;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->ERROR_NOT_IMPLEMENTED:Lrx/functions/Action1;

    .line 63
    new-instance v0, Lrx/internal/operators/OperatorAny;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->alwaysTrue()Lrx/functions/Func1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/OperatorAny;-><init>(Lrx/functions/Func1;Z)V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->IS_EMPTY:Lrx/Observable$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 383
    return-void
.end method

.method public static createCollectorCaller(Lrx/functions/Action2;)Lrx/functions/Func2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2",
            "<TR;-TT;>;)",
            "Lrx/functions/Func2",
            "<TR;TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "collector":Lrx/functions/Action2;, "Lrx/functions/Action2<TR;-TT;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$CollectorCaller;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$CollectorCaller;-><init>(Lrx/functions/Action2;)V

    return-object v0
.end method

.method public static createRepeatDematerializer(Lrx/functions/Func1;)Lrx/functions/Func1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;",
            "Lrx/Observable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Void;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$RepeatNotificationDematerializer;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$RepeatNotificationDematerializer;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method

.method public static createReplaySelectorAndObserveOn(Lrx/functions/Func1;Lrx/Scheduler;)Lrx/functions/Func1;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/Observable",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn;-><init>(Lrx/functions/Func1;Lrx/Scheduler;)V

    return-object v0
.end method

.method public static createReplaySupplier(Lrx/Observable;)Lrx/functions/Func0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/functions/Func0",
            "<",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;-><init>(Lrx/Observable;)V

    return-object v0
.end method

.method public static createReplaySupplier(Lrx/Observable;I)Lrx/functions/Func0;
    .registers 3
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;I)",
            "Lrx/functions/Func0",
            "<",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;-><init>(Lrx/Observable;I)V

    return-object v0
.end method

.method public static createReplaySupplier(Lrx/Observable;IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/functions/Func0;
    .registers 14
    .param p1, "bufferSize"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/functions/Func0",
            "<",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v1, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;-><init>(Lrx/Observable;IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    return-object v1
.end method

.method public static createReplaySupplier(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/functions/Func0;
    .registers 12
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/functions/Func0",
            "<",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;-><init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    return-object v0
.end method

.method public static createRetryDematerializer(Lrx/functions/Func1;)Lrx/functions/Func1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;",
            "Lrx/Observable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$RetryNotificationDematerializer;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$RetryNotificationDematerializer;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method

.method public static equalsWith(Ljava/lang/Object;)Lrx/functions/Func1;
    .registers 2
    .param p0, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lrx/internal/util/InternalObservableUtils$EqualsWithFunc1;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$EqualsWithFunc1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isInstanceOf(Ljava/lang/Class;)Lrx/functions/Func1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$IsInstanceOfFunc1;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$IsInstanceOfFunc1;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/util/InternalObservableUtils;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lrx/internal/util/InternalObservableUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/util/InternalObservableUtils;

    return-object v0
.end method

.method public static values()[Lrx/internal/util/InternalObservableUtils;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lrx/internal/util/InternalObservableUtils;->$VALUES:[Lrx/internal/util/InternalObservableUtils;

    invoke-virtual {v0}, [Lrx/internal/util/InternalObservableUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/util/InternalObservableUtils;

    return-object v0
.end method

###### Class rx.internal.util.InternalObservableUtils.CollectorCaller (rx.internal.util.InternalObservableUtils$CollectorCaller)
.class final Lrx/internal/util/InternalObservableUtils$CollectorCaller;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CollectorCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<TR;TT;TR;>;"
    }
.end annotation


# instance fields
.field final collector:Lrx/functions/Action2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action2",
            "<TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Action2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action2",
            "<TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$CollectorCaller;, "Lrx/internal/util/InternalObservableUtils$CollectorCaller<TT;TR;>;"
    .local p1, "collector":Lrx/functions/Action2;, "Lrx/functions/Action2<TR;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$CollectorCaller;->collector:Lrx/functions/Action2;

    .line 374
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$CollectorCaller;, "Lrx/internal/util/InternalObservableUtils$CollectorCaller<TT;TR;>;"
    .local p1, "state":Ljava/lang/Object;, "TR;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$CollectorCaller;->collector:Lrx/functions/Action2;

    invoke-interface {v0, p1, p2}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    return-object p1
.end method

###### Class rx.internal.util.InternalObservableUtils.EqualsWithFunc1 (rx.internal.util.InternalObservableUtils$EqualsWithFunc1)
.class final Lrx/internal/util/InternalObservableUtils$EqualsWithFunc1;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EqualsWithFunc1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final other:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$EqualsWithFunc1;->other:Ljava/lang/Object;

    .line 108
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 112
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$EqualsWithFunc1;->other:Ljava/lang/Object;

    if-eq p1, v0, :cond_e

    if-eqz p1, :cond_14

    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$EqualsWithFunc1;->other:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_e
    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lrx/internal/util/InternalObservableUtils$EqualsWithFunc1;->call(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.InternalObservableUtils.ErrorNotImplementedAction (rx.internal.util.InternalObservableUtils$ErrorNotImplementedAction)
.class final Lrx/internal/util/InternalObservableUtils$ErrorNotImplementedAction;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ErrorNotImplementedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 383
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/InternalObservableUtils$ErrorNotImplementedAction;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 386
    new-instance v0, Lrx/exceptions/OnErrorNotImplementedException;

    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class rx.internal.util.InternalObservableUtils.IsInstanceOfFunc1 (rx.internal.util.InternalObservableUtils$IsInstanceOfFunc1)
.class final Lrx/internal/util/InternalObservableUtils$IsInstanceOfFunc1;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IsInstanceOfFunc1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "other":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$IsInstanceOfFunc1;->clazz:Ljava/lang/Class;

    .line 131
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 135
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$IsInstanceOfFunc1;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lrx/internal/util/InternalObservableUtils$IsInstanceOfFunc1;->call(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.InternalObservableUtils.NotificationErrorExtractor (rx.internal.util.InternalObservableUtils$NotificationErrorExtractor)
.class final Lrx/internal/util/InternalObservableUtils$NotificationErrorExtractor;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NotificationErrorExtractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Notification",
        "<*>;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 227
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/InternalObservableUtils$NotificationErrorExtractor;->call(Lrx/Notification;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Notification;)Ljava/lang/Throwable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "t":Lrx/Notification;, "Lrx/Notification<*>;"
    invoke-virtual {p1}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.InternalObservableUtils.ObjectEqualsFunc2 (rx.internal.util.InternalObservableUtils$ObjectEqualsFunc2)
.class final Lrx/internal/util/InternalObservableUtils$ObjectEqualsFunc2;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObjectEqualsFunc2"
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


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "first"    # Ljava/lang/Object;
    .param p2, "second"    # Ljava/lang/Object;

    .prologue
    .line 82
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

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2}, Lrx/internal/util/InternalObservableUtils$ObjectEqualsFunc2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.InternalObservableUtils.PlusOneFunc2 (rx.internal.util.InternalObservableUtils$PlusOneFunc2)
.class final Lrx/internal/util/InternalObservableUtils$PlusOneFunc2;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlusOneFunc2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 4
    .param p1, "count"    # Ljava/lang/Integer;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/internal/util/InternalObservableUtils$PlusOneFunc2;->call(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.InternalObservableUtils.PlusOneLongFunc2 (rx.internal.util.InternalObservableUtils$PlusOneLongFunc2)
.class final Lrx/internal/util/InternalObservableUtils$PlusOneLongFunc2;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlusOneLongFunc2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Object;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Long;
    .registers 7
    .param p1, "count"    # Ljava/lang/Long;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/internal/util/InternalObservableUtils$PlusOneLongFunc2;->call(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.InternalObservableUtils.RepeatNotificationDematerializer (rx.internal.util.InternalObservableUtils$RepeatNotificationDematerializer)
.class final Lrx/internal/util/InternalObservableUtils$RepeatNotificationDematerializer;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RepeatNotificationDematerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Observable",
        "<+",
        "Lrx/Notification",
        "<*>;>;",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final notificationHandler:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;"
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
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Void;>;+Lrx/Observable<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$RepeatNotificationDematerializer;->notificationHandler:Lrx/functions/Func1;

    .line 155
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/InternalObservableUtils$RepeatNotificationDematerializer;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;)",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "notifications":Lrx/Observable;, "Lrx/Observable<+Lrx/Notification<*>;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$RepeatNotificationDematerializer;->notificationHandler:Lrx/functions/Func1;

    sget-object v1, Lrx/internal/util/InternalObservableUtils;->RETURNS_VOID:Lrx/internal/util/InternalObservableUtils$ReturnsVoidFunc1;

    invoke-virtual {p1, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    return-object v0
.end method

###### Class rx.internal.util.InternalObservableUtils.ReplaySupplierBuffer (rx.internal.util.InternalObservableUtils$ReplaySupplierBuffer)
.class final Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySupplierBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Lrx/observables/ConnectableObservable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final bufferSize:I

.field private final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Observable;I)V
    .registers 3
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;->source:Lrx/Observable;

    .line 274
    iput p2, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;->bufferSize:I

    .line 275
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 268
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;->call()Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/observables/ConnectableObservable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;->source:Lrx/Observable;

    iget v1, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;->bufferSize:I

    invoke-virtual {v0, v1}, Lrx/Observable;->replay(I)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.InternalObservableUtils.ReplaySupplierBufferTime (rx.internal.util.InternalObservableUtils$ReplaySupplierBufferTime)
.class final Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySupplierBufferTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Lrx/observables/ConnectableObservable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/Scheduler;

.field private final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final time:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 6
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p4, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 307
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->source:Lrx/Observable;

    .line 308
    iput-wide p2, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->time:J

    .line 309
    iput-object p5, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->scheduler:Lrx/Scheduler;

    .line 310
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 299
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime<TT;>;"
    invoke-virtual {p0}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->call()Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/observables/ConnectableObservable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->source:Lrx/Observable;

    iget-wide v2, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->time:J

    iget-object v1, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0, v2, v3, v1, v4}, Lrx/Observable;->replay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.InternalObservableUtils.ReplaySupplierNoParams (rx.internal.util.InternalObservableUtils$ReplaySupplierNoParams)
.class final Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySupplierNoParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Lrx/observables/ConnectableObservable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;->source:Lrx/Observable;

    .line 249
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 244
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams<TT;>;"
    invoke-virtual {p0}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;->call()Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/observables/ConnectableObservable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierNoParams;->source:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->replay()Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.InternalObservableUtils.ReplaySupplierTime (rx.internal.util.InternalObservableUtils$ReplaySupplierTime)
.class final Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySupplierTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Lrx/observables/ConnectableObservable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final bufferSize:I

.field private final scheduler:Lrx/Scheduler;

.field private final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final time:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lrx/Observable;IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 8
    .param p2, "bufferSize"    # I
    .param p3, "time"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-wide p3, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->time:J

    .line 346
    iput-object p5, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 347
    iput-object p6, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->scheduler:Lrx/Scheduler;

    .line 348
    iput p2, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->bufferSize:I

    .line 349
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->source:Lrx/Observable;

    .line 350
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 336
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime<TT;>;"
    invoke-virtual {p0}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->call()Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/observables/ConnectableObservable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->source:Lrx/Observable;

    iget v1, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->bufferSize:I

    iget-wide v2, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->time:J

    iget-object v4, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->scheduler:Lrx/Scheduler;

    invoke-virtual/range {v0 .. v5}, Lrx/Observable;->replay(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.InternalObservableUtils.RetryNotificationDematerializer (rx.internal.util.InternalObservableUtils$RetryNotificationDematerializer)
.class final Lrx/internal/util/InternalObservableUtils$RetryNotificationDematerializer;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RetryNotificationDematerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Observable",
        "<+",
        "Lrx/Notification",
        "<*>;>;",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final notificationHandler:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;"
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
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$RetryNotificationDematerializer;->notificationHandler:Lrx/functions/Func1;

    .line 219
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 214
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/InternalObservableUtils$RetryNotificationDematerializer;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;)",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "notifications":Lrx/Observable;, "Lrx/Observable<+Lrx/Notification<*>;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$RetryNotificationDematerializer;->notificationHandler:Lrx/functions/Func1;

    sget-object v1, Lrx/internal/util/InternalObservableUtils;->ERROR_EXTRACTOR:Lrx/internal/util/InternalObservableUtils$NotificationErrorExtractor;

    invoke-virtual {p1, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    return-object v0
.end method

###### Class rx.internal.util.InternalObservableUtils.ReturnsVoidFunc1 (rx.internal.util.InternalObservableUtils$ReturnsVoidFunc1)
.class final Lrx/internal/util/InternalObservableUtils$ReturnsVoidFunc1;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReturnsVoidFunc1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lrx/internal/util/InternalObservableUtils$ReturnsVoidFunc1;->call(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Ljava/lang/Void;
    .registers 3
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

###### Class rx.internal.util.InternalObservableUtils.SelectorAndObserveOn (rx.internal.util.InternalObservableUtils$SelectorAndObserveOn)
.class final Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SelectorAndObserveOn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Observable",
        "<TT;>;",
        "Lrx/Observable",
        "<TR;>;>;"
    }
.end annotation


# instance fields
.field final scheduler:Lrx/Scheduler;

.field final selector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;Lrx/Scheduler;)V
    .registers 3
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn;, "Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn<TT;TR;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn;->selector:Lrx/functions/Func1;

    .line 193
    iput-object p2, p0, Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn;->scheduler:Lrx/Scheduler;

    .line 194
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 185
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn;, "Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn<TT;TR;>;"
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn;, "Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn<TT;TR;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn;->selector:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    iget-object v1, p0, Lrx/internal/util/InternalObservableUtils$SelectorAndObserveOn;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.InternalObservableUtils.ToArrayFunc1 (rx.internal.util.InternalObservableUtils$ToArrayFunc1)
.class final Lrx/internal/util/InternalObservableUtils$ToArrayFunc1;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ToArrayFunc1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/util/List",
        "<+",
        "Lrx/Observable",
        "<*>;>;[",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 86
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/InternalObservableUtils$ToArrayFunc1;->call(Ljava/util/List;)[Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/util/List;)[Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lrx/Observable",
            "<*>;>;)[",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "o":Ljava/util/List;, "Ljava/util/List<+Lrx/Observable<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lrx/Observable;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/Observable;

    return-object v0
.end method
