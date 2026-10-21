###### Class com.facebook.ads.internal.r.b (com.facebook.ads.internal.r.b)
.class public Lcom/facebook/ads/internal/r/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/facebook/ads/internal/r/c;

.field private b:F

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/r/c;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;F)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/r/c;F)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;FLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/r/c;FLjava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/r/c;",
            "F",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/r/b;->a:Lcom/facebook/ads/internal/r/c;

    iput p2, p0, Lcom/facebook/ads/internal/r/b;->b:F

    if-eqz p3, :cond_c

    iput-object p3, p0, Lcom/facebook/ads/internal/r/b;->c:Ljava/util/Map;

    :goto_b
    return-void

    :cond_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/r/b;->c:Ljava/util/Map;

    goto :goto_b
.end method


# virtual methods
.method public a()Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/r/b;->a:Lcom/facebook/ads/internal/r/c;

    sget-object v1, Lcom/facebook/ads/internal/r/c;->b:Lcom/facebook/ads/internal/r/c;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/r/b;->a:Lcom/facebook/ads/internal/r/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/r/c;->a()I

    move-result v0

    return v0
.end method

.method public c()F
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/r/b;->b:F

    return v0
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/r/b;->c:Ljava/util/Map;

    return-object v0
.end method
