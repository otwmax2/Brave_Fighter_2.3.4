###### Class com.google.android.gms.ads.MobileAds (com.google.android.gms.ads.MobileAds)
.class public Lcom/google/android/gms/ads/MobileAds;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/MobileAds$Settings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzag;->zzjo()Lcom/google/android/gms/ads/internal/client/zzag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzag;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V
    .registers 5
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzag;->zzjo()Lcom/google/android/gms/ads/internal/client/zzag;

    move-result-object v1

    if-nez p2, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzag;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzah;)V

    return-void

    :cond_b
    invoke-virtual {p2}, Lcom/google/android/gms/ads/MobileAds$Settings;->zzdf()Lcom/google/android/gms/ads/internal/client/zzah;

    move-result-object v0

    goto :goto_7
.end method

.method public static setAppMuted(Z)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzag;->zzjo()Lcom/google/android/gms/ads/internal/client/zzag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzag;->setAppMuted(Z)V

    return-void
.end method

.method public static setAppVolume(F)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzag;->zzjo()Lcom/google/android/gms/ads/internal/client/zzag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzag;->setAppVolume(F)V

    return-void
.end method

###### Class com.google.android.gms.ads.MobileAds.Settings (com.google.android.gms.ads.MobileAds$Settings)
.class public final Lcom/google/android/gms/ads/MobileAds$Settings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/MobileAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# instance fields
.field private final zzaik:Lcom/google/android/gms/ads/internal/client/zzah;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzah;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzaik:Lcom/google/android/gms/ads/internal/client/zzah;

    return-void
.end method


# virtual methods
.method public getTrackingId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzaik:Lcom/google/android/gms/ads/internal/client/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzah;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGoogleAnalyticsEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzaik:Lcom/google/android/gms/ads/internal/client/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzah;->isGoogleAnalyticsEnabled()Z

    move-result v0

    return v0
.end method

.method public setGoogleAnalyticsEnabled(Z)Lcom/google/android/gms/ads/MobileAds$Settings;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzaik:Lcom/google/android/gms/ads/internal/client/zzah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzah;->zzp(Z)V

    return-object p0
.end method

.method public setTrackingId(Ljava/lang/String;)Lcom/google/android/gms/ads/MobileAds$Settings;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzaik:Lcom/google/android/gms/ads/internal/client/zzah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzah;->zzao(Ljava/lang/String;)V

    return-object p0
.end method

.method zzdf()Lcom/google/android/gms/ads/internal/client/zzah;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzaik:Lcom/google/android/gms/ads/internal/client/zzah;

    return-object v0
.end method
