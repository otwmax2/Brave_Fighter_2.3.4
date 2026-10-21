###### Class com.google.android.gms.analytics.internal.zzaj (com.google.android.gms.analytics.internal.zzaj)
.class public final Lcom/google/android/gms/analytics/internal/zzaj;
.super Ljava/lang/Object;


# static fields
.field static zzamp:Ljava/lang/Object;

.field static zzcrz:Lcom/google/android/gms/internal/zzvz;

.field static zzcsa:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzaj;->zzamp:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzav(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzaj;->zzcsa:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzaj;->zzcsa:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const-string v0, "com.google.android.gms.analytics.AnalyticsReceiver"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzao;->zzb(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/analytics/internal/zzaj;->zzcsa:Ljava/lang/Boolean;

    goto :goto_d
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/analytics/internal/zzf;->zzay(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzyx()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    if-nez p2, :cond_10

    const-string v0, "AnalyticsReceiver called with null intent"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzel(Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzabc()Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "Device AnalyticsReceiver got"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_23
    const-string v0, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/google/android/gms/analytics/internal/zzak;->zzaw(Landroid/content/Context;)Z

    move-result v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/google/android/gms/analytics/internal/zzaj;->zzamp:Ljava/lang/Object;

    monitor-enter v3

    :try_start_48
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-nez v0, :cond_58

    monitor-exit v3

    goto :goto_f

    :catchall_4f
    move-exception v0

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_4f

    throw v0

    :cond_52
    const-string v0, "Local AnalyticsReceiver got"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_23

    :cond_58
    :try_start_58
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzaj;->zzcrz:Lcom/google/android/gms/internal/zzvz;

    if-nez v0, :cond_6c

    new-instance v0, Lcom/google/android/gms/internal/zzvz;

    const/4 v2, 0x1

    const-string v4, "Analytics WakeLock"

    invoke-direct {v0, p1, v2, v4}, Lcom/google/android/gms/internal/zzvz;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzaj;->zzcrz:Lcom/google/android/gms/internal/zzvz;

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzaj;->zzcrz:Lcom/google/android/gms/internal/zzvz;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzvz;->setReferenceCounted(Z)V

    :cond_6c
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzaj;->zzcrz:Lcom/google/android/gms/internal/zzvz;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzvz;->acquire(J)V
    :try_end_73
    .catch Ljava/lang/SecurityException; {:try_start_58 .. :try_end_73} :catch_75
    .catchall {:try_start_58 .. :try_end_73} :catchall_4f

    :goto_73
    :try_start_73
    monitor-exit v3

    goto :goto_f

    :catch_75
    move-exception v0

    const-string v0, "Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzel(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_4f

    goto :goto_73
.end method
