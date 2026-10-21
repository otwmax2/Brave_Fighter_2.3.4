###### Class com.facebook.ads.internal.q.a.b (com.facebook.ads.internal.q.a.b)
.class public Lcom/facebook/ads/internal/q/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/internal/q/a/b;->a:Z

    sput-boolean v0, Lcom/facebook/ads/internal/q/a/b;->b:Z

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-class v1, Lcom/facebook/ads/internal/q/a/b;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/facebook/ads/internal/q/a/b;->a()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_24

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_a
    monitor-exit v1

    return-object v0

    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fb.e2e."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_24

    move-result-object v0

    goto :goto_a

    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()Z
    .registers 3

    const-class v1, Lcom/facebook/ads/internal/q/a/b;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/facebook/ads/internal/q/a/b;->b:Z

    if-nez v0, :cond_18

    const-string v0, "true"

    const-string v2, "fb.running_e2e"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/internal/q/a/b;->a:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/internal/q/a/b;->b:Z

    :cond_18
    sget-boolean v0, Lcom/facebook/ads/internal/q/a/b;->a:Z
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return v0

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Z
    .registers 3

    const-class v1, Lcom/facebook/ads/internal/q/a/b;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/facebook/ads/internal/q/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_12

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method
