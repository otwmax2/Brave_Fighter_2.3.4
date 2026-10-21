###### Class rx.subjects.SubjectSubscriptionManager (rx.subjects.SubjectSubscriptionManager)
.class final Lrx/subjects/SubjectSubscriptionManager;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;,
        Lrx/subjects/SubjectSubscriptionManager$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/subjects/SubjectSubscriptionManager$State",
        "<TT;>;>;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x53c184d753c8b010L


# instance fields
.field active:Z

.field volatile latest:Ljava/lang/Object;

.field public final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field onAdded:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field onStart:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field onTerminated:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    sget-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->EMPTY:Lrx/subjects/SubjectSubscriptionManager$State;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    .line 44
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Lrx/functions/Action1;

    .line 46
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    .line 48
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    .line 50
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    .line 54
    return-void
.end method


# virtual methods
.method add(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/SubjectSubscriptionManager$State;

    .line 96
    .local v1, "oldState":Lrx/subjects/SubjectSubscriptionManager$State;
    iget-boolean v2, v1, Lrx/subjects/SubjectSubscriptionManager$State;->terminated:Z

    if-eqz v2, :cond_11

    .line 97
    iget-object v2, p0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    invoke-interface {v2, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 98
    const/4 v2, 0x0

    .line 103
    :goto_10
    return v2

    .line 100
    :cond_11
    invoke-virtual {v1, p1}, Lrx/subjects/SubjectSubscriptionManager$State;->add(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/SubjectSubscriptionManager$State;

    move-result-object v0

    .line 101
    .local v0, "newState":Lrx/subjects/SubjectSubscriptionManager$State;
    invoke-virtual {p0, v1, v0}, Lrx/subjects/SubjectSubscriptionManager;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    invoke-interface {v2, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 103
    const/4 v2, 0x1

    goto :goto_10
.end method

.method addUnsubscriber(Lrx/Subscriber;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$1;

    invoke-direct {v0, p0, p2}, Lrx/subjects/SubjectSubscriptionManager$1;-><init>(Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 75
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-direct {v0, p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;-><init>(Lrx/Subscriber;)V

    .line 59
    .local v0, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    invoke-virtual {p0, p1, v0}, Lrx/subjects/SubjectSubscriptionManager;->addUnsubscriber(Lrx/Subscriber;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    .line 60
    iget-object v1, p0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Lrx/functions/Action1;

    invoke-interface {v1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_22

    .line 62
    invoke-virtual {p0, v0}, Lrx/subjects/SubjectSubscriptionManager;->add(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 63
    invoke-virtual {p0, v0}, Lrx/subjects/SubjectSubscriptionManager;->remove(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    .line 66
    :cond_22
    return-void
.end method

.method getLatest()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 82
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->latest:Ljava/lang/Object;

    return-object v0
.end method

.method next(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .registers 3
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->setLatest(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/SubjectSubscriptionManager$State;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    return-object v0
.end method

.method observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/SubjectSubscriptionManager$State;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    return-object v0
.end method

.method remove(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/SubjectSubscriptionManager$State;

    .line 114
    .local v1, "oldState":Lrx/subjects/SubjectSubscriptionManager$State;
    iget-boolean v2, v1, Lrx/subjects/SubjectSubscriptionManager$State;->terminated:Z

    if-eqz v2, :cond_b

    .line 119
    :cond_a
    :goto_a
    return-void

    .line 117
    :cond_b
    invoke-virtual {v1, p1}, Lrx/subjects/SubjectSubscriptionManager$State;->remove(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/SubjectSubscriptionManager$State;

    move-result-object v0

    .line 118
    .local v0, "newState":Lrx/subjects/SubjectSubscriptionManager$State;
    if-eq v0, v1, :cond_a

    invoke-virtual {p0, v1, v0}, Lrx/subjects/SubjectSubscriptionManager;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_a
.end method

.method setLatest(Ljava/lang/Object;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 78
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager;->latest:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .registers 4
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->setLatest(Ljava/lang/Object;)V

    .line 140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    .line 142
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/SubjectSubscriptionManager$State;

    .line 143
    .local v0, "oldState":Lrx/subjects/SubjectSubscriptionManager$State;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    iget-boolean v1, v0, Lrx/subjects/SubjectSubscriptionManager$State;->terminated:Z

    if-eqz v1, :cond_13

    .line 144
    sget-object v1, Lrx/subjects/SubjectSubscriptionManager$State;->NO_OBSERVERS:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 146
    :goto_12
    return-object v1

    :cond_13
    sget-object v1, Lrx/subjects/SubjectSubscriptionManager$State;->TERMINATED:Lrx/subjects/SubjectSubscriptionManager$State;

    invoke-virtual {p0, v1}, Lrx/subjects/SubjectSubscriptionManager;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/SubjectSubscriptionManager$State;

    iget-object v1, v1, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    goto :goto_12
.end method

###### Class rx.subjects.SubjectSubscriptionManager.AnonymousClass1 (rx.subjects.SubjectSubscriptionManager$1)
.class Lrx/subjects/SubjectSubscriptionManager$1;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/SubjectSubscriptionManager;->addUnsubscriber(Lrx/Subscriber;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/subjects/SubjectSubscriptionManager;

.field final synthetic val$bo:Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;


# direct methods
.method constructor <init>(Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .registers 3

    .prologue
    .line 69
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$1;, "Lrx/subjects/SubjectSubscriptionManager.1;"
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$1;->this$0:Lrx/subjects/SubjectSubscriptionManager;

    iput-object p2, p0, Lrx/subjects/SubjectSubscriptionManager$1;->val$bo:Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 72
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$1;, "Lrx/subjects/SubjectSubscriptionManager.1;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$1;->this$0:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v1, p0, Lrx/subjects/SubjectSubscriptionManager$1;->val$bo:Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-virtual {v0, v1}, Lrx/subjects/SubjectSubscriptionManager;->remove(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    .line 73
    return-void
.end method

###### Class rx.subjects.SubjectSubscriptionManager.State (rx.subjects.SubjectSubscriptionManager$State)
.class public final Lrx/subjects/SubjectSubscriptionManager$State;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/SubjectSubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final EMPTY:Lrx/subjects/SubjectSubscriptionManager$State;

.field static final NO_OBSERVERS:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

.field static final TERMINATED:Lrx/subjects/SubjectSubscriptionManager$State;


# instance fields
.field final observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

.field final terminated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 153
    new-array v0, v3, [Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->NO_OBSERVERS:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 154
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$State;

    const/4 v1, 0x1

    sget-object v2, Lrx/subjects/SubjectSubscriptionManager$State;->NO_OBSERVERS:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-direct {v0, v1, v2}, Lrx/subjects/SubjectSubscriptionManager$State;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->TERMINATED:Lrx/subjects/SubjectSubscriptionManager$State;

    .line 155
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$State;

    sget-object v1, Lrx/subjects/SubjectSubscriptionManager$State;->NO_OBSERVERS:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-direct {v0, v3, v1}, Lrx/subjects/SubjectSubscriptionManager$State;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->EMPTY:Lrx/subjects/SubjectSubscriptionManager$State;

    return-void
.end method

.method public constructor <init>(Z[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .registers 3
    .param p1, "terminated"    # Z
    .param p2, "observers"    # [Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .prologue
    .line 157
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$State;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-boolean p1, p0, Lrx/subjects/SubjectSubscriptionManager$State;->terminated:Z

    .line 159
    iput-object p2, p0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 160
    return-void
.end method


# virtual methods
.method public add(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/SubjectSubscriptionManager$State;
    .registers 7
    .param p1, "o"    # Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .prologue
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$State;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    const/4 v4, 0x0

    .line 162
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 163
    .local v0, "a":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    array-length v2, v0

    .line 164
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 165
    .local v1, "b":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    iget-object v3, p0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    aput-object p1, v1, v2

    .line 167
    new-instance v3, Lrx/subjects/SubjectSubscriptionManager$State;

    iget-boolean v4, p0, Lrx/subjects/SubjectSubscriptionManager$State;->terminated:Z

    invoke-direct {v3, v4, v1}, Lrx/subjects/SubjectSubscriptionManager$State;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    return-object v3
.end method

.method public remove(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/SubjectSubscriptionManager$State;
    .registers 12
    .param p1, "o"    # Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .prologue
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$State;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    const/4 v9, 0x0

    .line 170
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 171
    .local v0, "a":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    array-length v7, v0

    .line 172
    .local v7, "n":I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    aget-object v8, v0, v9

    if-ne v8, p1, :cond_e

    .line 173
    sget-object p0, Lrx/subjects/SubjectSubscriptionManager$State;->EMPTY:Lrx/subjects/SubjectSubscriptionManager$State;

    .line 197
    .end local p0    # "this":Lrx/subjects/SubjectSubscriptionManager$State;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    :cond_d
    :goto_d
    return-object p0

    .line 175
    .restart local p0    # "this":Lrx/subjects/SubjectSubscriptionManager$State;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    :cond_e
    if-eqz v7, :cond_d

    .line 178
    add-int/lit8 v8, v7, -0x1

    new-array v2, v8, [Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 179
    .local v2, "b":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    const/4 v5, 0x0

    .line 180
    .local v5, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    :goto_17
    if-ge v4, v7, :cond_29

    .line 181
    aget-object v1, v0, v4

    .line 182
    .local v1, "ai":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    if-eq v1, p1, :cond_41

    .line 183
    add-int/lit8 v8, v7, -0x1

    if-eq v6, v8, :cond_d

    .line 186
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aput-object v1, v2, v6

    .line 180
    :goto_25
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "j":I
    .restart local v6    # "j":I
    goto :goto_17

    .line 189
    .end local v1    # "ai":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    :cond_29
    if-nez v6, :cond_2e

    .line 190
    sget-object p0, Lrx/subjects/SubjectSubscriptionManager$State;->EMPTY:Lrx/subjects/SubjectSubscriptionManager$State;

    goto :goto_d

    .line 192
    :cond_2e
    add-int/lit8 v8, v7, -0x1

    if-ge v6, v8, :cond_38

    .line 193
    new-array v3, v6, [Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 194
    .local v3, "c":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    invoke-static {v2, v9, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    move-object v2, v3

    .line 197
    .end local v3    # "c":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    :cond_38
    new-instance v8, Lrx/subjects/SubjectSubscriptionManager$State;

    iget-boolean v9, p0, Lrx/subjects/SubjectSubscriptionManager$State;->terminated:Z

    invoke-direct {v8, v9, v2}, Lrx/subjects/SubjectSubscriptionManager$State;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    move-object p0, v8

    goto :goto_d

    .restart local v1    # "ai":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    :cond_41
    move v5, v6

    .end local v6    # "j":I
    .restart local v5    # "j":I
    goto :goto_25
.end method

###### Class rx.subjects.SubjectSubscriptionManager.SubjectObserver (rx.subjects.SubjectSubscriptionManager$SubjectObserver)
.class public final Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/SubjectSubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SubjectObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile caughtUp:Z

.field emitting:Z

.field fastPath:Z

.field first:Z

.field private volatile index:Ljava/lang/Object;

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 221
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    .line 222
    return-void
.end method


# virtual methods
.method accept(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .registers 4
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p2, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    if-eqz p1, :cond_7

    .line 320
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    invoke-virtual {p2, v0, p1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 322
    :cond_7
    return-void
.end method

.method emitFirst(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .registers 5
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p2, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    const/4 v0, 0x0

    .line 264
    monitor-enter p0

    .line 265
    :try_start_2
    iget-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v1, :cond_c

    .line 266
    :cond_a
    monitor-exit p0

    .line 274
    :cond_b
    :goto_b
    return-void

    .line 268
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 269
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 270
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_1c

    .line 271
    if-eqz p1, :cond_b

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitLoop(Ljava/util/List;Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    goto :goto_b

    .line 270
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method emitLoop(Ljava/util/List;Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .registers 10
    .param p2, "current"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p3, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    const/4 v2, 0x1

    .line 283
    .local v2, "once":Z
    const/4 v3, 0x0

    .line 286
    .local v3, "skipFinal":Z
    :goto_2
    if-eqz p1, :cond_1f

    .line 287
    :try_start_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 288
    .local v1, "n":Ljava/lang/Object;
    invoke-virtual {p0, v1, p3}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->accept(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_16

    goto :goto_8

    .line 306
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "n":Ljava/lang/Object;
    :catchall_16
    move-exception v4

    if-nez v3, :cond_1e

    .line 307
    monitor-enter p0

    .line 308
    const/4 v5, 0x0

    :try_start_1b
    iput-boolean v5, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 309
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_42

    :cond_1e
    throw v4

    .line 291
    :cond_1f
    if-eqz v2, :cond_25

    .line 292
    const/4 v2, 0x0

    .line 293
    :try_start_22
    invoke-virtual {p0, p2, p3}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->accept(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    .line 295
    :cond_25
    monitor-enter p0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_16

    .line 296
    :try_start_26
    iget-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    .line 297
    const/4 v4, 0x0

    iput-object v4, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    .line 298
    if-nez p1, :cond_3a

    .line 299
    const/4 v4, 0x0

    iput-boolean v4, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 300
    const/4 v3, 0x1

    .line 301
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_3c

    .line 306
    if-nez v3, :cond_39

    .line 307
    monitor-enter p0

    .line 308
    const/4 v4, 0x0

    :try_start_36
    iput-boolean v4, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 309
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3f

    .line 312
    :cond_39
    return-void

    .line 303
    :cond_3a
    :try_start_3a
    monitor-exit p0

    goto :goto_2

    :catchall_3c
    move-exception v4

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v4
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_16

    .line 309
    :catchall_3f
    move-exception v4

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v4

    :catchall_42
    move-exception v4

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v4
.end method

.method emitNext(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .registers 4
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p2, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->fastPath:Z

    if-nez v0, :cond_22

    .line 243
    monitor-enter p0

    .line 244
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 245
    iget-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v0, :cond_1e

    .line 246
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    if-nez v0, :cond_17

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    .line 249
    :cond_17
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    monitor-exit p0

    .line 256
    :goto_1d
    return-void

    .line 252
    :cond_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_28

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->fastPath:Z

    .line 255
    :cond_22
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    invoke-virtual {p2, v0, p1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    goto :goto_1d

    .line 252
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method getActual()Lrx/Observer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observer",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    return-object v0
.end method

.method public index()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">()TI;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index:Ljava/lang/Object;

    return-object v0
.end method

.method public index(Ljava/lang/Object;)V
    .registers 2
    .param p1, "newIndex"    # Ljava/lang/Object;

    .prologue
    .line 341
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index:Ljava/lang/Object;

    .line 342
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 233
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 234
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 229
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 230
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 226
    return-void
.end method
