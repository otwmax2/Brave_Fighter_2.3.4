###### Class rx.subscriptions.Subscriptions (rx.subscriptions.Subscriptions)
.class public final Lrx/subscriptions/Subscriptions;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subscriptions/Subscriptions$Unsubscribed;,
        Lrx/subscriptions/Subscriptions$FutureSubscription;
    }
.end annotation


# static fields
.field private static final UNSUBSCRIBED:Lrx/subscriptions/Subscriptions$Unsubscribed;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lrx/subscriptions/Subscriptions$Unsubscribed;

    invoke-direct {v0}, Lrx/subscriptions/Subscriptions$Unsubscribed;-><init>()V

    sput-object v0, Lrx/subscriptions/Subscriptions;->UNSUBSCRIBED:Lrx/subscriptions/Subscriptions$Unsubscribed;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 2
    .param p0, "unsubscribe"    # Lrx/functions/Action0;

    .prologue
    .line 78
    invoke-static {p0}, Lrx/subscriptions/BooleanSubscription;->create(Lrx/functions/Action0;)Lrx/subscriptions/BooleanSubscription;

    move-result-object v0

    return-object v0
.end method

.method public static empty()Lrx/Subscription;
    .registers 1

    .prologue
    .line 51
    invoke-static {}, Lrx/subscriptions/BooleanSubscription;->create()Lrx/subscriptions/BooleanSubscription;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;)Lrx/Subscription;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v0, Lrx/subscriptions/Subscriptions$FutureSubscription;

    invoke-direct {v0, p0}, Lrx/subscriptions/Subscriptions$FutureSubscription;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static varargs from([Lrx/Subscription;)Lrx/subscriptions/CompositeSubscription;
    .registers 2
    .param p0, "subscriptions"    # [Lrx/Subscription;

    .prologue
    .line 120
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0, p0}, Lrx/subscriptions/CompositeSubscription;-><init>([Lrx/Subscription;)V

    return-object v0
.end method

.method public static unsubscribed()Lrx/Subscription;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lrx/subscriptions/Subscriptions;->UNSUBSCRIBED:Lrx/subscriptions/Subscriptions$Unsubscribed;

    return-object v0
.end method

###### Class rx.subscriptions.Subscriptions.FutureSubscription (rx.subscriptions.Subscriptions$FutureSubscription)
.class final Lrx/subscriptions/Subscriptions$FutureSubscription;
.super Ljava/lang/Object;
.source "Subscriptions.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/Subscriptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FutureSubscription"
.end annotation


# instance fields
.field final f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lrx/subscriptions/Subscriptions$FutureSubscription;->f:Ljava/util/concurrent/Future;

    .line 98
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lrx/subscriptions/Subscriptions$FutureSubscription;->f:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lrx/subscriptions/Subscriptions$FutureSubscription;->f:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 102
    return-void
.end method

###### Class rx.subscriptions.Subscriptions.Unsubscribed (rx.subscriptions.Subscriptions$Unsubscribed)
.class final Lrx/subscriptions/Subscriptions$Unsubscribed;
.super Ljava/lang/Object;
.source "Subscriptions.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/Subscriptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Unsubscribed"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public unsubscribe()V
    .registers 1

    .prologue
    .line 128
    return-void
.end method
