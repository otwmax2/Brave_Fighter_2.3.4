###### Class com.facebook.ads.internal.p.a.l (com.facebook.ads.internal.p.a.l)
.class public abstract Lcom/facebook/ads/internal/p/a/l;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/facebook/ads/internal/p/a/j;

.field protected c:Ljava/lang/String;

.field protected d:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/p;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/ads/internal/p/a/l;->a:Ljava/lang/String;

    if-eqz p1, :cond_b

    iput-object p1, p0, Lcom/facebook/ads/internal/p/a/l;->a:Ljava/lang/String;

    :cond_b
    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Lcom/facebook/ads/internal/p/a/p;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/internal/p/a/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/p/a/l;->a:Ljava/lang/String;

    :cond_2c
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/p/a/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/facebook/ads/internal/p/a/j;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/p/a/l;->b:Lcom/facebook/ads/internal/p/a/j;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/p/a/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()[B
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/p/a/l;->d:[B

    return-object v0
.end method
