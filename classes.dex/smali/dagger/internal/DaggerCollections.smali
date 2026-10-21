###### Class dagger.internal.DaggerCollections (dagger.internal.DaggerCollections)
.class public final Ldagger/internal/DaggerCollections;
.super Ljava/lang/Object;
.source "DaggerCollections.java"


# static fields
.field private static final MAX_POWER_OF_TWO:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInitialCapacity(I)I
    .registers 3
    .param p0, "expectedSize"    # I

    .prologue
    .line 78
    const/4 v0, 0x3

    if-ge p0, v0, :cond_6

    .line 79
    add-int/lit8 v0, p0, 0x1

    .line 87
    :goto_5
    return v0

    .line 81
    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_13

    .line 85
    int-to-float v0, p0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_5

    .line 87
    :cond_13
    const v0, 0x7fffffff

    goto :goto_5
.end method

.method public static hasDuplicates(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v1, 0x0

    .line 54
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_9

    .line 58
    :cond_8
    :goto_8
    return v1

    .line 57
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    .local v0, "asSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_8

    const/4 v1, 0x1

    goto :goto_8
.end method

.method static newHashSetWithExpectedSize(I)Ljava/util/HashSet;
    .registers 3
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ldagger/internal/DaggerCollections;->calculateInitialCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method static newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;
    .registers 3
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p0}, Ldagger/internal/DaggerCollections;->calculateInitialCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method public static presizedList(I)Ljava/util/List;
    .registers 2
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    if-nez p0, :cond_7

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 47
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_6
.end method
