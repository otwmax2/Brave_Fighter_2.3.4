###### Class com.google.android.gms.internal.zzdg (com.google.android.gms.internal.zzdg)
.class public Lcom/google/android/gms/internal/zzdg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# direct methods
.method public static zza(Lcom/google/android/gms/internal/zzdk;J)Lcom/google/android/gms/internal/zzdi;
    .registers 4
    .param p0    # Lcom/google/android/gms/internal/zzdk;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzdk;->zzc(J)Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    goto :goto_3
.end method

.method public static varargs zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;J[Ljava/lang/String;)Z
    .registers 7
    .param p0    # Lcom/google/android/gms/internal/zzdk;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/zzdi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;J[Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public static varargs zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z
    .registers 4
    .param p0    # Lcom/google/android/gms/internal/zzdk;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/zzdi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzdi;
    .registers 2
    .param p0    # Lcom/google/android/gms/internal/zzdk;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    goto :goto_3
.end method
