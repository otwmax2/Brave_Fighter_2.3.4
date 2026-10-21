###### Class com.google.android.gms.ads.formats.NativeCustomTemplateAd (com.google.android.gms.ads.formats.NativeCustomTemplateAd)
.class public interface abstract Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;,
        Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;
    }
.end annotation


# virtual methods
.method public abstract getAvailableAssetNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomTemplateId()Ljava/lang/String;
.end method

.method public abstract getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/NativeAd$Image;
.end method

.method public abstract getText(Ljava/lang/String;)Ljava/lang/CharSequence;
.end method

.method public abstract performClick(Ljava/lang/String;)V
.end method

.method public abstract recordImpression()V
.end method

###### Class com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomClickListener (com.google.android.gms.ads.formats.NativeCustomTemplateAd$OnCustomClickListener)
.class public interface abstract Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCustomClickListener"
.end annotation


# virtual methods
.method public abstract onCustomClick(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V
.end method

###### Class com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener (com.google.android.gms.ads.formats.NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener)
.class public interface abstract Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCustomTemplateAdLoadedListener"
.end annotation


# virtual methods
.method public abstract onCustomTemplateAdLoaded(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V
.end method
