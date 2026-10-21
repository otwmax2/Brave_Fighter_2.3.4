###### Class com.google.android.gms.internal.zzib (com.google.android.gms.internal.zzib)
.class public final Lcom/google/android/gms/internal/zzib;
.super Lcom/google/android/gms/internal/zzhw$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final zzawh:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhw$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzib;->zzawh:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    return-void
.end method


# virtual methods
.method public isValidPurchase(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzib;->zzawh:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;->isValidPurchase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzhv;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzib;->zzawh:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    new-instance v1, Lcom/google/android/gms/internal/zzhz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzhz;-><init>(Lcom/google/android/gms/internal/zzhv;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;->onInAppPurchaseFinished(Lcom/google/android/gms/ads/purchase/InAppPurchaseResult;)V

    return-void
.end method
