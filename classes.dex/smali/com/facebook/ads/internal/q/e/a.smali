###### Class com.facebook.ads.internal.q.e.a (com.facebook.ads.internal.q.e.a)
.class public Lcom/facebook/ads/internal/q/e/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/q/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/q/e/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/facebook/ads/internal/q/e/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/facebook/ads/internal/q/e/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x1

    if-nez p0, :cond_c

    sget-object v0, Lcom/facebook/ads/internal/q/e/a;->a:Ljava/lang/String;

    const-string v2, "Invalid context in screen interactive check, assuming interactive."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_b
    return v0

    :cond_c
    :try_start_c
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1f

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    goto :goto_b

    :cond_1f
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_24

    move-result v0

    goto :goto_b

    :catch_24
    move-exception v0

    sget-object v2, Lcom/facebook/ads/internal/q/e/a;->a:Ljava/lang/String;

    const-string v3, "Exception in screen interactive check, assuming interactive."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/q/d/a;->a(Ljava/lang/Exception;Landroid/content/Context;)V

    move v0, v1

    goto :goto_b
.end method
