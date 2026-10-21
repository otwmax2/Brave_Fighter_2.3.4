###### Class com.google.android.gms.internal.zzpv (com.google.android.gms.internal.zzpv)
.class final Lcom/google/android/gms/internal/zzpv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpv$zzb;,
        Lcom/google/android/gms/internal/zzpv$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final sX:Lcom/google/android/gms/internal/zzqd;

.field private final sY:Lcom/google/android/gms/internal/zzqf;

.field private final sZ:Lcom/google/android/gms/internal/zzqf;

.field private final ta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/internal/zzqf;",
            ">;"
        }
    .end annotation
.end field

.field private final tb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzqy;",
            ">;"
        }
    .end annotation
.end field

.field private final tc:Lcom/google/android/gms/common/api/Api$zze;

.field private td:Landroid/os/Bundle;

.field private te:Lcom/google/android/gms/common/ConnectionResult;

.field private tf:Lcom/google/android/gms/common/ConnectionResult;

.field private tg:Z

.field private final th:Ljava/util/concurrent/locks/Lock;

.field private ti:I

.field private final zzahv:Landroid/os/Looper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqd;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zze;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqd;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/zzc;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzvx;",
            "Lcom/google/android/gms/internal/zzvy;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzpu;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzpu;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpv;->tb:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpv;->te:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzpv;->tg:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzpv;->ti:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpv;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpv;->sX:Lcom/google/android/gms/internal/zzqd;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpv;->th:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpv;->zzahv:Landroid/os/Looper;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpv;->tc:Lcom/google/android/gms/common/api/Api$zze;

    new-instance v1, Lcom/google/android/gms/internal/zzqf;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpv;->sX:Lcom/google/android/gms/internal/zzqd;

    const/4 v8, 0x0

    const/4 v10, 0x0

    new-instance v12, Lcom/google/android/gms/internal/zzpv$zza;

    const/4 v2, 0x0

    invoke-direct {v12, p0, v2}, Lcom/google/android/gms/internal/zzpv$zza;-><init>(Lcom/google/android/gms/internal/zzpv;Lcom/google/android/gms/internal/zzpv$1;)V

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p14

    move-object/from16 v11, p12

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzqf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqd;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzqm$zza;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpv;->sY:Lcom/google/android/gms/internal/zzqf;

    new-instance v1, Lcom/google/android/gms/internal/zzqf;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpv;->sX:Lcom/google/android/gms/internal/zzqd;

    new-instance v12, Lcom/google/android/gms/internal/zzpv$zzb;

    const/4 v2, 0x0

    invoke-direct {v12, p0, v2}, Lcom/google/android/gms/internal/zzpv$zzb;-><init>(Lcom/google/android/gms/internal/zzpv;Lcom/google/android/gms/internal/zzpv$1;)V

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p13

    move-object/from16 v10, p9

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzqf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqd;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzqm$zza;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_75
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpv;->sY:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    :cond_87
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8f

    :cond_a1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpv;->ta:Ljava/util/Map;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzpv;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpv;->te:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqd;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/zzpv;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqd;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/zzc;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzvx;",
            "Lcom/google/android/gms/internal/zzvy;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzpu;",
            ">;)",
            "Lcom/google/android/gms/internal/zzpv;"
        }
    .end annotation

    const/4 v11, 0x0

    new-instance v7, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v7}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v8, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v8}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$zze;->zzafz()Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object v11, v2

    :cond_2c
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$zze;->zzafk()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_3c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_46
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_86

    const/4 v1, 0x1

    :goto_4d
    const-string v2, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    new-instance v14, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v14}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v15, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v15}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Api;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v14, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :cond_86
    const/4 v1, 0x0

    goto :goto_4d

    :cond_88
    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :cond_9a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Each API in the apiTypeMap must have a corresponding client in the clients map."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_dc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzpu;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzpu;->pD:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v14, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    :cond_c8
    iget-object v3, v1, Lcom/google/android/gms/internal/zzpu;->pD:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v15, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    :cond_d4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Each ClientCallbacks must have a corresponding API in the apiTypeMap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_dc
    new-instance v1, Lcom/google/android/gms/internal/zzpv;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/zzpv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqd;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zze;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    return-object v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->th:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzpv;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzpv;->zzb(IZ)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzpv;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpv;->zzl(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzpv;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzpv;->tg:Z

    return p1
.end method

.method private zzapa()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpv;->te:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sY:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqf;->connect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqf;->connect()V

    return-void
.end method

.method private zzapb()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->te:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zzc(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zzc(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzape()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_16
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzapc()V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/google/android/gms/internal/zzpv;->ti:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzapd()V

    goto :goto_19

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpv;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sY:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqf;->disconnect()V

    goto :goto_19

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->te:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zzc(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqf;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->te:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpv;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_19

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->te:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->te:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    iget v1, v1, Lcom/google/android/gms/internal/zzqf;->uq:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpv;->sY:Lcom/google/android/gms/internal/zzqf;

    iget v2, v2, Lcom/google/android/gms/internal/zzqf;->uq:I

    if-ge v1, v2, :cond_5f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    :cond_5f
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpv;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_19
.end method

.method private zzapc()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/zzpv;->ti:I

    packed-switch v0, :pswitch_data_20

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzpv;->ti:I

    return-void

    :pswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sX:Lcom/google/android/gms/internal/zzqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->td:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqd;->zzm(Landroid/os/Bundle;)V

    :pswitch_1c
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzapd()V

    goto :goto_11

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_15
    .end packed-switch
.end method

.method private zzapd()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->tb:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqy;->zzafy()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->tb:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private zzape()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private zzapf()Landroid/app/PendingIntent;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->tc:Lcom/google/android/gms/common/api/Api$zze;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->sX:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqd;->getSessionId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpv;->tc:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$zze;->zzaga()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_5
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzpv;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method private zzb(IZ)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sX:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzqd;->zzc(IZ)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpv;->te:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method private zzb(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/zzpv;->ti:I

    packed-switch v0, :pswitch_data_1e

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzpv;->ti:I

    return-void

    :pswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sX:Lcom/google/android/gms/internal/zzqd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqd;->zzd(Lcom/google/android/gms/common/ConnectionResult;)V

    :pswitch_1a
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzapd()V

    goto :goto_11

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzpv;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzapb()V

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 2

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzpv;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpv;->tg:Z

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzpv;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzpv;)Lcom/google/android/gms/internal/zzqf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    return-object v0
.end method

.method private zze(Lcom/google/android/gms/internal/zzpr$zza;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "+",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpr$zza;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->ta:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->ta:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzpv;)Lcom/google/android/gms/internal/zzqf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sY:Lcom/google/android/gms/internal/zzqf;

    return-object v0
.end method

.method private zzl(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->td:Landroid/os/Bundle;

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpv;->td:Landroid/os/Bundle;

    :cond_6
    :goto_6
    return-void

    :cond_7
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->td:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_6
.end method


# virtual methods
.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 5
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public connect()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzpv;->ti:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpv;->tg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzapa()V

    return-void
.end method

.method public disconnect()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpv;->te:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzpv;->ti:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sY:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqf;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqf;->disconnect()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzapd()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/zzqf;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "anonClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sY:Lcom/google/android/gms/internal/zzqf;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/zzqf;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 5
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->ta:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzanp()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzape()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzapf()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_24
    return-object v0

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqf;->getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    goto :goto_24

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sY:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqf;->getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    goto :goto_24
.end method

.method public isConnected()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->sY:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqf;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpv;->zzaoz()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzape()Z

    move-result v1

    if-nez v1, :cond_1e

    iget v1, p0, Lcom/google/android/gms/internal/zzpv;->ti:I
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_26

    if-ne v1, v0, :cond_24

    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_1e

    :catchall_26
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isConnecting()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget v0, p0, Lcom/google/android/gms/internal/zzpv;->ti:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_13

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_b

    :catchall_13
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzqy;)Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpv;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpv;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_32

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpv;->zzaoz()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->tb:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/google/android/gms/internal/zzpv;->ti:I

    if-nez v1, :cond_24

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzpv;->ti:I

    :cond_24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqf;->connect()V
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_39

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_31
    return v0

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    goto :goto_31

    :catchall_39
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzaoc()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpv;->isConnecting()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqf;->disconnect()V

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpv;->tf:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2d

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->zzahv:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/gms/internal/zzpv$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzpv$1;-><init>(Lcom/google/android/gms/internal/zzpv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_31

    :goto_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2d
    :try_start_2d
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzapd()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_27

    :catchall_31
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv;->th:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzaoy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sY:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqf;->zzaoy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqf;->zzaoy()V

    return-void
.end method

.method public zzaoz()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqf;->isConnected()Z

    move-result v0

    return v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;
    .registers 6
    .param p1    # Lcom/google/android/gms/internal/zzpr$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzpr$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpv;->zze(Lcom/google/android/gms/internal/zzpr$zza;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzape()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzapf()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpr$zza;->zzz(Lcom/google/android/gms/common/api/Status;)V

    :goto_1a
    return-object p1

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object p1

    goto :goto_1a

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sY:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object p1

    goto :goto_1a
.end method

.method public zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;
    .registers 6
    .param p1    # Lcom/google/android/gms/internal/zzpr$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzpr$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpv;->zze(Lcom/google/android/gms/internal/zzpr$zza;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzape()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpv;->zzapf()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpr$zza;->zzz(Lcom/google/android/gms/common/api/Status;)V

    :goto_1a
    return-object p1

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sZ:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object p1

    goto :goto_1a

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv;->sY:Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqf;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object p1

    goto :goto_1a
.end method

###### Class com.google.android.gms.internal.zzpv.AnonymousClass1 (com.google.android.gms.internal.zzpv$1)
.class Lcom/google/android/gms/internal/zzpv$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpv;->zzaoc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tj:Lcom/google/android/gms/internal/zzpv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpv;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpv$1;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$1;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$1;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zzb(Lcom/google/android/gms/internal/zzpv;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$1;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv$1;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

###### Class com.google.android.gms.internal.zzpv.zza (com.google.android.gms.internal.zzpv$zza)
.class Lcom/google/android/gms/internal/zzpv$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic tj:Lcom/google/android/gms/internal/zzpv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzpv;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzpv;Lcom/google/android/gms/internal/zzpv$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpv$zza;-><init>(Lcom/google/android/gms/internal/zzpv;)V

    return-void
.end method


# virtual methods
.method public zzc(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zzc(Lcom/google/android/gms/internal/zzpv;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zzd(Lcom/google/android/gms/internal/zzpv;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zzd(Lcom/google/android/gms/internal/zzpv;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;IZ)V
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_53

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_39
    return-void

    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zze(Lcom/google/android/gms/internal/zzpv;)Lcom/google/android/gms/internal/zzqf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqf;->onConnectionSuspended(I)V
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_53

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_39

    :catchall_53
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzd(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zzb(Lcom/google/android/gms/internal/zzpv;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1d
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzm(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->qR:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zzb(Lcom/google/android/gms/internal/zzpv;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_24

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_24
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv$zza;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

###### Class com.google.android.gms.internal.zzpv.zzb (com.google.android.gms.internal.zzpv$zzb)
.class Lcom/google/android/gms/internal/zzpv$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field final synthetic tj:Lcom/google/android/gms/internal/zzpv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzpv;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzpv;Lcom/google/android/gms/internal/zzpv$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpv$zzb;-><init>(Lcom/google/android/gms/internal/zzpv;)V

    return-void
.end method


# virtual methods
.method public zzc(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zzc(Lcom/google/android/gms/internal/zzpv;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;IZ)V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_25
    return-void

    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zzf(Lcom/google/android/gms/internal/zzpv;)Lcom/google/android/gms/internal/zzqf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqf;->onConnectionSuspended(I)V
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_25

    :catchall_3f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzd(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzpv;->zzb(Lcom/google/android/gms/internal/zzpv;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zzb(Lcom/google/android/gms/internal/zzpv;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1d
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzm(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->qR:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpv;->zzb(Lcom/google/android/gms/internal/zzpv;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zzb(Lcom/google/android/gms/internal/zzpv;)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv$zzb;->tj:Lcom/google/android/gms/internal/zzpv;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpv;->zza(Lcom/google/android/gms/internal/zzpv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
