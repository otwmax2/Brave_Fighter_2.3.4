###### Class com.google.android.gms.internal.zzaoj (com.google.android.gms.internal.zzaoj)
.class public final Lcom/google/android/gms/internal/zzaoj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaoj$zza;,
        Lcom/google/android/gms/internal/zzaoj$zzb;
    }
.end annotation


# instance fields
.field private final beb:Lcom/google/android/gms/internal/zzans;

.field private final bek:Lcom/google/android/gms/internal/zzant;

.field private final bem:Lcom/google/android/gms/internal/zzamr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzans;Lcom/google/android/gms/internal/zzamr;Lcom/google/android/gms/internal/zzant;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaoj;->beb:Lcom/google/android/gms/internal/zzans;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaoj;->bem:Lcom/google/android/gms/internal/zzamr;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaoj;->bek:Lcom/google/android/gms/internal/zzant;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzams;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzams;",
            "Ljava/lang/reflect/Field;",
            "Lcom/google/android/gms/internal/zzaoo",
            "<*>;)",
            "Lcom/google/android/gms/internal/zzank",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/zzanm;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzanm;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoj;->beb:Lcom/google/android/gms/internal/zzans;

    invoke-static {v1, p1, p3, v0}, Lcom/google/android/gms/internal/zzaoe;->zza(Lcom/google/android/gms/internal/zzans;Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;Lcom/google/android/gms/internal/zzanm;)Lcom/google/android/gms/internal/zzank;

    move-result-object v0

    if-eqz v0, :cond_13

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;

    move-result-object v0

    goto :goto_12
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaoj;Lcom/google/android/gms/internal/zzams;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaoj;->zza(Lcom/google/android/gms/internal/zzams;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzams;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/android/gms/internal/zzaoo;ZZ)Lcom/google/android/gms/internal/zzaoj$zzb;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzams;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaoo",
            "<*>;ZZ)",
            "Lcom/google/android/gms/internal/zzaoj$zzb;"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzaoo;->s()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzany;->zzk(Ljava/lang/reflect/Type;)Z

    move-result v8

    new-instance v0, Lcom/google/android/gms/internal/zzaoj$1;

    move-object v1, p0

    move-object v2, p3

    move v3, p5

    move v4, p6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzaoj$1;-><init>(Lcom/google/android/gms/internal/zzaoj;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzams;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzaoo;Z)V

    return-object v0
.end method

