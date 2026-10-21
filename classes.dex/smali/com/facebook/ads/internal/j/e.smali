###### Class com.facebook.ads.internal.j.e (com.facebook.ads.internal.j.e)
.class public Lcom/facebook/ads/internal/j/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/ads/internal/j/f;",
        "E:",
        "Lcom/facebook/ads/internal/j/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/j/e;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/j/e;->b:Ljava/util/Queue;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    move v1, v0

    move v2, v0

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_27
    if-lt v0, v2, :cond_2f

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    :cond_2f
    return-void
.end method

.method private b(Lcom/facebook/ads/internal/j/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/j/e;->a:Ljava/util/Map;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/internal/j/e;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/j/e;->a(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/j/f;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/j/f;->b(Lcom/facebook/ads/internal/j/d;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/j/f;->a(Lcom/facebook/ads/internal/j/d;)V

    goto :goto_25
.end method


# virtual methods
.method public declared-synchronized a(Lcom/facebook/ads/internal/j/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/j/e;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/facebook/ads/internal/j/e;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_e
    iget-object v0, p0, Lcom/facebook/ads/internal/j/e;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/facebook/ads/internal/j/e;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/j/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/j/e;->b(Lcom/facebook/ads/internal/j/d;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/j/e;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    goto :goto_e

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/facebook/ads/internal/j/e;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_27

    :cond_2f
    monitor-exit p0

    return-void
.end method

.method public varargs declared-synchronized a([Lcom/facebook/ads/internal/j/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_5

    :cond_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    array-length v1, p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/j/e;->a(Lcom/facebook/ads/internal/j/f;)Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_11

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/ads/internal/j/f;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    if-nez p1, :cond_7

    move v0, v2

    :goto_5
    monitor-exit p0

    return v0

    :cond_7
    :try_start_7
    invoke-virtual {p1}, Lcom/facebook/ads/internal/j/f;->a()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/j/e;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/facebook/ads/internal/j/e;->a:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    iget-object v1, p0, Lcom/facebook/ads/internal/j/e;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/j/e;->a(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    :goto_2d
    if-ge v3, v4, :cond_41

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3d

    move v0, v2

    goto :goto_5

    :cond_3d
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2d

    :cond_41
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_4b

    move-result v0

    goto :goto_5

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized b([Lcom/facebook/ads/internal/j/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_5

    :cond_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    array-length v1, p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/j/e;->b(Lcom/facebook/ads/internal/j/f;)Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_11

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/facebook/ads/internal/j/f;)Z
    .registers 7
    .param p1    # Lcom/facebook/ads/internal/j/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    if-nez p1, :cond_7

    move v0, v2

    :goto_5
    monitor-exit p0

    return v0

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/ads/internal/j/e;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/j/f;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_17

    move v0, v2

    goto :goto_5

    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    :goto_1c
    if-ge v3, v4, :cond_39

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_35

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_3b

    const/4 v0, 0x1

    goto :goto_5

    :cond_35
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1c

    :cond_39
    move v0, v2

    goto :goto_5

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
