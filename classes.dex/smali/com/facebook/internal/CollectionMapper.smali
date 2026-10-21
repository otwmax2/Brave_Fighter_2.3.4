###### Class com.facebook.internal.CollectionMapper (com.facebook.internal.CollectionMapper)
.class public Lcom/facebook/internal/CollectionMapper;
.super Ljava/lang/Object;
.source "CollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/CollectionMapper$Collection;,
        Lcom/facebook/internal/CollectionMapper$ValueMapper;,
        Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;,
        Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;,
        Lcom/facebook/internal/CollectionMapper$OnErrorListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iterate(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$ValueMapper;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 13
    .param p1, "valueMapper"    # Lcom/facebook/internal/CollectionMapper$ValueMapper;
    .param p2, "onMapperCompleteListener"    # Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/internal/CollectionMapper$Collection",
            "<TT;>;",
            "Lcom/facebook/internal/CollectionMapper$ValueMapper;",
            "Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<TT;>;"
    new-instance v0, Lcom/facebook/internal/Mutable;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 39
    .local v0, "didReturnError":Lcom/facebook/internal/Mutable;, "Lcom/facebook/internal/Mutable<Ljava/lang/Boolean;>;"
    new-instance v6, Lcom/facebook/internal/Mutable;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 40
    .local v6, "pendingJobCount":Lcom/facebook/internal/Mutable;, "Lcom/facebook/internal/Mutable<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/facebook/internal/CollectionMapper$1;

    invoke-direct {v1, v0, v6, p2}, Lcom/facebook/internal/CollectionMapper$1;-><init>(Lcom/facebook/internal/Mutable;Lcom/facebook/internal/Mutable;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 61
    .local v1, "jobCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    invoke-interface {p0}, Lcom/facebook/internal/CollectionMapper$Collection;->keyIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 62
    .local v3, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 63
    .local v4, "keys":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_30

    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 67
    :cond_30
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_34
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 68
    .local v2, "key":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v2}, Lcom/facebook/internal/CollectionMapper$Collection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 69
    .local v7, "value":Ljava/lang/Object;
    new-instance v5, Lcom/facebook/internal/CollectionMapper$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/facebook/internal/CollectionMapper$2;-><init>(Lcom/facebook/internal/CollectionMapper$Collection;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 82
    .local v5, "onMapValueCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;
    iget-object v8, v6, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    iget-object v8, v6, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v6, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 83
    invoke-interface {p1, v7, v5}, Lcom/facebook/internal/CollectionMapper$ValueMapper;->mapValue(Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_34

    .line 85
    .end local v2    # "key":Ljava/lang/Object;, "TT;"
    .end local v5    # "onMapValueCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_5f
    invoke-interface {v1}, Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;->onComplete()V

    .line 86
    return-void
.end method

###### Class com.facebook.internal.CollectionMapper.AnonymousClass1 (com.facebook.internal.CollectionMapper$1)
.class final Lcom/facebook/internal/CollectionMapper$1;
.super Ljava/lang/Object;
.source "CollectionMapper.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/CollectionMapper;->iterate(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$ValueMapper;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$didReturnError:Lcom/facebook/internal/Mutable;

.field final synthetic val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

.field final synthetic val$pendingJobCount:Lcom/facebook/internal/Mutable;


# direct methods
.method constructor <init>(Lcom/facebook/internal/Mutable;Lcom/facebook/internal/Mutable;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 4

    .prologue
    .line 40
    iput-object p1, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    iput-object p2, p0, Lcom/facebook/internal/CollectionMapper$1;->val$pendingJobCount:Lcom/facebook/internal/Mutable;

    iput-object p3, p0, Lcom/facebook/internal/CollectionMapper$1;->val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    iget-object v0, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 49
    :cond_c
    :goto_c
    return-void

    .line 46
    :cond_d
    iget-object v1, p0, Lcom/facebook/internal/CollectionMapper$1;->val$pendingJobCount:Lcom/facebook/internal/Mutable;

    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$pendingJobCount:Lcom/facebook/internal/Mutable;

    iget-object v0, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_c

    .line 47
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-interface {v0}, Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;->onComplete()V

    goto :goto_c
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 4
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    iget-object v0, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 58
    :goto_c
    return-void

    .line 56
    :cond_d
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-interface {v0, p1}, Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_c
.end method

###### Class com.facebook.internal.CollectionMapper.AnonymousClass2 (com.facebook.internal.CollectionMapper$2)
.class final Lcom/facebook/internal/CollectionMapper$2;
.super Ljava/lang/Object;
.source "CollectionMapper.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/CollectionMapper;->iterate(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$ValueMapper;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$collection:Lcom/facebook/internal/CollectionMapper$Collection;

.field final synthetic val$jobCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/facebook/internal/CollectionMapper$Collection;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 4

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/internal/CollectionMapper$2;->val$collection:Lcom/facebook/internal/CollectionMapper$Collection;

    iput-object p2, p0, Lcom/facebook/internal/CollectionMapper$2;->val$key:Ljava/lang/Object;

    iput-object p3, p0, Lcom/facebook/internal/CollectionMapper$2;->val$jobCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 5
    .param p1, "mappedValue"    # Ljava/lang/Object;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$2;->val$collection:Lcom/facebook/internal/CollectionMapper$Collection;

    iget-object v1, p0, Lcom/facebook/internal/CollectionMapper$2;->val$key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/internal/CollectionMapper$2;->val$jobCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-interface {v0, v1, p1, v2}, Lcom/facebook/internal/CollectionMapper$Collection;->set(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V

    .line 74
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$2;->val$jobCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-interface {v0}, Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;->onComplete()V

    .line 75
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 3
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$2;->val$jobCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-interface {v0, p1}, Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 80
    return-void
.end method

###### Class com.facebook.internal.CollectionMapper.Collection (com.facebook.internal.CollectionMapper$Collection)
.class public interface abstract Lcom/facebook/internal/CollectionMapper$Collection;
.super Ljava/lang/Object;
.source "CollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/CollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Collection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract keyIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lcom/facebook/internal/CollectionMapper$OnErrorListener;",
            ")V"
        }
    .end annotation
.end method

###### Class com.facebook.internal.CollectionMapper.OnErrorListener (com.facebook.internal.CollectionMapper$OnErrorListener)
.class public interface abstract Lcom/facebook/internal/CollectionMapper$OnErrorListener;
.super Ljava/lang/Object;
.source "CollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/CollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnErrorListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/facebook/FacebookException;)V
.end method

###### Class com.facebook.internal.CollectionMapper.OnMapValueCompleteListener (com.facebook.internal.CollectionMapper$OnMapValueCompleteListener)
.class public interface abstract Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;
.super Ljava/lang/Object;
.source "CollectionMapper.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/CollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMapValueCompleteListener"
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/lang/Object;)V
.end method

###### Class com.facebook.internal.CollectionMapper.OnMapperCompleteListener (com.facebook.internal.CollectionMapper$OnMapperCompleteListener)
.class public interface abstract Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
.super Ljava/lang/Object;
.source "CollectionMapper.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/CollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMapperCompleteListener"
.end annotation


# virtual methods
.method public abstract onComplete()V
.end method

###### Class com.facebook.internal.CollectionMapper.ValueMapper (com.facebook.internal.CollectionMapper$ValueMapper)
.class public interface abstract Lcom/facebook/internal/CollectionMapper$ValueMapper;
.super Ljava/lang/Object;
.source "CollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/CollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ValueMapper"
.end annotation


# virtual methods
.method public abstract mapValue(Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end method
