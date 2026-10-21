###### Class dagger.internal.SetFactory (dagger.internal.SetFactory)
.class public final Ldagger/internal/SetFactory;
.super Ljava/lang/Object;
.source "SetFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/SetFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Ljava/util/Set",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_FACTORY:Ldagger/internal/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Factory",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final collectionProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Collection",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private final individualProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/inject/Provider",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Ldagger/internal/SetFactory$1;

    invoke-direct {v0}, Ldagger/internal/SetFactory$1;-><init>()V

    sput-object v0, Ldagger/internal/SetFactory;->EMPTY_FACTORY:Ldagger/internal/Factory;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/inject/Provider",
            "<TT;>;>;",
            "Ljava/util/List",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Collection",
            "<TT;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Ldagger/internal/SetFactory;, "Ldagger/internal/SetFactory<TT;>;"
    .local p1, "individualProviders":Ljava/util/List;, "Ljava/util/List<Ljavax/inject/Provider<TT;>;>;"
    .local p2, "collectionProviders":Ljava/util/List;, "Ljava/util/List<Ljavax/inject/Provider<Ljava/util/Collection<TT;>;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Ldagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    .line 109
    iput-object p2, p0, Ldagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ldagger/internal/SetFactory$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Ldagger/internal/SetFactory$1;

    .prologue
    .line 40
    .local p0, "this":Ldagger/internal/SetFactory;, "Ldagger/internal/SetFactory<TT;>;"
    invoke-direct {p0, p1, p2}, Ldagger/internal/SetFactory;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static builder(II)Ldagger/internal/SetFactory$Builder;
    .registers 4
    .param p0, "individualProviderSize"    # I
    .param p1, "collectionProviderSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)",
            "Ldagger/internal/SetFactory$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ldagger/internal/SetFactory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ldagger/internal/SetFactory$Builder;-><init>(IILdagger/internal/SetFactory$1;)V

    return-object v0
.end method

