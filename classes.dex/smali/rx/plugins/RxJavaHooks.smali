###### Class rx.plugins.RxJavaHooks (rx.plugins.RxJavaHooks)
.class public final Lrx/plugins/RxJavaHooks;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"


# annotations
.annotation build Lrx/annotations/Experimental;
.end annotation


# static fields
.field static volatile lockdown:Z

.field static volatile onCompletableCreate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Completable$OnSubscribe;",
            "Lrx/Completable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onCompletableLift:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Completable$Operator;",
            "Lrx/Completable$Operator;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onCompletableStart:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Lrx/Completable;",
            "Lrx/Completable$OnSubscribe;",
            "Lrx/Completable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onCompletableSubscribeError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onComputationScheduler:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onError:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onGenericScheduledExecutorService:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onIOScheduler:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onNewThreadScheduler:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableCreate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableLift:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableReturn:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableStart:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Lrx/Observable;",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableSubscribeError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onScheduleAction:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleCreate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Single$OnSubscribe;",
            "Lrx/Single$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleLift:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleReturn:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleStart:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Lrx/Single;",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleSubscribeError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 88
    invoke-static {}, Lrx/plugins/RxJavaHooks;->init()V

    .line 89
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clear()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 245
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_6

    .line 273
    :goto_5
    return-void

    .line 248
    :cond_6
    sput-object v1, Lrx/plugins/RxJavaHooks;->onError:Lrx/functions/Action1;

    .line 250
    sput-object v1, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    .line 251
    sput-object v1, Lrx/plugins/RxJavaHooks;->onObservableStart:Lrx/functions/Func2;

    .line 252
    sput-object v1, Lrx/plugins/RxJavaHooks;->onObservableReturn:Lrx/functions/Func1;

    .line 253
    sput-object v1, Lrx/plugins/RxJavaHooks;->onObservableSubscribeError:Lrx/functions/Func1;

    .line 254
    sput-object v1, Lrx/plugins/RxJavaHooks;->onObservableLift:Lrx/functions/Func1;

    .line 256
    sput-object v1, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    .line 257
    sput-object v1, Lrx/plugins/RxJavaHooks;->onSingleStart:Lrx/functions/Func2;

    .line 258
    sput-object v1, Lrx/plugins/RxJavaHooks;->onSingleReturn:Lrx/functions/Func1;

    .line 259
    sput-object v1, Lrx/plugins/RxJavaHooks;->onSingleSubscribeError:Lrx/functions/Func1;

    .line 260
    sput-object v1, Lrx/plugins/RxJavaHooks;->onSingleLift:Lrx/functions/Func1;

    .line 262
    sput-object v1, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    .line 263
    sput-object v1, Lrx/plugins/RxJavaHooks;->onCompletableStart:Lrx/functions/Func2;

    .line 264
    sput-object v1, Lrx/plugins/RxJavaHooks;->onCompletableSubscribeError:Lrx/functions/Func1;

    .line 265
    sput-object v1, Lrx/plugins/RxJavaHooks;->onCompletableLift:Lrx/functions/Func1;

    .line 267
    sput-object v1, Lrx/plugins/RxJavaHooks;->onComputationScheduler:Lrx/functions/Func1;

    .line 268
    sput-object v1, Lrx/plugins/RxJavaHooks;->onIOScheduler:Lrx/functions/Func1;

    .line 269
    sput-object v1, Lrx/plugins/RxJavaHooks;->onNewThreadScheduler:Lrx/functions/Func1;

    .line 271
    sput-object v1, Lrx/plugins/RxJavaHooks;->onScheduleAction:Lrx/functions/Func1;

    .line 272
    sput-object v1, Lrx/plugins/RxJavaHooks;->onGenericScheduledExecutorService:Lrx/functions/Func0;

    goto :goto_5
.end method

.method public static clearAssemblyTracking()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 1160
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_6

    .line 1166
    :goto_5
    return-void

    .line 1163
    :cond_6
    sput-object v1, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    .line 1164
    sput-object v1, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    .line 1165
    sput-object v1, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    goto :goto_5
.end method

