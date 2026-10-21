###### Class com.google.android.gms.internal.zzes (com.google.android.gms.internal.zzes)
.class public final Lcom/google/android/gms/internal/zzes;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzet;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/zzll;)V
    .registers 3

    const-string v0, "/install"

    new-instance v1, Lcom/google/android/gms/internal/zzes;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzes;-><init>()V

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzll;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzll;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "is_updated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/google/android/gms/internal/zzdt;->zzkq()Lcom/google/android/gms/internal/zzdt;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->zzuf()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzdt;->zzb(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "status"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "installStatus"

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzll;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    const-string v1, "install_apk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/google/android/gms/internal/zzdt;->zzkq()Lcom/google/android/gms/internal/zzdt;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->zzuf()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzdt;->zza(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_2b
.end method
