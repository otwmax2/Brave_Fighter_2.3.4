###### Class rx.observables.SyncOnSubscribe (rx.observables.SyncOnSubscribe)
.class public abstract Lrx/observables/SyncOnSubscribe;
.super Ljava/lang/Object;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observables/SyncOnSubscribe$SubscriptionProducer;,
        Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    .local p0, "this":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    return-void
.end method

.method public static createSingleState(Lrx/functions/Func0;Lrx/functions/Action2;)Lrx/observables/SyncOnSubscribe;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Action2",
            "<-TS;-",
            "Lrx/Observer",
            "<-TT;>;>;)",
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 127
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Action2;, "Lrx/functions/Action2<-TS;-Lrx/Observer<-TT;>;>;"
    new-instance v0, Lrx/observables/SyncOnSubscribe$1;

    invoke-direct {v0, p1}, Lrx/observables/SyncOnSubscribe$1;-><init>(Lrx/functions/Action2;)V

    .line 134
    .local v0, "nextFunc":Lrx/functions/Func2;, "Lrx/functions/Func2<TS;-Lrx/Observer<-TT;>;TS;>;"
    new-instance v1, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;

    invoke-direct {v1, p0, v0}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;)V

    return-object v1
.end method

.method public static createSingleState(Lrx/functions/Func0;Lrx/functions/Action2;Lrx/functions/Action1;)Lrx/observables/SyncOnSubscribe;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Action2",
            "<-TS;-",
            "Lrx/Observer",
            "<-TT;>;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)",
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 159
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Action2;, "Lrx/functions/Action2<-TS;-Lrx/Observer<-TT;>;>;"
    .local p2, "onUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    new-instance v0, Lrx/observables/SyncOnSubscribe$2;

    invoke-direct {v0, p1}, Lrx/observables/SyncOnSubscribe$2;-><init>(Lrx/functions/Action2;)V

    .line 166
    .local v0, "nextFunc":Lrx/functions/Func2;, "Lrx/functions/Func2<TS;Lrx/Observer<-TT;>;TS;>;"
    new-instance v1, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;

    invoke-direct {v1, p0, v0, p2}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)V

    return-object v1
.end method

.method public static createStateful(Lrx/functions/Func0;Lrx/functions/Func2;)Lrx/observables/SyncOnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Func2",
            "<-TS;-",
            "Lrx/Observer",
            "<-TT;>;+TS;>;)",
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 209
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Func2;, "Lrx/functions/Func2<-TS;-Lrx/Observer<-TT;>;+TS;>;"
    new-instance v0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;

    invoke-direct {v0, p0, p1}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;)V

    return-object v0
.end method

.method public static createStateful(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)Lrx/observables/SyncOnSubscribe;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Func2",
            "<-TS;-",
            "Lrx/Observer",
            "<-TT;>;+TS;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)",
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 189
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Func2;, "Lrx/functions/Func2<-TS;-Lrx/Observer<-TT;>;+TS;>;"
    .local p2, "onUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    new-instance v0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;

    invoke-direct {v0, p0, p1, p2}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)V

    return-object v0
.end method

.method public static createStateless(Lrx/functions/Action1;)Lrx/observables/SyncOnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Observer",
            "<-TT;>;>;)",
            "Lrx/observables/SyncOnSubscribe",
            "<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 228
    .local p0, "next":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Observer<-TT;>;>;"
    new-instance v0, Lrx/observables/SyncOnSubscribe$3;

    invoke-direct {v0, p0}, Lrx/observables/SyncOnSubscribe$3;-><init>(Lrx/functions/Action1;)V

    .line 235
    .local v0, "nextFunc":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Void;Lrx/Observer<-TT;>;Ljava/lang/Void;>;"
    new-instance v1, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;

    invoke-direct {v1, v0}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func2;)V

    return-object v1
.end method

