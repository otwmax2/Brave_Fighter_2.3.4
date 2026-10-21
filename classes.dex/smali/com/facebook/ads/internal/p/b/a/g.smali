###### Class com.facebook.ads.internal.p.b.a.g (com.facebook.ads.internal.p.b.a.g)
.class public Lcom/facebook/ads/internal/p/b/a/g;
.super Lcom/facebook/ads/internal/p/b/a/e;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .registers 6

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/a/e;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max size must be positive number!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iput-wide p1, p0, Lcom/facebook/ads/internal/p/b/a/g;->a:J

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/io/File;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/p/b/a/e;->a(Ljava/io/File;)V

    return-void
.end method

.method protected a(Ljava/io/File;JI)Z
    .registers 7

    iget-wide v0, p0, Lcom/facebook/ads/internal/p/b/a/g;->a:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
