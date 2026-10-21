###### Class com.google.android.gms.internal.zzby (com.google.android.gms.internal.zzby)
.class public final Lcom/google/android/gms/internal/zzby;
.super Lcom/google/android/gms/internal/zzca$zza;


# instance fields
.field private final zzaiq:Lcom/google/android/gms/internal/zzar;

.field private final zzair:Lcom/google/android/gms/internal/zzas;

.field private final zzais:Lcom/google/android/gms/internal/zzap;

.field private zzait:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzca$zza;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzby;->zzait:Z

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzar;->zza(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzby;->zzaiq:Lcom/google/android/gms/internal/zzar;

    new-instance v0, Lcom/google/android/gms/internal/zzas;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzby;->zzaiq:Lcom/google/android/gms/internal/zzar;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzas;-><init>(Lcom/google/android/gms/internal/zzan;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzby;->zzair:Lcom/google/android/gms/internal/zzas;

    if-eqz p3, :cond_1b

    const/4 v0, 0x0

    :goto_18
    iput-object v0, p0, Lcom/google/android/gms/internal/zzby;->zzais:Lcom/google/android/gms/internal/zzap;

    return-void

    :cond_1b
    invoke-static {p2}, Lcom/google/android/gms/internal/zzap;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/zzap;

    move-result-object v0

    goto :goto_18
.end method

.method private zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;Z)Lcom/google/android/gms/dynamic/zzd;
    .registers 7

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz p3, :cond_19

    iget-object v2, p0, Lcom/google/android/gms/internal/zzby;->zzair:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzas;->zza(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/internal/zzby;->zzair:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzas;->zzb(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_1e
    .catch Lcom/google/android/gms/internal/zzat; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v0

    goto :goto_14

    :catch_20
    move-exception v0

    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/dynamic/zzd;
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzby;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;Z)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/dynamic/zzd;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzby;->zzaiq:Lcom/google/android/gms/internal/zzar;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/internal/zzar;->zzb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/dynamic/zzd;)Z
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzby;->zzair:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzas;->zza(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public zzb(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/dynamic/zzd;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzby;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;Z)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzby;->zzair:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzas;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/dynamic/zzd;)Z
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzby;->zzair:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzas;->zzc(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public zzb(Ljava/lang/String;Z)Z
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzby;->zzais:Lcom/google/android/gms/internal/zzap;

    if-nez v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    new-instance v1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzby;->zzais:Lcom/google/android/gms/internal/zzap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzap;->zza(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzby;->zzait:Z

    goto :goto_6
.end method

.method public zzc(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzby;->zzaiq:Lcom/google/android/gms/internal/zzar;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzar;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzby;->zzais:Lcom/google/android/gms/internal/zzap;

    if-eqz v2, :cond_24

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzby;->zzait:Z

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/zzby;->zzais:Lcom/google/android/gms/internal/zzap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzap;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzby;->zzais:Lcom/google/android/gms/internal/zzap;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/zzap;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzby;->zzait:Z

    :goto_23
    return-object v0

    :cond_24
    move-object v0, v1

    goto :goto_23
.end method

.method public zzd(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzby;->zzair:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzas;->zza(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public zzdg()Ljava/lang/String;
    .registers 2

    const-string v0, "ms"

    return-object v0
.end method

.method public zzk(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzby;->zzair:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzas;->zzk(Ljava/lang/String;)V

    return-void
.end method
