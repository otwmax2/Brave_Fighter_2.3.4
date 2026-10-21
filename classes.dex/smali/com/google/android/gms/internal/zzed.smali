###### Class com.google.android.gms.internal.zzed (com.google.android.gms.internal.zzed)
.class public Lcom/google/android/gms/internal/zzed;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final zzbhl:Lcom/google/android/gms/internal/zzec;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzec;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzed;->zzbhl:Lcom/google/android/gms/internal/zzec;

    return-void
.end method


# virtual methods
.method public getAvailableAssetNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzbhl:Lcom/google/android/gms/internal/zzec;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzec;->getAvailableAssetNames()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to get available asset names."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getCustomTemplateId()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzbhl:Lcom/google/android/gms/internal/zzec;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzec;->getCustomTemplateId()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to get custom template id."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzbhl:Lcom/google/android/gms/internal/zzec;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzec;->zzav(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdu;

    move-result-object v1

    if-eqz v1, :cond_14

    new-instance v0, Lcom/google/android/gms/internal/zzdv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdv;-><init>(Lcom/google/android/gms/internal/zzdu;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    const-string v1, "Failed to get image."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzbhl:Lcom/google/android/gms/internal/zzec;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzec;->zzau(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to get string."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public performClick(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzbhl:Lcom/google/android/gms/internal/zzec;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzec;->performClick(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "Failed to perform click."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public recordImpression()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzbhl:Lcom/google/android/gms/internal/zzec;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzec;->recordImpression()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
