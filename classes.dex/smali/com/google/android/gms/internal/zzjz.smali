###### Class com.google.android.gms.internal.zzjz (com.google.android.gms.internal.zzjz)
.class public Lcom/google/android/gms/internal/zzjz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzjz$zza;
    }
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field private final zzanz:Lcom/google/android/gms/internal/zzkb;

.field private zzcfe:Z

.field private final zzciv:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/zzjz$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzciw:Ljava/lang/String;

.field private final zzcix:Ljava/lang/String;

.field private zzciy:J

.field private zzciz:J

.field private zzcja:J

.field private zzcjb:J

.field private zzcjc:J

.field private zzcjd:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzkb;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjz;->zzail:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzciy:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzciz:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjz;->zzcfe:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcja:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzjz;->zzcjb:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcjc:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcjd:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjz;->zzanz:Lcom/google/android/gms/internal/zzkb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjz;->zzciw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjz;->zzcix:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjz;->zzciv:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzjz;-><init>(Lcom/google/android/gms/internal/zzkb;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjz;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "seq_num"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjz;->zzciw:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "slotid"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjz;->zzcix:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ismediation"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzjz;->zzcfe:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "treq"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzjz;->zzcjc:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tresponse"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzjz;->zzcjd:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "timp"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzjz;->zzciz:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tload"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzjz;->zzcja:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "pcc"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzjz;->zzcjb:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tfetch"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzjz;->zzciy:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjz;->zzciv:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjz$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjz$zza;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :catchall_66
    move-exception v0

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw v0

    :cond_69
    :try_start_69
    const-string v0, "tclick"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_66

    return-object v2
.end method

.method public zzac(Z)V
    .registers 8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjz;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcjd:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcja:J

    if-nez p1, :cond_1c

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcja:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzciz:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjz;->zzanz:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzkb;->zza(Lcom/google/android/gms/internal/zzjz;)V

    :cond_1c
    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public zzad(Z)V
    .registers 8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjz;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcjd:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_12

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzjz;->zzcfe:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjz;->zzanz:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzkb;->zza(Lcom/google/android/gms/internal/zzjz;)V

    :cond_12
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public zzl(J)V
    .registers 10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjz;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzjz;->zzcjd:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcjd:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjz;->zzanz:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzkb;->zza(Lcom/google/android/gms/internal/zzjz;)V

    :cond_12
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public zzm(J)V
    .registers 10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjz;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcjd:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_12

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzjz;->zzciy:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjz;->zzanz:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzkb;->zza(Lcom/google/android/gms/internal/zzjz;)V

    :cond_12
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public zzq(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjz;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcjc:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjz;->zzanz:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkb;->zzsl()Lcom/google/android/gms/internal/zzkc;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcjc:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzkc;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public zzrz()V
    .registers 7

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjz;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcjd:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1c

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzciz:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzciz:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjz;->zzanz:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzkb;->zza(Lcom/google/android/gms/internal/zzjz;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjz;->zzanz:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkb;->zzsl()Lcom/google/android/gms/internal/zzkc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzrz()V

    monitor-exit v1

    return-void

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public zzsa()V
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjz;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcjd:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2d

    new-instance v0, Lcom/google/android/gms/internal/zzjz$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjz$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjz$zza;->zzse()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjz;->zzciv:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcjb:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcjb:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjz;->zzanz:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkb;->zzsl()Lcom/google/android/gms/internal/zzkc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzsa()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjz;->zzanz:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzkb;->zza(Lcom/google/android/gms/internal/zzjz;)V

    :cond_2d
    monitor-exit v1

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public zzsb()V
    .registers 7

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjz;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjz;->zzcjd:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjz;->zzciv:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjz;->zzciv:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjz$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjz$zza;->zzsc()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjz$zza;->zzsd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjz;->zzanz:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzkb;->zza(Lcom/google/android/gms/internal/zzjz;)V

    :cond_2b
    monitor-exit v1

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    throw v0
.end method

###### Class com.google.android.gms.internal.zzjz.zza (com.google.android.gms.internal.zzjz$zza)
.class final Lcom/google/android/gms/internal/zzjz$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzjz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation


# instance fields
.field private zzcje:J

.field private zzcjf:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzjz$zza;->zzcje:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzjz$zza;->zzcjf:J

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "topen"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjz$zza;->zzcje:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "tclose"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjz$zza;->zzcjf:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public zzsc()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzjz$zza;->zzcjf:J

    return-wide v0
.end method

.method public zzsd()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzjz$zza;->zzcjf:J

    return-void
.end method

.method public zzse()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzjz$zza;->zzcje:J

    return-void
.end method
