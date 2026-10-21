###### Class com.google.android.gms.internal.zzim (com.google.android.gms.internal.zzim)
.class public Lcom/google/android/gms/internal/zzim;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzim$zzb;,
        Lcom/google/android/gms/internal/zzim$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/zzjy;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzbyx:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzail:Ljava/lang/Object;

.field private final zzbgf:Lcom/google/android/gms/internal/zzil;

.field private final zzbgh:Lcom/google/android/gms/internal/zzas;

.field private final zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

.field private zzbym:I

.field private final zzbzg:Lcom/google/android/gms/internal/zzkr;

.field private final zzbzh:Lcom/google/android/gms/ads/internal/zzq;

.field private zzbzi:Z

.field private zzbzj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbzk:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzim;->zzbyx:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzkr;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzjy$zza;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzail:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzim;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzim;->zzbzh:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzim;->zzbzg:Lcom/google/android/gms/internal/zzkr;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzim;->zzbgh:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {p0, p1, p5, p2, p4}, Lcom/google/android/gms/internal/zzim;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzjy$zza;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;)Lcom/google/android/gms/internal/zzil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbgf:Lcom/google/android/gms/internal/zzil;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbgf:Lcom/google/android/gms/internal/zzil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzil;->zzqh()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzim;->zzbzi:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzim;->zzbym:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbzj:Ljava/util/List;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzim$zza;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/formats/zzh$zza;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzim;->zzqt()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    const-string v0, "tracking_urls_and_actions"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v0, "impression_tracking_urls"

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/zzim;->zzc(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    move-object v0, v1

    :goto_17
    iput-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbzj:Ljava/util/List;

    const-string v0, "active_view"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbzk:Lorg/json/JSONObject;

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/zzim$zza;->zza(Lcom/google/android/gms/internal/zzim;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    move-result-object v6

    if-nez v6, :cond_32

    const-string v0, "Failed to retrieve ad assets."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->e(Ljava/lang/String;)V

    goto :goto_7

    :cond_2d
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_17

    :cond_32
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzim;->zzbzh:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzim;->zzbgf:Lcom/google/android/gms/internal/zzil;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzim;->zzbgh:Lcom/google/android/gms/internal/zzas;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzjy$zza;->zzcit:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v7, v5, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaou:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/formats/zzi;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzil;Lcom/google/android/gms/internal/zzas;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/google/android/gms/ads/internal/formats/zzh$zza;->zzb(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    move-object v1, v6

    goto :goto_7
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzim;)Lcom/google/android/gms/internal/zzjy$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    return-object v0
.end method

.method private zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzlc;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "ZZ)",
            "Lcom/google/android/gms/internal/zzlc",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p2, :cond_21

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_9
    const-string v0, "scale"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzim;->zza(IZ)V

    new-instance v0, Lcom/google/android/gms/internal/zzla;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/zzla;-><init>(Ljava/lang/Object;)V

    :goto_20
    return-object v0

    :cond_21
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_28
    if-eqz p3, :cond_39

    new-instance v0, Lcom/google/android/gms/internal/zzla;

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/zzc;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v7, v2, v4, v5}, Lcom/google/android/gms/ads/internal/formats/zzc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzla;-><init>(Ljava/lang/Object;)V

    goto :goto_20

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbzg:Lcom/google/android/gms/internal/zzkr;

    new-instance v1, Lcom/google/android/gms/internal/zzim$6;

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzim$6;-><init>(Lcom/google/android/gms/internal/zzim;ZDLjava/lang/String;)V

    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/internal/zzkr;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzkr$zza;)Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    goto :goto_20
.end method

