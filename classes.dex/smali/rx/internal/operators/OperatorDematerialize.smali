###### Class rx.internal.operators.OperatorDematerialize (rx.internal.operators.OperatorDematerialize)
.class public final Lrx/internal/operators/OperatorDematerialize;
.super Ljava/lang/Object;
.source "OperatorDematerialize.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorDematerialize$2;,
        Lrx/internal/operators/OperatorDematerialize$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;",
        "Lrx/Notification",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize;, "Lrx/internal/operators/OperatorDematerialize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorDematerialize;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lrx/internal/operators/OperatorDematerialize$Holder;->INSTANCE:Lrx/internal/operators/OperatorDematerialize;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize;, "Lrx/internal/operators/OperatorDematerialize<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDematerialize;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "<-",
            "Lrx/Notification",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize;, "Lrx/internal/operators/OperatorDematerialize<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDematerialize$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorDematerialize$1;-><init>(Lrx/internal/operators/OperatorDematerialize;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorDematerialize.AnonymousClass1 (rx.internal.operators.OperatorDematerialize$1)
.class Lrx/internal/operators/OperatorDematerialize$1;
.super Lrx/Subscriber;
.source "OperatorDematerialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDematerialize;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Lrx/Notification",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field terminated:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorDematerialize;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDematerialize;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize$1;, "Lrx/internal/operators/OperatorDematerialize.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDematerialize$1;->this$0:Lrx/internal/operators/OperatorDematerialize;

    iput-object p3, p0, Lrx/internal/operators/OperatorDematerialize$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize$1;, "Lrx/internal/operators/OperatorDematerialize.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->terminated:Z

    if-nez v0, :cond_c

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->terminated:Z

    .line 85
    iget-object v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 87
    :cond_c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize$1;, "Lrx/internal/operators/OperatorDematerialize.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->terminated:Z

    if-nez v0, :cond_c

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->terminated:Z

    .line 77
    iget-object v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 79
    :cond_c
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize$1;, "Lrx/internal/operators/OperatorDematerialize.1;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDematerialize$1;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize$1;, "Lrx/internal/operators/OperatorDematerialize.1;"
    .local p1, "t":Lrx/Notification;, "Lrx/Notification<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorDematerialize$2;->$SwitchMap$rx$Notification$Kind:[I

    invoke-virtual {p1}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Notification$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported notification type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorDematerialize$1;->onError(Ljava/lang/Throwable;)V

    .line 71
    :cond_2a
    :goto_2a
    return-void

    .line 57
    :pswitch_2b
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->terminated:Z

    if-nez v0, :cond_2a

    .line 58
    iget-object v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_2a

    .line 62
    :pswitch_39
    invoke-virtual {p1}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorDematerialize$1;->onError(Ljava/lang/Throwable;)V

    goto :goto_2a

    .line 65
    :pswitch_41
    invoke-virtual {p0}, Lrx/internal/operators/OperatorDematerialize$1;->onCompleted()V

    goto :goto_2a

    .line 55
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_39
        :pswitch_41
    .end packed-switch
.end method

###### Class rx.internal.operators.OperatorDematerialize.AnonymousClass2 (rx.internal.operators.OperatorDematerialize$2)
.class synthetic Lrx/internal/operators/OperatorDematerialize$2;
.super Ljava/lang/Object;
.source "OperatorDematerialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorDematerialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$rx$Notification$Kind:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    invoke-static {}, Lrx/Notification$Kind;->values()[Lrx/Notification$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lrx/internal/operators/OperatorDematerialize$2;->$SwitchMap$rx$Notification$Kind:[I

    :try_start_9
    sget-object v0, Lrx/internal/operators/OperatorDematerialize$2;->$SwitchMap$rx$Notification$Kind:[I

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    invoke-virtual {v1}, Lrx/Notification$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lrx/internal/operators/OperatorDematerialize$2;->$SwitchMap$rx$Notification$Kind:[I

    sget-object v1, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    invoke-virtual {v1}, Lrx/Notification$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lrx/internal/operators/OperatorDematerialize$2;->$SwitchMap$rx$Notification$Kind:[I

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    invoke-virtual {v1}, Lrx/Notification$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method

###### Class rx.internal.operators.OperatorDematerialize.Holder (rx.internal.operators.OperatorDematerialize$Holder)
.class final Lrx/internal/operators/OperatorDematerialize$Holder;
.super Ljava/lang/Object;
.source "OperatorDematerialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorDematerialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorDematerialize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorDematerialize",
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
    .line 35
    new-instance v0, Lrx/internal/operators/OperatorDematerialize;

    invoke-direct {v0}, Lrx/internal/operators/OperatorDematerialize;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorDematerialize$Holder;->INSTANCE:Lrx/internal/operators/OperatorDematerialize;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
