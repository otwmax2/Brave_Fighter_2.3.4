###### Class rx.observables.AsyncOnSubscribe (rx.observables.AsyncOnSubscribe)
.class public abstract Lrx/observables/AsyncOnSubscribe;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observables/AsyncOnSubscribe$UnicastSubject;,
        Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;,
        Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;
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

.annotation build Lrx/annotations/Experimental;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    .local p0, "this":Lrx/observables/AsyncOnSubscribe;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    return-void
.end method

.method public static createSingleState(Lrx/functions/Func0;Lrx/functions/Action3;)Lrx/observables/AsyncOnSubscribe;
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
            "Lrx/functions/Action3",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;>;)",
            "Lrx/observables/AsyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 116
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Action3;, "Lrx/functions/Action3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;>;"
    new-instance v0, Lrx/observables/AsyncOnSubscribe$1;

    invoke-direct {v0, p1}, Lrx/observables/AsyncOnSubscribe$1;-><init>(Lrx/functions/Action3;)V

    .line 123
    .local v0, "nextFunc":Lrx/functions/Func3;, "Lrx/functions/Func3<TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;TS;>;"
    new-instance v1, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;

    invoke-direct {v1, p0, v0}, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func3;)V

    return-object v1
.end method

.method public static createSingleState(Lrx/functions/Func0;Lrx/functions/Action3;Lrx/functions/Action1;)Lrx/observables/AsyncOnSubscribe;
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
            "Lrx/functions/Action3",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)",
            "Lrx/observables/AsyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 148
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Action3;, "Lrx/functions/Action3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;>;"
    .local p2, "onUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    new-instance v0, Lrx/observables/AsyncOnSubscribe$2;

    invoke-direct {v0, p1}, Lrx/observables/AsyncOnSubscribe$2;-><init>(Lrx/functions/Action3;)V

    .line 155
    .local v0, "nextFunc":Lrx/functions/Func3;, "Lrx/functions/Func3<TS;Ljava/lang/Long;Lrx/Observer<Lrx/Observable<+TT;>;>;TS;>;"
    new-instance v1, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;

    invoke-direct {v1, p0, v0, p2}, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func3;Lrx/functions/Action1;)V

    return-object v1
.end method

.method public static createStateful(Lrx/functions/Func0;Lrx/functions/Func3;)Lrx/observables/AsyncOnSubscribe;
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
            "Lrx/functions/Func3",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;+TS;>;)",
            "Lrx/observables/AsyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 198
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Func3;, "Lrx/functions/Func3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;+TS;>;"
    new-instance v0, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;

    invoke-direct {v0, p0, p1}, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func3;)V

    return-object v0
.end method

.method public static createStateful(Lrx/functions/Func0;Lrx/functions/Func3;Lrx/functions/Action1;)Lrx/observables/AsyncOnSubscribe;
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
            "Lrx/functions/Func3",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;+TS;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)",
            "Lrx/observables/AsyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 178
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Func3;, "Lrx/functions/Func3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;+TS;>;"
    .local p2, "onUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    new-instance v0, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;

    invoke-direct {v0, p0, p1, p2}, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func3;Lrx/functions/Action1;)V

    return-object v0
.end method

.method public static createStateless(Lrx/functions/Action2;)Lrx/observables/AsyncOnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2",
            "<",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;>;)",
            "Lrx/observables/AsyncOnSubscribe",
            "<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 217
    .local p0, "next":Lrx/functions/Action2;, "Lrx/functions/Action2<Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;>;"
    new-instance v0, Lrx/observables/AsyncOnSubscribe$3;

    invoke-direct {v0, p0}, Lrx/observables/AsyncOnSubscribe$3;-><init>(Lrx/functions/Action2;)V

    .line 224
    .local v0, "nextFunc":Lrx/functions/Func3;, "Lrx/functions/Func3<Ljava/lang/Void;Ljava/lang/Long;Lrx/Observer<Lrx/Observable<+TT;>;>;Ljava/lang/Void;>;"
    new-instance v1, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;

    invoke-direct {v1, v0}, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;-><init>(Lrx/functions/Func3;)V

    return-object v1
.end method

