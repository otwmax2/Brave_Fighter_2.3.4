###### Class com.moat.analytics.mobile.vng.MoatAnalytics (com.moat.analytics.mobile.vng.MoatAnalytics)
.class public abstract Lcom/moat/analytics/mobile/vng/MoatAnalytics;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/moat/analytics/mobile/vng/MoatAnalytics;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->a:Lcom/moat/analytics/mobile/vng/MoatAnalytics;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/moat/analytics/mobile/vng/MoatAnalytics;
    .registers 2

    const-class v1, Lcom/moat/analytics/mobile/vng/MoatAnalytics;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->a:Lcom/moat/analytics/mobile/vng/MoatAnalytics;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1e

    if-nez v0, :cond_e

    :try_start_7
    new-instance v0, Lcom/moat/analytics/mobile/vng/k;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/k;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->a:Lcom/moat/analytics/mobile/vng/MoatAnalytics;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_12
    .catchall {:try_start_7 .. :try_end_e} :catchall_1e

    :cond_e
    :goto_e
    :try_start_e
    sget-object v0, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->a:Lcom/moat/analytics/mobile/vng/MoatAnalytics;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_1e

    monitor-exit v1

    return-object v0

    :catch_12
    move-exception v0

    :try_start_13
    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/vng/v$a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/v$a;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->a:Lcom/moat/analytics/mobile/vng/MoatAnalytics;
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract prepareNativeDisplayTracking(Ljava/lang/String;)V
.end method

.method public abstract start(Landroid/app/Application;)V
.end method

.method public abstract start(Lcom/moat/analytics/mobile/vng/MoatOptions;Landroid/app/Application;)V
.end method
