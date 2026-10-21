###### Class com.moat.analytics.mobile.iro.MoatAnalytics (com.moat.analytics.mobile.iro.MoatAnalytics)
.class public abstract Lcom/moat/analytics/mobile/iro/MoatAnalytics;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ˎ:Lcom/moat/analytics/mobile/iro/MoatAnalytics;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->ˎ:Lcom/moat/analytics/mobile/iro/MoatAnalytics;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/moat/analytics/mobile/iro/MoatAnalytics;
    .registers 2

    .prologue
    .line 17
    const-class v1, Lcom/moat/analytics/mobile/iro/MoatAnalytics;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->ˎ:Lcom/moat/analytics/mobile/iro/MoatAnalytics;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1e

    if-nez v0, :cond_e

    .line 19
    :try_start_7
    new-instance v0, Lcom/moat/analytics/mobile/iro/j;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/j;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->ˎ:Lcom/moat/analytics/mobile/iro/MoatAnalytics;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_12
    .catchall {:try_start_7 .. :try_end_e} :catchall_1e

    .line 25
    :cond_e
    :goto_e
    :try_start_e
    sget-object v0, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->ˎ:Lcom/moat/analytics/mobile/iro/MoatAnalytics;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_1e

    monitor-exit v1

    return-object v0

    .line 21
    :catch_12
    move-exception v0

    :try_start_13
    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    .line 22
    new-instance v0, Lcom/moat/analytics/mobile/iro/NoOp$MoatAnalytics;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/NoOp$MoatAnalytics;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->ˎ:Lcom/moat/analytics/mobile/iro/MoatAnalytics;
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1e

    goto :goto_e

    .line 17
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract prepareNativeDisplayTracking(Ljava/lang/String;)V
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation
.end method

.method public abstract start(Landroid/app/Application;)V
.end method

.method public abstract start(Lcom/moat/analytics/mobile/iro/MoatOptions;Landroid/app/Application;)V
.end method
