###### Class com.google.android.gms.analytics.internal.zzi (com.google.android.gms.analytics.internal.zzi)
.class public Lcom/google/android/gms/analytics/internal/zzi;
.super Lcom/google/android/gms/analytics/internal/zzd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/internal/zzi$zza;
    }
.end annotation


# instance fields
.field private final zzcxp:Lcom/google/android/gms/analytics/internal/zzi$zza;

.field private zzcxq:Lcom/google/android/gms/analytics/internal/zzac;

.field private final zzcxr:Lcom/google/android/gms/analytics/internal/zzt;

.field private zzcxs:Lcom/google/android/gms/analytics/internal/zzal;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzf;->zzyw()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/zzal;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxs:Lcom/google/android/gms/analytics/internal/zzal;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzi$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/zzi$zza;-><init>(Lcom/google/android/gms/analytics/internal/zzi;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxp:Lcom/google/android/gms/analytics/internal/zzi$zza;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzi$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/zzi$1;-><init>(Lcom/google/android/gms/analytics/internal/zzi;Lcom/google/android/gms/analytics/internal/zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxr:Lcom/google/android/gms/analytics/internal/zzt;

    return-void
.end method

.method private onDisconnect()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzwd()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzb;->zzyr()V

    return-void
.end method

.method private onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzwu()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxq:Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxq:Lcom/google/android/gms/analytics/internal/zzac;

    const-string v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->onDisconnect()V

    :cond_12
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzi;)Lcom/google/android/gms/analytics/internal/zzi$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxp:Lcom/google/android/gms/analytics/internal/zzi$zza;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/analytics/internal/zzac;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzwu()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxq:Lcom/google/android/gms/analytics/internal/zzac;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzzt()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzwd()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzb;->onServiceConnected()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzi;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzi;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzi;Lcom/google/android/gms/analytics/internal/zzac;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Lcom/google/android/gms/analytics/internal/zzac;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/internal/zzi;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzzu()V

    return-void
.end method

.method private zzzt()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxs:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->start()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxr:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzabx()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzt;->zzv(J)V

    return-void
.end method

.method private zzzu()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzei(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->disconnect()V

    goto :goto_9
.end method


# virtual methods
.method public connect()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzzg()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxq:Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v1, :cond_c

    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxp:Lcom/google/android/gms/analytics/internal/zzi$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzzv()Lcom/google/android/gms/analytics/internal/zzac;

    move-result-object v1

    if-eqz v1, :cond_1a

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxq:Lcom/google/android/gms/analytics/internal/zzac;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzzt()V

    goto :goto_b

    :cond_1a
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public disconnect()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzzg()V

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzaut()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxp:Lcom/google/android/gms/analytics/internal/zzi$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_13} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_13} :catch_1e

    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxq:Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxq:Lcom/google/android/gms/analytics/internal/zzac;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->onDisconnect()V

    :cond_1d
    return-void

    :catch_1e
    move-exception v0

    goto :goto_13

    :catch_20
    move-exception v0

    goto :goto_13
.end method

.method public isConnected()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzzg()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxq:Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public zzb(Lcom/google/android/gms/analytics/internal/zzab;)Z
    .registers 9

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzzg()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxq:Lcom/google/android/gms/analytics/internal/zzac;

    if-nez v0, :cond_10

    move v0, v6

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzadb()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzabq()Ljava/lang/String;

    move-result-object v4

    :goto_1e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_22
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzm()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzacz()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/zzac;->zza(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzzt()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_30} :catch_3b

    const/4 v0, 0x1

    goto :goto_f

    :cond_32
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzabr()Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    :catch_3b
    move-exception v0

    const-string v0, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzei(Ljava/lang/String;)V

    move v0, v6

    goto :goto_f
.end method

.method protected zzwv()V
    .registers 1

    return-void
.end method

.method public zzzs()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzzg()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi;->zzcxq:Lcom/google/android/gms/analytics/internal/zzac;

    if-nez v1, :cond_c

    :goto_b
    return v0

    :cond_c
    :try_start_c
    invoke-interface {v1}, Lcom/google/android/gms/analytics/internal/zzac;->zzyo()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->zzzt()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_14

    const/4 v0, 0x1

    goto :goto_b

    :catch_14
    move-exception v1

    const-string v1, "Failed to clear hits from AnalyticsService"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zzei(Ljava/lang/String;)V

    goto :goto_b
.end method

###### Class com.google.android.gms.analytics.internal.zzi.AnonymousClass1 (com.google.android.gms.analytics.internal.zzi$1)
.class Lcom/google/android/gms/analytics/internal/zzi$1;
.super Lcom/google/android/gms/analytics/internal/zzt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/zzi;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcxt:Lcom/google/android/gms/analytics/internal/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzi;Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzi$1;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/gms/analytics/internal/zzt;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$1;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzb(Lcom/google/android/gms/analytics/internal/zzi;)V

    return-void
.end method

###### Class com.google.android.gms.analytics.internal.zzi.zza (com.google.android.gms.analytics.internal.zzi$zza)
.class public Lcom/google/android/gms/analytics/internal/zzi$zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

.field private volatile zzcxu:Lcom/google/android/gms/analytics/internal/zzac;

