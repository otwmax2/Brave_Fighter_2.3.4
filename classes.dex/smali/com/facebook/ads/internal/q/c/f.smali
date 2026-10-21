###### Class com.facebook.ads.internal.q.c.f (com.facebook.ads.internal.q.c.f)
.class public Lcom/facebook/ads/internal/q/c/f;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/p/a/n;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/p/a/n;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/q/c/f;->a:I

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    iget v0, p0, Lcom/facebook/ads/internal/q/c/f;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
