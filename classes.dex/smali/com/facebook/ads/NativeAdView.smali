###### Class com.facebook.ads.NativeAdView (com.facebook.ads.NativeAdView)
.class public Lcom/facebook/ads/NativeAdView;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/NativeAdView$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;)Landroid/view/View;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/ads/NativeAdView;->render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .registers 6

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->isNativeConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdViewAttributes()Lcom/facebook/ads/NativeAdViewAttributes;

    move-result-object p3

    :cond_a
    :goto_a
    invoke-virtual {p1, p2}, Lcom/facebook/ads/NativeAd;->a(Lcom/facebook/ads/NativeAdView$Type;)V

    new-instance v1, Lcom/facebook/ads/ANGenericTemplateView;

    if-eqz p3, :cond_21

    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdViewAttributes;->a()Lcom/facebook/ads/internal/n/h;

    move-result-object v0

    :goto_15
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/facebook/ads/ANGenericTemplateView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/internal/n/h;)V

    return-object v1

    :cond_19
    if-nez p3, :cond_a

    new-instance p3, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {p3}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    goto :goto_a

    :cond_21
    const/4 v0, 0x0

    goto :goto_15
.end method

###### Class com.facebook.ads.NativeAdView.Type (com.facebook.ads.NativeAdView$Type)
.class public final enum Lcom/facebook/ads/NativeAdView$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/NativeAdView$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HEIGHT_100:Lcom/facebook/ads/NativeAdView$Type;

.field public static final enum HEIGHT_120:Lcom/facebook/ads/NativeAdView$Type;

.field public static final enum HEIGHT_300:Lcom/facebook/ads/NativeAdView$Type;

.field public static final enum HEIGHT_400:Lcom/facebook/ads/NativeAdView$Type;

.field private static final synthetic b:[Lcom/facebook/ads/NativeAdView$Type;


# instance fields
.field private final a:Lcom/facebook/ads/internal/n/i;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/ads/NativeAdView$Type;

    const-string v1, "HEIGHT_100"

    sget-object v2, Lcom/facebook/ads/internal/n/i;->a:Lcom/facebook/ads/internal/n/i;

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/ads/NativeAdView$Type;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/n/i;)V

    sput-object v0, Lcom/facebook/ads/NativeAdView$Type;->HEIGHT_100:Lcom/facebook/ads/NativeAdView$Type;

    new-instance v0, Lcom/facebook/ads/NativeAdView$Type;

    const-string v1, "HEIGHT_120"

    sget-object v2, Lcom/facebook/ads/internal/n/i;->b:Lcom/facebook/ads/internal/n/i;

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/ads/NativeAdView$Type;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/n/i;)V

    sput-object v0, Lcom/facebook/ads/NativeAdView$Type;->HEIGHT_120:Lcom/facebook/ads/NativeAdView$Type;

    new-instance v0, Lcom/facebook/ads/NativeAdView$Type;

    const-string v1, "HEIGHT_300"

    sget-object v2, Lcom/facebook/ads/internal/n/i;->c:Lcom/facebook/ads/internal/n/i;

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/ads/NativeAdView$Type;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/n/i;)V

    sput-object v0, Lcom/facebook/ads/NativeAdView$Type;->HEIGHT_300:Lcom/facebook/ads/NativeAdView$Type;

    new-instance v0, Lcom/facebook/ads/NativeAdView$Type;

    const-string v1, "HEIGHT_400"

    sget-object v2, Lcom/facebook/ads/internal/n/i;->d:Lcom/facebook/ads/internal/n/i;

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/ads/NativeAdView$Type;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/n/i;)V

    sput-object v0, Lcom/facebook/ads/NativeAdView$Type;->HEIGHT_400:Lcom/facebook/ads/NativeAdView$Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/ads/NativeAdView$Type;

    sget-object v1, Lcom/facebook/ads/NativeAdView$Type;->HEIGHT_100:Lcom/facebook/ads/NativeAdView$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/NativeAdView$Type;->HEIGHT_120:Lcom/facebook/ads/NativeAdView$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/NativeAdView$Type;->HEIGHT_300:Lcom/facebook/ads/NativeAdView$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/NativeAdView$Type;->HEIGHT_400:Lcom/facebook/ads/NativeAdView$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/ads/NativeAdView$Type;->b:[Lcom/facebook/ads/NativeAdView$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/facebook/ads/internal/n/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/n/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/ads/NativeAdView$Type;->a:Lcom/facebook/ads/internal/n/i;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/NativeAdView$Type;
    .registers 2

    const-class v0, Lcom/facebook/ads/NativeAdView$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAdView$Type;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/NativeAdView$Type;
    .registers 1

    sget-object v0, Lcom/facebook/ads/NativeAdView$Type;->b:[Lcom/facebook/ads/NativeAdView$Type;

    invoke-virtual {v0}, [Lcom/facebook/ads/NativeAdView$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/NativeAdView$Type;

    return-object v0
.end method


# virtual methods
.method a()Lcom/facebook/ads/internal/n/i;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdView$Type;->a:Lcom/facebook/ads/internal/n/i;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdView$Type;->a:Lcom/facebook/ads/internal/n/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/i;->b()I

    move-result v0

    return v0
.end method

.method public getValue()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdView$Type;->a:Lcom/facebook/ads/internal/n/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/i;->b()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdView$Type;->a:Lcom/facebook/ads/internal/n/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/i;->a()I

    move-result v0

    return v0
.end method
