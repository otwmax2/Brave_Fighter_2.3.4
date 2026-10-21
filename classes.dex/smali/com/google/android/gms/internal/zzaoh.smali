###### Class com.google.android.gms.internal.zzaoh (com.google.android.gms.internal.zzaoh)
.class public final Lcom/google/android/gms/internal/zzaoh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaoh$zza;
    }
.end annotation


# instance fields
.field private final beb:Lcom/google/android/gms/internal/zzans;

.field private final bfQ:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzans;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaoh;->beb:Lcom/google/android/gms/internal/zzans;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzaoh;->bfQ:Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzams;Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzank;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzams;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/android/gms/internal/zzank",
            "<*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_8

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_b

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/zzaon;->bgm:Lcom/google/android/gms/internal/zzank;

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p2}, Lcom/google/android/gms/internal/zzaoo;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaoo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;

    move-result-object v0

    goto :goto_a
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaoh;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaoh;->bfQ:Z

    return v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzams;",
            "Lcom/google/android/gms/internal/zzaoo",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzank",
            "<TT;>;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoo;->t()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoo;->s()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    invoke-static {v0}, Lcom/google/android/gms/internal/zzanr;->zzf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzanr;->zzb(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzaoh;->zza(Lcom/google/android/gms/internal/zzams;Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzank;

    move-result-object v4

    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaoo;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaoo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoh;->beb:Lcom/google/android/gms/internal/zzans;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzans;->zzb(Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzanx;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/zzaoh$zza;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzaoh$zza;-><init>(Lcom/google/android/gms/internal/zzaoh;Lcom/google/android/gms/internal/zzams;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzank;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzank;Lcom/google/android/gms/internal/zzanx;)V

    goto :goto_13
.end method

###### Class com.google.android.gms.internal.zzaoh.zza (com.google.android.gms.internal.zzaoh$zza)
.class final Lcom/google/android/gms/internal/zzaoh$zza;
.super Lcom/google/android/gms/internal/zzank;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaoh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzank",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final bfI:Lcom/google/android/gms/internal/zzanx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanx",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final bfR:Lcom/google/android/gms/internal/zzank;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzank",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final bfS:Lcom/google/android/gms/internal/zzank;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzank",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic bfT:Lcom/google/android/gms/internal/zzaoh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaoh;Lcom/google/android/gms/internal/zzams;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzank;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzank;Lcom/google/android/gms/internal/zzanx;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzams;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzank",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzank",
            "<TV;>;",
            "Lcom/google/android/gms/internal/zzanx",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaoh$zza;->bfT:Lcom/google/android/gms/internal/zzaoh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzank;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzaom;

    invoke-direct {v0, p2, p4, p3}, Lcom/google/android/gms/internal/zzaom;-><init>(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzank;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoh$zza;->bfR:Lcom/google/android/gms/internal/zzank;

    new-instance v0, Lcom/google/android/gms/internal/zzaom;

    invoke-direct {v0, p2, p6, p5}, Lcom/google/android/gms/internal/zzaom;-><init>(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzank;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoh$zza;->bfS:Lcom/google/android/gms/internal/zzank;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaoh$zza;->bfI:Lcom/google/android/gms/internal/zzanx;

    return-void
.end method

.method private zze(Lcom/google/android/gms/internal/zzamy;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamy;->zzczo()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamy;->zzczs()Lcom/google/android/gms/internal/zzane;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzane;->zzczv()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzane;->zzczg()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzane;->zzczu()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzane;->zzczl()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzane;->zzczw()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzane;->zzczh()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_33
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamy;->zzczp()Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "null"

    goto :goto_18

    :cond_42
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaoh$zza;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/util/Map;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaor;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaor;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->r()Lcom/google/android/gms/internal/zzaor;

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoh$zza;->bfT:Lcom/google/android/gms/internal/zzaoh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaoh;->zza(Lcom/google/android/gms/internal/zzaoh;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->p()Lcom/google/android/gms/internal/zzaor;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzaor;->zzta(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaor;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaoh$zza;->bfS:Lcom/google/android/gms/internal/zzank;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/zzank;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V

    goto :goto_1a

    :cond_3b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->q()Lcom/google/android/gms/internal/zzaor;

    goto :goto_6

    :cond_3f
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_5a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzaoh$zza;->bfR:Lcom/google/android/gms/internal/zzank;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzank;->zzcl(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzamy;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzamy;->zzczm()Z

    move-result v0

    if-nez v0, :cond_86

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzamy;->zzczn()Z

    move-result v0

    if-eqz v0, :cond_8a

    :cond_86
    const/4 v0, 0x1

    :goto_87
    or-int/2addr v0, v1

    move v1, v0

    goto :goto_5a

    :cond_8a
    move v0, v2

    goto :goto_87

    :cond_8c
    if-eqz v1, :cond_b7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->n()Lcom/google/android/gms/internal/zzaor;

    :goto_91
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->n()Lcom/google/android/gms/internal/zzaor;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamy;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzanz;->zzb(Lcom/google/android/gms/internal/zzamy;Lcom/google/android/gms/internal/zzaor;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoh$zza;->bfS:Lcom/google/android/gms/internal/zzank;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzank;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->o()Lcom/google/android/gms/internal/zzaor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :cond_b2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->o()Lcom/google/android/gms/internal/zzaor;

    goto/16 :goto_6

    :cond_b7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->p()Lcom/google/android/gms/internal/zzaor;

    :goto_ba
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d9

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaoh$zza;->zze(Lcom/google/android/gms/internal/zzamy;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaor;->zzta(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaor;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoh$zza;->bfS:Lcom/google/android/gms/internal/zzank;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzank;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_ba

    :cond_d9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->q()Lcom/google/android/gms/internal/zzaor;

    goto/16 :goto_6
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaoh$zza;->zzl(Lcom/google/android/gms/internal/zzaop;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public zzl(Lcom/google/android/gms/internal/zzaop;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaop;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhH:Lcom/google/android/gms/internal/zzaoq;

    if-ne v1, v0, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoh$zza;->bfI:Lcom/google/android/gms/internal/zzanx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Lcom/google/android/gms/internal/zzaoq;->bhz:Lcom/google/android/gms/internal/zzaoq;

    if-ne v1, v2, :cond_66

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->beginArray()V

    :goto_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->beginArray()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoh$zza;->bfR:Lcom/google/android/gms/internal/zzank;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzank;->zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaoh$zza;->bfS:Lcom/google/android/gms/internal/zzank;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzank;->zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5e

    new-instance v0, Lcom/google/android/gms/internal/zzanh;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "duplicate key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzanh;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->endArray()V

    goto :goto_1c

    :cond_62
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->endArray()V

    goto :goto_c

    :cond_66
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->beginObject()V

    :cond_69
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ad

    sget-object v1, Lcom/google/android/gms/internal/zzanu;->bff:Lcom/google/android/gms/internal/zzanu;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzanu;->zzi(Lcom/google/android/gms/internal/zzaop;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoh$zza;->bfR:Lcom/google/android/gms/internal/zzank;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzank;->zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaoh$zza;->bfS:Lcom/google/android/gms/internal/zzank;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzank;->zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_69

    new-instance v0, Lcom/google/android/gms/internal/zzanh;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "duplicate key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzanh;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ad
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->endObject()V

    goto/16 :goto_c
.end method