.method private zza(Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V
    .registers 5

    instance-of v0, p1, Lcom/google/android/gms/ads/internal/formats/zzf;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    check-cast p1, Lcom/google/android/gms/ads/internal/formats/zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzim$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzim$zzb;-><init>(Lcom/google/android/gms/internal/zzim;)V

    new-instance v1, Lcom/google/android/gms/internal/zzim$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzim$3;-><init>(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/formats/zzf;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzim$zzb;->zzcad:Lcom/google/android/gms/internal/zzet;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbgf:Lcom/google/android/gms/internal/zzil;

    new-instance v2, Lcom/google/android/gms/internal/zzim$4;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zzim$4;-><init>(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/internal/zzet;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzil;->zza(Lcom/google/android/gms/internal/zzil$zza;)V

    goto :goto_4
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzim;->zzb(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzim;)Lcom/google/android/gms/ads/internal/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbzh:Lcom/google/android/gms/ads/internal/zzq;

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/ads/internal/formats/zzh$zza;)Lcom/google/android/gms/internal/zzjy;
    .registers 40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzim;->zzail:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/zzim;->zzbym:I

    if-nez p1, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/zzim;->zzbym:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_13

    const/4 v6, 0x0

    :cond_13
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_eb

    const/4 v2, -0x2

    if-eq v6, v2, :cond_ee

    const/16 v30, 0x0

    :goto_19
    new-instance v2, Lcom/google/android/gms/internal/zzjy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzjy$zza;->zzcit:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcav:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzjy$zza;->zzciu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnq:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzjy$zza;->zzciu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnr:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzim;->zzbzj:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzjy$zza;->zzciu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzjy$zza;->zzciu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnw:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzjy$zza;->zzcit:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v12, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcay:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy$zza;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy$zza;->zzciu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccb:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzjy$zza;->zzcio:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzjy$zza;->zzcip:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy$zza;->zzciu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcch:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzim;->zzbzk:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy$zza;->zzciu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccu:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy$zza;->zzciu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccv:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy$zza;->zzciu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnt:Ljava/util/List;

    move-object/from16 v37, v0

    invoke-direct/range {v2 .. v37}, Lcom/google/android/gms/internal/zzjy;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzll;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzgd;Lcom/google/android/gms/internal/zzgo;Ljava/lang/String;Lcom/google/android/gms/internal/zzge;Lcom/google/android/gms/internal/zzgg;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    :catchall_eb
    move-exception v2

    :try_start_ec
    monitor-exit v3
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v2

    :cond_ee
    move-object/from16 v30, p1

    goto/16 :goto_19
.end method

.method private zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 7

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "g"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "b"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result-object v0

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private zzb(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbzh:Lcom/google/android/gms/ads/internal/zzq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzec;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzeg;->zza(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to call onCustomClick for asset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method private zzc(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1e

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1e
    move-object v0, v1

    goto :goto_7
.end method

.method private zzcc(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzim;->zzqt()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/zzkz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkz;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzim$zzb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzim$zzb;-><init>(Lcom/google/android/gms/internal/zzim;)V

    new-instance v2, Lcom/google/android/gms/internal/zzim$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/android/gms/internal/zzim$1;-><init>(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/internal/zzim$zzb;Lcom/google/android/gms/internal/zzkz;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim;->zzbgf:Lcom/google/android/gms/internal/zzil;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzil;->zza(Lcom/google/android/gms/internal/zzil$zza;)V

    sget-wide v2, Lcom/google/android/gms/internal/zzim;->zzbyx:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzkz;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_7
.end method

.method private static zzh(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzc;->zzkv()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    return-object v1
.end method

.method static synthetic zzi(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzim;->zzh(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzim;->zzqs()Lcom/google/android/gms/internal/zzjy;

    move-result-object v0

    return-object v0
.end method

.method zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzjy$zza;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;)Lcom/google/android/gms/internal/zzil;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzil;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzil;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjy$zza;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;)V

    return-object v0
.end method

.method public zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzlc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/zzlc",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p3, :cond_12

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_d

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_d
    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/gms/internal/zzim;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_6
.end method

.method public zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzlc",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_19

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1e

    :cond_14
    invoke-virtual {p0, v2, p3}, Lcom/google/android/gms/internal/zzim;->zza(IZ)V

    move-object v0, v3

    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_7

    :cond_1e
    if-eqz p5, :cond_3d

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_24
    move v4, v2

    :goto_25
    if-ge v4, v1, :cond_3f

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_32

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_32
    invoke-direct {p0, v2, p3, p4}, Lcom/google/android/gms/internal/zzim;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzlc;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_25

    :cond_3d
    const/4 v1, 0x1

    goto :goto_24

    :cond_3f
    move-object v0, v3

    goto :goto_18
.end method

.method public zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "require"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_12

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_12
    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/gms/internal/zzim;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    return-object v0
.end method

.method public zza(IZ)V
    .registers 3

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzim;->zzan(I)V

    :cond_5
    return-void
.end method

.method public zzan(I)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzim;->zzbzi:Z

    iput p1, p0, Lcom/google/android/gms/internal/zzim;->zzbym:I

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected zzf(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzim$zza;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Lorg/json/JSONException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzim;->zzqt()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v3

    :goto_9
    return-object v0

    :cond_a
    const-string v0, "template_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy$zza;->zzcit:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapm:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy$zza;->zzcit:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapm:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzbgt:Z

    :goto_20
    iget-object v2, p0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjy$zza;->zzcit:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapm:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjy$zza;->zzcit:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapm:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzbgv:Z

    :goto_30
    const-string v5, "2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    new-instance v1, Lcom/google/android/gms/internal/zzin;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzin;-><init>(ZZ)V

    move-object v0, v1

    goto :goto_9

    :cond_3f
    move v0, v1

    goto :goto_20

    :cond_41
    move v2, v1

    goto :goto_30

    :cond_43
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    new-instance v1, Lcom/google/android/gms/internal/zzio;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzio;-><init>(ZZ)V

    move-object v0, v1

    goto :goto_9

    :cond_52
    const-string v2, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const-string v1, "custom_template_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzkz;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzkz;-><init>()V

    sget-object v4, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzim$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/google/android/gms/internal/zzim$2;-><init>(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/internal/zzkz;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v4, Lcom/google/android/gms/internal/zzim;->zzbyx:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v1}, Lcom/google/android/gms/internal/zzkz;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_80

    new-instance v1, Lcom/google/android/gms/internal/zzip;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzip;-><init>(Z)V

    move-object v0, v1

    goto :goto_9

    :cond_80
    const-string v1, "No handler for custom template: "

    const-string v0, "custom_template_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_96
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->e(Ljava/lang/String;)V

    :goto_99
    move-object v0, v3

    goto/16 :goto_9

    :cond_9c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_96

    :cond_a2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzim;->zzan(I)V

    goto :goto_99
.end method

.method public zzg(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzlc;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/zzlc",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zza;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_11

    new-instance v0, Lcom/google/android/gms/internal/zzla;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzla;-><init>(Ljava/lang/Object;)V

    :goto_10
    return-object v0

    :cond_11
    const-string v0, "text"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "text_size"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v0, "text_color"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzim;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const-string v0, "bg_color"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzim;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    const-string v0, "animation_ms"

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "presentation_ms"

    const/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy$zza;->zzcit:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapm:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy$zza;->zzcit:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapm:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->versionCode:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_7d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy$zza;->zzcit:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapm:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget v8, v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzbgw:I

    :goto_55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "images"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_7f

    const-string v2, "images"

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzim;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    :goto_6a
    invoke-static {v0}, Lcom/google/android/gms/internal/zzlb;->zzn(Ljava/util/List;)Lcom/google/android/gms/internal/zzlc;

    move-result-object v13

    new-instance v0, Lcom/google/android/gms/internal/zzim$5;

    move-object v1, p0

    move-object v2, v9

    move-object v3, v12

    move-object v4, v11

    move v5, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzim$5;-><init>(Lcom/google/android/gms/internal/zzim;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIII)V

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/zzlb;->zza(Lcom/google/android/gms/internal/zzlc;Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    goto :goto_10

    :cond_7d
    move v8, v5

    goto :goto_55

    :cond_7f
    const-string v2, "image"

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/zzim;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzlc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a
.end method

.method public zzqs()Lcom/google/android/gms/internal/zzjy;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzbgf:Lcom/google/android/gms/internal/zzil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzil;->zzqi()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzim;->zzcc(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzim;->zzf(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzim$zza;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/gms/internal/zzim;->zza(Lcom/google/android/gms/internal/zzim$zza;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzim;->zza(Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzim;->zzb(Lcom/google/android/gms/ads/internal/formats/zzh$zza;)Lcom/google/android/gms/internal/zzjy;
    :try_end_1f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_1f} :catch_40
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_1f} :catch_3e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1f} :catch_3c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1f} :catch_21
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_1f} :catch_35

    move-result-object v0

    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    const-string v1, "Malformed native JSON response."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_27
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzim;->zzbzi:Z

    if-nez v0, :cond_2f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzim;->zzan(I)V

    :cond_2f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzim;->zzb(Lcom/google/android/gms/ads/internal/formats/zzh$zza;)Lcom/google/android/gms/internal/zzjy;

    move-result-object v0

    goto :goto_20

    :catch_35
    move-exception v0

    const-string v1, "Timeout when loading native ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    :catch_3c
    move-exception v0

    goto :goto_27

    :catch_3e
    move-exception v0

    goto :goto_27

    :catch_40
    move-exception v0

    goto :goto_27
.end method

.method public zzqt()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzim;->zzbzi:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

###### Class com.google.android.gms.internal.zzim.AnonymousClass1 (com.google.android.gms.internal.zzim$1)
.class Lcom/google/android/gms/internal/zzim$1;
.super Lcom/google/android/gms/internal/zzil$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzim;->zzcc(Ljava/lang/String;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbzl:Lcom/google/android/gms/internal/zzim$zzb;

.field final synthetic zzbzm:Lcom/google/android/gms/internal/zzkz;

.field final synthetic zzbzn:Ljava/lang/String;

.field final synthetic zzbzo:Lcom/google/android/gms/internal/zzim;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/internal/zzim$zzb;Lcom/google/android/gms/internal/zzkz;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzim$1;->zzbzo:Lcom/google/android/gms/internal/zzim;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzim$1;->zzbzl:Lcom/google/android/gms/internal/zzim$zzb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzim$1;->zzbzm:Lcom/google/android/gms/internal/zzkz;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzim$1;->zzbzn:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzil$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/internal/zzfx;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzim$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzim$1$1;-><init>(Lcom/google/android/gms/internal/zzim$1;Lcom/google/android/gms/internal/zzfx;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim$1;->zzbzl:Lcom/google/android/gms/internal/zzim$zzb;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzim$zzb;->zzcad:Lcom/google/android/gms/internal/zzet;

    const-string v1, "/nativeAdPreProcess"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim$1;->zzbzo:Lcom/google/android/gms/internal/zzim;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzim;->zza(Lcom/google/android/gms/internal/zzim;)Lcom/google/android/gms/internal/zzjy$zza;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzjy$zza;->zzciu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ads_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzim$1;->zzbzn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "google.afma.nativeAds.preProcessJsonGmsg"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_29} :catch_2a

    :goto_29
    return-void

    :catch_2a
    move-exception v0

    const-string v1, "Exception occurred while invoking javascript"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim$1;->zzbzm:Lcom/google/android/gms/internal/zzkz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkz;->zzi(Ljava/lang/Object;)V

    goto :goto_29
.end method

.method public zzqr()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim$1;->zzbzm:Lcom/google/android/gms/internal/zzkz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkz;->zzi(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzim.AnonymousClass1.C01381 (com.google.android.gms.internal.zzim$1$1)
.class Lcom/google/android/gms/internal/zzim$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzim$1;->zze(Lcom/google/android/gms/internal/zzfx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgp:Lcom/google/android/gms/internal/zzfx;

.field final synthetic zzbzp:Lcom/google/android/gms/internal/zzim$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzim$1;Lcom/google/android/gms/internal/zzfx;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzim$1$1;->zzbzp:Lcom/google/android/gms/internal/zzim$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzim$1$1;->zzbgp:Lcom/google/android/gms/internal/zzfx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
    .registers 7
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim$1$1;->zzbgp:Lcom/google/android/gms/internal/zzfx;

    const-string v1, "/nativeAdPreProcess"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzim$1$1;->zzbzp:Lcom/google/android/gms/internal/zzim$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzim$1;->zzbzl:Lcom/google/android/gms/internal/zzim$zzb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzim$zzb;->zzcad:Lcom/google/android/gms/internal/zzet;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzfx;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    :try_start_e
    const-string v0, "success"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim$1$1;->zzbzp:Lcom/google/android/gms/internal/zzim$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzim$1;->zzbzm:Lcom/google/android/gms/internal/zzkz;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ads"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzkz;->zzi(Ljava/lang/Object;)V
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    const-string v1, "Malformed native JSON response."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzim$1$1;->zzbzp:Lcom/google/android/gms/internal/zzim$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzim$1;->zzbzo:Lcom/google/android/gms/internal/zzim;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzim;->zzan(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim$1$1;->zzbzp:Lcom/google/android/gms/internal/zzim$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzim$1;->zzbzo:Lcom/google/android/gms/internal/zzim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzim;->zzqt()Z

    move-result v0

    const-string v1, "Unable to set the ad state error!"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim$1$1;->zzbzp:Lcom/google/android/gms/internal/zzim$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzim$1;->zzbzm:Lcom/google/android/gms/internal/zzkz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkz;->zzi(Ljava/lang/Object;)V

    goto :goto_33
.end method

###### Class com.google.android.gms.internal.zzim.AnonymousClass2 (com.google.android.gms.internal.zzim$2)
.class Lcom/google/android/gms/internal/zzim$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzim;->zzf(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzim$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbzo:Lcom/google/android/gms/internal/zzim;

.field final synthetic zzbzq:Lcom/google/android/gms/internal/zzkz;

.field final synthetic zzbzr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/internal/zzkz;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzim$2;->zzbzo:Lcom/google/android/gms/internal/zzim;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzim$2;->zzbzq:Lcom/google/android/gms/internal/zzkz;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzim$2;->zzbzr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim$2;->zzbzq:Lcom/google/android/gms/internal/zzkz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim$2;->zzbzo:Lcom/google/android/gms/internal/zzim;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzim;->zzb(Lcom/google/android/gms/internal/zzim;)Lcom/google/android/gms/ads/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->zzfb()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzim$2;->zzbzr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzkz;->zzi(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzim.AnonymousClass3 (com.google.android.gms.internal.zzim$3)
.class Lcom/google/android/gms/internal/zzim$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzim;->zza(Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbzo:Lcom/google/android/gms/internal/zzim;

.field final synthetic zzbzs:Lcom/google/android/gms/ads/internal/formats/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/formats/zzf;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzim$3;->zzbzo:Lcom/google/android/gms/internal/zzim;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzim$3;->zzbzs:Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const-string v0, "asset"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim$3;->zzbzo:Lcom/google/android/gms/internal/zzim;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzim$3;->zzbzs:Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzim;->zza(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzim.AnonymousClass4 (com.google.android.gms.internal.zzim$4)
.class Lcom/google/android/gms/internal/zzim$4;
.super Lcom/google/android/gms/internal/zzil$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzim;->zza(Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbzo:Lcom/google/android/gms/internal/zzim;

.field final synthetic zzbzt:Lcom/google/android/gms/internal/zzet;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/internal/zzet;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzim$4;->zzbzo:Lcom/google/android/gms/internal/zzim;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzim$4;->zzbzt:Lcom/google/android/gms/internal/zzet;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzil$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/internal/zzfx;)V
    .registers 4

    const-string v0, "/nativeAdCustomClick"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim$4;->zzbzt:Lcom/google/android/gms/internal/zzet;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzim.AnonymousClass5 (com.google.android.gms.internal.zzim$5)
.class Lcom/google/android/gms/internal/zzim$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlb$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzim;->zzg(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzlc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzlb$zza",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/ads/internal/formats/zzc;",
        ">;",
        "Lcom/google/android/gms/ads/internal/formats/zza;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbzo:Lcom/google/android/gms/internal/zzim;

.field final synthetic zzbzu:Ljava/lang/String;

.field final synthetic zzbzv:Ljava/lang/Integer;

.field final synthetic zzbzw:Ljava/lang/Integer;

.field final synthetic zzbzx:I

.field final synthetic zzbzy:I

.field final synthetic zzbzz:I

.field final synthetic zzcaa:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzim;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIII)V
    .registers 9

    iput-object p1, p0, Lcom/google/android/gms/internal/zzim$5;->zzbzo:Lcom/google/android/gms/internal/zzim;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzim$5;->zzbzu:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzim$5;->zzbzv:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzim$5;->zzbzw:Ljava/lang/Integer;

    iput p5, p0, Lcom/google/android/gms/internal/zzim$5;->zzbzx:I

    iput p6, p0, Lcom/google/android/gms/internal/zzim$5;->zzbzy:I

    iput p7, p0, Lcom/google/android/gms/internal/zzim$5;->zzbzz:I

    iput p8, p0, Lcom/google/android/gms/internal/zzim$5;->zzcaa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zzh(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzim$5;->zzj(Ljava/util/List;)Lcom/google/android/gms/ads/internal/formats/zza;

    move-result-object v0

    return-object v0
.end method

.method public zzj(Ljava/util/List;)Lcom/google/android/gms/ads/internal/formats/zza;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;)",
            "Lcom/google/android/gms/ads/internal/formats/zza;"
        }
    .end annotation

    const/4 v8, 0x0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    move-object v0, v8

    :goto_a
    move-object v8, v0

    :goto_b
    return-object v8

    :cond_c
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim$5;->zzbzu:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzim;->zzi(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzim$5;->zzbzv:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzim$5;->zzbzw:Ljava/lang/Integer;

    iget v5, p0, Lcom/google/android/gms/internal/zzim$5;->zzbzx:I

    if-lez v5, :cond_34

    iget v5, p0, Lcom/google/android/gms/internal/zzim$5;->zzbzx:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_22
    iget v6, p0, Lcom/google/android/gms/internal/zzim$5;->zzbzy:I

    iget v7, p0, Lcom/google/android/gms/internal/zzim$5;->zzbzz:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/google/android/gms/internal/zzim$5;->zzcaa:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/formats/zza;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;II)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2c} :catch_2d

    goto :goto_a

    :catch_2d
    move-exception v0

    const-string v1, "Could not get attribution icon"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_34
    move-object v5, v8

    goto :goto_22
.end method

###### Class com.google.android.gms.internal.zzim.AnonymousClass6 (com.google.android.gms.internal.zzim$6)
.class Lcom/google/android/gms/internal/zzim$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzkr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzim;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzlc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzkr$zza",
        "<",
        "Lcom/google/android/gms/ads/internal/formats/zzc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbqy:Ljava/lang/String;

.field final synthetic zzbzo:Lcom/google/android/gms/internal/zzim;

.field final synthetic zzcab:Z

.field final synthetic zzcac:D


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzim;ZDLjava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/zzim$6;->zzbzo:Lcom/google/android/gms/internal/zzim;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzim$6;->zzcab:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzim$6;->zzcac:D

    iput-object p5, p0, Lcom/google/android/gms/internal/zzim$6;->zzbqy:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzg(Ljava/io/InputStream;)Lcom/google/android/gms/ads/internal/formats/zzc;
    .registers 8

    const/4 v4, 0x2

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/google/android/gms/common/util/zzo;->zzk(Ljava/io/InputStream;)[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_10

    move-result-object v1

    :goto_6
    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim$6;->zzbzo:Lcom/google/android/gms/internal/zzim;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzim$6;->zzcab:Z

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/zzim;->zza(IZ)V

    :goto_f
    return-object v0

    :catch_10
    move-exception v1

    move-object v1, v0

    goto :goto_6

    :cond_13
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim$6;->zzbzo:Lcom/google/android/gms/internal/zzim;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzim$6;->zzcab:Z

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/zzim;->zza(IZ)V

    goto :goto_f

    :cond_23
    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzim$6;->zzcac:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzc;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim$6;->zzbqy:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzim$6;->zzcac:D

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/google/android/gms/ads/internal/formats/zzc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    goto :goto_f
.end method

.method public synthetic zzh(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzim$6;->zzg(Ljava/io/InputStream;)Lcom/google/android/gms/ads/internal/formats/zzc;

    move-result-object v0

    return-object v0
.end method

.method public zzqu()Lcom/google/android/gms/ads/internal/formats/zzc;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim$6;->zzbzo:Lcom/google/android/gms/internal/zzim;

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzim$6;->zzcab:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzim;->zza(IZ)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic zzqv()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzim$6;->zzqu()Lcom/google/android/gms/ads/internal/formats/zzc;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzim.zza (com.google.android.gms.internal.zzim$zza)
.class public interface abstract Lcom/google/android/gms/internal/zzim$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/ads/internal/formats/zzh$zza;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/zzim;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/zzh$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzim;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation
.end method

###### Class com.google.android.gms.internal.zzim.zzb (com.google.android.gms.internal.zzim$zzb)
.class Lcom/google/android/gms/internal/zzim$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzbzo:Lcom/google/android/gms/internal/zzim;

.field public zzcad:Lcom/google/android/gms/internal/zzet;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzim;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzim$zzb;->zzbzo:Lcom/google/android/gms/internal/zzim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
