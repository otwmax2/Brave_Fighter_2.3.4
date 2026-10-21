###### Class com.google.android.gms.internal.zzeq (com.google.android.gms.internal.zzeq)
.class public final Lcom/google/android/gms/internal/zzeq;
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

.method private zzb(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
    .registers 8
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

    const-string v0, "label"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "start_label"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v0, "No label given for CSI tick."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    :goto_23
    return-void

    :cond_24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    const-string v0, "No timestamp given for CSI tick."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_23

    :cond_30
    :try_start_30
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzeq;->zzd(J)J
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_37} :catch_48

    move-result-wide v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_40

    const-string v1, "native:view_load"

    :cond_40
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->zzut()Lcom/google/android/gms/internal/zzdj;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzdj;->zza(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_23

    :catch_48
    move-exception v0

    const-string v1, "Malformed timestamp for CSI tick."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method

.method private zzc(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
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

    const-string v0, "value"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v0, "No value given for CSI experiment."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->zzut()Lcom/google/android/gms/internal/zzdj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdj;->zzkf()Lcom/google/android/gms/internal/zzdk;

    move-result-object v1

    if-nez v1, :cond_24

    const-string v0, "No ticker for WebView, dropping experiment ID."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_13

    :cond_24
    const-string v2, "e"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzdk;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private zzd(J)J
    .registers 8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, p1, v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private zzd(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
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

    const-string v0, "name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "value"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v0, "No value given for CSI extra."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    :goto_1b
    return-void

    :cond_1c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v0, "No name given for CSI extra."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_1b

    :cond_28
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->zzut()Lcom/google/android/gms/internal/zzdj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdj;->zzkf()Lcom/google/android/gms/internal/zzdk;

    move-result-object v2

    if-nez v2, :cond_38

    const-string v0, "No ticker for WebView, dropping extra parameter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_1b

    :cond_38
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzdk;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
    .registers 5
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

    const-string v1, "tick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeq;->zzb(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    const-string v1, "experiment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeq;->zzc(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V

    goto :goto_13

    :cond_20
    const-string v1, "extra"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeq;->zzd(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V

    goto :goto_13
.end method
