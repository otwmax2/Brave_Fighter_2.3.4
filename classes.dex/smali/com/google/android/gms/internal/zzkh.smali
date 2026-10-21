###### Class com.google.android.gms.internal.zzkh (com.google.android.gms.internal.zzkh)
.class public final Lcom/google/android/gms/internal/zzkh;
.super Lcom/google/android/gms/ads/internal/util/client/zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# direct methods
.method public static v(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/zzkh;->zztc()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static zztb()Z
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzban:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static zztc()Z
    .registers 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzaz(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/google/android/gms/internal/zzkh;->zztb()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
