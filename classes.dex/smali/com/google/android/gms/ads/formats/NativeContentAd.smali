###### Class com.google.android.gms.ads.formats.NativeContentAd (com.google.android.gms.ads.formats.NativeContentAd)
.class public abstract Lcom/google/android/gms/ads/formats/NativeContentAd;
.super Lcom/google/android/gms/ads/formats/NativeAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getAdvertiser()Ljava/lang/CharSequence;
.end method

.method public abstract getBody()Ljava/lang/CharSequence;
.end method

.method public abstract getCallToAction()Ljava/lang/CharSequence;
.end method

.method public abstract getExtras()Landroid/os/Bundle;
.end method

.method public abstract getHeadline()Ljava/lang/CharSequence;
.end method

.method public abstract getImages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;
.end method

###### Class com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener (com.google.android.gms.ads.formats.NativeContentAd$OnContentAdLoadedListener)
.class public interface abstract Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeContentAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnContentAdLoadedListener"
.end annotation


# virtual methods
.method public abstract onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V
.end method
