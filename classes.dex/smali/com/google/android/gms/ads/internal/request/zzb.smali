###### Class com.google.android.gms.ads.internal.request.zzb (com.google.android.gms.ads.internal.request.zzb)
.class public Lcom/google/android/gms/ads/internal/request/zzb;
.super Lcom/google/android/gms/internal/zzkg;

# interfaces
.implements Lcom/google/android/gms/ads/internal/request/zzc$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/zzb$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbgh:Lcom/google/android/gms/internal/zzas;

.field zzboi:Lcom/google/android/gms/internal/zzge;

.field private zzbox:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field private zzbxx:Ljava/lang/Runnable;

.field private final zzbxy:Ljava/lang/Object;

.field private final zzcai:Lcom/google/android/gms/ads/internal/request/zza$zza;

.field private final zzcaj:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

.field zzcak:Lcom/google/android/gms/internal/zzkn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/request/zza$zza;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkg;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxy:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcai:Lcom/google/android/gms/ads/internal/request/zza$zza;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcaj:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbgh:Lcom/google/android/gms/internal/zzas;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/request/zzb;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxy:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/request/zzb;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzb;->zzd(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/request/zzb;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcaj:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/request/zzb;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxx:Ljava/lang/Runnable;

    return-object v0
.end method

.method private zzd(ILjava/lang/String;)V
    .registers 14

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    const/4 v0, -0x1

    if-ne p1, v0, :cond_32

    :cond_9
    invoke-static {p2}, Lcom/google/android/gms/internal/zzkh;->zzcx(Ljava/lang/String;)V

    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-nez v0, :cond_36

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbox:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    if-eqz v0, :cond_42

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbox:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    :goto_1d
    new-instance v0, Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzboi:Lcom/google/android/gms/internal/zzge;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v8, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccg:J

    move v5, p1

    move-object v10, v4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzjy$zza;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzge;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcai:Lcom/google/android/gms/ads/internal/request/zza$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/request/zza$zza;->zza(Lcom/google/android/gms/internal/zzjy$zza;)V

    return-void

    :cond_32
    invoke-static {p2}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_c

    :cond_36
    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v2, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnw:J

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    goto :goto_17

    :cond_42
    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcaj:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    invoke-direct {v1, v0, v4, v6, v7}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Ljava/lang/String;J)V

    goto :goto_1d
.end method


# virtual methods
.method public onStop()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcak:Lcom/google/android/gms/internal/zzkn;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcak:Lcom/google/android/gms/internal/zzkn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkn;->cancel()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method zza(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzle;)Lcom/google/android/gms/internal/zzkn;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/internal/zzle",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;)",
            "Lcom/google/android/gms/internal/zzkn;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p0}, Lcom/google/android/gms/ads/internal/request/zzc;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzle;Lcom/google/android/gms/ads/internal/request/zzc$zza;)Lcom/google/android/gms/internal/zzkn;

    move-result-object v0

    return-object v0
.end method

