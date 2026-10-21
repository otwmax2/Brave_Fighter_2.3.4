###### Class rx.internal.operators.OnSubscribeAmb (rx.internal.operators.OnSubscribeAmb)
.class public final Lrx/internal/operators/OnSubscribeAmb;
.super Ljava/lang/Object;
.source "OnSubscribeAmb.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeAmb$Selection;,
        Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;
    }
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
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb;, "Lrx/internal/operators/OnSubscribeAmb<TT;>;"
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeAmb;->sources:Ljava/lang/Iterable;

    .line 362
    return-void
.end method

.method public static amb(Ljava/lang/Iterable;)Lrx/Observable$OnSubscribe;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeAmb;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeAmb;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeAmb;->amb(Ljava/lang/Iterable;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    return-object v1
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeAmb;->amb(Ljava/lang/Iterable;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    return-object v1
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeAmb;->amb(Ljava/lang/Iterable;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    return-object v1
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;
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
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeAmb;->amb(Ljava/lang/Iterable;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    return-object v1
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeAmb;->amb(Ljava/lang/Iterable;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    return-object v1
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeAmb;->amb(Ljava/lang/Iterable;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    return-object v1
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v0, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeAmb;->amb(Ljava/lang/Iterable;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    return-object v1
.end method

.method public static amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p8, "o9":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-interface {v0, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {v0, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeAmb;->amb(Ljava/lang/Iterable;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    return-object v1
.end method

.method static unsubscribeAmbSubscribers(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "ambSubscribers":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 441
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    .line 442
    .local v1, "other":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-virtual {v1}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->unsubscribe()V

    goto :goto_a

    .line 444
    .end local v1    # "other":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    :cond_1a
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 446
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1d
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb;, "Lrx/internal/operators/OnSubscribeAmb<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeAmb;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb;, "Lrx/internal/operators/OnSubscribeAmb<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v3, Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-direct {v3}, Lrx/internal/operators/OnSubscribeAmb$Selection;-><init>()V

    .line 369
    .local v3, "selection":Lrx/internal/operators/OnSubscribeAmb$Selection;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    new-instance v5, Lrx/internal/operators/OnSubscribeAmb$1;

    invoke-direct {v5, p0, v3}, Lrx/internal/operators/OnSubscribeAmb$1;-><init>(Lrx/internal/operators/OnSubscribeAmb;Lrx/internal/operators/OnSubscribeAmb$Selection;)V

    invoke-static {v5}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v5

    invoke-virtual {p1, v5}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 388
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeAmb;->sources:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/Observable;

    .line 389
    .local v4, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 406
    .end local v4    # "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_29
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 407
    iget-object v5, v3, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-static {v5}, Lrx/internal/operators/OnSubscribeAmb;->unsubscribeAmbSubscribers(Ljava/util/Collection;)V

    .line 410
    :cond_34
    new-instance v5, Lrx/internal/operators/OnSubscribeAmb$2;

    invoke-direct {v5, p0, v3}, Lrx/internal/operators/OnSubscribeAmb$2;-><init>(Lrx/internal/operators/OnSubscribeAmb;Lrx/internal/operators/OnSubscribeAmb$Selection;)V

    invoke-virtual {p1, v5}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 437
    :goto_3c
    return-void

    .line 392
    .restart local v4    # "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_3d
    new-instance v0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    const-wide/16 v6, 0x0

    invoke-direct {v0, v6, v7, p1, v3}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;-><init>(JLrx/Subscriber;Lrx/internal/operators/OnSubscribeAmb$Selection;)V

    .line 393
    .local v0, "ambSubscriber":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    iget-object v5, v3, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {v3}, Lrx/internal/operators/OnSubscribeAmb$Selection;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    .local v1, "c":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    if-eqz v1, :cond_55

    .line 400
    invoke-virtual {v3, v1}, Lrx/internal/operators/OnSubscribeAmb$Selection;->unsubscribeOthers(Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;)V

    goto :goto_3c

    .line 403
    :cond_55
    invoke-virtual {v4, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_17
.end method

###### Class rx.internal.operators.OnSubscribeAmb.AnonymousClass1 (rx.internal.operators.OnSubscribeAmb$1)
.class Lrx/internal/operators/OnSubscribeAmb$1;
.super Ljava/lang/Object;
.source "OnSubscribeAmb.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeAmb;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeAmb;

.field final synthetic val$selection:Lrx/internal/operators/OnSubscribeAmb$Selection;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeAmb;Lrx/internal/operators/OnSubscribeAmb$Selection;)V
    .registers 3

    .prologue
    .line 369
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$1;, "Lrx/internal/operators/OnSubscribeAmb.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeAmb$1;->val$selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 374
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$1;, "Lrx/internal/operators/OnSubscribeAmb.1;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->val$selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-virtual {v1}, Lrx/internal/operators/OnSubscribeAmb$Selection;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    .local v0, "c":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    if-eqz v0, :cond_d

    .line 376
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->unsubscribe()V

    .line 382
    :cond_d
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->val$selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-static {v1}, Lrx/internal/operators/OnSubscribeAmb;->unsubscribeAmbSubscribers(Ljava/util/Collection;)V

    .line 383
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeAmb.AnonymousClass2 (rx.internal.operators.OnSubscribeAmb$2)
.class Lrx/internal/operators/OnSubscribeAmb$2;
.super Ljava/lang/Object;
.source "OnSubscribeAmb.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeAmb;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeAmb;

.field final synthetic val$selection:Lrx/internal/operators/OnSubscribeAmb$Selection;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeAmb;Lrx/internal/operators/OnSubscribeAmb$Selection;)V
    .registers 3

    .prologue
    .line 410
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$2;, "Lrx/internal/operators/OnSubscribeAmb.2;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeAmb$2;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeAmb$2;->val$selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .line 415
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$2;, "Lrx/internal/operators/OnSubscribeAmb.2;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeAmb$2;->val$selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-virtual {v3}, Lrx/internal/operators/OnSubscribeAmb$Selection;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    .local v1, "c":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    if-eqz v1, :cond_e

    .line 417
    invoke-static {v1, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->access$000(Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;J)V

    .line 435
    :cond_d
    :goto_d
    return-void

    .line 420
    :cond_e
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeAmb$2;->val$selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    iget-object v3, v3, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    .line 421
    .local v0, "ambSubscriber":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_16

    .line 424
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeAmb$2;->val$selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-virtual {v3}, Lrx/internal/operators/OnSubscribeAmb$Selection;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_34

    .line 425
    invoke-static {v0, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->access$000(Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;J)V

    goto :goto_d

    .line 430
    :cond_34
    invoke-static {v0, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->access$000(Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;J)V

    goto :goto_16
.end method

###### Class rx.internal.operators.OnSubscribeAmb.AmbSubscriber (rx.internal.operators.OnSubscribeAmb$AmbSubscriber)
.class final Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeAmb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AmbSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private chosen:Z

.field private final selection:Lrx/internal/operators/OnSubscribeAmb$Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeAmb$Selection",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLrx/Subscriber;Lrx/internal/operators/OnSubscribeAmb$Selection;)V
    .registers 6
    .param p1, "requested"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/internal/operators/OnSubscribeAmb$Selection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    .local p3, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p4, "selection":Lrx/internal/operators/OnSubscribeAmb$Selection;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 285
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->subscriber:Lrx/Subscriber;

    .line 286
    iput-object p4, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    .line 288
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->request(J)V

    .line 289
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;
    .param p1, "x1"    # J

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->requestMore(J)V

    return-void
.end method

.method private isSelected()Z
    .registers 4

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    const/4 v0, 0x1

    .line 317
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->chosen:Z

    if-eqz v1, :cond_6

    .line 332
    :goto_5
    return v0

    .line 320
    :cond_6
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-virtual {v1}, Lrx/internal/operators/OnSubscribeAmb$Selection;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_11

    .line 322
    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->chosen:Z

    goto :goto_5

    .line 325
    :cond_11
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lrx/internal/operators/OnSubscribeAmb$Selection;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 326
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-virtual {v1, p0}, Lrx/internal/operators/OnSubscribeAmb$Selection;->unsubscribeOthers(Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;)V

    .line 327
    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->chosen:Z

    goto :goto_5

    .line 331
    :cond_22
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeAmb$Selection;->unsubscribeLosers()V

    .line 332
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private requestMore(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 292
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->request(J)V

    .line 293
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 304
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 305
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 307
    :cond_b
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 311
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 312
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 314
    :cond_b
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
    .line 297
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 298
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 300
    :cond_b
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeAmb.Selection (rx.internal.operators.OnSubscribeAmb$Selection)
.class final Lrx/internal/operators/OnSubscribeAmb$Selection;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "OnSubscribeAmb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Selection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final ambSubscribers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 339
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$Selection;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 340
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public unsubscribeLosers()V
    .registers 2

    .prologue
    .line 343
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$Selection;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeAmb$Selection;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    .line 344
    .local v0, "winner":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    if-eqz v0, :cond_b

    .line 345
    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeAmb$Selection;->unsubscribeOthers(Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;)V

    .line 347
    :cond_b
    return-void
.end method

.method public unsubscribeOthers(Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$Selection;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    .local p1, "notThis":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    .line 351
    .local v1, "other":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    if-eq v1, p1, :cond_6

    .line 352
    invoke-virtual {v1}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->unsubscribe()V

    goto :goto_6

    .line 355
    .end local v1    # "other":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    :cond_18
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 356
    return-void
.end method
