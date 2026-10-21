###### Class rx.subscriptions.RefCountSubscription (rx.subscriptions.RefCountSubscription)
.class public final Lrx/subscriptions/RefCountSubscription;
.super Ljava/lang/Object;
.source "RefCountSubscription.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subscriptions/RefCountSubscription$InnerSubscription;,
        Lrx/subscriptions/RefCountSubscription$State;
    }
.end annotation


# static fields
.field static final EMPTY_STATE:Lrx/subscriptions/RefCountSubscription$State;


# instance fields
.field private final actual:Lrx/Subscription;

.field final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/subscriptions/RefCountSubscription$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v0, Lrx/subscriptions/RefCountSubscription$State;

    invoke-direct {v0, v1, v1}, Lrx/subscriptions/RefCountSubscription$State;-><init>(ZI)V

    sput-object v0, Lrx/subscriptions/RefCountSubscription;->EMPTY_STATE:Lrx/subscriptions/RefCountSubscription$State;

    return-void
.end method

.method public constructor <init>(Lrx/Subscription;)V
    .registers 4
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/subscriptions/RefCountSubscription;->EMPTY_STATE:Lrx/subscriptions/RefCountSubscription$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/subscriptions/RefCountSubscription;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    if-nez p1, :cond_16

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "s"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_16
    iput-object p1, p0, Lrx/subscriptions/RefCountSubscription;->actual:Lrx/Subscription;

    .line 68
    return-void
.end method

.method private unsubscribeActualIfApplicable(Lrx/subscriptions/RefCountSubscription$State;)V
    .registers 3
    .param p1, "state"    # Lrx/subscriptions/RefCountSubscription$State;

    .prologue
    .line 112
    iget-boolean v0, p1, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    if-eqz v0, :cond_d

    iget v0, p1, Lrx/subscriptions/RefCountSubscription$State;->children:I

    if-nez v0, :cond_d

    .line 113
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription;->actual:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 115
    :cond_d
    return-void
.end method


# virtual methods
.method public get()Lrx/Subscription;
    .registers 5

    .prologue
    .line 78
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/RefCountSubscription$State;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subscriptions/RefCountSubscription$State;

    .line 81
    .local v2, "oldState":Lrx/subscriptions/RefCountSubscription$State;
    iget-boolean v3, v2, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    if-eqz v3, :cond_11

    .line 82
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v3

    .line 88
    :goto_10
    return-object v3

    .line 84
    :cond_11
    invoke-virtual {v2}, Lrx/subscriptions/RefCountSubscription$State;->addChild()Lrx/subscriptions/RefCountSubscription$State;

    move-result-object v1

    .line 86
    .local v1, "newState":Lrx/subscriptions/RefCountSubscription$State;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    new-instance v3, Lrx/subscriptions/RefCountSubscription$InnerSubscription;

    invoke-direct {v3, p0}, Lrx/subscriptions/RefCountSubscription$InnerSubscription;-><init>(Lrx/subscriptions/RefCountSubscription;)V

    goto :goto_10
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subscriptions/RefCountSubscription$State;

    iget-boolean v0, v0, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    return v0
.end method

.method public unsubscribe()V
    .registers 5

    .prologue
    .line 100
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 102
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/RefCountSubscription$State;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subscriptions/RefCountSubscription$State;

    .line 103
    .local v2, "oldState":Lrx/subscriptions/RefCountSubscription$State;
    iget-boolean v3, v2, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    if-eqz v3, :cond_d

    .line 109
    :goto_c
    return-void

    .line 106
    :cond_d
    invoke-virtual {v2}, Lrx/subscriptions/RefCountSubscription$State;->unsubscribe()Lrx/subscriptions/RefCountSubscription$State;

    move-result-object v1

    .line 107
    .local v1, "newState":Lrx/subscriptions/RefCountSubscription$State;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    invoke-direct {p0, v1}, Lrx/subscriptions/RefCountSubscription;->unsubscribeActualIfApplicable(Lrx/subscriptions/RefCountSubscription$State;)V

    goto :goto_c
.end method

.method unsubscribeAChild()V
    .registers 5

    .prologue
    .line 119
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 121
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/RefCountSubscription$State;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subscriptions/RefCountSubscription$State;

    .line 122
    .local v2, "oldState":Lrx/subscriptions/RefCountSubscription$State;
    invoke-virtual {v2}, Lrx/subscriptions/RefCountSubscription$State;->removeChild()Lrx/subscriptions/RefCountSubscription$State;

    move-result-object v1

    .line 123
    .local v1, "newState":Lrx/subscriptions/RefCountSubscription$State;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    invoke-direct {p0, v1}, Lrx/subscriptions/RefCountSubscription;->unsubscribeActualIfApplicable(Lrx/subscriptions/RefCountSubscription$State;)V

    .line 125
    return-void
.end method

###### Class rx.subscriptions.RefCountSubscription.InnerSubscription (rx.subscriptions.RefCountSubscription$InnerSubscription)
.class final Lrx/subscriptions/RefCountSubscription$InnerSubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "RefCountSubscription.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/RefCountSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerSubscription"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x61397aaf32b333bbL


# instance fields
.field final parent:Lrx/subscriptions/RefCountSubscription;


# direct methods
.method public constructor <init>(Lrx/subscriptions/RefCountSubscription;)V
    .registers 2
    .param p1, "parent"    # Lrx/subscriptions/RefCountSubscription;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 134
    iput-object p1, p0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->parent:Lrx/subscriptions/RefCountSubscription;

    .line 135
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->get()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public unsubscribe()V
    .registers 3

    .prologue
    .line 138
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 139
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->parent:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->unsubscribeAChild()V

    .line 141
    :cond_d
    return-void
.end method

###### Class rx.subscriptions.RefCountSubscription.State (rx.subscriptions.RefCountSubscription$State)
.class final Lrx/subscriptions/RefCountSubscription$State;
.super Ljava/lang/Object;
.source "RefCountSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/RefCountSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation


# instance fields
.field final children:I

.field final isUnsubscribed:Z


# direct methods
.method constructor <init>(ZI)V
    .registers 3
    .param p1, "u"    # Z
    .param p2, "c"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    .line 38
    iput p2, p0, Lrx/subscriptions/RefCountSubscription$State;->children:I

    .line 39
    return-void
.end method


# virtual methods
.method addChild()Lrx/subscriptions/RefCountSubscription$State;
    .registers 4

    .prologue
    .line 42
    new-instance v0, Lrx/subscriptions/RefCountSubscription$State;

    iget-boolean v1, p0, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    iget v2, p0, Lrx/subscriptions/RefCountSubscription$State;->children:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/RefCountSubscription$State;-><init>(ZI)V

    return-object v0
.end method

.method removeChild()Lrx/subscriptions/RefCountSubscription$State;
    .registers 4

    .prologue
    .line 46
    new-instance v0, Lrx/subscriptions/RefCountSubscription$State;

    iget-boolean v1, p0, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    iget v2, p0, Lrx/subscriptions/RefCountSubscription$State;->children:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/RefCountSubscription$State;-><init>(ZI)V

    return-object v0
.end method

.method unsubscribe()Lrx/subscriptions/RefCountSubscription$State;
    .registers 4

    .prologue
    .line 50
    new-instance v0, Lrx/subscriptions/RefCountSubscription$State;

    const/4 v1, 0x1

    iget v2, p0, Lrx/subscriptions/RefCountSubscription$State;->children:I

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/RefCountSubscription$State;-><init>(ZI)V

    return-object v0
.end method