.method public static createStateless(Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/observables/SyncOnSubscribe;
    .registers 5
    .param p1, "onUnsubscribe"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Observer",
            "<-TT;>;>;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/observables/SyncOnSubscribe",
            "<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 257
    .local p0, "next":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Observer<-TT;>;>;"
    new-instance v0, Lrx/observables/SyncOnSubscribe$4;

    invoke-direct {v0, p0}, Lrx/observables/SyncOnSubscribe$4;-><init>(Lrx/functions/Action1;)V

    .line 264
    .local v0, "nextFunc":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Void;Lrx/Observer<-TT;>;Ljava/lang/Void;>;"
    new-instance v1, Lrx/observables/SyncOnSubscribe$5;

    invoke-direct {v1, p1}, Lrx/observables/SyncOnSubscribe$5;-><init>(Lrx/functions/Action0;)V

    .line 269
    .local v1, "wrappedOnUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Void;>;"
    new-instance v2, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;

    invoke-direct {v2, v0, v1}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func2;Lrx/functions/Action1;)V

    return-object v2
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/observables/SyncOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe;->generateState()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_10

    move-result-object v2

    .line 60
    .local v2, "state":Ljava/lang/Object;, "TS;"
    new-instance v1, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;

    invoke-direct {v1, p1, p0, v2}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;-><init>(Lrx/Subscriber;Lrx/observables/SyncOnSubscribe;Ljava/lang/Object;)V

    .line 61
    .local v1, "p":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 62
    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 63
    .end local v1    # "p":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .end local v2    # "state":Ljava/lang/Object;, "TS;"
    :goto_f
    return-void

    .line 54
    :catch_10
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method protected abstract generateState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method protected abstract next(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lrx/Observer",
            "<-TT;>;)TS;"
        }
    .end annotation
.end method

