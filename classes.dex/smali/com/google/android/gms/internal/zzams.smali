###### Class com.google.android.gms.internal.zzams (com.google.android.gms.internal.zzams)
.class public final Lcom/google/android/gms/internal/zzams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzams$zza;
    }
.end annotation


# instance fields
.field private final bdY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzaoo",
            "<*>;",
            "Lcom/google/android/gms/internal/zzams$zza",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final bdZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzaoo",
            "<*>;",
            "Lcom/google/android/gms/internal/zzank",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final bea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzanl;",
            ">;"
        }
    .end annotation
.end field

.field private final beb:Lcom/google/android/gms/internal/zzans;

.field private final bec:Z

.field private final bed:Z

.field private final bee:Z

.field private final bef:Z

.field final beg:Lcom/google/android/gms/internal/zzamw;

.field final beh:Lcom/google/android/gms/internal/zzanf;


# direct methods
.method public constructor <init>()V
    .registers 13

    const/4 v4, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zzant;->beU:Lcom/google/android/gms/internal/zzant;

    sget-object v2, Lcom/google/android/gms/internal/zzamq;->bdS:Lcom/google/android/gms/internal/zzamq;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/google/android/gms/internal/zzani;->bev:Lcom/google/android/gms/internal/zzani;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzams;-><init>(Lcom/google/android/gms/internal/zzant;Lcom/google/android/gms/internal/zzamr;Ljava/util/Map;ZZZZZZLcom/google/android/gms/internal/zzani;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzant;Lcom/google/android/gms/internal/zzamr;Ljava/util/Map;ZZZZZZLcom/google/android/gms/internal/zzani;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzant;",
            "Lcom/google/android/gms/internal/zzamr;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzamu",
            "<*>;>;ZZZZZZ",
            "Lcom/google/android/gms/internal/zzani;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzanl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzams;->bdY:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzams;->bdZ:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/zzams$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzams$1;-><init>(Lcom/google/android/gms/internal/zzams;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzams;->beg:Lcom/google/android/gms/internal/zzamw;

    new-instance v0, Lcom/google/android/gms/internal/zzams$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzams$2;-><init>(Lcom/google/android/gms/internal/zzams;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzams;->beh:Lcom/google/android/gms/internal/zzanf;

    new-instance v0, Lcom/google/android/gms/internal/zzans;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzans;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzams;->beb:Lcom/google/android/gms/internal/zzans;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzams;->bec:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzams;->bee:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzams;->bed:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzams;->bef:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgX:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaoi;->bfE:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgE:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgt:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgn:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgp:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgr:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzani;)Lcom/google/android/gms/internal/zzank;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzaon;->zza(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/zzank;)Lcom/google/android/gms/internal/zzanl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/google/android/gms/internal/zzams;->zzcx(Z)Lcom/google/android/gms/internal/zzank;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzaon;->zza(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/zzank;)Lcom/google/android/gms/internal/zzanl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/google/android/gms/internal/zzams;->zzcy(Z)Lcom/google/android/gms/internal/zzank;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzaon;->zza(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/zzank;)Lcom/google/android/gms/internal/zzanl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgy:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgA:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgG:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgI:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/android/gms/internal/zzaon;->bgC:Lcom/google/android/gms/internal/zzank;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaon;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzank;)Lcom/google/android/gms/internal/zzanl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/android/gms/internal/zzaon;->bgD:Lcom/google/android/gms/internal/zzank;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaon;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzank;)Lcom/google/android/gms/internal/zzanl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgK:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgM:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgQ:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgV:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgO:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgk:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaod;->bfE:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgT:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaol;->bfE:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaok;->bfE:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgR:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaob;->bfE:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgi:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/internal/zzaoc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzams;->beb:Lcom/google/android/gms/internal/zzans;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaoc;-><init>(Lcom/google/android/gms/internal/zzans;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/internal/zzaoh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzams;->beb:Lcom/google/android/gms/internal/zzans;

    invoke-direct {v1, v2, p5}, Lcom/google/android/gms/internal/zzaoh;-><init>(Lcom/google/android/gms/internal/zzans;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/internal/zzaoe;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzams;->beb:Lcom/google/android/gms/internal/zzans;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaoe;-><init>(Lcom/google/android/gms/internal/zzans;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzaon;->bgY:Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/internal/zzaoj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzams;->beb:Lcom/google/android/gms/internal/zzans;

    invoke-direct {v1, v2, p2, p1}, Lcom/google/android/gms/internal/zzaoj;-><init>(Lcom/google/android/gms/internal/zzans;Lcom/google/android/gms/internal/zzamr;Lcom/google/android/gms/internal/zzant;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzams;->bea:Ljava/util/List;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzani;)Lcom/google/android/gms/internal/zzank;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzani;",
            ")",
            "Lcom/google/android/gms/internal/zzank",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzani;->bev:Lcom/google/android/gms/internal/zzani;

    if-ne p1, v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/zzaon;->bgu:Lcom/google/android/gms/internal/zzank;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/zzams$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzams$5;-><init>(Lcom/google/android/gms/internal/zzams;)V

    goto :goto_6
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzams;D)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzams;->zzn(D)V

    return-void
.end method

.method private static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaop;)V
    .registers 4

    if-eqz p0, :cond_20

    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhI:Lcom/google/android/gms/internal/zzaoq;

    if-eq v0, v1, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/zzamz;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzamz;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Lcom/google/android/gms/internal/zzaos; {:try_start_2 .. :try_end_12} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_19

    :catch_12
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzanh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzanh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_19
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzamz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzamz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_20
    return-void
.end method

.method private zzcx(Z)Lcom/google/android/gms/internal/zzank;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/zzank",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/zzaon;->bgw:Lcom/google/android/gms/internal/zzank;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzams$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzams$3;-><init>(Lcom/google/android/gms/internal/zzams;)V

    goto :goto_4
.end method

.method private zzcy(Z)Lcom/google/android/gms/internal/zzank;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/zzank",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/zzaon;->bgv:Lcom/google/android/gms/internal/zzank;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzams$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzams$4;-><init>(Lcom/google/android/gms/internal/zzams;)V

    goto :goto_4
.end method

.method private zzn(D)V
    .registers 6

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xa8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzams;->bec:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzams;->bea:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzams;->beb:Lcom/google/android/gms/internal/zzans;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzanl;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzanl;",
            "Lcom/google/android/gms/internal/zzaoo",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzank",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzams;->bea:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzams;->bea:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzanl;

    if-nez v2, :cond_24

    if-ne v0, p1, :cond_12

    move v2, v1

    goto :goto_12

    :cond_24
    invoke-interface {v0, p0, p2}, Lcom/google/android/gms/internal/zzanl;->zza(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;

    move-result-object v0

    if-eqz v0, :cond_12

    return-object v0

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GSON cannot serialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzaoo",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzank",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzams;->bdZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzank;

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzams;->bdY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_91

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzams;->bdY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    :goto_23
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzams$zza;

    if-nez v0, :cond_a

    :try_start_2b
    new-instance v3, Lcom/google/android/gms/internal/zzams$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzams$zza;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzams;->bea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzanl;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/zzanl;->zza(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzams$zza;->zza(Lcom/google/android/gms/internal/zzank;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzams;->bdZ:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_2b .. :try_end_53} :catchall_85

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzams;->bdY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_a

    :cond_5e
    :try_start_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x13

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "GSON cannot handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_85
    .catchall {:try_start_5e .. :try_end_85} :catchall_85

    :catchall_85
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/google/android/gms/internal/zzams;->bdY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_90
    throw v0

    :cond_91
    move-object v2, v0

    goto :goto_23
.end method

.method public zza(Ljava/io/Writer;)Lcom/google/android/gms/internal/zzaor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzams;->bee:Z

    if-eqz v0, :cond_9

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/zzaor;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaor;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzams;->bef:Z

    if-eqz v1, :cond_17

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaor;->setIndent(Ljava/lang/String;)V

    :cond_17
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzams;->bec:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaor;->zzdc(Z)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzamy;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzamy;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzanh;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzamy;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzany;->zzp(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzamy;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzamy;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzanh;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/zzaof;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaof;-><init>(Lcom/google/android/gms/internal/zzamy;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzaop;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public zza(Lcom/google/android/gms/internal/zzaop;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzaop;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzamz;,
            Lcom/google/android/gms/internal/zzanh;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->isLenient()Z

    move-result v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzaop;->setLenient(Z)V

    :try_start_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaoo;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaoo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzank;->zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_17} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_17} :catch_2f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_17} :catch_36
    .catchall {:try_start_8 .. :try_end_17} :catchall_2a

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzaop;->setLenient(Z)V

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    if-eqz v1, :cond_24

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzaop;->setLenient(Z)V

    const/4 v0, 0x0

    goto :goto_1b

    :cond_24
    :try_start_24
    new-instance v1, Lcom/google/android/gms/internal/zzanh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzanh;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzaop;->setLenient(Z)V

    throw v0

    :catch_2f
    move-exception v0

    :try_start_30
    new-instance v1, Lcom/google/android/gms/internal/zzanh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzanh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_36
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzanh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzanh;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_2a
.end method

.method public zza(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzamz;,
            Lcom/google/android/gms/internal/zzanh;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaop;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaop;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzaop;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzams;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaop;)V

    return-object v1
.end method

.method public zza(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzanh;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzams;->zza(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public zza(Lcom/google/android/gms/internal/zzamy;Lcom/google/android/gms/internal/zzaor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzamz;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaor;->isLenient()Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzaor;->setLenient(Z)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaor;->D()Z

    move-result v2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzams;->bed:Z

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzaor;->zzdb(Z)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaor;->E()Z

    move-result v3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzams;->bec:Z

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzaor;->zzdc(Z)V

    :try_start_1a
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzanz;->zzb(Lcom/google/android/gms/internal/zzamy;Lcom/google/android/gms/internal/zzaor;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_27
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2e

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzaor;->setLenient(Z)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzaor;->zzdb(Z)V

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/zzaor;->zzdc(Z)V

    return-void

    :catch_27
    move-exception v0

    :try_start_28
    new-instance v4, Lcom/google/android/gms/internal/zzamz;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzamz;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzaor;->setLenient(Z)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzaor;->zzdb(Z)V

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/zzaor;->zzdc(Z)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzamy;Ljava/lang/Appendable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzamz;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzanz;->zza(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzams;->zza(Ljava/io/Writer;)Lcom/google/android/gms/internal/zzaor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzamy;Lcom/google/android/gms/internal/zzaor;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaor;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzamz;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaoo;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaoo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzaor;->isLenient()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/zzaor;->setLenient(Z)V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzaor;->D()Z

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzams;->bed:Z

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/zzaor;->zzdb(Z)V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzaor;->E()Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzams;->bec:Z

    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/zzaor;->zzdc(Z)V

    :try_start_22
    invoke-virtual {v0, p3, p1}, Lcom/google/android/gms/internal/zzank;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_2f
    .catchall {:try_start_22 .. :try_end_25} :catchall_36

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/zzaor;->setLenient(Z)V

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/zzaor;->zzdb(Z)V

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/zzaor;->zzdc(Z)V

    return-void

    :catch_2f
    move-exception v0

    :try_start_30
    new-instance v4, Lcom/google/android/gms/internal/zzamz;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzamz;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v0

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/zzaor;->setLenient(Z)V

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/zzaor;->zzdb(Z)V

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/zzaor;->zzdc(Z)V

    throw v0
.end method

.method public zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzamz;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lcom/google/android/gms/internal/zzanz;->zza(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzams;->zza(Ljava/io/Writer;)Lcom/google/android/gms/internal/zzaor;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzams;->zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaor;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzamz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzamz;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzb(Lcom/google/android/gms/internal/zzamy;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzamy;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzams;->zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzcj(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/zzana;->bes:Lcom/google/android/gms/internal/zzana;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzams;->zzb(Lcom/google/android/gms/internal/zzamy;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzams;->zzc(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public zzf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzanh;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzams;->zza(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzany;->zzp(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzank;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzank",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaoo;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzaoo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzams.AnonymousClass1 (com.google.android.gms.internal.zzams$1)
.class Lcom/google/android/gms/internal/zzams$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzamw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bei:Lcom/google/android/gms/internal/zzams;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzams;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzams$1;->bei:Lcom/google/android/gms/internal/zzams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.internal.zzams.AnonymousClass2 (com.google.android.gms.internal.zzams$2)
.class Lcom/google/android/gms/internal/zzams$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bei:Lcom/google/android/gms/internal/zzams;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzams;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzams$2;->bei:Lcom/google/android/gms/internal/zzams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.internal.zzams.AnonymousClass3 (com.google.android.gms.internal.zzams$3)
.class Lcom/google/android/gms/internal/zzams$3;
.super Lcom/google/android/gms/internal/zzank;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzams;->zzcx(Z)Lcom/google/android/gms/internal/zzank;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzank",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bei:Lcom/google/android/gms/internal/zzams;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzams;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzams$3;->bei:Lcom/google/android/gms/internal/zzams;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzank;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Number;)V
    .registers 6
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
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzams$3;->bei:Lcom/google/android/gms/internal/zzams;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzams;D)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzaor;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzaor;

    goto :goto_5
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzams$3;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzams$3;->zze(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public zze(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Double;
    .registers 4
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_c
.end method

###### Class com.google.android.gms.internal.zzams.AnonymousClass4 (com.google.android.gms.internal.zzams$4)
.class Lcom/google/android/gms/internal/zzams$4;
.super Lcom/google/android/gms/internal/zzank;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzams;->zzcy(Z)Lcom/google/android/gms/internal/zzank;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzank",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bei:Lcom/google/android/gms/internal/zzams;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzams;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzams$4;->bei:Lcom/google/android/gms/internal/zzams;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzank;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Number;)V
    .registers 7
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
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzams$4;->bei:Lcom/google/android/gms/internal/zzams;

    float-to-double v2, v0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzams;D)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzaor;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzaor;

    goto :goto_5
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzams$4;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzams$4;->zzf(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public zzf(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Float;
    .registers 4
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_c
.end method

###### Class com.google.android.gms.internal.zzams.AnonymousClass5 (com.google.android.gms.internal.zzams$5)
.class Lcom/google/android/gms/internal/zzams$5;
.super Lcom/google/android/gms/internal/zzank;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzani;)Lcom/google/android/gms/internal/zzank;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzank",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bei:Lcom/google/android/gms/internal/zzams;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzams;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzams$5;->bei:Lcom/google/android/gms/internal/zzams;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzank;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Number;)V
    .registers 4
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
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaor;->zztb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaor;

    goto :goto_5
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzams$5;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzams$5;->zzg(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Number;
    .registers 4
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_c
.end method

###### Class com.google.android.gms.internal.zzams.zza (com.google.android.gms.internal.zzams$zza)
.class Lcom/google/android/gms/internal/zzams$zza;
.super Lcom/google/android/gms/internal/zzank;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field private bej:Lcom/google/android/gms/internal/zzank;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzank",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzank;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzank;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzank",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzams$zza;->bej:Lcom/google/android/gms/internal/zzank;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/internal/zzams$zza;->bej:Lcom/google/android/gms/internal/zzank;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    .registers 4
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzams$zza;->bej:Lcom/google/android/gms/internal/zzank;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzams$zza;->bej:Lcom/google/android/gms/internal/zzank;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzank;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;
    .registers 3
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzams$zza;->bej:Lcom/google/android/gms/internal/zzank;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzams$zza;->bej:Lcom/google/android/gms/internal/zzank;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzank;->zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
