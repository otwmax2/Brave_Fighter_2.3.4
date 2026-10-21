###### Class dagger.internal.MapProviderFactory (dagger.internal.MapProviderFactory)
.class public final Ldagger/internal/MapProviderFactory;
.super Ljava/lang/Object;
.source "MapProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/MapProviderFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Ljava/util/Map",
        "<TK;",
        "Ljavax/inject/Provider",
        "<TV;>;>;>;"
    }
.end annotation


# static fields
.field private static final EMPTY:Ldagger/internal/MapProviderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/MapProviderFactory",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contributingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/inject/Provider",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    new-instance v0, Ldagger/internal/MapProviderFactory;

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ldagger/internal/MapProviderFactory;-><init>(Ljava/util/Map;)V

    sput-object v0, Ldagger/internal/MapProviderFactory;->EMPTY:Ldagger/internal/MapProviderFactory;

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/inject/Provider",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Ldagger/internal/MapProviderFactory;, "Ldagger/internal/MapProviderFactory<TK;TV;>;"
    .local p1, "contributingMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/inject/Provider<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/MapProviderFactory;->contributingMap:Ljava/util/Map;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ldagger/internal/MapProviderFactory$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Ldagger/internal/MapProviderFactory$1;

    .prologue
    .line 35
    .local p0, "this":Ldagger/internal/MapProviderFactory;, "Ldagger/internal/MapProviderFactory<TK;TV;>;"
    invoke-direct {p0, p1}, Ldagger/internal/MapProviderFactory;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static builder(I)Ldagger/internal/MapProviderFactory$Builder;
    .registers 3
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ldagger/internal/MapProviderFactory$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ldagger/internal/MapProviderFactory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldagger/internal/MapProviderFactory$Builder;-><init>(ILdagger/internal/MapProviderFactory$1;)V

    return-object v0
.end method

.method public static empty()Ldagger/internal/MapProviderFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ldagger/internal/MapProviderFactory",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Ldagger/internal/MapProviderFactory;->EMPTY:Ldagger/internal/MapProviderFactory;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35
    .local p0, "this":Ldagger/internal/MapProviderFactory;, "Ldagger/internal/MapProviderFactory<TK;TV;>;"
    invoke-virtual {p0}, Ldagger/internal/MapProviderFactory;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/inject/Provider",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Ldagger/internal/MapProviderFactory;, "Ldagger/internal/MapProviderFactory<TK;TV;>;"
    iget-object v0, p0, Ldagger/internal/MapProviderFactory;->contributingMap:Ljava/util/Map;

    return-object v0
.end method

###### Class dagger.internal.MapProviderFactory.AnonymousClass1 (dagger.internal.MapProviderFactory$1)
.class synthetic Ldagger/internal/MapProviderFactory$1;
.super Ljava/lang/Object;
.source "MapProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/MapProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class dagger.internal.MapProviderFactory.Builder (dagger.internal.MapProviderFactory$Builder)
.class public final Ldagger/internal/MapProviderFactory$Builder;
.super Ljava/lang/Object;
.source "MapProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/MapProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mapBuilder:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;",
            "Ljavax/inject/Provider",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 76
    .local p0, "this":Ldagger/internal/MapProviderFactory$Builder;, "Ldagger/internal/MapProviderFactory$Builder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Ldagger/internal/DaggerCollections;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/MapProviderFactory$Builder;->mapBuilder:Ljava/util/LinkedHashMap;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(ILdagger/internal/MapProviderFactory$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Ldagger/internal/MapProviderFactory$1;

    .prologue
    .line 73
    .local p0, "this":Ldagger/internal/MapProviderFactory$Builder;, "Ldagger/internal/MapProviderFactory$Builder<TK;TV;>;"
    invoke-direct {p0, p1}, Ldagger/internal/MapProviderFactory$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Ldagger/internal/MapProviderFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/internal/MapProviderFactory",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Ldagger/internal/MapProviderFactory$Builder;, "Ldagger/internal/MapProviderFactory$Builder<TK;TV;>;"
    new-instance v0, Ldagger/internal/MapProviderFactory;

    iget-object v1, p0, Ldagger/internal/MapProviderFactory$Builder;->mapBuilder:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldagger/internal/MapProviderFactory;-><init>(Ljava/util/Map;Ldagger/internal/MapProviderFactory$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljavax/inject/Provider",
            "<TV;>;)",
            "Ldagger/internal/MapProviderFactory$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Ldagger/internal/MapProviderFactory$Builder;, "Ldagger/internal/MapProviderFactory$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "providerOfValue":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TV;>;"
    if-nez p1, :cond_a

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_a
    if-nez p2, :cond_14

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The provider of the value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_14
    iget-object v0, p0, Ldagger/internal/MapProviderFactory$Builder;->mapBuilder:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-object p0
.end method
