###### Class com.facebook.ads.internal.protocol.a (com.facebook.ads.internal.protocol.a)
.class public Lcom/facebook/ads/internal/protocol/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(I)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object p2

    :cond_d
    iput-object p1, p0, Lcom/facebook/ads/internal/protocol/a;->a:Lcom/facebook/ads/internal/protocol/AdErrorType;

    iput-object p2, p0, Lcom/facebook/ads/internal/protocol/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;
    .registers 3

    new-instance v0, Lcom/facebook/ads/internal/protocol/a;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/ads/internal/protocol/b;)Lcom/facebook/ads/internal/protocol/a;
    .registers 4

    new-instance v0, Lcom/facebook/ads/internal/protocol/a;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/protocol/b;->a()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/protocol/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/protocol/AdErrorType;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/protocol/a;->a:Lcom/facebook/ads/internal/protocol/AdErrorType;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/protocol/a;->b:Ljava/lang/String;

    return-object v0
.end method
