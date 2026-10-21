###### Class com.facebook.ads.internal.q.a.k (com.facebook.ads.internal.q.a.k)
.class public Lcom/facebook/ads/internal/q/a/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/internal/q/a/k;->a:I

    iput p2, p0, Lcom/facebook/ads/internal/q/a/k;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/q/a/k;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/q/a/k;->b:I

    return v0
.end method
