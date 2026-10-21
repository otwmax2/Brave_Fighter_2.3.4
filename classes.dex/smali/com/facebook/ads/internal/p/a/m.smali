###### Class com.facebook.ads.internal.p.a.m (com.facebook.ads.internal.p.a.m)
.class public Lcom/facebook/ads/internal/p/a/m;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = -0x217eef64b70b44c1L


# instance fields
.field private a:Lcom/facebook/ads/internal/p/a/n;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Lcom/facebook/ads/internal/p/a/n;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/p/a/m;->a:Lcom/facebook/ads/internal/p/a/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/p/a/n;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/p/a/m;->a:Lcom/facebook/ads/internal/p/a/n;

    return-object v0
.end method