.method static zza(Lcom/google/android/gms/internal/zzamr;Ljava/lang/reflect/Field;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzamr;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/zzann;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzann;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    if-nez v0, :cond_17

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/zzamr;->zzc(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    return-object v1

    :cond_17
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzann;->value()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzann;->zzczy()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_24
    if-ge v0, v3, :cond_16

    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_24
.end method

.method private zza(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;Ljava/lang/Class;)Ljava/util/Map;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzams;",
            "Lcom/google/android/gms/internal/zzaoo",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaoj$zzb;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, v10

    :goto_c
    return-object v1

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzaoo;->t()Ljava/lang/reflect/Type;

    move-result-object v12

    :goto_11
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_cd

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    array-length v14, v13

    const/4 v1, 0x0

    move v11, v1

    :goto_1e
    if-ge v11, v14, :cond_b5

    aget-object v3, v13, v11

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/zzaoj;->zza(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/zzaoj;->zza(Ljava/lang/reflect/Field;Z)Z

    move-result v7

    if-nez v6, :cond_38

    if-nez v7, :cond_38

    :cond_34
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_1e

    :cond_38
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzaoo;->t()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzanr;->zza(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/zzaoj;->zzd(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v16

    const/4 v8, 0x0

    const/4 v1, 0x0

    move v9, v1

    :goto_53
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_7d

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v9, :cond_64

    const/4 v6, 0x0

    :cond_64
    invoke-static {v15}, Lcom/google/android/gms/internal/zzaoo;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaoo;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzaoj;->zza(Lcom/google/android/gms/internal/zzams;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/android/gms/internal/zzaoo;ZZ)Lcom/google/android/gms/internal/zzaoj$zzb;

    move-result-object v1

    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzaoj$zzb;

    if-nez v8, :cond_d0

    :goto_78
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-object v8, v1

    goto :goto_53

    :cond_7d
    if-eqz v8, :cond_34

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/zzaoj$zzb;->name:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x25

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " declares multiple JSON fields named "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b5
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzaoo;->t()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzanr;->zza(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaoo;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaoo;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzaoo;->s()Ljava/lang/Class;

    move-result-object p3

    goto/16 :goto_11

    :cond_cd
    move-object v1, v10

    goto/16 :goto_c

    :cond_d0
    move-object v1, v8

    goto :goto_78
.end method

.method static zza(Ljava/lang/reflect/Field;ZLcom/google/android/gms/internal/zzant;)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzant;->zza(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/zzant;->zza(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private zzd(Ljava/lang/reflect/Field;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoj;->bem:Lcom/google/android/gms/internal/zzamr;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaoj;->zza(Lcom/google/android/gms/internal/zzamr;Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;
    .registers 7
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

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoo;->s()Ljava/lang/Class;

    move-result-object v2

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoj;->beb:Lcom/google/android/gms/internal/zzans;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzans;->zzb(Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzanx;

    move-result-object v3

    new-instance v1, Lcom/google/android/gms/internal/zzaoj$zza;

    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/zzaoj;->zza(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/internal/zzaoj$zza;-><init>(Lcom/google/android/gms/internal/zzanx;Ljava/util/Map;Lcom/google/android/gms/internal/zzaoj$1;)V

    move-object v0, v1

    goto :goto_d
.end method

.method public zza(Ljava/lang/reflect/Field;Z)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoj;->bek:Lcom/google/android/gms/internal/zzant;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/zzaoj;->zza(Ljava/lang/reflect/Field;ZLcom/google/android/gms/internal/zzant;)Z

    move-result v0

    return v0
.end method

###### Class com.google.android.gms.internal.zzaoj.AnonymousClass1 (com.google.android.gms.internal.zzaoj$1)
.class Lcom/google/android/gms/internal/zzaoj$1;
.super Lcom/google/android/gms/internal/zzaoj$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaoj;->zza(Lcom/google/android/gms/internal/zzams;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/android/gms/internal/zzaoo;ZZ)Lcom/google/android/gms/internal/zzaoj$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final bfV:Lcom/google/android/gms/internal/zzank;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzank",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic bfW:Lcom/google/android/gms/internal/zzams;

.field final synthetic bfX:Ljava/lang/reflect/Field;

.field final synthetic bfY:Lcom/google/android/gms/internal/zzaoo;

.field final synthetic bfZ:Z

.field final synthetic bga:Lcom/google/android/gms/internal/zzaoj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaoj;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzams;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzaoo;Z)V
    .registers 13

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaoj$1;->bga:Lcom/google/android/gms/internal/zzaoj;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfW:Lcom/google/android/gms/internal/zzams;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfX:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfY:Lcom/google/android/gms/internal/zzaoo;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfZ:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/zzaoj$zzb;-><init>(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoj$1;->bga:Lcom/google/android/gms/internal/zzaoj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfW:Lcom/google/android/gms/internal/zzams;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfX:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfY:Lcom/google/android/gms/internal/zzaoo;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzaoj;->zza(Lcom/google/android/gms/internal/zzaoj;Lcom/google/android/gms/internal/zzams;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfV:Lcom/google/android/gms/internal/zzank;

    return-void
.end method


# virtual methods
.method zza(Lcom/google/android/gms/internal/zzaop;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfV:Lcom/google/android/gms/internal/zzank;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzank;->zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfZ:Z

    if-nez v1, :cond_11

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfX:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfX:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaom;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfW:Lcom/google/android/gms/internal/zzams;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfV:Lcom/google/android/gms/internal/zzank;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfY:Lcom/google/android/gms/internal/zzaoo;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzaoo;->t()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzaom;-><init>(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzank;Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzank;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V

    return-void
.end method

.method public zzcq(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaoj$1;->bgc:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoj$1;->bfX:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

###### Class com.google.android.gms.internal.zzaoj.zza (com.google.android.gms.internal.zzaoj$zza)
.class public final Lcom/google/android/gms/internal/zzaoj$zza;
.super Lcom/google/android/gms/internal/zzank;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaoj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzank",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final bfI:Lcom/google/android/gms/internal/zzanx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanx",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final bgb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaoj$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzanx;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzanx",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaoj$zzb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzank;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaoj$zza;->bfI:Lcom/google/android/gms/internal/zzanx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaoj$zza;->bgb:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzanx;Ljava/util/Map;Lcom/google/android/gms/internal/zzaoj$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaoj$zza;-><init>(Lcom/google/android/gms/internal/zzanx;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaor;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->r()Lcom/google/android/gms/internal/zzaor;

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->p()Lcom/google/android/gms/internal/zzaor;

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoj$zza;->bgb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoj$zzb;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzaoj$zzb;->zzcq(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaoj$zzb;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzaor;->zzta(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaor;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaoj$zzb;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2d} :catch_2e

    goto :goto_13

    :catch_2e
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->q()Lcom/google/android/gms/internal/zzaor;

    goto :goto_5
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaop;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhH:Lcom/google/android/gms/internal/zzaoq;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoj$zza;->bfI:Lcom/google/android/gms/internal/zzanx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanx;->a()Ljava/lang/Object;

    move-result-object v1

    :try_start_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->beginObject()V

    :goto_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaoj$zza;->bgb:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoj$zzb;

    if-eqz v0, :cond_2e

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzaoj$zzb;->bgd:Z

    if-nez v2, :cond_39

    :cond_2e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->skipValue()V
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_31} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_31} :catch_3d

    goto :goto_16

    :catch_32
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzanh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzanh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_39
    :try_start_39
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzaoj$zzb;->zza(Lcom/google/android/gms/internal/zzaop;Ljava/lang/Object;)V
    :try_end_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_3c} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_16

    :catch_3d
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->endObject()V

    move-object v0, v1

    goto :goto_c
.end method

###### Class com.google.android.gms.internal.zzaoj.zzb (com.google.android.gms.internal.zzaoj$zzb)
.class abstract Lcom/google/android/gms/internal/zzaoj$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaoj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzb"
.end annotation


# instance fields
.field final bgc:Z

.field final bgd:Z

.field final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaoj$zzb;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzaoj$zzb;->bgc:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzaoj$zzb;->bgd:Z

    return-void
.end method


# virtual methods
.method abstract zza(Lcom/google/android/gms/internal/zzaop;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract zzcq(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