.method protected zzb(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/request/zzb$zza;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccf:Ljava/lang/String;

    if-nez v0, :cond_f

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string v1, "The ad response must specify one of the supported ad sizes."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccf:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3d

    new-instance v1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string v2, "Invalid ad size format from the ad response: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccf:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_37

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_33
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_33

    :cond_3d
    const/4 v1, 0x0

    :try_start_3e
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_4a} :catch_84

    move-result v5

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaur:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    array-length v7, v6

    move v2, v3

    :goto_51
    if-ge v2, v7, :cond_af

    aget-object v8, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_a5

    iget v0, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_6b
    iget v9, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_a8

    iget v9, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    int-to-float v9, v9

    div-float v1, v9, v1

    float-to-int v1, v1

    :goto_76
    if-ne v4, v0, :cond_ab

    if-ne v5, v1, :cond_ab

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaur:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    return-object v0

    :catch_84
    move-exception v0

    new-instance v1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string v2, "Invalid ad size number from the ad response: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccf:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9b
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_9f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9b

    :cond_a5
    iget v0, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    goto :goto_6b

    :cond_a8
    iget v1, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    goto :goto_76

    :cond_ab
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_51

    :cond_af
    new-instance v1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string v2, "The ad size from the ad response was not one of the requested sizes: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccf:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_c9

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c5
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_c9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_c5
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .registers 13
    .param p1    # Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, -0x2

    const/4 v0, 0x0

    const-string v1, "Received ad response."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v6

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxy:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_15
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcak:Lcom/google/android/gms/internal/zzkn;

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_69

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbu:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzkb;->zzd(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    :try_start_25
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    if-eq v1, v5, :cond_6c

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_6c

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x42

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_55
    .catch Lcom/google/android/gms/ads/internal/request/zzb$zza; {:try_start_25 .. :try_end_55} :catch_55

    :catch_55
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zzb$zza;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zzb$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/ads/internal/request/zzb;->zzd(ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxx:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_68
    return-void

    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0

    :cond_6c
    :try_start_6c
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzb;->zzqw()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbox:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaur:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v1, :cond_bf

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbox:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/request/zzb;->zzb(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    :try_end_7c
    .catch Lcom/google/android/gms/ads/internal/request/zzb$zza; {:try_start_6c .. :try_end_7c} :catch_55

    move-result-object v4

    :goto_7d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccm:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzkb;->zzae(Z)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcck:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bd

    :try_start_92
    new-instance v10, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcck:Ljava/lang/String;

    invoke-direct {v10, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9b} :catch_b7

    :goto_9b
    new-instance v0, Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbox:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzboi:Lcom/google/android/gms/internal/zzge;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccg:J

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzjy$zza;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzge;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcai:Lcom/google/android/gms/ads/internal/request/zza$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/request/zza$zza;->zza(Lcom/google/android/gms/internal/zzjy$zza;)V

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxx:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_68

    :catch_b7
    move-exception v1

    const-string v2, "Error parsing the JSON for Active View."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_bd
    move-object v10, v0

    goto :goto_9b

    :cond_bf
    move-object v4, v0

    goto :goto_7d
.end method

.method public zzew()V
    .registers 7

    const-string v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/request/zzb$1;-><init>(Lcom/google/android/gms/ads/internal/request/zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxx:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxx:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbe:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/google/android/gms/internal/zzlf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlf;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    new-instance v1, Lcom/google/android/gms/ads/internal/request/zzb$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/request/zzb$2;-><init>(Lcom/google/android/gms/ads/internal/request/zzb;Lcom/google/android/gms/internal/zzle;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkk;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzlc;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbgh:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzas;->zzax()Lcom/google/android/gms/internal/zzan;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/zzan;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcaj:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Ljava/lang/String;J)V

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbox:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbox:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzle;->zzg(Ljava/lang/Object;)V

    return-void
.end method

.method protected zzqw()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/request/zzb$zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string v1, "No fill from ad server."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbd:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzkb;->zzc(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccc:Z

    if-eqz v0, :cond_9e

    :try_start_2e
    new-instance v0, Lcom/google/android/gms/internal/zzge;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzge;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzboi:Lcom/google/android/gms/internal/zzge;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzboi:Lcom/google/android/gms/internal/zzge;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzge;->zzbnu:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkb;->zzaf(Z)V
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_44} :catch_77

    :goto_44
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbdl:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Received cookie from server. Setting webview cookie in CookieManager."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkm;->zzao(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "googleads.g.doubleclick.net"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_77
    move-exception v0

    const-string v1, "Could not parse mediation config."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string v2, "Could not parse mediation config: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_98

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_93
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_98
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_93

    :cond_9e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnu:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkb;->zzaf(Z)V

    goto :goto_44
.end method

###### Class com.google.android.gms.ads.internal.request.zzb.AnonymousClass1 (com.google.android.gms.ads.internal.request.zzb$1)
.class Lcom/google/android/gms/ads/internal/request/zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/zzb;->zzew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcal:Lcom/google/android/gms/ads/internal/request/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/zzb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb$1;->zzcal:Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$1;->zzcal:Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/zzb;->zza(Lcom/google/android/gms/ads/internal/request/zzb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$1;->zzcal:Lcom/google/android/gms/ads/internal/request/zzb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcak:Lcom/google/android/gms/internal/zzkn;

    if-nez v0, :cond_f

    monitor-exit v1

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$1;->zzcal:Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zzb;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$1;->zzcal:Lcom/google/android/gms/ads/internal/request/zzb;

    const/4 v2, 0x2

    const-string v3, "Timed out waiting for ad response."

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/ads/internal/request/zzb;->zza(Lcom/google/android/gms/ads/internal/request/zzb;ILjava/lang/String;)V

    monitor-exit v1

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method

###### Class com.google.android.gms.ads.internal.request.zzb.AnonymousClass2 (com.google.android.gms.ads.internal.request.zzb$2)
.class Lcom/google/android/gms/ads/internal/request/zzb$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/zzb;->zzew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcal:Lcom/google/android/gms/ads/internal/request/zzb;

.field final synthetic zzcam:Lcom/google/android/gms/internal/zzle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/zzb;Lcom/google/android/gms/internal/zzle;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcal:Lcom/google/android/gms/ads/internal/request/zzb;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcam:Lcom/google/android/gms/internal/zzle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcal:Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/zzb;->zza(Lcom/google/android/gms/ads/internal/request/zzb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcal:Lcom/google/android/gms/ads/internal/request/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcal:Lcom/google/android/gms/ads/internal/request/zzb;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcal:Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/request/zzb;->zzb(Lcom/google/android/gms/ads/internal/request/zzb;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzaou:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcam:Lcom/google/android/gms/internal/zzle;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/ads/internal/request/zzb;->zza(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzle;)Lcom/google/android/gms/internal/zzkn;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcak:Lcom/google/android/gms/internal/zzkn;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcal:Lcom/google/android/gms/ads/internal/request/zzb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcak:Lcom/google/android/gms/internal/zzkn;

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcal:Lcom/google/android/gms/ads/internal/request/zzb;

    const/4 v2, 0x0

    const-string v3, "Could not start the ad request service."

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/ads/internal/request/zzb;->zza(Lcom/google/android/gms/ads/internal/request/zzb;ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->zzcal:Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/request/zzb;->zzc(Lcom/google/android/gms/ads/internal/request/zzb;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_34
    monitor-exit v1

    return-void

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v0
.end method

###### Class com.google.android.gms.ads.internal.request.zzb.zza (com.google.android.gms.ads.internal.request.zzb$zza)
.class final Lcom/google/android/gms/ads/internal/request/zzb$zza;
.super Ljava/lang/Exception;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# instance fields
.field private final zzbym:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/android/gms/ads/internal/request/zzb$zza;->zzbym:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$zza;->zzbym:I

    return v0
.end method
