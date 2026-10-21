###### Class com.facebook.ads.internal.a.i (com.facebook.ads.internal.a.i)
.class public Lcom/facebook/ads/internal/a/i;
.super Lcom/facebook/ads/internal/a/a;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final e:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/a/i;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/a/a;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/facebook/ads/internal/a/i;->e:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/j/a$a;
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/j/a$a;->b:Lcom/facebook/ads/internal/j/a$a;

    return-object v0
.end method

.method public b()V
    .registers 5

    :try_start_0
    const-string v0, "REDIRECTACTION: "

    iget-object v1, p0, Lcom/facebook/ads/internal/a/i;->e:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/facebook/ads/internal/q/c/g;

    invoke-direct {v0}, Lcom/facebook/ads/internal/q/c/g;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/a/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/a/i;->e:Landroid/net/Uri;

    iget-object v3, p0, Lcom/facebook/ads/internal/a/i;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/q/c/g;->a(Lcom/facebook/ads/internal/q/c/g;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    sget-object v1, Lcom/facebook/ads/internal/a/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open link url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/a/i;->e:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method
