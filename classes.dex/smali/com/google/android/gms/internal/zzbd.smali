###### Class com.google.android.gms.internal.zzbd (com.google.android.gms.internal.zzbd)
.class public Lcom/google/android/gms/internal/zzbd;
.super Lcom/google/android/gms/internal/zzbp;


# static fields
.field private static final zzafc:Ljava/lang/Object;

.field private static volatile zzcq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbd;->zzcq:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbd;->zzafc:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    const-string v1, "E"

    iput-object v1, v0, Lcom/google/android/gms/internal/zzae$zza;->zzdt:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzbd;->zzcq:Ljava/lang/String;

    if-nez v0, :cond_29

    sget-object v1, Lcom/google/android/gms/internal/zzbd;->zzafc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    sget-object v0, Lcom/google/android/gms/internal/zzbd;->zzcq:Ljava/lang/String;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzahh:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbd;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzax;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzbd;->zzcq:Ljava/lang/String;

    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_34

    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbd;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    monitor-enter v1

    :try_start_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbd;->zzcq:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzae$zza;->zzdt:Ljava/lang/String;

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_37

    return-void

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method
