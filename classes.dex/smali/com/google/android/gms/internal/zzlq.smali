###### Class com.google.android.gms.internal.zzlq (com.google.android.gms.internal.zzlq)
.class public Lcom/google/android/gms/internal/zzlq;
.super Lcom/google/android/gms/ads/internal/client/zzab$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field private zzaio:Z

.field private final zzbgj:Lcom/google/android/gms/internal/zzll;

.field private final zzcqb:F

.field private zzcqc:I

.field private zzcqd:Lcom/google/android/gms/ads/internal/client/zzac;

.field private zzcqe:Z

.field private zzcqf:Z

.field private zzcqg:F


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzll;F)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzab$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzail:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlq;->zzaio:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlq;->zzbgj:Lcom/google/android/gms/internal/zzll;

    iput p2, p0, Lcom/google/android/gms/internal/zzlq;->zzcqb:F

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlq;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlq;->zzcqe:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzlq;)Lcom/google/android/gms/internal/zzll;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzbgj:Lcom/google/android/gms/internal/zzll;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzlq;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzail:Ljava/lang/Object;

    return-object v0
.end method

.method private zzc(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_19

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_7
    const-string v1, "action"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzlq$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzlq$1;-><init>(Lcom/google/android/gms/internal/zzlq;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzkl;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_7
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzlq;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcqe:Z

    return v0
.end method

.method private zzde(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzlq;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzlq;)Lcom/google/android/gms/ads/internal/client/zzac;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcqd:Lcom/google/android/gms/ads/internal/client/zzac;

    return-object v0
.end method

.method private zzi(II)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzlq$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzlq$2;-><init>(Lcom/google/android/gms/internal/zzlq;II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkl;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getPlaybackState()I
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcqc:I

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isMuted()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcqf:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public pause()V
    .registers 2

    const-string v0, "pause"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlq;->zzde(Ljava/lang/String;)V

    return-void
.end method

.method public play()V
    .registers 2

    const-string v0, "play"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlq;->zzde(Ljava/lang/String;)V

    return-void
.end method

.method public zza(FIZ)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/zzlq;->zzcqg:F

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzlq;->zzcqf:Z

    iget v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcqc:I

    iput p2, p0, Lcom/google/android/gms/internal/zzlq;->zzcqc:I

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzlq;->zzi(II)V

    return-void

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzac;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlq;->zzcqd:Lcom/google/android/gms/ads/internal/client/zzac;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzam(Z)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlq;->zzaio:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_16

    const-string v1, "initialState"

    const-string v2, "muteStart"

    if-eqz p1, :cond_19

    const-string v0, "1"

    :goto_e
    invoke-static {v2, v0}, Lcom/google/android/gms/common/util/zzf;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzlq;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0

    :cond_19
    const-string v0, "0"

    goto :goto_e
.end method

.method public zziz()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcqb:F

    return v0
.end method

.method public zzja()F
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzlq;->zzcqg:F

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzm(Z)V
    .registers 3

    if-eqz p1, :cond_8

    const-string v0, "mute"

    :goto_4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlq;->zzde(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "unmute"

    goto :goto_4
.end method

###### Class com.google.android.gms.internal.zzlq.AnonymousClass1 (com.google.android.gms.internal.zzlq$1)
.class Lcom/google/android/gms/internal/zzlq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlq;->zzc(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcqh:Ljava/util/Map;

.field final synthetic zzcqi:Lcom/google/android/gms/internal/zzlq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlq;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlq$1;->zzcqi:Lcom/google/android/gms/internal/zzlq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlq$1;->zzcqh:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq$1;->zzcqi:Lcom/google/android/gms/internal/zzlq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlq;->zzb(Lcom/google/android/gms/internal/zzlq;)Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    const-string v1, "pubVideoCmd"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlq$1;->zzcqh:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzll;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzlq.AnonymousClass2 (com.google.android.gms.internal.zzlq$2)
.class Lcom/google/android/gms/internal/zzlq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlq;->zzi(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcqi:Lcom/google/android/gms/internal/zzlq;

.field final synthetic zzcqj:I

.field final synthetic zzcqk:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlq;II)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqi:Lcom/google/android/gms/internal/zzlq;

    iput p2, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqj:I

    iput p3, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqk:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqi:Lcom/google/android/gms/internal/zzlq;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzlq;->zzc(Lcom/google/android/gms/internal/zzlq;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_9
    iget v2, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqj:I

    iget v3, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqk:I

    if-eq v2, v3, :cond_4e

    move v2, v1

    :goto_10
    iget-object v3, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqi:Lcom/google/android/gms/internal/zzlq;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzlq;->zzd(Lcom/google/android/gms/internal/zzlq;)Z

    move-result v3

    if-nez v3, :cond_50

    iget v3, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqk:I

    if-ne v3, v1, :cond_50

    move v5, v1

    :goto_1d
    if-eqz v2, :cond_52

    iget v3, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqk:I

    if-ne v3, v1, :cond_52

    move v4, v1

    :goto_24
    if-eqz v2, :cond_54

    iget v3, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqk:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_54

    move v3, v1

    :goto_2c
    if-eqz v2, :cond_56

    iget v2, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqk:I

    const/4 v7, 0x3

    if-ne v2, v7, :cond_56

    move v2, v1

    :goto_34
    iget-object v7, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqi:Lcom/google/android/gms/internal/zzlq;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqi:Lcom/google/android/gms/internal/zzlq;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzlq;->zzd(Lcom/google/android/gms/internal/zzlq;)Z

    move-result v8

    if-nez v8, :cond_40

    if-eqz v5, :cond_41

    :cond_40
    move v0, v1

    :cond_41
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/zzlq;->zza(Lcom/google/android/gms/internal/zzlq;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqi:Lcom/google/android/gms/internal/zzlq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlq;->zze(Lcom/google/android/gms/internal/zzlq;)Lcom/google/android/gms/ads/internal/client/zzac;

    move-result-object v0

    if-nez v0, :cond_58

    monitor-exit v6
    :try_end_4d
    .catchall {:try_start_9 .. :try_end_4d} :catchall_86

    :goto_4d
    return-void

    :cond_4e
    move v2, v0

    goto :goto_10

    :cond_50
    move v5, v0

    goto :goto_1d

    :cond_52
    move v4, v0

    goto :goto_24

    :cond_54
    move v3, v0

    goto :goto_2c

    :cond_56
    move v2, v0

    goto :goto_34

    :cond_58
    if-eqz v5, :cond_63

    :try_start_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqi:Lcom/google/android/gms/internal/zzlq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlq;->zze(Lcom/google/android/gms/internal/zzlq;)Lcom/google/android/gms/ads/internal/client/zzac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzac;->zzjb()V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_63} :catch_89
    .catchall {:try_start_5a .. :try_end_63} :catchall_86

    :cond_63
    :goto_63
    if-eqz v4, :cond_6e

    :try_start_65
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqi:Lcom/google/android/gms/internal/zzlq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlq;->zze(Lcom/google/android/gms/internal/zzlq;)Lcom/google/android/gms/ads/internal/client/zzac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzac;->zzjc()V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6e} :catch_90
    .catchall {:try_start_65 .. :try_end_6e} :catchall_86

    :cond_6e
    :goto_6e
    if-eqz v3, :cond_79

    :try_start_70
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqi:Lcom/google/android/gms/internal/zzlq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlq;->zze(Lcom/google/android/gms/internal/zzlq;)Lcom/google/android/gms/ads/internal/client/zzac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzac;->zzjd()V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_79} :catch_97
    .catchall {:try_start_70 .. :try_end_79} :catchall_86

    :cond_79
    :goto_79
    if-eqz v2, :cond_84

    :try_start_7b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq$2;->zzcqi:Lcom/google/android/gms/internal/zzlq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlq;->zze(Lcom/google/android/gms/internal/zzlq;)Lcom/google/android/gms/ads/internal/client/zzac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzac;->onVideoEnd()V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_84} :catch_9e
    .catchall {:try_start_7b .. :try_end_84} :catchall_86

    :cond_84
    :goto_84
    :try_start_84
    monitor-exit v6

    goto :goto_4d

    :catchall_86
    move-exception v0

    monitor-exit v6
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_86

    throw v0

    :catch_89
    move-exception v0

    :try_start_8a
    const-string v1, "Unable to call onVideoStart()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_63

    :catch_90
    move-exception v0

    const-string v1, "Unable to call onVideoPlay()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6e

    :catch_97
    move-exception v0

    const-string v1, "Unable to call onVideoPause()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_79

    :catch_9e
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a4
    .catchall {:try_start_8a .. :try_end_a4} :catchall_86

    goto :goto_84
.end method
