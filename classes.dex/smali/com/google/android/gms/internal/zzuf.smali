###### Class com.google.android.gms.internal.zzuf (com.google.android.gms.internal.zzuf)
.class public Lcom/google/android/gms/internal/zzuf;
.super Ljava/lang/Object;


# instance fields
.field private Qq:Lcom/google/android/gms/internal/zzug;

.field private zzamr:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzuf;->zzamr:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuf;->Qq:Lcom/google/android/gms/internal/zzug;

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzuf;->zzamr:Z

    if-eqz v0, :cond_7

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_29

    :goto_6
    return-void

    :cond_7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzsj;->Mg:Lcom/google/android/gms/internal/zzsj$zzb;

    const-string v1, "com.google.android.gms.flags"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzsj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzsj$zzb;Ljava/lang/String;)Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    const-string v1, "com.google.android.gms.flags.impl.FlagProviderImpl"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsj;->zziv(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzug$zza;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzug;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuf;->Qq:Lcom/google/android/gms/internal/zzug;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf;->Qq:Lcom/google/android/gms/internal/zzug;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzug;->init(Lcom/google/android/gms/dynamic/zzd;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzuf;->zzamr:Z
    :try_end_27
    .catch Lcom/google/android/gms/internal/zzsj$zza; {:try_start_7 .. :try_end_27} :catch_35
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_27} :catch_2c
    .catchall {:try_start_7 .. :try_end_27} :catchall_29

    :goto_27
    :try_start_27
    monitor-exit p0

    goto :goto_6

    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_29

    throw v0

    :catch_2c
    move-exception v0

    :goto_2d
    :try_start_2d
    const-string v1, "FlagValueProvider"

    const-string v2, "Failed to initialize flags module."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_29

    goto :goto_27

    :catch_35
    move-exception v0

    goto :goto_2d
.end method

.method public zzb(Lcom/google/android/gms/internal/zzud;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzud",
            "<TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzuf;->zzamr:Z

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzud;->zzjw()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    :goto_a
    return-object v0

    :cond_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf;->Qq:Lcom/google/android/gms/internal/zzug;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzud;->zza(Lcom/google/android/gms/internal/zzug;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
