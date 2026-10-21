###### Class com.google.android.gms.internal.zzvz (com.google.android.gms.internal.zzvz)
.class public Lcom/google/android/gms/internal/zzvz;
.super Ljava/lang/Object;


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static auz:Ljava/lang/String;


# instance fields
.field private final AA:Ljava/lang/String;

.field private final Ay:Ljava/lang/String;

.field private acv:Landroid/os/WorkSource;

.field private final auA:Landroid/os/PowerManager$WakeLock;

.field private final auB:I

.field private final auC:Ljava/lang/String;

.field private auD:Z

.field private auE:I

.field private auF:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "WakeLock"

    sput-object v0, Lcom/google/android/gms/internal/zzvz;->TAG:Ljava/lang/String;

    const-string v0, "*gcore*:"

    sput-object v0, Lcom/google/android/gms/internal/zzvz;->auz:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzvz;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    if-nez p1, :cond_c

    move-object v5, v4

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzvz;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzvz;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzvz;->auD:Z

    const-string v0, "Wake lock name can NOT be empty"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzab;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzvz;->auB:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzvz;->auC:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzvz;->AA:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvz;->mContext:Landroid/content/Context;

    const-string v0, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    sget-object v0, Lcom/google/android/gms/internal/zzvz;->auz:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_37
    iput-object v0, p0, Lcom/google/android/gms/internal/zzvz;->Ay:Ljava/lang/String;

    :goto_39
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvz;->auA:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzz;->zzco(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-static {p5}, Lcom/google/android/gms/common/util/zzw;->zzic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    :cond_59
    invoke-static {p1, p5}, Lcom/google/android/gms/common/util/zzz;->zzr(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvz;->acv:Landroid/os/WorkSource;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvz;->acv:Landroid/os/WorkSource;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzvz;->zzc(Landroid/os/WorkSource;)V

    :cond_64
    return-void

    :cond_65
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_37

    :cond_6b
    iput-object p3, p0, Lcom/google/android/gms/internal/zzvz;->Ay:Ljava/lang/String;

    goto :goto_39
.end method

.method private zzd(Landroid/os/WorkSource;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvz;->auA:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzvz;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private zzk(Ljava/lang/String;J)V
    .registers 16

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzvz;->zznj(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzvz;->zzp(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    monitor-enter p0

    :try_start_9
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzvz;->auD:Z

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/google/android/gms/internal/zzvz;->auE:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzvz;->auE:I

    if-eqz v1, :cond_1f

    if-nez v0, :cond_1f

    :cond_17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzvz;->auD:Z

    if-nez v0, :cond_42

    iget v0, p0, Lcom/google/android/gms/internal/zzvz;->auF:I

    if-nez v0, :cond_42

    :cond_1f
    invoke-static {}, Lcom/google/android/gms/common/stats/zzh;->zzave()Lcom/google/android/gms/common/stats/zzh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvz;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvz;->auA:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v6}, Lcom/google/android/gms/common/stats/zzf;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/android/gms/internal/zzvz;->Ay:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzvz;->AA:Ljava/lang/String;

    iget v8, p0, Lcom/google/android/gms/internal/zzvz;->auB:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvz;->acv:Landroid/os/WorkSource;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzz;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v9

    move-wide v10, p2

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/common/stats/zzh;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    iget v0, p0, Lcom/google/android/gms/internal/zzvz;->auF:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzvz;->auF:I

    :cond_42
    monitor-exit p0

    return-void

    :catchall_44
    move-exception v0

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_44

    throw v0
.end method

.method private zzni(Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzvz;->zznj(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzvz;->zzp(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    monitor-enter p0

    :try_start_9
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzvz;->auD:Z

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/google/android/gms/internal/zzvz;->auE:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzvz;->auE:I

    if-eqz v1, :cond_20

    if-nez v0, :cond_20

    :cond_17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzvz;->auD:Z

    if-nez v0, :cond_43

    iget v0, p0, Lcom/google/android/gms/internal/zzvz;->auF:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_43

    :cond_20
    invoke-static {}, Lcom/google/android/gms/common/stats/zzh;->zzave()Lcom/google/android/gms/common/stats/zzh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvz;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvz;->auA:Landroid/os/PowerManager$WakeLock;

    invoke-static {v2, v5}, Lcom/google/android/gms/common/stats/zzf;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzvz;->Ay:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzvz;->AA:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/gms/internal/zzvz;->auB:I

    iget-object v8, p0, Lcom/google/android/gms/internal/zzvz;->acv:Landroid/os/WorkSource;

    invoke-static {v8}, Lcom/google/android/gms/common/util/zzz;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/common/stats/zzh;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzvz;->auF:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzvz;->auF:I

    :cond_43
    monitor-exit p0

    return-void

    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_45

    throw v0
.end method

.method private zznj(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvz;->auC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private zzp(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzvz;->auD:Z

    if-eqz v0, :cond_a

    if-eqz p2, :cond_7

    :goto_6
    return-object p1

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvz;->auC:Ljava/lang/String;

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvz;->auC:Ljava/lang/String;

    goto :goto_6
.end method


# virtual methods
.method public acquire(J)V
    .registers 8

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavm()Z

    move-result v0

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzvz;->auD:Z

    if-eqz v0, :cond_21

    sget-object v1, Lcom/google/android/gms/internal/zzvz;->TAG:Ljava/lang/String;

    const-string v2, "Do not acquire with timeout on reference counted WakeLocks before ICS. wakelock: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvz;->Ay:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzvz;->zzk(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvz;->auA:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void

    :cond_2b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public isHeld()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvz;->auA:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzvz;->zzni(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvz;->auA:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public setReferenceCounted(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvz;->auA:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzvz;->auD:Z

    return-void
.end method

.method public zzc(Landroid/os/WorkSource;)V
    .registers 3

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzz;->zzco(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvz;->acv:Landroid/os/WorkSource;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvz;->acv:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvz;->acv:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzvz;->zzd(Landroid/os/WorkSource;)V

    :cond_18
    return-void

    :cond_19
    iput-object p1, p0, Lcom/google/android/gms/internal/zzvz;->acv:Landroid/os/WorkSource;

    goto :goto_13
.end method