.method public static empty()Ldagger/internal/Factory;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ldagger/internal/Factory",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Ldagger/internal/SetFactory;->EMPTY_FACTORY:Ldagger/internal/Factory;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 40
    .local p0, "this":Ldagger/internal/SetFactory;, "Ldagger/internal/SetFactory<TT;>;"
    invoke-virtual {p0}, Ldagger/internal/SetFactory;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Ldagger/internal/SetFactory;, "Ldagger/internal/SetFactory<TT;>;"
    iget-object v7, p0, Ldagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 126
    .local v6, "size":I
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Ldagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    .line 127
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v4, "providedCollections":Ljava/util/List;, "Ljava/util/List<Ljava/util/Collection<TT;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v7, p0, Ldagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "c":I
    :goto_18
    if-ge v2, v0, :cond_33

    .line 129
    iget-object v7, p0, Ldagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 130
    .local v3, "providedCollection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v7

    add-int/2addr v6, v7

    .line 131
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 134
    .end local v3    # "providedCollection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_33
    invoke-static {v6}, Ldagger/internal/DaggerCollections;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v5

    .line 135
    .local v5, "providedValues":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v2, 0x0

    iget-object v7, p0, Ldagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    :goto_3e
    if-ge v2, v0, :cond_56

    .line 136
    iget-object v7, p0, Ldagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 138
    :cond_56
    const/4 v2, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    :goto_5b
    if-ge v2, v0, :cond_7c

    .line 139
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_67
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_79

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 140
    .local v1, "element":Ljava/lang/Object;, "TT;"
    invoke-static {v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 138
    .end local v1    # "element":Ljava/lang/Object;, "TT;"
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 144
    :cond_7c
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    return-object v7
.end method

###### Class dagger.internal.SetFactory.AnonymousClass1 (dagger.internal.SetFactory$1)
.class final Ldagger/internal/SetFactory$1;
.super Ljava/lang/Object;
.source "SetFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/SetFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Ldagger/internal/SetFactory$1;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

###### Class dagger.internal.SetFactory.Builder (dagger.internal.SetFactory$Builder)
.class public final Ldagger/internal/SetFactory$Builder;
.super Ljava/lang/Object;
.source "SetFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/SetFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final collectionProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Collection",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private final individualProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/inject/Provider",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-class v0, Ldagger/internal/SetFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ldagger/internal/SetFactory$Builder;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(II)V
    .registers 4
    .param p1, "individualProviderSize"    # I
    .param p2, "collectionProviderSize"    # I

    .prologue
    .line 72
    .local p0, "this":Ldagger/internal/SetFactory$Builder;, "Ldagger/internal/SetFactory$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Ldagger/internal/DaggerCollections;->presizedList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/SetFactory$Builder;->individualProviders:Ljava/util/List;

    .line 74
    invoke-static {p2}, Ldagger/internal/DaggerCollections;->presizedList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/SetFactory$Builder;->collectionProviders:Ljava/util/List;

    .line 75
    return-void
.end method

.method synthetic constructor <init>(IILdagger/internal/SetFactory$1;)V
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ldagger/internal/SetFactory$1;

    .prologue
    .line 68
    .local p0, "this":Ldagger/internal/SetFactory$Builder;, "Ldagger/internal/SetFactory$Builder<TT;>;"
    invoke-direct {p0, p1, p2}, Ldagger/internal/SetFactory$Builder;-><init>(II)V

    return-void
.end method


# virtual methods
.method public addCollectionProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<+",
            "Ljava/util/Collection",
            "<+TT;>;>;)",
            "Ldagger/internal/SetFactory$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Ldagger/internal/SetFactory$Builder;, "Ldagger/internal/SetFactory$Builder<TT;>;"
    .local p1, "collectionProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+Ljava/util/Collection<+TT;>;>;"
    sget-boolean v0, Ldagger/internal/SetFactory$Builder;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Codegen error? Null provider"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 89
    :cond_e
    iget-object v0, p0, Ldagger/internal/SetFactory$Builder;->collectionProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-object p0
.end method

.method public addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<+TT;>;)",
            "Ldagger/internal/SetFactory$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Ldagger/internal/SetFactory$Builder;, "Ldagger/internal/SetFactory$Builder<TT;>;"
    .local p1, "individualProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TT;>;"
    sget-boolean v0, Ldagger/internal/SetFactory$Builder;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Codegen error? Null provider"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 81
    :cond_e
    iget-object v0, p0, Ldagger/internal/SetFactory$Builder;->individualProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-object p0
.end method

.method public build()Ldagger/internal/SetFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/internal/SetFactory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Ldagger/internal/SetFactory$Builder;, "Ldagger/internal/SetFactory$Builder<TT;>;"
    sget-boolean v0, Ldagger/internal/SetFactory$Builder;->$assertionsDisabled:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Ldagger/internal/SetFactory$Builder;->individualProviders:Ljava/util/List;

    invoke-static {v0}, Ldagger/internal/DaggerCollections;->hasDuplicates(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Codegen error?  Duplicates in the provider list"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 96
    :cond_14
    sget-boolean v0, Ldagger/internal/SetFactory$Builder;->$assertionsDisabled:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Ldagger/internal/SetFactory$Builder;->collectionProviders:Ljava/util/List;

    invoke-static {v0}, Ldagger/internal/DaggerCollections;->hasDuplicates(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Codegen error?  Duplicates in the provider list"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 99
    :cond_28
    new-instance v0, Ldagger/internal/SetFactory;

    iget-object v1, p0, Ldagger/internal/SetFactory$Builder;->individualProviders:Ljava/util/List;

    iget-object v2, p0, Ldagger/internal/SetFactory$Builder;->collectionProviders:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ldagger/internal/SetFactory;-><init>(Ljava/util/List;Ljava/util/List;Ldagger/internal/SetFactory$1;)V

    return-object v0
.end method