.method public static createStateless(Lrx/functions/Action2;Lrx/functions/Action0;)Lrx/observables/AsyncOnSubscribe;
    .registers 5
    .param p1, "onUnsubscribe"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2",
            "<",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;>;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/observables/AsyncOnSubscribe",
            "<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 246
    .local p0, "next":Lrx/functions/Action2;, "Lrx/functions/Action2<Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;>;"
    new-instance v0, Lrx/observables/AsyncOnSubscribe$4;

    invoke-direct {v0, p0}, Lrx/observables/AsyncOnSubscribe$4;-><init>(Lrx/functions/Action2;)V

    .line 253
    .local v0, "nextFunc":Lrx/functions/Func3;, "Lrx/functions/Func3<Ljava/lang/Void;Ljava/lang/Long;Lrx/Observer<Lrx/Observable<+TT;>;>;Ljava/lang/Void;>;"
    new-instance v1, Lrx/observables/AsyncOnSubscribe$5;

    invoke-direct {v1, p1}, Lrx/observables/AsyncOnSubscribe$5;-><init>(Lrx/functions/Action0;)V

    .line 258
    .local v1, "wrappedOnUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Void;>;"
    new-instance v2, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;

    invoke-direct {v2, v0, v1}, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;-><init>(Lrx/functions/Func3;Lrx/functions/Action1;)V

    return-object v2
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    .local p0, "this":Lrx/observables/AsyncOnSubscribe;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/observables/AsyncOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lrx/observables/AsyncOnSubscribe;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    .local p1, "actualSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe;->generateState()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_2c

    move-result-object v3

    .line 322
    .local v3, "state":Ljava/lang/Object;, "TS;"
    invoke-static {}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->create()Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    move-result-object v4

    .line 324
    .local v4, "subject":Lrx/observables/AsyncOnSubscribe$UnicastSubject;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<Lrx/Observable<TT;>;>;"
    new-instance v2, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;

    invoke-direct {v2, p0, v3, v4}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;-><init>(Lrx/observables/AsyncOnSubscribe;Ljava/lang/Object;Lrx/observables/AsyncOnSubscribe$UnicastSubject;)V

    .line 326
    .local v2, "outerProducer":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    new-instance v0, Lrx/observables/AsyncOnSubscribe$6;

    invoke-direct {v0, p0, p1, v2}, Lrx/observables/AsyncOnSubscribe$6;-><init>(Lrx/observables/AsyncOnSubscribe;Lrx/Subscriber;Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;)V

    .line 348
    .local v0, "concatSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {v4}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v5

    new-instance v6, Lrx/observables/AsyncOnSubscribe$7;

    invoke-direct {v6, p0}, Lrx/observables/AsyncOnSubscribe$7;-><init>(Lrx/observables/AsyncOnSubscribe;)V

    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    invoke-virtual {v5, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 355
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 356
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 357
    invoke-virtual {p1, v2}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 359
    .end local v0    # "concatSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .end local v2    # "outerProducer":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    .end local v3    # "state":Ljava/lang/Object;, "TS;"
    .end local v4    # "subject":Lrx/observables/AsyncOnSubscribe$UnicastSubject;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<Lrx/Observable<TT;>;>;"
    :goto_2b
    return-void

    .line 318
    :catch_2c
    move-exception v1

    .line 319
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p1, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method protected abstract generateState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method protected abstract next(Ljava/lang/Object;JLrx/Observer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;)TS;"
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
    .line 98
    .local p0, "this":Lrx/observables/AsyncOnSubscribe;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    return-void
.end method

###### Class rx.observables.AsyncOnSubscribe.AnonymousClass1 (rx.observables.AsyncOnSubscribe$1)
.class final Lrx/observables/AsyncOnSubscribe$1;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Func3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/AsyncOnSubscribe;->createSingleState(Lrx/functions/Func0;Lrx/functions/Action3;)Lrx/observables/AsyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func3",
        "<TS;",
        "Ljava/lang/Long;",
        "Lrx/Observer",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;TS;>;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lrx/functions/Action3;


# direct methods
.method constructor <init>(Lrx/functions/Action3;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$1;->val$next:Lrx/functions/Action3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Long;Lrx/Observer;)Ljava/lang/Object;
    .registers 5
    .param p2, "requested"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/Long;",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;)TS;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p3, "subscriber":Lrx/Observer;, "Lrx/Observer<Lrx/Observable<+TT;>;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$1;->val$next:Lrx/functions/Action3;

    invoke-interface {v0, p1, p2, p3}, Lrx/functions/Action3;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    return-object p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 117
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lrx/Observer;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lrx/observables/AsyncOnSubscribe$1;->call(Ljava/lang/Object;Ljava/lang/Long;Lrx/Observer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class rx.observables.AsyncOnSubscribe.AnonymousClass2 (rx.observables.AsyncOnSubscribe$2)
.class final Lrx/observables/AsyncOnSubscribe$2;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Func3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/AsyncOnSubscribe;->createSingleState(Lrx/functions/Func0;Lrx/functions/Action3;Lrx/functions/Action1;)Lrx/observables/AsyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func3",
        "<TS;",
        "Ljava/lang/Long;",
        "Lrx/Observer",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;TS;>;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lrx/functions/Action3;


# direct methods
.method constructor <init>(Lrx/functions/Action3;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$2;->val$next:Lrx/functions/Action3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Long;Lrx/Observer;)Ljava/lang/Object;
    .registers 5
    .param p2, "requested"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/Long;",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;)TS;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p3, "subscriber":Lrx/Observer;, "Lrx/Observer<Lrx/Observable<+TT;>;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$2;->val$next:Lrx/functions/Action3;

    invoke-interface {v0, p1, p2, p3}, Lrx/functions/Action3;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    return-object p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lrx/Observer;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lrx/observables/AsyncOnSubscribe$2;->call(Ljava/lang/Object;Ljava/lang/Long;Lrx/Observer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class rx.observables.AsyncOnSubscribe.AnonymousClass3 (rx.observables.AsyncOnSubscribe$3)
.class final Lrx/observables/AsyncOnSubscribe$3;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Func3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/AsyncOnSubscribe;->createStateless(Lrx/functions/Action2;)Lrx/observables/AsyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func3",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Lrx/Observer",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lrx/functions/Action2;


# direct methods
.method constructor <init>(Lrx/functions/Action2;)V
    .registers 2

    .prologue
    .line 218
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$3;->val$next:Lrx/functions/Action2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 218
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lrx/Observer;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lrx/observables/AsyncOnSubscribe$3;->call(Ljava/lang/Void;Ljava/lang/Long;Lrx/Observer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Void;Ljava/lang/Long;Lrx/Observer;)Ljava/lang/Void;
    .registers 5
    .param p1, "state"    # Ljava/lang/Void;
    .param p2, "requested"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Ljava/lang/Long;",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 221
    .local p3, "subscriber":Lrx/Observer;, "Lrx/Observer<Lrx/Observable<+TT;>;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$3;->val$next:Lrx/functions/Action2;

    invoke-interface {v0, p2, p3}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    return-object p1
.end method

###### Class rx.observables.AsyncOnSubscribe.AnonymousClass4 (rx.observables.AsyncOnSubscribe$4)
.class final Lrx/observables/AsyncOnSubscribe$4;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Func3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/AsyncOnSubscribe;->createStateless(Lrx/functions/Action2;Lrx/functions/Action0;)Lrx/observables/AsyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func3",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Lrx/Observer",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lrx/functions/Action2;


# direct methods
.method constructor <init>(Lrx/functions/Action2;)V
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$4;->val$next:Lrx/functions/Action2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 247
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lrx/Observer;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lrx/observables/AsyncOnSubscribe$4;->call(Ljava/lang/Void;Ljava/lang/Long;Lrx/Observer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Void;Ljava/lang/Long;Lrx/Observer;)Ljava/lang/Void;
    .registers 5
    .param p1, "state"    # Ljava/lang/Void;
    .param p2, "requested"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Ljava/lang/Long;",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 250
    .local p3, "subscriber":Lrx/Observer;, "Lrx/Observer<Lrx/Observable<+TT;>;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$4;->val$next:Lrx/functions/Action2;

    invoke-interface {v0, p2, p3}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

###### Class rx.observables.AsyncOnSubscribe.AnonymousClass5 (rx.observables.AsyncOnSubscribe$5)
.class final Lrx/observables/AsyncOnSubscribe$5;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/AsyncOnSubscribe;->createStateless(Lrx/functions/Action2;Lrx/functions/Action0;)Lrx/observables/AsyncOnSubscribe;
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
    .line 253
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$5;->val$onUnsubscribe:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 253
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/observables/AsyncOnSubscribe$5;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public call(Ljava/lang/Void;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Void;

    .prologue
    .line 256
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$5;->val$onUnsubscribe:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 257
    return-void
.end method

###### Class rx.observables.AsyncOnSubscribe.AnonymousClass6 (rx.observables.AsyncOnSubscribe$6)
.class Lrx/observables/AsyncOnSubscribe$6;
.super Lrx/Subscriber;
.source "AsyncOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/AsyncOnSubscribe;->call(Lrx/Subscriber;)V
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
.field final synthetic this$0:Lrx/observables/AsyncOnSubscribe;

.field final synthetic val$actualSubscriber:Lrx/Subscriber;

.field final synthetic val$outerProducer:Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;


# direct methods
.method constructor <init>(Lrx/observables/AsyncOnSubscribe;Lrx/Subscriber;Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;)V
    .registers 4

    .prologue
    .line 326
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$6;, "Lrx/observables/AsyncOnSubscribe.6;"
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$6;->this$0:Lrx/observables/AsyncOnSubscribe;

    iput-object p2, p0, Lrx/observables/AsyncOnSubscribe$6;->val$actualSubscriber:Lrx/Subscriber;

    iput-object p3, p0, Lrx/observables/AsyncOnSubscribe$6;->val$outerProducer:Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 339
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$6;, "Lrx/observables/AsyncOnSubscribe.6;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$6;->val$actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 340
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 334
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$6;, "Lrx/observables/AsyncOnSubscribe.6;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$6;->val$actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 335
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
    .line 329
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$6;, "Lrx/observables/AsyncOnSubscribe.6;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$6;->val$actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 344
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$6;, "Lrx/observables/AsyncOnSubscribe.6;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$6;->val$outerProducer:Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;

    invoke-virtual {v0, p1}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->setConcatProducer(Lrx/Producer;)V

    .line 345
    return-void
.end method

###### Class rx.observables.AsyncOnSubscribe.AnonymousClass7 (rx.observables.AsyncOnSubscribe$7)
.class Lrx/observables/AsyncOnSubscribe$7;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/AsyncOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Observable",
        "<TT;>;",
        "Lrx/Observable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/observables/AsyncOnSubscribe;


# direct methods
.method constructor <init>(Lrx/observables/AsyncOnSubscribe;)V
    .registers 2

    .prologue
    .line 348
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$7;, "Lrx/observables/AsyncOnSubscribe.7;"
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$7;->this$0:Lrx/observables/AsyncOnSubscribe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 348
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$7;, "Lrx/observables/AsyncOnSubscribe.7;"
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/observables/AsyncOnSubscribe$7;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$7;, "Lrx/observables/AsyncOnSubscribe.7;"
    .local p1, "v":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p1}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.observables.AsyncOnSubscribe.AsyncOnSubscribeImpl (rx.observables.AsyncOnSubscribe$AsyncOnSubscribeImpl)
.class final Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;
.super Lrx/observables/AsyncOnSubscribe;
.source "AsyncOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AsyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncOnSubscribeImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/AsyncOnSubscribe",
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

.field private final next:Lrx/functions/Func3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func3",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;+TS;>;"
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
.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func3;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Func3",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;+TS;>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p2, "next":Lrx/functions/Func3;, "Lrx/functions/Func3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;+TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func3;Lrx/functions/Action1;)V

    .line 285
    return-void
.end method

.method constructor <init>(Lrx/functions/Func0;Lrx/functions/Func3;Lrx/functions/Action1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Func3",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;+TS;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p2, "next":Lrx/functions/Func3;, "Lrx/functions/Func3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;+TS;>;"
    .local p3, "onUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    invoke-direct {p0}, Lrx/observables/AsyncOnSubscribe;-><init>()V

    .line 278
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;->generator:Lrx/functions/Func0;

    .line 279
    iput-object p2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;->next:Lrx/functions/Func3;

    .line 280
    iput-object p3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;->onUnsubscribe:Lrx/functions/Action1;

    .line 281
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func3;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func3",
            "<TS;",
            "Ljava/lang/Long;",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;TS;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "nextFunc":Lrx/functions/Func3;, "Lrx/functions/Func3<TS;Ljava/lang/Long;Lrx/Observer<Lrx/Observable<+TT;>;>;TS;>;"
    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, v0, p1, v0}, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func3;Lrx/functions/Action1;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func3;Lrx/functions/Action1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func3",
            "<TS;",
            "Ljava/lang/Long;",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;TS;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "next":Lrx/functions/Func3;, "Lrx/functions/Func3<TS;Ljava/lang/Long;Lrx/Observer<Lrx/Observable<+TT;>;>;TS;>;"
    .local p2, "onUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func3;Lrx/functions/Action1;)V

    .line 289
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 272
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lrx/observables/AsyncOnSubscribe;->call(Lrx/Subscriber;)V

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
    .line 297
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;->generator:Lrx/functions/Func0;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;->generator:Lrx/functions/Func0;

    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method protected next(Ljava/lang/Object;JLrx/Observer;)Ljava/lang/Object;
    .registers 7
    .param p2, "requested"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;)TS;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p4, "observer":Lrx/Observer;, "Lrx/Observer<Lrx/Observable<+TT;>;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;->next:Lrx/functions/Func3;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1, p4}, Lrx/functions/Func3;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 307
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;->onUnsubscribe:Lrx/functions/Action1;

    if-eqz v0, :cond_9

    .line 308
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;->onUnsubscribe:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 310
    :cond_9
    return-void
.end method

###### Class rx.observables.AsyncOnSubscribe.AsyncOuterManager (rx.observables.AsyncOnSubscribe$AsyncOuterManager)
.class final Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AsyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncOuterManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;",
        "Lrx/Subscription;",
        "Lrx/Observer",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field concatProducer:Lrx/Producer;

.field emitting:Z

.field expectedDelivery:J

.field private hasTerminated:Z

.field final isUnsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AsyncOnSubscribe$UnicastSubject",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private onNextCalled:Z

.field private final parent:Lrx/observables/AsyncOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AsyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final serializedSubscriber:Lrx/observers/SerializedObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/SerializedObserver",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;"
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

.field final subscriptions:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method public constructor <init>(Lrx/observables/AsyncOnSubscribe;Ljava/lang/Object;Lrx/observables/AsyncOnSubscribe$UnicastSubject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AsyncOnSubscribe",
            "<TS;TT;>;TS;",
            "Lrx/observables/AsyncOnSubscribe$UnicastSubject",
            "<",
            "Lrx/Observable",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    .local p1, "parent":Lrx/observables/AsyncOnSubscribe;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    .local p2, "initialState":Ljava/lang/Object;, "TS;"
    .local p3, "merger":Lrx/observables/AsyncOnSubscribe$UnicastSubject;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<Lrx/Observable<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    .line 383
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->parent:Lrx/observables/AsyncOnSubscribe;

    .line 384
    new-instance v0, Lrx/observers/SerializedObserver;

    invoke-direct {v0, p0}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    iput-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->serializedSubscriber:Lrx/observers/SerializedObserver;

    .line 385
    iput-object p2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->state:Ljava/lang/Object;

    .line 386
    iput-object p3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    .line 387
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->isUnsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 388
    return-void
.end method

.method private handleThrownError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 557
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    if-eqz v0, :cond_8

    .line 558
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 564
    :goto_7
    return-void

    .line 560
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    .line 561
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    invoke-virtual {v0, p1}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->onError(Ljava/lang/Throwable;)V

    .line 562
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->cleanup()V

    goto :goto_7
.end method

.method private subscribeBufferToObservable(Lrx/Observable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->create()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v0

    .line 600
    .local v0, "buffer":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-wide v2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->expectedDelivery:J

    .line 601
    .local v2, "expected":J
    new-instance v4, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;

    invoke-direct {v4, p0, v2, v3, v0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;-><init>(Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;JLrx/internal/operators/BufferUntilSubscriber;)V

    .line 621
    .local v4, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v5, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v5, v4}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 623
    new-instance v5, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$2;

    invoke-direct {v5, p0, v4}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$2;-><init>(Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;Lrx/Subscriber;)V

    invoke-virtual {p1, v5}, Lrx/Observable;->doOnTerminate(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v1

    .line 629
    .local v1, "doOnTerminate":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-virtual {v1, v4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 631
    iget-object v5, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    invoke-virtual {v5, v0}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->onNext(Ljava/lang/Object;)V

    .line 632
    return-void
.end method


# virtual methods
.method cleanup()V
    .registers 4

    .prologue
    .line 422
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 424
    :try_start_5
    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->parent:Lrx/observables/AsyncOnSubscribe;

    iget-object v2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->state:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/observables/AsyncOnSubscribe;->onUnsubscribe(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_d

    .line 428
    :goto_c
    return-void

    .line 425
    :catch_d
    move-exception v0

    .line 426
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->handleThrownError(Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 414
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->isUnsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public nextIteration(J)V
    .registers 6
    .param p1, "requestCount"    # J

    .prologue
    .line 418
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->parent:Lrx/observables/AsyncOnSubscribe;

    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->state:Ljava/lang/Object;

    iget-object v2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->serializedSubscriber:Lrx/observers/SerializedObserver;

    invoke-virtual {v0, v1, p1, p2, v2}, Lrx/observables/AsyncOnSubscribe;->next(Ljava/lang/Object;JLrx/Observer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->state:Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 568
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    if-eqz v0, :cond_c

    .line 569
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    .line 572
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    invoke-virtual {v0}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->onCompleted()V

    .line 573
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 577
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    if-eqz v0, :cond_c

    .line 578
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    .line 581
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->merger:Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    invoke-virtual {v0, p1}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->onError(Ljava/lang/Throwable;)V

    .line 582
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 361
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->onNextCalled:Z

    if-eqz v0, :cond_c

    .line 587
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onNext called multiple times!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->onNextCalled:Z

    .line 590
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    if-eqz v0, :cond_14

    .line 594
    :goto_13
    return-void

    .line 593
    :cond_14
    invoke-direct {p0, p1}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->subscribeBufferToObservable(Lrx/Observable;)V

    goto :goto_13
.end method

.method public request(J)V
    .registers 12
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    const-wide/16 v6, 0x0

    .line 432
    cmp-long v3, p1, v6

    if-nez v3, :cond_7

    .line 476
    :cond_6
    :goto_6
    return-void

    .line 435
    :cond_7
    cmp-long v3, p1, v6

    if-gez v3, :cond_24

    .line 436
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request can\'t be negative! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 438
    :cond_24
    const/4 v2, 0x0

    .line 439
    .local v2, "quit":Z
    monitor-enter p0

    .line 440
    :try_start_26
    iget-boolean v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    if-eqz v3, :cond_58

    .line 441
    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 442
    .local v1, "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_35

    .line 443
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 446
    :cond_35
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    const/4 v2, 0x1

    .line 452
    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_26 .. :try_end_3e} :catchall_5c

    .line 454
    iget-object v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->concatProducer:Lrx/Producer;

    invoke-interface {v3, p1, p2}, Lrx/Producer;->request(J)V

    .line 456
    if-nez v2, :cond_6

    .line 460
    invoke-virtual {p0, p1, p2}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->tryEmit(J)Z

    move-result v3

    if-nez v3, :cond_6

    .line 465
    :cond_4b
    monitor-enter p0

    .line 466
    :try_start_4c
    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 467
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_5f

    .line 468
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    .line 469
    monitor-exit p0

    goto :goto_6

    .line 472
    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_55
    move-exception v3

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_55

    throw v3

    .line 450
    :cond_58
    const/4 v3, 0x1

    :try_start_59
    iput-boolean v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    goto :goto_3d

    .line 452
    :catchall_5c
    move-exception v3

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_5c

    throw v3

    .line 471
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_5f
    const/4 v3, 0x0

    :try_start_60
    iput-object v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 472
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_55

    .line 474
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 475
    .local v4, "r":J
    invoke-virtual {p0, v4, v5}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->tryEmit(J)Z

    move-result v3

    if-eqz v3, :cond_67

    goto :goto_6
.end method

.method public requestRemaining(J)V
    .registers 12
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    const-wide/16 v6, 0x0

    .line 488
    cmp-long v4, p1, v6

    if-nez v4, :cond_7

    .line 524
    :cond_6
    :goto_6
    return-void

    .line 491
    :cond_7
    cmp-long v4, p1, v6

    if-gez v4, :cond_24

    .line 492
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request can\'t be negative! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 494
    :cond_24
    monitor-enter p0

    .line 495
    :try_start_25
    iget-boolean v4, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    if-eqz v4, :cond_40

    .line 496
    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 497
    .local v1, "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_34

    .line 498
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 501
    :cond_34
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    monitor-exit p0

    goto :goto_6

    .line 506
    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_3d
    move-exception v4

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_3d

    throw v4

    .line 505
    :cond_40
    const/4 v4, 0x1

    :try_start_41
    iput-boolean v4, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    .line 506
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3d

    .line 508
    invoke-virtual {p0, p1, p2}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->tryEmit(J)Z

    move-result v4

    if-nez v4, :cond_6

    .line 513
    :cond_4a
    monitor-enter p0

    .line 514
    :try_start_4b
    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 515
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_57

    .line 516
    const/4 v4, 0x0

    iput-boolean v4, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    .line 517
    monitor-exit p0

    goto :goto_6

    .line 520
    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_54
    move-exception v4

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_54

    throw v4

    .line 519
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_57
    const/4 v4, 0x0

    :try_start_58
    iput-object v4, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 520
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_54

    .line 522
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 523
    .local v2, "r":J
    invoke-virtual {p0, v2, v3}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->tryEmit(J)Z

    move-result v4

    if-eqz v4, :cond_5f

    goto :goto_6
.end method

.method setConcatProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 406
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->concatProducer:Lrx/Producer;

    if-eqz v0, :cond_c

    .line 407
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setConcatProducer may be called at most once!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_c
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->concatProducer:Lrx/Producer;

    .line 410
    return-void
.end method

.method tryEmit(J)Z
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 531
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 532
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->cleanup()V

    .line 553
    :goto_b
    return v1

    .line 537
    :cond_c
    const/4 v3, 0x0

    :try_start_d
    iput-boolean v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->onNextCalled:Z

    .line 538
    iput-wide p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->expectedDelivery:J

    .line 539
    invoke-virtual {p0, p1, p2}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->nextIteration(J)V

    .line 541
    iget-boolean v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->hasTerminated:Z

    if-nez v3, :cond_1e

    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 542
    :cond_1e
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->cleanup()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_21} :catch_22

    goto :goto_b

    .line 549
    :catch_22
    move-exception v0

    .line 550
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->handleThrownError(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 545
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_27
    :try_start_27
    iget-boolean v3, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->onNextCalled:Z

    if-nez v3, :cond_36

    .line 546
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No events emitted!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->handleThrownError(Ljava/lang/Throwable;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_35} :catch_22

    goto :goto_b

    :cond_36
    move v1, v2

    .line 553
    goto :goto_b
.end method

.method public unsubscribe()V
    .registers 5

    .prologue
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    const/4 v2, 0x1

    .line 392
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->isUnsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 393
    monitor-enter p0

    .line 394
    :try_start_b
    iget-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    if-eqz v0, :cond_23

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    .line 396
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requests:Ljava/util/List;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    monitor-exit p0

    .line 403
    :cond_22
    :goto_22
    return-void

    .line 399
    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->emitting:Z

    .line 400
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_2b

    .line 401
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->cleanup()V

    goto :goto_22

    .line 400
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

###### Class rx.observables.AsyncOnSubscribe.AsyncOuterManager.AnonymousClass1 (rx.observables.AsyncOnSubscribe$AsyncOuterManager$1)
.class Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;
.super Lrx/Subscriber;
.source "AsyncOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->subscribeBufferToObservable(Lrx/Observable;)V
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
.field remaining:J

.field final synthetic this$0:Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;

.field final synthetic val$buffer:Lrx/internal/operators/BufferUntilSubscriber;

.field final synthetic val$expected:J


# direct methods
.method constructor <init>(Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;JLrx/internal/operators/BufferUntilSubscriber;)V
    .registers 7

    .prologue
    .line 601
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager.1;"
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;->this$0:Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;

    iput-wide p2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;->val$expected:J

    iput-object p4, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;->val$buffer:Lrx/internal/operators/BufferUntilSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 602
    iget-wide v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;->val$expected:J

    iput-wide v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;->remaining:J

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 5

    .prologue
    .line 614
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager.1;"
    iget-object v2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;->val$buffer:Lrx/internal/operators/BufferUntilSubscriber;

    invoke-virtual {v2}, Lrx/internal/operators/BufferUntilSubscriber;->onCompleted()V

    .line 615
    iget-wide v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;->remaining:J

    .line 616
    .local v0, "r":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    .line 617
    iget-object v2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;->this$0:Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;

    invoke-virtual {v2, v0, v1}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->requestRemaining(J)V

    .line 619
    :cond_12
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 610
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager.1;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;->val$buffer:Lrx/internal/operators/BufferUntilSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/BufferUntilSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 611
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-wide v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;->remaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;->remaining:J

    .line 606
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$1;->val$buffer:Lrx/internal/operators/BufferUntilSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/BufferUntilSubscriber;->onNext(Ljava/lang/Object;)V

    .line 607
    return-void
.end method

###### Class rx.observables.AsyncOnSubscribe.AsyncOuterManager.AnonymousClass2 (rx.observables.AsyncOnSubscribe$AsyncOuterManager$2)
.class Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$2;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->subscribeBufferToObservable(Lrx/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;

.field final synthetic val$s:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;Lrx/Subscriber;)V
    .registers 3

    .prologue
    .line 623
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$2;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager.2;"
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$2;->this$0:Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;

    iput-object p2, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$2;->val$s:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 626
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$2;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager.2;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$2;->this$0:Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;

    iget-object v0, v0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager$2;->val$s:Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 627
    return-void
.end method

###### Class rx.observables.AsyncOnSubscribe.UnicastSubject (rx.observables.AsyncOnSubscribe$UnicastSubject)
.class final Lrx/observables/AsyncOnSubscribe$UnicastSubject;
.super Lrx/Observable;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AsyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnicastSubject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable",
        "<TT;>;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final state:Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$UnicastSubject;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<TT;>;"
    .local p1, "state":Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State<TT;>;"
    invoke-direct {p0, p1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 644
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->state:Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;

    .line 645
    return-void
.end method

.method public static create()Lrx/observables/AsyncOnSubscribe$UnicastSubject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/observables/AsyncOnSubscribe$UnicastSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 639
    new-instance v0, Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    new-instance v1, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;

    invoke-direct {v1}, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;-><init>()V

    invoke-direct {v0, v1}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;-><init>(Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;)V

    return-object v0
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 649
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$UnicastSubject;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<TT;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->state:Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;

    iget-object v0, v0, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 650
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 654
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$UnicastSubject;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<TT;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->state:Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;

    iget-object v0, v0, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 655
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
    .line 659
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$UnicastSubject;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->state:Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;

    iget-object v0, v0, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 660
    return-void
.end method

###### Class rx.observables.AsyncOnSubscribe.UnicastSubject.State (rx.observables.AsyncOnSubscribe$UnicastSubject$State)
.class final Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AsyncOnSubscribe$UnicastSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 662
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 662
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;->call(Lrx/Subscriber;)V

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
    .line 666
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    monitor-enter p0

    .line 667
    :try_start_1
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;->subscriber:Lrx/Subscriber;

    if-nez v0, :cond_9

    .line 668
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;->subscriber:Lrx/Subscriber;

    .line 669
    monitor-exit p0

    .line 673
    :goto_8
    return-void

    .line 671
    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_15

    .line 672
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There can be only one subscriber"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 671
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method
