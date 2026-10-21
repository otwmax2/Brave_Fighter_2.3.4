###### Class com.google.android.gms.internal.zzdb (com.google.android.gms.internal.zzdb)
.class public Lcom/google/android/gms/internal/zzdb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field private zzamr:Z

.field private zzaxs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzail:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdb;->zzamr:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzaxs:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdb;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzaxs:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdb;->zzamr:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    invoke-static {p1}, Lcom/google/android/gms/common/zze;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_14

    monitor-exit v1

    goto :goto_8

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :try_start_14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfx()Lcom/google/android/gms/internal/zzda;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzda;->zzn(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdb;->zzaxs:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdb;->zzamr:Z

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_11

    goto :goto_8
.end method

.method public zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzcy",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdb;->zzamr:Z

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcy;->zzjw()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    :goto_c
    return-object v0

    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_18

    new-instance v0, Lcom/google/android/gms/internal/zzdb$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzdb$1;-><init>(Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/internal/zzcy;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

###### Class com.google.android.gms.internal.zzdb.AnonymousClass1 (com.google.android.gms.internal.zzdb$1)
.class Lcom/google/android/gms/internal/zzdb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzaxt:Lcom/google/android/gms/internal/zzcy;

.field final synthetic zzaxu:Lcom/google/android/gms/internal/zzdb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/internal/zzcy;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdb$1;->zzaxu:Lcom/google/android/gms/internal/zzdb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdb$1;->zzaxt:Lcom/google/android/gms/internal/zzcy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdb$1;->zzaxt:Lcom/google/android/gms/internal/zzcy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdb$1;->zzaxu:Lcom/google/android/gms/internal/zzdb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdb;->zza(Lcom/google/android/gms/internal/zzdb;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcy;->zza(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
