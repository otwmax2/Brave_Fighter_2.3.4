###### Class com.google.android.gms.internal.zzanw (com.google.android.gms.internal.zzanw)
.class public final Lcom/google/android/gms/internal/zzanw;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzanw$zzb;,
        Lcom/google/android/gms/internal/zzanw$zza;,
        Lcom/google/android/gms/internal/zzanw$zzc;,
        Lcom/google/android/gms/internal/zzanw$zzd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final bfg:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aQi:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field bfh:Lcom/google/android/gms/internal/zzanw$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final bfi:Lcom/google/android/gms/internal/zzanw$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private bfj:Lcom/google/android/gms/internal/zzanw$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanw$zza;"
        }
    .end annotation
.end field

.field private bfk:Lcom/google/android/gms/internal/zzanw$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanw$zzb;"
        }
    .end annotation
.end field

.field modCount:I

.field size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/zzanw;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/gms/internal/zzanw;->$assertionsDisabled:Z

    new-instance v0, Lcom/google/android/gms/internal/zzanw$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzanw$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzanw;->bfg:Ljava/util/Comparator;

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzanw;->bfg:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzanw;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/zzanw;->size:I

    iput v0, p0, Lcom/google/android/gms/internal/zzanw;->modCount:I

    new-instance v0, Lcom/google/android/gms/internal/zzanw$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzanw$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanw;->bfi:Lcom/google/android/gms/internal/zzanw$zzd;

    if-eqz p1, :cond_14

    :goto_11
    iput-object p1, p0, Lcom/google/android/gms/internal/zzanw;->aQi:Ljava/util/Comparator;

    return-void

    :cond_14
    sget-object p1, Lcom/google/android/gms/internal/zzanw;->bfg:Ljava/util/Comparator;

    goto :goto_11
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    if-eq p1, p2, :cond_a

    if-eqz p1, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private zza(Lcom/google/android/gms/internal/zzanw$zzd;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v5, v3, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object v4, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    if-eqz v4, :cond_f

    iput-object p1, v4, Lcom/google/android/gms/internal/zzanw$zzd;->bfr:Lcom/google/android/gms/internal/zzanw$zzd;

    :cond_f
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/zzanw;->zza(Lcom/google/android/gms/internal/zzanw$zzd;Lcom/google/android/gms/internal/zzanw$zzd;)V

    iput-object p1, v3, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object v3, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfr:Lcom/google/android/gms/internal/zzanw$zzd;

    if-eqz v0, :cond_36

    iget v0, v0, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    move v2, v0

    :goto_1b
    if-eqz v4, :cond_38

    iget v0, v4, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    :goto_1f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    iget v0, p1, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    if-eqz v5, :cond_2d

    iget v1, v5, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    return-void

    :cond_36
    move v2, v1

    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_1f
.end method

.method private zza(Lcom/google/android/gms/internal/zzanw$zzd;Lcom/google/android/gms/internal/zzanw$zzd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfr:Lcom/google/android/gms/internal/zzanw$zzd;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfr:Lcom/google/android/gms/internal/zzanw$zzd;

    if-eqz p2, :cond_9

    iput-object v0, p2, Lcom/google/android/gms/internal/zzanw$zzd;->bfr:Lcom/google/android/gms/internal/zzanw$zzd;

    :cond_9
    if-eqz v0, :cond_23

    iget-object v1, v0, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    if-ne v1, p1, :cond_12

    iput-object p2, v0, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    :goto_11
    return-void

    :cond_12
    sget-boolean v1, Lcom/google/android/gms/internal/zzanw;->$assertionsDisabled:Z

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    if-eq v1, p1, :cond_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_20
    iput-object p2, v0, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    goto :goto_11

    :cond_23
    iput-object p2, p0, Lcom/google/android/gms/internal/zzanw;->bfh:Lcom/google/android/gms/internal/zzanw$zzd;

    goto :goto_11
.end method

.method private zzb(Lcom/google/android/gms/internal/zzanw$zzd;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v5, v3, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object v5, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    if-eqz v5, :cond_f

    iput-object p1, v5, Lcom/google/android/gms/internal/zzanw$zzd;->bfr:Lcom/google/android/gms/internal/zzanw$zzd;

    :cond_f
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/zzanw;->zza(Lcom/google/android/gms/internal/zzanw$zzd;Lcom/google/android/gms/internal/zzanw$zzd;)V

    iput-object p1, v3, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object v3, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfr:Lcom/google/android/gms/internal/zzanw$zzd;

    if-eqz v0, :cond_36

    iget v0, v0, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    move v2, v0

    :goto_1b
    if-eqz v5, :cond_38

    iget v0, v5, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    :goto_1f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    iget v0, p1, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    if-eqz v4, :cond_2d

    iget v1, v4, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    return-void

    :cond_36
    move v2, v1

    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_1f
.end method

.method private zzb(Lcom/google/android/gms/internal/zzanw$zzd;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    :goto_3
    if-eqz p1, :cond_30

    iget-object v3, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    if-eqz v3, :cond_31

    iget v0, v3, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    move v2, v0

    :goto_e
    if-eqz v4, :cond_33

    iget v0, v4, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    :goto_12
    sub-int v5, v2, v0

    const/4 v6, -0x2

    if-ne v5, v6, :cond_4c

    iget-object v3, v4, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v0, v4, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    if-eqz v0, :cond_35

    iget v0, v0, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    move v2, v0

    :goto_20
    if-eqz v3, :cond_37

    iget v0, v3, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    :goto_24
    sub-int/2addr v0, v2

    if-eq v0, v7, :cond_2b

    if-nez v0, :cond_39

    if-nez p2, :cond_39

    :cond_2b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzanw;->zza(Lcom/google/android/gms/internal/zzanw$zzd;)V

    :goto_2e
    if-eqz p2, :cond_68

    :cond_30
    :goto_30
    return-void

    :cond_31
    move v2, v1

    goto :goto_e

    :cond_33
    move v0, v1

    goto :goto_12

    :cond_35
    move v2, v1

    goto :goto_20

    :cond_37
    move v0, v1

    goto :goto_24

    :cond_39
    sget-boolean v2, Lcom/google/android/gms/internal/zzanw;->$assertionsDisabled:Z

    if-nez v2, :cond_45

    if-eq v0, v8, :cond_45

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_45
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzanw;->zzb(Lcom/google/android/gms/internal/zzanw$zzd;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzanw;->zza(Lcom/google/android/gms/internal/zzanw$zzd;)V

    goto :goto_2e

    :cond_4c
    const/4 v4, 0x2

    if-ne v5, v4, :cond_82

    iget-object v4, v3, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v0, v3, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    if-eqz v0, :cond_6b

    iget v0, v0, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    move v2, v0

    :goto_58
    if-eqz v4, :cond_6d

    iget v0, v4, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    :goto_5c
    sub-int/2addr v0, v2

    if-eq v0, v8, :cond_63

    if-nez v0, :cond_6f

    if-nez p2, :cond_6f

    :cond_63
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzanw;->zzb(Lcom/google/android/gms/internal/zzanw$zzd;)V

    :goto_66
    if-nez p2, :cond_30

    :cond_68
    iget-object p1, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfr:Lcom/google/android/gms/internal/zzanw$zzd;

    goto :goto_3

    :cond_6b
    move v2, v1

    goto :goto_58

    :cond_6d
    move v0, v1

    goto :goto_5c

    :cond_6f
    sget-boolean v2, Lcom/google/android/gms/internal/zzanw;->$assertionsDisabled:Z

    if-nez v2, :cond_7b

    if-eq v0, v7, :cond_7b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7b
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzanw;->zza(Lcom/google/android/gms/internal/zzanw$zzd;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzanw;->zzb(Lcom/google/android/gms/internal/zzanw$zzd;)V

    goto :goto_66

    :cond_82
    if-nez v5, :cond_8b

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    if-eqz p2, :cond_68

    goto :goto_30

    :cond_8b
    sget-boolean v3, Lcom/google/android/gms/internal/zzanw;->$assertionsDisabled:Z

    if-nez v3, :cond_99

    if-eq v5, v7, :cond_99

    if-eq v5, v8, :cond_99

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_99
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    if-nez p2, :cond_68

    goto :goto_30
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanw;->bfh:Lcom/google/android/gms/internal/zzanw$zzd;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzanw;->size:I

    iget v0, p0, Lcom/google/android/gms/internal/zzanw;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzanw;->modCount:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw;->bfi:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object v0, v0, Lcom/google/android/gms/internal/zzanw$zzd;->bfu:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object v0, v0, Lcom/google/android/gms/internal/zzanw$zzd;->bfo:Lcom/google/android/gms/internal/zzanw$zzd;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzanw;->zzco(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzanw$zzd;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw;->bfj:Lcom/google/android/gms/internal/zzanw$zza;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzanw$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzanw$zza;-><init>(Lcom/google/android/gms/internal/zzanw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanw;->bfj:Lcom/google/android/gms/internal/zzanw$zza;

    goto :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzanw;->zzco(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzanw$zzd;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/google/android/gms/internal/zzanw$zzd;->aQx:Ljava/lang/Object;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw;->bfk:Lcom/google/android/gms/internal/zzanw$zzb;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzanw$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzanw$zzb;-><init>(Lcom/google/android/gms/internal/zzanw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanw;->bfk:Lcom/google/android/gms/internal/zzanw$zzb;

    goto :goto_4
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzanw;->zza(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/zzanw$zzd;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzanw$zzd;->aQx:Ljava/lang/Object;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzanw$zzd;->aQx:Ljava/lang/Object;

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzanw;->zzcp(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzanw$zzd;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/google/android/gms/internal/zzanw$zzd;->aQx:Ljava/lang/Object;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzanw;->size:I

    return v0
.end method

.method zza(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/zzanw$zzd;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzanw;->aQi:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanw;->bfh:Lcom/google/android/gms/internal/zzanw$zzd;

    const/4 v0, 0x0

    if-eqz v2, :cond_82

    sget-object v0, Lcom/google/android/gms/internal/zzanw;->bfg:Ljava/util/Comparator;

    if-ne v5, v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    :goto_f
    if-eqz v0, :cond_1d

    iget-object v3, v2, Lcom/google/android/gms/internal/zzanw$zzd;->aQw:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    :goto_17
    if-nez v3, :cond_24

    move-object v1, v2

    :cond_1a
    :goto_1a
    return-object v1

    :cond_1b
    move-object v0, v1

    goto :goto_f

    :cond_1d
    iget-object v3, v2, Lcom/google/android/gms/internal/zzanw$zzd;->aQw:Ljava/lang/Object;

    invoke-interface {v5, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto :goto_17

    :cond_24
    if-gez v3, :cond_53

    iget-object v4, v2, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    :goto_28
    if-nez v4, :cond_56

    move v6, v3

    move-object v3, v2

    move v2, v6

    :goto_2d
    if-eqz p2, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanw;->bfi:Lcom/google/android/gms/internal/zzanw$zzd;

    if-nez v3, :cond_6f

    sget-object v0, Lcom/google/android/gms/internal/zzanw;->bfg:Ljava/util/Comparator;

    if-ne v5, v0, :cond_58

    instance-of v0, p1, Ljava/lang/Comparable;

    if-nez v0, :cond_58

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " is not Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    iget-object v4, v2, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    goto :goto_28

    :cond_56
    move-object v2, v4

    goto :goto_f

    :cond_58
    new-instance v0, Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzanw$zzd;->bfu:Lcom/google/android/gms/internal/zzanw$zzd;

    invoke-direct {v0, v3, p1, v1, v2}, Lcom/google/android/gms/internal/zzanw$zzd;-><init>(Lcom/google/android/gms/internal/zzanw$zzd;Ljava/lang/Object;Lcom/google/android/gms/internal/zzanw$zzd;Lcom/google/android/gms/internal/zzanw$zzd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanw;->bfh:Lcom/google/android/gms/internal/zzanw$zzd;

    :goto_61
    iget v1, p0, Lcom/google/android/gms/internal/zzanw;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzanw;->size:I

    iget v1, p0, Lcom/google/android/gms/internal/zzanw;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzanw;->modCount:I

    move-object v1, v0

    goto :goto_1a

    :cond_6f
    new-instance v0, Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzanw$zzd;->bfu:Lcom/google/android/gms/internal/zzanw$zzd;

    invoke-direct {v0, v3, p1, v1, v4}, Lcom/google/android/gms/internal/zzanw$zzd;-><init>(Lcom/google/android/gms/internal/zzanw$zzd;Ljava/lang/Object;Lcom/google/android/gms/internal/zzanw$zzd;Lcom/google/android/gms/internal/zzanw$zzd;)V

    if-gez v2, :cond_7f

    iput-object v0, v3, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    :goto_7a
    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/google/android/gms/internal/zzanw;->zzb(Lcom/google/android/gms/internal/zzanw$zzd;Z)V

    goto :goto_61

    :cond_7f
    iput-object v0, v3, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    goto :goto_7a

    :cond_82
    move-object v3, v2

    move v2, v0

    goto :goto_2d
.end method

.method zza(Lcom/google/android/gms/internal/zzanw$zzd;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_10

    iget-object v0, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfu:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfo:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzanw$zzd;->bfo:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfo:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfu:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzanw$zzd;->bfu:Lcom/google/android/gms/internal/zzanw$zzd;

    :cond_10
    iget-object v0, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfr:Lcom/google/android/gms/internal/zzanw$zzd;

    if-eqz v0, :cond_50

    if-eqz v1, :cond_50

    iget v3, v0, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    iget v4, v1, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    if-le v3, v4, :cond_4b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanw$zzd;->e()Lcom/google/android/gms/internal/zzanw$zzd;

    move-result-object v0

    :goto_24
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzanw;->zza(Lcom/google/android/gms/internal/zzanw$zzd;Z)V

    iget-object v3, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    if-eqz v3, :cond_73

    iget v1, v3, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    iput-object v3, v0, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzanw$zzd;->bfr:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object v5, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    :goto_33
    iget-object v3, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    if-eqz v3, :cond_3f

    iget v2, v3, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    iput-object v3, v0, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzanw$zzd;->bfr:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object v5, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    :cond_3f
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzanw;->zza(Lcom/google/android/gms/internal/zzanw$zzd;Lcom/google/android/gms/internal/zzanw$zzd;)V

    :goto_4a
    return-void

    :cond_4b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzanw$zzd;->d()Lcom/google/android/gms/internal/zzanw$zzd;

    move-result-object v0

    goto :goto_24

    :cond_50
    if-eqz v0, :cond_67

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzanw;->zza(Lcom/google/android/gms/internal/zzanw$zzd;Lcom/google/android/gms/internal/zzanw$zzd;)V

    iput-object v5, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    :goto_57
    invoke-direct {p0, v3, v2}, Lcom/google/android/gms/internal/zzanw;->zzb(Lcom/google/android/gms/internal/zzanw$zzd;Z)V

    iget v0, p0, Lcom/google/android/gms/internal/zzanw;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzanw;->size:I

    iget v0, p0, Lcom/google/android/gms/internal/zzanw;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzanw;->modCount:I

    goto :goto_4a

    :cond_67
    if-eqz v1, :cond_6f

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zzanw;->zza(Lcom/google/android/gms/internal/zzanw$zzd;Lcom/google/android/gms/internal/zzanw$zzd;)V

    iput-object v5, p1, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    goto :goto_57

    :cond_6f
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/zzanw;->zza(Lcom/google/android/gms/internal/zzanw$zzd;Lcom/google/android/gms/internal/zzanw$zzd;)V

    goto :goto_57

    :cond_73
    move v1, v2

    goto :goto_33
.end method

.method zzc(Ljava/util/Map$Entry;)Lcom/google/android/gms/internal/zzanw$zzd;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzanw;->zzco(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzanw$zzd;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, v0, Lcom/google/android/gms/internal/zzanw$zzd;->aQx:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzanw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_17
    if-eqz v1, :cond_1c

    :goto_19
    return-object v0

    :cond_1a
    const/4 v1, 0x0

    goto :goto_17

    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method zzco(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzanw$zzd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/zzanw;->zza(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/zzanw$zzd;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    :cond_8
    :goto_8
    return-object v0

    :catch_9
    move-exception v1

    goto :goto_8
.end method

.method zzcp(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzanw$zzd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzanw;->zzco(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzanw$zzd;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzanw;->zza(Lcom/google/android/gms/internal/zzanw$zzd;Z)V

    :cond_a
    return-object v0
.end method

###### Class com.google.android.gms.internal.zzanw.AnonymousClass1 (com.google.android.gms.internal.zzanw$1)
.class final Lcom/google/android/gms/internal/zzanw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzanw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Comparable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzanw$1;->zza(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method public zza(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 4

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

###### Class com.google.android.gms.internal.zzanw.zza (com.google.android.gms.internal.zzanw$zza)
.class Lcom/google/android/gms/internal/zzanw$zza;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzanw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic bfl:Lcom/google/android/gms/internal/zzanw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzanw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanw$zza;->bfl:Lcom/google/android/gms/internal/zzanw;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zza;->bfl:Lcom/google/android/gms/internal/zzanw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanw;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zza;->bfl:Lcom/google/android/gms/internal/zzanw;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzanw;->zzc(Ljava/util/Map$Entry;)Lcom/google/android/gms/internal/zzanw$zzd;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzanw$zza$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzanw$zza$1;-><init>(Lcom/google/android/gms/internal/zzanw$zza;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzanw$zza;->bfl:Lcom/google/android/gms/internal/zzanw;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzanw;->zzc(Ljava/util/Map$Entry;)Lcom/google/android/gms/internal/zzanw$zzd;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zza;->bfl:Lcom/google/android/gms/internal/zzanw;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzanw;->zza(Lcom/google/android/gms/internal/zzanw$zzd;Z)V

    move v0, v1

    goto :goto_6
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zza;->bfl:Lcom/google/android/gms/internal/zzanw;

    iget v0, v0, Lcom/google/android/gms/internal/zzanw;->size:I

    return v0
.end method

###### Class com.google.android.gms.internal.zzanw.zza.AnonymousClass1 (com.google.android.gms.internal.zzanw$zza$1)
.class Lcom/google/android/gms/internal/zzanw$zza$1;
.super Lcom/google/android/gms/internal/zzanw$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzanw$zza;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzanw$zzc",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic bfm:Lcom/google/android/gms/internal/zzanw$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzanw$zza;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanw$zza$1;->bfm:Lcom/google/android/gms/internal/zzanw$zza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzanw$zza;->bfl:Lcom/google/android/gms/internal/zzanw;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzanw$zzc;-><init>(Lcom/google/android/gms/internal/zzanw;Lcom/google/android/gms/internal/zzanw$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanw$zza$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanw$zza$1;->c()Lcom/google/android/gms/internal/zzanw$zzd;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzanw.zzb (com.google.android.gms.internal.zzanw$zzb)
.class final Lcom/google/android/gms/internal/zzanw$zzb;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzanw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic bfl:Lcom/google/android/gms/internal/zzanw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzanw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanw$zzb;->bfl:Lcom/google/android/gms/internal/zzanw;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzb;->bfl:Lcom/google/android/gms/internal/zzanw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanw;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzb;->bfl:Lcom/google/android/gms/internal/zzanw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzanw;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzanw$zzb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzanw$zzb$1;-><init>(Lcom/google/android/gms/internal/zzanw$zzb;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzb;->bfl:Lcom/google/android/gms/internal/zzanw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzanw;->zzcp(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzanw$zzd;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzb;->bfl:Lcom/google/android/gms/internal/zzanw;

    iget v0, v0, Lcom/google/android/gms/internal/zzanw;->size:I

    return v0
.end method

###### Class com.google.android.gms.internal.zzanw.zzb.AnonymousClass1 (com.google.android.gms.internal.zzanw$zzb$1)
.class Lcom/google/android/gms/internal/zzanw$zzb$1;
.super Lcom/google/android/gms/internal/zzanw$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzanw$zzb;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzanw$zzc",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic bfn:Lcom/google/android/gms/internal/zzanw$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzanw$zzb;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanw$zzb$1;->bfn:Lcom/google/android/gms/internal/zzanw$zzb;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzanw$zzb;->bfl:Lcom/google/android/gms/internal/zzanw;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzanw$zzc;-><init>(Lcom/google/android/gms/internal/zzanw;Lcom/google/android/gms/internal/zzanw$1;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanw$zzb$1;->c()Lcom/google/android/gms/internal/zzanw$zzd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzanw$zzd;->aQw:Ljava/lang/Object;

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzanw.zzc (com.google.android.gms.internal.zzanw$zzc)
.class abstract Lcom/google/android/gms/internal/zzanw$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzanw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic bfl:Lcom/google/android/gms/internal/zzanw;

.field bfo:Lcom/google/android/gms/internal/zzanw$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field bfp:Lcom/google/android/gms/internal/zzanw$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field bfq:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzanw;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfl:Lcom/google/android/gms/internal/zzanw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfl:Lcom/google/android/gms/internal/zzanw;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzanw;->bfi:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzanw$zzd;->bfo:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfo:Lcom/google/android/gms/internal/zzanw$zzd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfp:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfl:Lcom/google/android/gms/internal/zzanw;

    iget v0, v0, Lcom/google/android/gms/internal/zzanw;->modCount:I

    iput v0, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfq:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzanw;Lcom/google/android/gms/internal/zzanw$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzanw$zzc;-><init>(Lcom/google/android/gms/internal/zzanw;)V

    return-void
.end method


# virtual methods
.method final c()Lcom/google/android/gms/internal/zzanw$zzd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfo:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfl:Lcom/google/android/gms/internal/zzanw;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzanw;->bfi:Lcom/google/android/gms/internal/zzanw$zzd;

    if-ne v0, v1, :cond_e

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfl:Lcom/google/android/gms/internal/zzanw;

    iget v1, v1, Lcom/google/android/gms/internal/zzanw;->modCount:I

    iget v2, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfq:I

    if-eq v1, v2, :cond_1c

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1c
    iget-object v1, v0, Lcom/google/android/gms/internal/zzanw$zzd;->bfo:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfo:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfp:Lcom/google/android/gms/internal/zzanw$zzd;

    return-object v0
.end method

.method public final hasNext()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfo:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfl:Lcom/google/android/gms/internal/zzanw;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzanw;->bfi:Lcom/google/android/gms/internal/zzanw$zzd;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final remove()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfp:Lcom/google/android/gms/internal/zzanw$zzd;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfl:Lcom/google/android/gms/internal/zzanw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfp:Lcom/google/android/gms/internal/zzanw$zzd;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzanw;->zza(Lcom/google/android/gms/internal/zzanw$zzd;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfp:Lcom/google/android/gms/internal/zzanw$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfl:Lcom/google/android/gms/internal/zzanw;

    iget v0, v0, Lcom/google/android/gms/internal/zzanw;->modCount:I

    iput v0, p0, Lcom/google/android/gms/internal/zzanw$zzc;->bfq:I

    return-void
.end method

###### Class com.google.android.gms.internal.zzanw.zzd (com.google.android.gms.internal.zzanw$zzd)
.class final Lcom/google/android/gms/internal/zzanw$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzanw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final aQw:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field aQx:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field bfo:Lcom/google/android/gms/internal/zzanw$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field bfr:Lcom/google/android/gms/internal/zzanw$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field bfs:Lcom/google/android/gms/internal/zzanw$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field bft:Lcom/google/android/gms/internal/zzanw$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field bfu:Lcom/google/android/gms/internal/zzanw$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field height:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQw:Ljava/lang/Object;

    iput-object p0, p0, Lcom/google/android/gms/internal/zzanw$zzd;->bfu:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object p0, p0, Lcom/google/android/gms/internal/zzanw$zzd;->bfo:Lcom/google/android/gms/internal/zzanw$zzd;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzanw$zzd;Ljava/lang/Object;Lcom/google/android/gms/internal/zzanw$zzd;Lcom/google/android/gms/internal/zzanw$zzd;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;TK;",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanw$zzd;->bfr:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQw:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzanw$zzd;->height:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzanw$zzd;->bfo:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzanw$zzd;->bfu:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object p0, p4, Lcom/google/android/gms/internal/zzanw$zzd;->bfo:Lcom/google/android/gms/internal/zzanw$zzd;

    iput-object p0, p3, Lcom/google/android/gms/internal/zzanw$zzd;->bfu:Lcom/google/android/gms/internal/zzanw$zzd;

    return-void
.end method


# virtual methods
.method public d()Lcom/google/android/gms/internal/zzanw$zzd;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    :goto_2
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/internal/zzanw$zzd;->bfs:Lcom/google/android/gms/internal/zzanw$zzd;

    move-object p0, v0

    move-object v0, v1

    goto :goto_2

    :cond_9
    return-object p0
.end method

.method public e()Lcom/google/android/gms/internal/zzanw$zzd;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzanw$zzd",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    :goto_2
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/internal/zzanw$zzd;->bft:Lcom/google/android/gms/internal/zzanw$zzd;

    move-object p0, v0

    move-object v0, v1

    goto :goto_2

    :cond_9
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1c

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQw:Ljava/lang/Object;

    if-nez v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    :goto_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQx:Ljava/lang/Object;

    if-nez v1, :cond_2a

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    :goto_1b
    const/4 v0, 0x1

    :cond_1c
    return v0

    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQw:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_11

    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQx:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1b
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQw:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQx:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQw:Ljava/lang/Object;

    if-nez v0, :cond_c

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQx:Ljava/lang/Object;

    if-nez v2, :cond_13

    :goto_a
    xor-int/2addr v0, v1

    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQw:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQx:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_a
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQx:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQx:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQw:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanw$zzd;->aQx:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
