###### Class rx.internal.operators.OnSubscribeToMultimap (rx.internal.operators.OnSubscribeToMultimap)
.class public final Lrx/internal/operators/OnSubscribeToMultimap;
.super Ljava/lang/Object;
.source "OnSubscribeToMultimap.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;,
        Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/util/Map",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;",
        "Lrx/functions/Func0",
        "<",
        "Ljava/util/Map",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field private final collectionFactory:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field private final mapFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field private final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final valueSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMultimap;, "Lrx/internal/operators/OnSubscribeToMultimap<TT;TK;TV;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p3, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    const/4 v4, 0x0

    invoke-static {}, Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;->instance()Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeToMultimap;-><init>(Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;Lrx/functions/Func1;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMultimap;, "Lrx/internal/operators/OnSubscribeToMultimap<TT;TK;TV;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p3, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p4, "mapFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    invoke-static {}, Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;->instance()Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeToMultimap;-><init>(Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;Lrx/functions/Func1;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;Lrx/functions/Func1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Lrx/functions/Func1",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMultimap;, "Lrx/internal/operators/OnSubscribeToMultimap<TT;TK;TV;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p3, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p4, "mapFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    .local p5, "collectionFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TK;+Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeToMultimap;->source:Lrx/Observable;

    .line 99
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeToMultimap;->keySelector:Lrx/functions/Func1;

    .line 100
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeToMultimap;->valueSelector:Lrx/functions/Func1;

    .line 101
    if-nez p4, :cond_10

    .line 102
    iput-object p0, p0, Lrx/internal/operators/OnSubscribeToMultimap;->mapFactory:Lrx/functions/Func0;

    .line 106
    :goto_d
    iput-object p5, p0, Lrx/internal/operators/OnSubscribeToMultimap;->collectionFactory:Lrx/functions/Func1;

    .line 107
    return-void

    .line 104
    :cond_10
    iput-object p4, p0, Lrx/internal/operators/OnSubscribeToMultimap;->mapFactory:Lrx/functions/Func0;

    goto :goto_d
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMultimap;, "Lrx/internal/operators/OnSubscribeToMultimap<TT;TK;TV;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeToMultimap;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMultimap;, "Lrx/internal/operators/OnSubscribeToMultimap<TT;TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMultimap;, "Lrx/internal/operators/OnSubscribeToMultimap<TT;TK;TV;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeToMultimap;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMultimap;, "Lrx/internal/operators/OnSubscribeToMultimap<TT;TK;TV;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeToMultimap;->mapFactory:Lrx/functions/Func0;

    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_1a

    .line 126
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeToMultimap;->keySelector:Lrx/functions/Func1;

    iget-object v4, p0, Lrx/internal/operators/OnSubscribeToMultimap;->valueSelector:Lrx/functions/Func1;

    iget-object v5, p0, Lrx/internal/operators/OnSubscribeToMultimap;->collectionFactory:Lrx/functions/Func1;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;-><init>(Lrx/Subscriber;Ljava/util/Map;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func1;)V

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeToMultimap;->source:Lrx/Observable;

    invoke-virtual {v0, v1}, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;->subscribeTo(Lrx/Observable;)V

    .line 129
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    :goto_19
    return-void

    .line 121
    :catch_1a
    move-exception v6

    .line 122
    .local v6, "ex":Ljava/lang/Throwable;
    invoke-static {v6}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 123
    invoke-virtual {p1, v6}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_19
.end method

###### Class rx.internal.operators.OnSubscribeToMultimap.DefaultMultimapCollectionFactory (rx.internal.operators.OnSubscribeToMultimap$DefaultMultimapCollectionFactory)
.class final Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;
.super Ljava/lang/Object;
.source "OnSubscribeToMultimap.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeToMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultMultimapCollectionFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 192
    new-instance v0, Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;

    invoke-direct {v0}, Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;-><init>()V

    sput-object v0, Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;->INSTANCE:Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 189
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;, "Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 196
    sget-object v0, Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;->INSTANCE:Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 189
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;, "Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory<TK;TV;>;"
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;->call(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory;, "Lrx/internal/operators/OnSubscribeToMultimap$DefaultMultimapCollectionFactory<TK;TV;>;"
    .local p1, "t1":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class rx.internal.operators.OnSubscribeToMultimap.ToMultimapSubscriber (rx.internal.operators.OnSubscribeToMultimap$ToMultimapSubscriber)
.class final Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;
.super Lrx/internal/operators/DeferredScalarSubscriberSafe;
.source "OnSubscribeToMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeToMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToMultimapSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/DeferredScalarSubscriberSafe",
        "<TT;",
        "Ljava/util/Map",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field private final collectionFactory:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field private final valueSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;Ljava/util/Map;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;",
            "Lrx/functions/Func1",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;, "Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber<TT;TK;TV;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p3, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p4, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p5, "collectionFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TK;+Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/DeferredScalarSubscriberSafe;-><init>(Lrx/Subscriber;)V

    .line 144
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;->value:Ljava/lang/Object;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;->hasValue:Z

    .line 146
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;->keySelector:Lrx/functions/Func1;

    .line 147
    iput-object p4, p0, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;->valueSelector:Lrx/functions/Func1;

    .line 148
    iput-object p5, p0, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;->collectionFactory:Lrx/functions/Func1;

    .line 149
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;, "Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber<TT;TK;TV;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v4, p0, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;->done:Z

    if-eqz v4, :cond_5

    .line 180
    :goto_4
    return-void

    .line 166
    :cond_5
    :try_start_5
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;->keySelector:Lrx/functions/Func1;

    invoke-interface {v4, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 167
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;->valueSelector:Lrx/functions/Func1;

    invoke-interface {v4, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 168
    .local v3, "v":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;->value:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 169
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_2c

    .line 170
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;->collectionFactory:Lrx/functions/Func1;

    invoke-interface {v4, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    check-cast v0, Ljava/util/Collection;

    .line 171
    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;->value:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_2c
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2f} :catch_30

    goto :goto_4

    .line 174
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :catch_30
    move-exception v1

    .line 175
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 176
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;->unsubscribe()V

    .line 177
    invoke-virtual {p0, v1}, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 153
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;, "Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber<TT;TK;TV;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeToMultimap$ToMultimapSubscriber;->request(J)V

    .line 154
    return-void
.end method
