###### Class com.facebook.ads.internal.q.a.m (com.facebook.ads.internal.q.a.m)
.class public Lcom/facebook/ads/internal/q/a/m;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Z

.field private static c:D

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/q/a/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/q/a/m;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/internal/q/a/m;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 6

    sget-boolean v0, Lcom/facebook/ads/internal/q/a/m;->b:Z

    if-nez v0, :cond_26

    sget-object v1, Lcom/facebook/ads/internal/q/a/m;->a:Ljava/lang/String;

    monitor-enter v1

    :try_start_7
    sget-boolean v0, Lcom/facebook/ads/internal/q/a/m;->b:Z

    if-nez v0, :cond_25

    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/internal/q/a/m;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    sput-wide v2, Lcom/facebook/ads/internal/q/a/m;->c:D

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/q/a/m;->d:Ljava/lang/String;

    :cond_25
    monitor-exit v1

    :cond_26
    return-void

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public static b()D
    .registers 2

    sget-wide v0, Lcom/facebook/ads/internal/q/a/m;->c:D

    return-wide v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/q/a/m;->d:Ljava/lang/String;

    return-object v0
.end method
