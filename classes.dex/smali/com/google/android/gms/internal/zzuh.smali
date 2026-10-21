###### Class com.google.android.gms.internal.zzuh (com.google.android.gms.internal.zzuh)
.class public final Lcom/google/android/gms/internal/zzuh;
.super Ljava/lang/Object;


# static fields
.field private static Qr:Lcom/google/android/gms/internal/zzuh;


# instance fields
.field private final Qs:Lcom/google/android/gms/internal/zzue;

.field private final Qt:Lcom/google/android/gms/internal/zzuf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzuh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzuh;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuh;->zza(Lcom/google/android/gms/internal/zzuh;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzue;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh;->Qs:Lcom/google/android/gms/internal/zzue;

    new-instance v0, Lcom/google/android/gms/internal/zzuf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzuf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh;->Qt:Lcom/google/android/gms/internal/zzuf;

    return-void
.end method

.method protected static zza(Lcom/google/android/gms/internal/zzuh;)V
    .registers 3

    const-class v1, Lcom/google/android/gms/internal/zzuh;

    monitor-enter v1

    :try_start_3
    sput-object p0, Lcom/google/android/gms/internal/zzuh;->Qr:Lcom/google/android/gms/internal/zzuh;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static zzbfq()Lcom/google/android/gms/internal/zzuh;
    .registers 2

    const-class v1, Lcom/google/android/gms/internal/zzuh;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzuh;->Qr:Lcom/google/android/gms/internal/zzuh;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static zzbfr()Lcom/google/android/gms/internal/zzue;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/zzuh;->zzbfq()Lcom/google/android/gms/internal/zzuh;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzuh;->Qs:Lcom/google/android/gms/internal/zzue;

    return-object v0
.end method

.method public static zzbfs()Lcom/google/android/gms/internal/zzuf;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/zzuh;->zzbfq()Lcom/google/android/gms/internal/zzuh;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzuh;->Qt:Lcom/google/android/gms/internal/zzuf;

    return-object v0
.end method