.method public static enableAssemblyTracking()V
    .registers 1

    .prologue
    .line 1175
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 1200
    :goto_4
    return-void

    .line 1179
    :cond_5
    new-instance v0, Lrx/plugins/RxJavaHooks$17;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$17;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    .line 1186
    new-instance v0, Lrx/plugins/RxJavaHooks$18;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$18;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    .line 1193
    new-instance v0, Lrx/plugins/RxJavaHooks$19;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$19;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static getOnCompletableCreate()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Completable$OnSubscribe;",
            "Lrx/Completable$OnSubscribe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1084
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnCompletableLift()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Completable$Operator;",
            "Lrx/Completable$Operator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 993
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableLift:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnCompletableStart()Lrx/functions/Func2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func2",
            "<",
            "Lrx/Completable;",
            "Lrx/Completable$OnSubscribe;",
            "Lrx/Completable$OnSubscribe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1095
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableStart:Lrx/functions/Func2;

    return-object v0
.end method

.method public static getOnCompletableSubscribeError()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 873
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableSubscribeError:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnComputationScheduler()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1004
    sget-object v0, Lrx/plugins/RxJavaHooks;->onComputationScheduler:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnError()Lrx/functions/Action1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1016
    sget-object v0, Lrx/plugins/RxJavaHooks;->onError:Lrx/functions/Action1;

    return-object v0
.end method

.method public static getOnGenericScheduledExecutorService()Lrx/functions/Func0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1229
    sget-object v0, Lrx/plugins/RxJavaHooks;->onGenericScheduledExecutorService:Lrx/functions/Func0;

    return-object v0
.end method

.method public static getOnIOScheduler()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1027
    sget-object v0, Lrx/plugins/RxJavaHooks;->onIOScheduler:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnNewThreadScheduler()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1038
    sget-object v0, Lrx/plugins/RxJavaHooks;->onNewThreadScheduler:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnObservableCreate()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1050
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnObservableLift()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableLift:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnObservableReturn()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1130
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableReturn:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnObservableStart()Lrx/functions/Func2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func2",
            "<",
            "Lrx/Observable;",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1107
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableStart:Lrx/functions/Func2;

    return-object v0
.end method

.method public static getOnObservableSubscribeError()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 902
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableSubscribeError:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnScheduleAction()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1061
    sget-object v0, Lrx/plugins/RxJavaHooks;->onScheduleAction:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnSingleCreate()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Single$OnSubscribe;",
            "Lrx/Single$OnSubscribe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1073
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnSingleLift()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 964
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleLift:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnSingleReturn()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1141
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleReturn:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnSingleStart()Lrx/functions/Func2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func2",
            "<",
            "Lrx/Single;",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1119
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleStart:Lrx/functions/Func2;

    return-object v0
.end method

.method public static getOnSingleSubscribeError()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 844
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleSubscribeError:Lrx/functions/Func1;

    return-object v0
.end method

.method static init()V
    .registers 1

    .prologue
    .line 102
    new-instance v0, Lrx/plugins/RxJavaHooks$1;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$1;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onError:Lrx/functions/Action1;

    .line 109
    new-instance v0, Lrx/plugins/RxJavaHooks$2;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$2;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableStart:Lrx/functions/Func2;

    .line 116
    new-instance v0, Lrx/plugins/RxJavaHooks$3;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$3;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableReturn:Lrx/functions/Func1;

    .line 123
    new-instance v0, Lrx/plugins/RxJavaHooks$4;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$4;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleStart:Lrx/functions/Func2;

    .line 130
    new-instance v0, Lrx/plugins/RxJavaHooks$5;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$5;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleReturn:Lrx/functions/Func1;

    .line 137
    new-instance v0, Lrx/plugins/RxJavaHooks$6;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$6;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableStart:Lrx/functions/Func2;

    .line 144
    new-instance v0, Lrx/plugins/RxJavaHooks$7;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$7;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onScheduleAction:Lrx/functions/Func1;

    .line 151
    new-instance v0, Lrx/plugins/RxJavaHooks$8;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$8;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableSubscribeError:Lrx/functions/Func1;

    .line 158
    new-instance v0, Lrx/plugins/RxJavaHooks$9;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$9;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableLift:Lrx/functions/Func1;

    .line 165
    new-instance v0, Lrx/plugins/RxJavaHooks$10;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$10;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleSubscribeError:Lrx/functions/Func1;

    .line 172
    new-instance v0, Lrx/plugins/RxJavaHooks$11;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$11;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleLift:Lrx/functions/Func1;

    .line 179
    new-instance v0, Lrx/plugins/RxJavaHooks$12;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$12;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableSubscribeError:Lrx/functions/Func1;

    .line 186
    new-instance v0, Lrx/plugins/RxJavaHooks$13;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$13;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableLift:Lrx/functions/Func1;

    .line 193
    invoke-static {}, Lrx/plugins/RxJavaHooks;->initCreate()V

    .line 194
    return-void
