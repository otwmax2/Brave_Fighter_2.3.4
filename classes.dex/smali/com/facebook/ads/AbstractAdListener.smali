###### Class com.facebook.ads.AbstractAdListener (com.facebook.ads.AbstractAdListener)
.class public abstract Lcom/facebook/ads/AbstractAdListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/AdListener;
.implements Lcom/facebook/ads/InterstitialAdListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .registers 2

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .registers 2

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .registers 3

    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .registers 2

    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .registers 2

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .registers 2

    return-void
.end method
