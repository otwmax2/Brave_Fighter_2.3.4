###### Class com.google.android.gms.analytics.internal.zzak (com.google.android.gms.analytics.internal.zzak)
.class public final Lcom/google/android/gms/analytics/internal/zzak;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/internal/zzak$zza;
    }
.end annotation


# static fields
.field private static zzcsb:Ljava/lang/Boolean;


# instance fields
.field private final ar:Lcom/google/android/gms/analytics/internal/zzak$zza;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzak$zza;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/analytics/internal/zzak$zza;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzak;->ar:Lcom/google/android/gms/analytics/internal/zzak$zza;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzak;)Lcom/google/android/gms/analytics/internal/zzak$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->ar:Lcom/google/android/gms/analytics/internal/zzak$zza;

    return-object v0
.end method

.method public static zzaw(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzak;->zzcsb:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzak;->zzcsb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const-string v0, "com.google.android.gms.analytics.AnalyticsService"

    invoke-static {p0, v0}, Lcom/google/android/gms/analytics/internal/zzao;->zzk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/analytics/internal/zzak;->zzcsb:Ljava/lang/Boolean;

    goto :goto_d
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/internal/zzak;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private zzvw()V
    .registers 4

    :try_start_0
    sget-object v1, Lcom/google/android/gms/analytics/internal/zzaj;->zzamp:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_15

    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzaj;->zzcrz:Lcom/google/android/gms/internal/zzvz;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzvz;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzvz;->release()V

    :cond_10
    monitor-exit v1

    :goto_11
    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    :try_start_14
    throw v0
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_15} :catch_15

    :catch_15
    move-exception v0

    goto :goto_11
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzay(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzyx()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "Device AnalyticsService is starting up"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzei(Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    const-string v0, "Local AnalyticsService is starting up"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzei(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public onDestroy()V
    .registers 3
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzay(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzyx()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "Device AnalyticsService is shutting down"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzei(Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    const-string v0, "Local AnalyticsService is shutting down"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzei(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    const/4 v5, 0x2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzak;->zzvw()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzay(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzyx()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    if-nez p1, :cond_16

    const-string v0, "AnalyticsService started with null intent"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzel(Ljava/lang/String;)V

    :cond_15
    :goto_15
    return v5

    :cond_16
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "Device AnalyticsService called. startId, action"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2d
    const-string v3, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzwd()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/analytics/internal/zzak$1;

    invoke-direct {v3, p0, p3, v0, v1}, Lcom/google/android/gms/analytics/internal/zzak$1;-><init>(Lcom/google/android/gms/analytics/internal/zzak;ILcom/google/android/gms/analytics/internal/zzf;Lcom/google/android/gms/analytics/internal/zzaf;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/internal/zzb;->zza(Lcom/google/android/gms/analytics/internal/zzw;)V

    goto :goto_15

    :cond_42
    const-string v3, "Local AnalyticsService called. startId, action"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2d
.end method

###### Class com.google.android.gms.analytics.internal.zzak.AnonymousClass1 (com.google.android.gms.analytics.internal.zzak$1)
.class Lcom/google/android/gms/analytics/internal/zzak$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/internal/zzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/zzak;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic as:Lcom/google/android/gms/analytics/internal/zzf;

.field final synthetic at:Lcom/google/android/gms/analytics/internal/zzak;

.field final synthetic zzcsc:Lcom/google/android/gms/analytics/internal/zzaf;

.field final synthetic zzcsd:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzak;ILcom/google/android/gms/analytics/internal/zzf;Lcom/google/android/gms/analytics/internal/zzaf;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzak$1;->at:Lcom/google/android/gms/analytics/internal/zzak;

    iput p2, p0, Lcom/google/android/gms/analytics/internal/zzak$1;->zzcsd:I

    iput-object p3, p0, Lcom/google/android/gms/analytics/internal/zzak$1;->as:Lcom/google/android/gms/analytics/internal/zzf;

    iput-object p4, p0, Lcom/google/android/gms/analytics/internal/zzak$1;->zzcsc:Lcom/google/android/gms/analytics/internal/zzaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$1;->at:Lcom/google/android/gms/analytics/internal/zzak;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzak;->zzb(Lcom/google/android/gms/analytics/internal/zzak;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzak$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzak$1$1;-><init>(Lcom/google/android/gms/analytics/internal/zzak$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.google.android.gms.analytics.internal.zzak.AnonymousClass1.RunnableC00581 (com.google.android.gms.analytics.internal.zzak$1$1)
.class Lcom/google/android/gms/analytics/internal/zzak$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/zzak$1;->zzd(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic au:Lcom/google/android/gms/analytics/internal/zzak$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzak$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzak$1$1;->au:Lcom/google/android/gms/analytics/internal/zzak$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$1$1;->au:Lcom/google/android/gms/analytics/internal/zzak$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/zzak$1;->at:Lcom/google/android/gms/analytics/internal/zzak;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzak;->zza(Lcom/google/android/gms/analytics/internal/zzak;)Lcom/google/android/gms/analytics/internal/zzak$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzak$1$1;->au:Lcom/google/android/gms/analytics/internal/zzak$1;

    iget v1, v1, Lcom/google/android/gms/analytics/internal/zzak$1;->zzcsd:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/internal/zzak$zza;->callServiceStopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$1$1;->au:Lcom/google/android/gms/analytics/internal/zzak$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/zzak$1;->as:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$1$1;->au:Lcom/google/android/gms/analytics/internal/zzak$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/zzak$1;->zzcsc:Lcom/google/android/gms/analytics/internal/zzaf;

    const-string v1, "Device AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzei(Ljava/lang/String;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$1$1;->au:Lcom/google/android/gms/analytics/internal/zzak$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/zzak$1;->zzcsc:Lcom/google/android/gms/analytics/internal/zzaf;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzei(Ljava/lang/String;)V

    goto :goto_29
.end method

###### Class com.google.android.gms.analytics.internal.zzak.zza (com.google.android.gms.analytics.internal.zzak$zza)
.class public interface abstract Lcom/google/android/gms/analytics/internal/zzak$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/zzak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation


# virtual methods
.method public abstract callServiceStopSelfResult(I)Z
.end method

.method public abstract getContext()Landroid/content/Context;
.end method