.method protected onUnsubscribe(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    return-void
.end method

###### Class rx.observables.SyncOnSubscribe.AnonymousClass1 (rx.observables.SyncOnSubscribe$1)
.class final Lrx/observables/SyncOnSubscribe$1;
.super Ljava/lang/Object;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/SyncOnSubscribe;->createSingleState(Lrx/functions/Func0;Lrx/functions/Action2;)Lrx/observables/SyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<TS;",
        "Lrx/Observer",
        "<-TT;>;TS;>;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lrx/functions/Action2;


# direct methods
.method constructor <init>(Lrx/functions/Action2;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lrx/observables/SyncOnSubscribe$1;->val$next:Lrx/functions/Action2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 127
    check-cast p2, Lrx/Observer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/observables/SyncOnSubscribe$1;->call(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lrx/Observer",
            "<-TT;>;)TS;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p2, "subscriber":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$1;->val$next:Lrx/functions/Action2;

    invoke-interface {v0, p1, p2}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    return-object p1
.end method

###### Class rx.observables.SyncOnSubscribe.AnonymousClass2 (rx.observables.SyncOnSubscribe$2)
.class final Lrx/observables/SyncOnSubscribe$2;
.super Ljava/lang/Object;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/SyncOnSubscribe;->createSingleState(Lrx/functions/Func0;Lrx/functions/Action2;Lrx/functions/Action1;)Lrx/observables/SyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<TS;",
        "Lrx/Observer",
        "<-TT;>;TS;>;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lrx/functions/Action2;


# direct methods
.method constructor <init>(Lrx/functions/Action2;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lrx/observables/SyncOnSubscribe$2;->val$next:Lrx/functions/Action2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 159
    check-cast p2, Lrx/Observer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/observables/SyncOnSubscribe$2;->call(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lrx/Observer",
            "<-TT;>;)TS;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p2, "subscriber":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$2;->val$next:Lrx/functions/Action2;

    invoke-interface {v0, p1, p2}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    return-object p1
.end method

###### Class rx.observables.SyncOnSubscribe.AnonymousClass3 (rx.observables.SyncOnSubscribe$3)
.class final Lrx/observables/SyncOnSubscribe$3;
.super Ljava/lang/Object;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/SyncOnSubscribe;->createStateless(Lrx/functions/Action1;)Lrx/observables/SyncOnSubscribe;
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
        "Ljava/lang/Void;",
        "Lrx/Observer",
        "<-TT;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/functions/Action1;)V
    .registers 2

    .prologue
    .line 228
    iput-object p1, p0, Lrx/observables/SyncOnSubscribe$3;->val$next:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 228
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/Observer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/observables/SyncOnSubscribe$3;->call(Ljava/lang/Void;Lrx/Observer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Void;Lrx/Observer;)Ljava/lang/Void;
    .registers 4
    .param p1, "state"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Lrx/Observer",
            "<-TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 231
    .local p2, "subscriber":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$3;->val$next:Lrx/functions/Action1;

    invoke-interface {v0, p2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 232
    return-object p1
.end method

###### Class rx.observables.SyncOnSubscribe.AnonymousClass4 (rx.observables.SyncOnSubscribe$4)
.class final Lrx/observables/SyncOnSubscribe$4;
.super Ljava/lang/Object;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/SyncOnSubscribe;->createStateless(Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/observables/SyncOnSubscribe;
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
        "Ljava/lang/Void;",
        "Lrx/Observer",
        "<-TT;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/functions/Action1;)V
    .registers 2

    .prologue
    .line 257
    iput-object p1, p0, Lrx/observables/SyncOnSubscribe$4;->val$next:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 257
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/Observer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/observables/SyncOnSubscribe$4;->call(Ljava/lang/Void;Lrx/Observer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Void;Lrx/Observer;)Ljava/lang/Void;
    .registers 4
    .param p1, "state"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Lrx/Observer",
            "<-TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 260
    .local p2, "subscriber":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$4;->val$next:Lrx/functions/Action1;

    invoke-interface {v0, p2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

###### Class rx.observables.SyncOnSubscribe.AnonymousClass5 (rx.observables.SyncOnSubscribe$5)
.class final Lrx/observables/SyncOnSubscribe$5;
.super Ljava/lang/Object;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/SyncOnSubscribe;->createStateless(Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/observables/SyncOnSubscribe;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$onUnsubscribe:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/functions/Action0;)V
    .registers 2

    .prologue
    .line 264
    iput-object p1, p0, Lrx/observables/SyncOnSubscribe$5;->val$onUnsubscribe:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 264
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/observables/SyncOnSubscribe$5;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public call(Ljava/lang/Void;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Void;

    .prologue
    .line 267
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$5;->val$onUnsubscribe:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 268
    return-void
.end method

###### Class rx.observables.SyncOnSubscribe.SubscriptionProducer (rx.observables.SyncOnSubscribe$SubscriptionProducer)
.class final Lrx/observables/SyncOnSubscribe$SubscriptionProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/SyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubscriptionProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x33dc0208097b2408L


# instance fields
.field private final actualSubscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private hasTerminated:Z

.field private onNextCalled:Z

.field private final parent:Lrx/observables/SyncOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;Lrx/observables/SyncOnSubscribe;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;TS;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "parent":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    .local p3, "state":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 341
    iput-object p1, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    .line 342
    iput-object p2, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->parent:Lrx/observables/SyncOnSubscribe;

    .line 343
    iput-object p3, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->state:Ljava/lang/Object;

    .line 344
    return-void
.end method

.method private doUnsubscribe()V
    .registers 4

    .prologue
    .line 382
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    :try_start_0
    iget-object v1, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->parent:Lrx/observables/SyncOnSubscribe;

    iget-object v2, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->state:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/observables/SyncOnSubscribe;->onUnsubscribe(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 387
    :goto_7
    return-void

    .line 383
    :catch_8
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 385
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method private fastPath()V
    .registers 5

    .prologue
    .line 401
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    iget-object v2, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->parent:Lrx/observables/SyncOnSubscribe;

    .line 402
    .local v2, "p":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    .line 406
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_4
    const/4 v3, 0x0

    :try_start_5
    iput-boolean v3, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    .line 407
    invoke-direct {p0, v2}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->nextIteration(Lrx/observables/SyncOnSubscribe;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_11

    .line 412
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->tryUnsubscribe()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 413
    :goto_10
    return-void

    .line 408
    :catch_11
    move-exception v1

    .line 409
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->handleThrownError(Lrx/Subscriber;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method private handleThrownError(Lrx/Subscriber;Ljava/lang/Throwable;)V
    .registers 4
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-eqz v0, :cond_8

    .line 420
    invoke-static {p2}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 426
    :goto_7
    return-void

    .line 422
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    .line 423
    invoke-virtual {p1, p2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 424
    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->unsubscribe()V

    goto :goto_7
.end method

.method private nextIteration(Lrx/observables/SyncOnSubscribe;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "parent":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->state:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lrx/observables/SyncOnSubscribe;->next(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->state:Ljava/lang/Object;

    .line 460
    return-void
.end method

.method private slowPath(J)V
    .registers 16
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    const-wide/16 v10, 0x0

    .line 429
    iget-object v6, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->parent:Lrx/observables/SyncOnSubscribe;

    .line 430
    .local v6, "p":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    .line 431
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    move-wide v4, p1

    .line 433
    .local v4, "numRequested":J
    :cond_7
    move-wide v2, v4

    .line 436
    .local v2, "numRemaining":J
    :cond_8
    const/4 v7, 0x0

    :try_start_9
    iput-boolean v7, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    .line 437
    invoke-direct {p0, v6}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->nextIteration(Lrx/observables/SyncOnSubscribe;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_15

    .line 442
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->tryUnsubscribe()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 456
    :goto_14
    return-void

    .line 438
    :catch_15
    move-exception v1

    .line 439
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->handleThrownError(Lrx/Subscriber;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 445
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_1a
    iget-boolean v7, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    if-eqz v7, :cond_21

    .line 446
    const-wide/16 v8, 0x1

    sub-long/2addr v2, v8

    .line 448
    :cond_21
    cmp-long v7, v2, v10

    if-nez v7, :cond_8

    .line 449
    neg-long v8, v4

    invoke-virtual {p0, v8, v9}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->addAndGet(J)J

    move-result-wide v4

    .line 450
    cmp-long v7, v4, v10

    if-gtz v7, :cond_7

    .line 455
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->tryUnsubscribe()Z

    goto :goto_14
.end method

.method private tryUnsubscribe()Z
    .registers 5

    .prologue
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    const-wide/16 v2, -0x1

    .line 372
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->get()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    .line 373
    :cond_e
    invoke-virtual {p0, v2, v3}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->set(J)V

    .line 374
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->doUnsubscribe()V

    .line 375
    const/4 v0, 0x1

    .line 377
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 5

    .prologue
    .line 348
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 464
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-eqz v0, :cond_c

    .line 465
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    .line 468
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 469
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 471
    :cond_1c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 475
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-eqz v0, :cond_c

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    .line 479
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 480
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 482
    :cond_1c
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    if-eqz v0, :cond_c

    .line 487
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onNext called multiple times!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    .line 490
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    const-wide/16 v2, 0x0

    .line 391
    cmp-long v0, p1, v2

    if-lez v0, :cond_1a

    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 392
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1b

    .line 393
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->fastPath()V

    .line 398
    :cond_1a
    :goto_1a
    return-void

    .line 395
    :cond_1b
    invoke-direct {p0, p1, p2}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->slowPath(J)V

    goto :goto_1a
.end method

.method public unsubscribe()V
    .registers 7

    .prologue
    .line 354
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->get()J

    move-result-wide v0

    .line 355
    .local v0, "requestCount":J
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 356
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->doUnsubscribe()V

    .line 363
    :goto_11
    return-void

    .line 359
    :cond_12
    const-wide/16 v2, -0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_11
.end method

###### Class rx.observables.SyncOnSubscribe.SyncOnSubscribeImpl (rx.observables.SyncOnSubscribe$SyncOnSubscribeImpl)
.class final Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;
.super Lrx/observables/SyncOnSubscribe;
.source "SyncOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/SyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SyncOnSubscribeImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/SyncOnSubscribe",
        "<TS;TT;>;"
    }
.end annotation


# instance fields
.field private final generator:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+TS;>;"
        }
    .end annotation
.end field

.field private final next:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<-TS;-",
            "Lrx/Observer",
            "<-TT;>;+TS;>;"
        }
    .end annotation
.end field

.field private final onUnsubscribe:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Func2",
            "<-TS;-",
            "Lrx/Observer",
            "<-TT;>;+TS;>;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p2, "next":Lrx/functions/Func2;, "Lrx/functions/Func2<-TS;-Lrx/Observer<-TT;>;+TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)V

    .line 295
    return-void
.end method

.method constructor <init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Func2",
            "<-TS;-",
            "Lrx/Observer",
            "<-TT;>;+TS;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p2, "next":Lrx/functions/Func2;, "Lrx/functions/Func2<-TS;-Lrx/Observer<-TT;>;+TS;>;"
    .local p3, "onUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe;-><init>()V

    .line 288
    iput-object p1, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->generator:Lrx/functions/Func0;

    .line 289
    iput-object p2, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->next:Lrx/functions/Func2;

    .line 290
    iput-object p3, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->onUnsubscribe:Lrx/functions/Action1;

    .line 291
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<TS;",
            "Lrx/Observer",
            "<-TT;>;TS;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "nextFunc":Lrx/functions/Func2;, "Lrx/functions/Func2<TS;Lrx/Observer<-TT;>;TS;>;"
    const/4 v0, 0x0

    .line 302
    invoke-direct {p0, v0, p1, v0}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func2;Lrx/functions/Action1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<TS;",
            "Lrx/Observer",
            "<-TT;>;TS;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "next":Lrx/functions/Func2;, "Lrx/functions/Func2<TS;Lrx/Observer<-TT;>;TS;>;"
    .local p2, "onUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)V

    .line 299
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 282
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lrx/observables/SyncOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method protected generateState()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->generator:Lrx/functions/Func0;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->generator:Lrx/functions/Func0;

    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method protected next(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lrx/Observer",
            "<-TT;>;)TS;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p2, "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->next:Lrx/functions/Func2;

    invoke-interface {v0, p1, p2}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onUnsubscribe(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->onUnsubscribe:Lrx/functions/Action1;

    if-eqz v0, :cond_9

    .line 318
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->onUnsubscribe:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 320
    :cond_9
    return-void
.end method
