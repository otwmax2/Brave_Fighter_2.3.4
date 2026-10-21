###### Class com.google.android.gms.internal.zzbl (com.google.android.gms.internal.zzbl)
.class public Lcom/google/android/gms/internal/zzbl;
.super Lcom/google/android/gms/internal/zzbp;


# static fields
.field private static final zzafc:Ljava/lang/Object;

.field private static volatile zzct:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbl;->zzct:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbl;->zzafc:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzae$zza;II)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzbp;-><init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzae$zza;II)V

    return-void
.end method


# virtual methods
.method protected zzcv()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbl;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    const-string v1, "E"

    iput-object v1, v0, Lcom/google/android/gms/internal/zzae$zza;->zzct:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzbl;->zzct:Ljava/lang/String;

    if-nez v0, :cond_20

    sget-object v1, Lcom/google/android/gms/internal/zzbl;->zzafc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    sget-object v0, Lcom/google/android/gms/internal/zzbl;->zzct:Ljava/lang/String;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbl;->zzahh:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzbl;->zzct:Ljava/lang/String;

    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_2b

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbl;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    monitor-enter v1

    :try_start_23
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbl;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbl;->zzct:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzae$zza;->zzct:Ljava/lang/String;

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2e

    return-void

    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0

    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method