.end method

.method static initCreate()V
    .registers 1

    .prologue
    .line 198
    new-instance v0, Lrx/plugins/RxJavaHooks$14;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$14;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    .line 205
    new-instance v0, Lrx/plugins/RxJavaHooks$15;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$15;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    .line 212
    new-instance v0, Lrx/plugins/RxJavaHooks$16;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$16;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    .line 218
    return-void
.end method

.method public static isLockdown()Z
    .registers 1

    .prologue
    .line 287
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    return v0
.end method

.method public static lockdown()V
    .registers 1

    .prologue
    .line 279
    const/4 v0, 0x1

    sput-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    .line 280
    return-void
.end method

.method public static onCompletableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 553
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableSubscribeError:Lrx/functions/Func1;

    .line 554
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_b

    .line 555
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 557
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onCompletableLift(Lrx/Completable$Operator;)Lrx/Completable$Operator;
    .registers 3
    .param p0, "operator"    # Lrx/Completable$Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Completable$Operator;",
            ")",
            "Lrx/Completable$Operator;"
        }
    .end annotation

    .prologue
    .line 568
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableLift:Lrx/functions/Func1;

    .line 569
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Completable$Operator;Lrx/Completable$Operator;>;"
    if-eqz v0, :cond_b

    .line 570
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Completable$Operator;

    .line 572
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onCompletableStart(Lrx/Completable;Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;
    .registers 4
    .param p0, "instance"    # Lrx/Completable;
    .param p1, "onSubscribe"    # Lrx/Completable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Completable;",
            "Lrx/Completable$OnSubscribe;",
            ")",
            "Lrx/Completable$OnSubscribe;"
        }
    .end annotation

    .prologue
    .line 540
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableStart:Lrx/functions/Func2;

    .line 541
    .local v0, "f":Lrx/functions/Func2;, "Lrx/functions/Func2<Lrx/Completable;Lrx/Completable$OnSubscribe;Lrx/Completable$OnSubscribe;>;"
    if-eqz v0, :cond_b

    .line 542
    invoke-interface {v0, p0, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Completable$OnSubscribe;

    .line 544
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p1

    goto :goto_a
.end method

.method public static onComputationScheduler(Lrx/Scheduler;)Lrx/Scheduler;
    .registers 3
    .param p0, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 369
    sget-object v0, Lrx/plugins/RxJavaHooks;->onComputationScheduler:Lrx/functions/Func1;

    .line 370
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Scheduler;Lrx/Scheduler;>;"
    if-eqz v0, :cond_b

    .line 371
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Scheduler;

    .line 373
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onCreate(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;
    .registers 3
    .param p0, "onSubscribe"    # Lrx/Completable$OnSubscribe;

    .prologue
    .line 356
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    .line 357
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Completable$OnSubscribe;Lrx/Completable$OnSubscribe;>;"
    if-eqz v0, :cond_b

    .line 358
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Completable$OnSubscribe;

    .line 360
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onCreate(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    .line 329
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable$OnSubscribe;Lrx/Observable$OnSubscribe;>;"
    if-eqz v0, :cond_b

    .line 330
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable$OnSubscribe;

    .line 332
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onCreate(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single$OnSubscribe",
            "<TT;>;)",
            "Lrx/Single$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "onSubscribe":Lrx/Single$OnSubscribe;, "Lrx/Single$OnSubscribe<TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    .line 344
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Single$OnSubscribe;Lrx/Single$OnSubscribe;>;"
    if-eqz v0, :cond_b

    .line 345
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Single$OnSubscribe;

    .line 347
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 294
    sget-object v0, Lrx/plugins/RxJavaHooks;->onError:Lrx/functions/Action1;

    .line 295
    .local v0, "f":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_2b

    .line 297
    :try_start_4
    invoke-interface {v0, p0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_8

    .line 312
    :goto_7
    return-void

    .line 299
    :catch_8
    move-exception v1

    .line 305
    .local v1, "pluginException":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The onError handler threw an Exception. It shouldn\'t. => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 308
    invoke-static {v1}, Lrx/plugins/RxJavaHooks;->signalUncaught(Ljava/lang/Throwable;)V

    .line 311
    .end local v1    # "pluginException":Ljava/lang/Throwable;
    :cond_2b
    invoke-static {p0}, Lrx/plugins/RxJavaHooks;->signalUncaught(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public static onIOScheduler(Lrx/Scheduler;)Lrx/Scheduler;
    .registers 3
    .param p0, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 382
    sget-object v0, Lrx/plugins/RxJavaHooks;->onIOScheduler:Lrx/functions/Func1;

    .line 383
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Scheduler;Lrx/Scheduler;>;"
    if-eqz v0, :cond_b

    .line 384
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Scheduler;

    .line 386
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onNewThreadScheduler(Lrx/Scheduler;)Lrx/Scheduler;
    .registers 3
    .param p0, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 395
    sget-object v0, Lrx/plugins/RxJavaHooks;->onNewThreadScheduler:Lrx/functions/Func1;

    .line 396
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Scheduler;Lrx/Scheduler;>;"
    if-eqz v0, :cond_b

    .line 397
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Scheduler;

    .line 399
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 451
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableSubscribeError:Lrx/functions/Func1;

    .line 452
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_b

    .line 453
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 455
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onObservableLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator",
            "<TR;TT;>;)",
            "Lrx/Observable$Operator",
            "<TR;TT;>;"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "operator":Lrx/Observable$Operator;, "Lrx/Observable$Operator<TR;TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableLift:Lrx/functions/Func1;

    .line 468
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable$Operator;Lrx/Observable$Operator;>;"
    if-eqz v0, :cond_b

    .line 469
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable$Operator;

    .line 471
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onObservableReturn(Lrx/Subscription;)Lrx/Subscription;
    .registers 3
    .param p0, "subscription"    # Lrx/Subscription;

    .prologue
    .line 438
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableReturn:Lrx/functions/Func1;

    .line 439
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Subscription;Lrx/Subscription;>;"
    if-eqz v0, :cond_b

    .line 440
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscription;

    .line 442
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onObservableStart(Lrx/Observable;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "instance":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableStart:Lrx/functions/Func2;

    .line 426
    .local v0, "f":Lrx/functions/Func2;, "Lrx/functions/Func2<Lrx/Observable;Lrx/Observable$OnSubscribe;Lrx/Observable$OnSubscribe;>;"
    if-eqz v0, :cond_b

    .line 427
    invoke-interface {v0, p0, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable$OnSubscribe;

    .line 429
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p1

    goto :goto_a
.end method

.method public static onScheduledAction(Lrx/functions/Action0;)Lrx/functions/Action0;
    .registers 3
    .param p0, "action"    # Lrx/functions/Action0;

    .prologue
    .line 409
    sget-object v0, Lrx/plugins/RxJavaHooks;->onScheduleAction:Lrx/functions/Func1;

    .line 410
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/functions/Action0;>;"
    if-eqz v0, :cond_b

    .line 411
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/functions/Action0;

    .line 413
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onSingleError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 509
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleSubscribeError:Lrx/functions/Func1;

    .line 510
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_b

    .line 511
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 513
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onSingleLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator",
            "<TR;TT;>;)",
            "Lrx/Observable$Operator",
            "<TR;TT;>;"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "operator":Lrx/Observable$Operator;, "Lrx/Observable$Operator<TR;TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleLift:Lrx/functions/Func1;

    .line 526
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable$Operator;Lrx/Observable$Operator;>;"
    if-eqz v0, :cond_b

    .line 527
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable$Operator;

    .line 529
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onSingleReturn(Lrx/Subscription;)Lrx/Subscription;
    .registers 3
    .param p0, "subscription"    # Lrx/Subscription;

    .prologue
    .line 496
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleReturn:Lrx/functions/Func1;

    .line 497
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Subscription;Lrx/Subscription;>;"
    if-eqz v0, :cond_b

    .line 498
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscription;

    .line 500
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onSingleStart(Lrx/Single;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<TT;>;",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "instance":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleStart:Lrx/functions/Func2;

    .line 484
    .local v0, "f":Lrx/functions/Func2;, "Lrx/functions/Func2<Lrx/Single;Lrx/Observable$OnSubscribe;Lrx/Observable$OnSubscribe;>;"
    if-eqz v0, :cond_b

    .line 485
    invoke-interface {v0, p0, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable$OnSubscribe;

    .line 487
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p1

    goto :goto_a
.end method

.method public static reset()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 226
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_6

    .line 235
    :goto_5
    return-void

    .line 229
    :cond_6
    invoke-static {}, Lrx/plugins/RxJavaHooks;->init()V

    .line 231
    sput-object v1, Lrx/plugins/RxJavaHooks;->onComputationScheduler:Lrx/functions/Func1;

    .line 232
    sput-object v1, Lrx/plugins/RxJavaHooks;->onIOScheduler:Lrx/functions/Func1;

    .line 233
    sput-object v1, Lrx/plugins/RxJavaHooks;->onNewThreadScheduler:Lrx/functions/Func1;

    .line 234
    sput-object v1, Lrx/plugins/RxJavaHooks;->onGenericScheduledExecutorService:Lrx/functions/Func0;

    goto :goto_5
.end method

.method public static resetAssemblyTracking()V
    .registers 1

    .prologue
    .line 1149
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 1154
    :goto_4
    return-void

    .line 1153
    :cond_5
    invoke-static {}, Lrx/plugins/RxJavaHooks;->initCreate()V

    goto :goto_4
.end method

.method public static setOnCompletableCreate(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Completable$OnSubscribe;",
            "Lrx/Completable$OnSubscribe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, "onCompletableCreate":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Completable$OnSubscribe;Lrx/Completable$OnSubscribe;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 608
    :goto_4
    return-void

    .line 607
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnCompletableLift(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Completable$Operator;",
            "Lrx/Completable$Operator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 979
    .local p0, "onCompletableLift":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Completable$Operator;Lrx/Completable$Operator;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 983
    :goto_4
    return-void

    .line 982
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onCompletableLift:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnCompletableStart(Lrx/functions/Func2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Lrx/Completable;",
            "Lrx/Completable$OnSubscribe;",
            "Lrx/Completable$OnSubscribe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 733
    .local p0, "onCompletableStart":Lrx/functions/Func2;, "Lrx/functions/Func2<Lrx/Completable;Lrx/Completable$OnSubscribe;Lrx/Completable$OnSubscribe;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 737
    :goto_4
    return-void

    .line 736
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onCompletableStart:Lrx/functions/Func2;

    goto :goto_4
.end method

.method public static setOnCompletableSubscribeError(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 859
    .local p0, "onCompletableSubscribeError":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 863
    :goto_4
    return-void

    .line 862
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onCompletableSubscribeError:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnComputationScheduler(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 659
    .local p0, "onComputationScheduler":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Scheduler;Lrx/Scheduler;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 663
    :goto_4
    return-void

    .line 662
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onComputationScheduler:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnError(Lrx/functions/Action1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 590
    :goto_4
    return-void

    .line 589
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onError:Lrx/functions/Action1;

    goto :goto_4
.end method

.method public static setOnGenericScheduledExecutorService(Lrx/functions/Func0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1215
    .local p0, "factory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/concurrent/ScheduledExecutorService;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 1219
    :goto_4
    return-void

    .line 1218
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onGenericScheduledExecutorService:Lrx/functions/Func0;

    goto :goto_4
.end method

.method public static setOnIOScheduler(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p0, "onIOScheduler":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Scheduler;Lrx/Scheduler;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 681
    :goto_4
    return-void

    .line 680
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onIOScheduler:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnNewThreadScheduler(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 695
    .local p0, "onNewThreadScheduler":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Scheduler;Lrx/Scheduler;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 699
    :goto_4
    return-void

    .line 698
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onNewThreadScheduler:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnObservableCreate(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "onObservableCreate":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable$OnSubscribe;Lrx/Observable$OnSubscribe;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 627
    :goto_4
    return-void

    .line 626
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnObservableLift(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 918
    .local p0, "onObservableLift":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable$Operator;Lrx/Observable$Operator;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 922
    :goto_4
    return-void

    .line 921
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onObservableLift:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnObservableReturn(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 793
    .local p0, "onObservableReturn":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Subscription;Lrx/Subscription;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 797
    :goto_4
    return-void

    .line 796
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onObservableReturn:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnObservableStart(Lrx/functions/Func2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Lrx/Observable;",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 754
    .local p0, "onObservableStart":Lrx/functions/Func2;, "Lrx/functions/Func2<Lrx/Observable;Lrx/Observable$OnSubscribe;Lrx/Observable$OnSubscribe;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 758
    :goto_4
    return-void

    .line 757
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onObservableStart:Lrx/functions/Func2;

    goto :goto_4
.end method

.method public static setOnObservableSubscribeError(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 888
    .local p0, "onObservableSubscribeError":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 892
    :goto_4
    return-void

    .line 891
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onObservableSubscribeError:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnScheduleAction(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, "onScheduleAction":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/functions/Action0;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 717
    :goto_4
    return-void

    .line 716
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onScheduleAction:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnSingleCreate(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Single$OnSubscribe;",
            "Lrx/Single$OnSubscribe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    .local p0, "onSingleCreate":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Single$OnSubscribe;Lrx/Single$OnSubscribe;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 645
    :goto_4
    return-void

    .line 644
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnSingleLift(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 949
    .local p0, "onSingleLift":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable$Operator;Lrx/Observable$Operator;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 953
    :goto_4
    return-void

    .line 952
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onSingleLift:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnSingleReturn(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 812
    .local p0, "onSingleReturn":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Subscription;Lrx/Subscription;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 816
    :goto_4
    return-void

    .line 815
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onSingleReturn:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnSingleStart(Lrx/functions/Func2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Lrx/Single;",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 774
    .local p0, "onSingleStart":Lrx/functions/Func2;, "Lrx/functions/Func2<Lrx/Single;Lrx/Observable$OnSubscribe;Lrx/Observable$OnSubscribe;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 778
    :goto_4
    return-void

    .line 777
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onSingleStart:Lrx/functions/Func2;

    goto :goto_4
.end method

.method public static setOnSingleSubscribeError(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 830
    .local p0, "onSingleSubscribeError":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 834
    :goto_4
    return-void

    .line 833
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onSingleSubscribeError:Lrx/functions/Func1;

    goto :goto_4
.end method

.method static signalUncaught(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 315
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 316
    .local v0, "current":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 317
    .local v1, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 318
    return-void
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass1 (rx.plugins.RxJavaHooks$1)
.class final Lrx/plugins/RxJavaHooks$1;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$1;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 105
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 106
    return-void
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass10 (rx.plugins.RxJavaHooks$10)
.class final Lrx/plugins/RxJavaHooks$10;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->init()V
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 165
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$10;->call(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 168
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSingleExecutionHook()Lrx/plugins/RxJavaSingleExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaSingleExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass11 (rx.plugins.RxJavaHooks$11)
.class final Lrx/plugins/RxJavaHooks$11;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->init()V
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
        "Lrx/Observable$Operator;",
        "Lrx/Observable$Operator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 172
    check-cast p1, Lrx/Observable$Operator;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$11;->call(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable$Operator;)Lrx/Observable$Operator;
    .registers 3
    .param p1, "t"    # Lrx/Observable$Operator;

    .prologue
    .line 175
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSingleExecutionHook()Lrx/plugins/RxJavaSingleExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaSingleExecutionHook;->onLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    move-result-object v0

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass12 (rx.plugins.RxJavaHooks$12)
.class final Lrx/plugins/RxJavaHooks$12;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->init()V
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 179
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$12;->call(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 182
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getCompletableExecutionHook()Lrx/plugins/RxJavaCompletableExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaCompletableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass13 (rx.plugins.RxJavaHooks$13)
.class final Lrx/plugins/RxJavaHooks$13;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->init()V
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
        "Lrx/Completable$Operator;",
        "Lrx/Completable$Operator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p1, Lrx/Completable$Operator;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$13;->call(Lrx/Completable$Operator;)Lrx/Completable$Operator;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Completable$Operator;)Lrx/Completable$Operator;
    .registers 3
    .param p1, "t"    # Lrx/Completable$Operator;

    .prologue
    .line 189
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getCompletableExecutionHook()Lrx/plugins/RxJavaCompletableExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaCompletableExecutionHook;->onLift(Lrx/Completable$Operator;)Lrx/Completable$Operator;

    move-result-object v0

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass14 (rx.plugins.RxJavaHooks$14)
.class final Lrx/plugins/RxJavaHooks$14;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->initCreate()V
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
        "Lrx/Observable$OnSubscribe;",
        "Lrx/Observable$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 198
    check-cast p1, Lrx/Observable$OnSubscribe;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$14;->call(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .registers 3
    .param p1, "f"    # Lrx/Observable$OnSubscribe;

    .prologue
    .line 201
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getObservableExecutionHook()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaObservableExecutionHook;->onCreate(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass15 (rx.plugins.RxJavaHooks$15)
.class final Lrx/plugins/RxJavaHooks$15;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->initCreate()V
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
        "Lrx/Single$OnSubscribe;",
        "Lrx/Single$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 205
    check-cast p1, Lrx/Single$OnSubscribe;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$15;->call(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;
    .registers 3
    .param p1, "f"    # Lrx/Single$OnSubscribe;

    .prologue
    .line 208
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSingleExecutionHook()Lrx/plugins/RxJavaSingleExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaSingleExecutionHook;->onCreate(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass16 (rx.plugins.RxJavaHooks$16)
.class final Lrx/plugins/RxJavaHooks$16;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->initCreate()V
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
        "Lrx/Completable$OnSubscribe;",
        "Lrx/Completable$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 212
    check-cast p1, Lrx/Completable$OnSubscribe;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$16;->call(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;
    .registers 3
    .param p1, "f"    # Lrx/Completable$OnSubscribe;

    .prologue
    .line 215
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getCompletableExecutionHook()Lrx/plugins/RxJavaCompletableExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaCompletableExecutionHook;->onCreate(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass17 (rx.plugins.RxJavaHooks$17)
.class final Lrx/plugins/RxJavaHooks$17;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->enableAssemblyTracking()V
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
        "Lrx/Observable$OnSubscribe;",
        "Lrx/Observable$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1179
    check-cast p1, Lrx/Observable$OnSubscribe;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$17;->call(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .registers 3
    .param p1, "f"    # Lrx/Observable$OnSubscribe;

    .prologue
    .line 1182
    new-instance v0, Lrx/internal/operators/OnSubscribeOnAssembly;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeOnAssembly;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass18 (rx.plugins.RxJavaHooks$18)
.class final Lrx/plugins/RxJavaHooks$18;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->enableAssemblyTracking()V
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
        "Lrx/Single$OnSubscribe;",
        "Lrx/Single$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1186
    check-cast p1, Lrx/Single$OnSubscribe;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$18;->call(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;
    .registers 3
    .param p1, "f"    # Lrx/Single$OnSubscribe;

    .prologue
    .line 1189
    new-instance v0, Lrx/internal/operators/OnSubscribeOnAssemblySingle;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeOnAssemblySingle;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass19 (rx.plugins.RxJavaHooks$19)
.class final Lrx/plugins/RxJavaHooks$19;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->enableAssemblyTracking()V
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
        "Lrx/Completable$OnSubscribe;",
        "Lrx/Completable$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1193
    check-cast p1, Lrx/Completable$OnSubscribe;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$19;->call(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;
    .registers 3
    .param p1, "f"    # Lrx/Completable$OnSubscribe;

    .prologue
    .line 1196
    new-instance v0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;-><init>(Lrx/Completable$OnSubscribe;)V

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass2 (rx.plugins.RxJavaHooks$2)
.class final Lrx/plugins/RxJavaHooks$2;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->init()V
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
        "Lrx/Observable;",
        "Lrx/Observable$OnSubscribe;",
        "Lrx/Observable$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/Observable$OnSubscribe;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/plugins/RxJavaHooks$2;->call(Lrx/Observable;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .registers 4
    .param p1, "t1"    # Lrx/Observable;
    .param p2, "t2"    # Lrx/Observable$OnSubscribe;

    .prologue
    .line 112
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getObservableExecutionHook()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeStart(Lrx/Observable;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass3 (rx.plugins.RxJavaHooks$3)
.class final Lrx/plugins/RxJavaHooks$3;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->init()V
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
        "Lrx/Subscription;",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 116
    check-cast p1, Lrx/Subscription;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$3;->call(Lrx/Subscription;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscription;)Lrx/Subscription;
    .registers 3
    .param p1, "f"    # Lrx/Subscription;

    .prologue
    .line 119
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getObservableExecutionHook()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeReturn(Lrx/Subscription;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass4 (rx.plugins.RxJavaHooks$4)
.class final Lrx/plugins/RxJavaHooks$4;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->init()V
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
        "Lrx/Single;",
        "Lrx/Observable$OnSubscribe;",
        "Lrx/Observable$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 123
    check-cast p1, Lrx/Single;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/Observable$OnSubscribe;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/plugins/RxJavaHooks$4;->call(Lrx/Single;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Single;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .registers 4
    .param p1, "t1"    # Lrx/Single;
    .param p2, "t2"    # Lrx/Observable$OnSubscribe;

    .prologue
    .line 126
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSingleExecutionHook()Lrx/plugins/RxJavaSingleExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/plugins/RxJavaSingleExecutionHook;->onSubscribeStart(Lrx/Single;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass5 (rx.plugins.RxJavaHooks$5)
.class final Lrx/plugins/RxJavaHooks$5;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->init()V
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
        "Lrx/Subscription;",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 130
    check-cast p1, Lrx/Subscription;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$5;->call(Lrx/Subscription;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscription;)Lrx/Subscription;
    .registers 3
    .param p1, "f"    # Lrx/Subscription;

    .prologue
    .line 133
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSingleExecutionHook()Lrx/plugins/RxJavaSingleExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaSingleExecutionHook;->onSubscribeReturn(Lrx/Subscription;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass6 (rx.plugins.RxJavaHooks$6)
.class final Lrx/plugins/RxJavaHooks$6;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->init()V
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
        "Lrx/Completable;",
        "Lrx/Completable$OnSubscribe;",
        "Lrx/Completable$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 137
    check-cast p1, Lrx/Completable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/Completable$OnSubscribe;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/plugins/RxJavaHooks$6;->call(Lrx/Completable;Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Completable;Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;
    .registers 4
    .param p1, "t1"    # Lrx/Completable;
    .param p2, "t2"    # Lrx/Completable$OnSubscribe;

    .prologue
    .line 140
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getCompletableExecutionHook()Lrx/plugins/RxJavaCompletableExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/plugins/RxJavaCompletableExecutionHook;->onSubscribeStart(Lrx/Completable;Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass7 (rx.plugins.RxJavaHooks$7)
.class final Lrx/plugins/RxJavaHooks$7;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->init()V
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
        "Lrx/functions/Action0;",
        "Lrx/functions/Action0;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 144
    check-cast p1, Lrx/functions/Action0;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$7;->call(Lrx/functions/Action0;)Lrx/functions/Action0;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/functions/Action0;)Lrx/functions/Action0;
    .registers 3
    .param p1, "a"    # Lrx/functions/Action0;

    .prologue
    .line 147
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaSchedulersHook;->onSchedule(Lrx/functions/Action0;)Lrx/functions/Action0;

    move-result-object v0

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass8 (rx.plugins.RxJavaHooks$8)
.class final Lrx/plugins/RxJavaHooks$8;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->init()V
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 151
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$8;->call(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 154
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getObservableExecutionHook()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.plugins.RxJavaHooks.AnonymousClass9 (rx.plugins.RxJavaHooks$9)
.class final Lrx/plugins/RxJavaHooks$9;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->init()V
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
        "Lrx/Observable$Operator;",
        "Lrx/Observable$Operator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 158
    check-cast p1, Lrx/Observable$Operator;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$9;->call(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable$Operator;)Lrx/Observable$Operator;
    .registers 3
    .param p1, "t"    # Lrx/Observable$Operator;

    .prologue
    .line 161
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getObservableExecutionHook()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaObservableExecutionHook;->onLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    move-result-object v0

    return-object v0
.end method
