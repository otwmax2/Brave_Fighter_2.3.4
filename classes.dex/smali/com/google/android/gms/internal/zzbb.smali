###### Class com.google.android.gms.internal.zzbb (com.google.android.gms.internal.zzbb)
.class public Lcom/google/android/gms/internal/zzbb;
.super Lcom/google/android/gms/internal/zzbp;


# static fields
.field private static final zzafc:Ljava/lang/Object;

.field private static volatile zzagz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbb;->zzagz:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbb;->zzafc:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzae$zza;II)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzbp;-><init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzae$zza;II)V

    return-void
.end method


# virtual methods
.method protected zzcv()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbb;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    const-string v1, "E"

    iput-object v1, v0, Lcom/google/android/gms/internal/zzae$zza;->zzdo:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzbb;->zzagz:Ljava/lang/String;

    if-nez v0, :cond_32

    sget-object v1, Lcom/google/android/gms/internal/zzbb;->zzafc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    sget-object v0, Lcom/google/android/gms/internal/zzbb;->zzagz:Ljava/lang/String;

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbb;->zzahh:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbb;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzax;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzaj;->zza([BZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbb;->zzagz:Ljava/lang/String;

    :cond_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_3d

    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbb;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    monitor-enter v1

    :try_start_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbb;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbb;->zzagz:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzae$zza;->zzdo:Ljava/lang/String;

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_40

    return-void

    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0

    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method
