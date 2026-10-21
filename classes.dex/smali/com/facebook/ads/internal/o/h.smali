###### Class com.facebook.ads.internal.o.h (com.facebook.ads.internal.o.h)
.class public Lcom/facebook/ads/internal/o/h;
.super Lcom/facebook/ads/internal/o/f;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/facebook/ads/internal/h/c;)V
    .registers 10

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/internal/o/f$a;->b:Lcom/facebook/ads/internal/o/f$a;

    move-object v0, p0

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/o/f;-><init>(Lcom/facebook/ads/internal/o/f$a;Lcom/facebook/ads/internal/h/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/facebook/ads/internal/o/h;->b:I

    iput-object p1, p0, Lcom/facebook/ads/internal/o/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/facebook/ads/internal/h/c;
    .registers 2

    invoke-super {p0}, Lcom/facebook/ads/internal/o/f;->a()Lcom/facebook/ads/internal/h/c;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/o/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/o/h;->b:I

    return v0
.end method