.field private volatile zzcxv:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    const-string v0, "AnalyticsServiceConnection.onServiceConnected"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    monitor-enter p0

    if-nez p2, :cond_14

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    const-string v1, "Service connected with null binder"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zzem(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_5a

    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_46

    :goto_13
    return-void

    :cond_14
    const/4 v0, 0x0

    :try_start_15
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-static {p2}, Lcom/google/android/gms/analytics/internal/zzac$zza;->zzbk(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/zzac;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    const-string v2, "Bound to IAnalyticsService interface"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/zzi;->zzei(Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2c} :catch_51
    .catchall {:try_start_15 .. :try_end_2c} :catchall_5a

    :goto_2c
    if-nez v0, :cond_5f

    :try_start_2e
    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzaut()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzi;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Lcom/google/android/gms/analytics/internal/zzi;)Lcom/google/android/gms/analytics/internal/zzi$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_41} :catch_7c
    .catchall {:try_start_2e .. :try_end_41} :catchall_5a

    :goto_41
    :try_start_41
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_13

    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_46

    throw v0

    :cond_49
    :try_start_49
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    const-string v3, "Got binder with a wrong descriptor"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_50} :catch_51
    .catchall {:try_start_49 .. :try_end_50} :catchall_5a

    goto :goto_2c

    :catch_51
    move-exception v1

    :try_start_52
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    const-string v2, "Service connect failed to get IAnalyticsService"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/zzi;->zzem(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_5a

    goto :goto_2c

    :catchall_5a
    move-exception v0

    :try_start_5b
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_46

    :cond_5f
    :try_start_5f
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxv:Z

    if-nez v1, :cond_79

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    const-string v2, "onServiceConnected received after the timeout limit"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/zzi;->zzel(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzi;->zzyz()Lcom/google/android/gms/analytics/zzi;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/internal/zzi$zza$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/analytics/internal/zzi$zza$1;-><init>(Lcom/google/android/gms/analytics/internal/zzi$zza;Lcom/google/android/gms/analytics/internal/zzac;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/zzi;->zzf(Ljava/lang/Runnable;)V

    goto :goto_41

    :cond_79
    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxu:Lcom/google/android/gms/analytics/internal/zzac;
    :try_end_7b
    .catchall {:try_start_5f .. :try_end_7b} :catchall_5a

    goto :goto_41

    :catch_7c
    move-exception v0

    goto :goto_41
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "AnalyticsServiceConnection.onServiceDisconnected"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzyz()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzi$zza$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/zzi$zza$2;-><init>(Lcom/google/android/gms/analytics/internal/zzi$zza;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzzv()Lcom/google/android/gms/analytics/internal/zzac;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzi;->zzwu()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms"

    const-string v4, "com.google.android.gms.analytics.service.AnalyticsService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzi;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_package_name"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzaut()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v3

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_2e
    iput-object v4, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxu:Lcom/google/android/gms/analytics/internal/zzac;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxv:Z

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-static {v4}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Lcom/google/android/gms/analytics/internal/zzi;)Lcom/google/android/gms/analytics/internal/zzi$zza;

    move-result-object v4

    const/16 v5, 0x81

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    const-string v3, "Bind to service requested"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_51

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxv:Z

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_2e .. :try_end_50} :catchall_71

    :goto_50
    return-object v0

    :cond_51
    :try_start_51
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaby()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_5e} :catch_74
    .catchall {:try_start_51 .. :try_end_5e} :catchall_71

    :goto_5e
    const/4 v0, 0x0

    :try_start_5f
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxv:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxu:Lcom/google/android/gms/analytics/internal/zzac;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxu:Lcom/google/android/gms/analytics/internal/zzac;

    if-nez v0, :cond_6f

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    const-string v2, "Successfully bound to service but never got onServiceConnected callback"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/zzi;->zzem(Ljava/lang/String;)V

    :cond_6f
    monitor-exit p0

    goto :goto_50

    :catchall_71
    move-exception v0

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_5f .. :try_end_73} :catchall_71

    throw v0

    :catch_74
    move-exception v0

    :try_start_75
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    const-string v1, "Wait for service connect was interrupted"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zzel(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_71

    goto :goto_5e
.end method

###### Class com.google.android.gms.analytics.internal.zzi.zza.AnonymousClass1 (com.google.android.gms.analytics.internal.zzi$zza$1)
.class Lcom/google/android/gms/analytics/internal/zzi$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/zzi$zza;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcxw:Lcom/google/android/gms/analytics/internal/zzac;

.field final synthetic zzcxx:Lcom/google/android/gms/analytics/internal/zzi$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzi$zza;Lcom/google/android/gms/analytics/internal/zzac;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza$1;->zzcxx:Lcom/google/android/gms/analytics/internal/zzi$zza;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/zzi$zza$1;->zzcxw:Lcom/google/android/gms/analytics/internal/zzac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza$1;->zzcxx:Lcom/google/android/gms/analytics/internal/zzi$zza;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza$1;->zzcxx:Lcom/google/android/gms/analytics/internal/zzi$zza;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zzej(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza$1;->zzcxx:Lcom/google/android/gms/analytics/internal/zzi$zza;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza$1;->zzcxw:Lcom/google/android/gms/analytics/internal/zzac;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Lcom/google/android/gms/analytics/internal/zzi;Lcom/google/android/gms/analytics/internal/zzac;)V

    :cond_1c
    return-void
.end method

###### Class com.google.android.gms.analytics.internal.zzi.zza.AnonymousClass2 (com.google.android.gms.analytics.internal.zzi$zza$2)
.class Lcom/google/android/gms/analytics/internal/zzi$zza$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/zzi$zza;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcxx:Lcom/google/android/gms/analytics/internal/zzi$zza;

.field final synthetic zzcxy:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzi$zza;Landroid/content/ComponentName;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza$2;->zzcxx:Lcom/google/android/gms/analytics/internal/zzi$zza;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/zzi$zza$2;->zzcxy:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza$2;->zzcxx:Lcom/google/android/gms/analytics/internal/zzi$zza;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzcxt:Lcom/google/android/gms/analytics/internal/zzi;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza$2;->zzcxy:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Lcom/google/android/gms/analytics/internal/zzi;Landroid/content/ComponentName;)V

    return-void
.end method
