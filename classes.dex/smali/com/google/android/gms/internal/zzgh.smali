###### Class com.google.android.gms.internal.zzgh (com.google.android.gms.internal.zzgh)
.class public Lcom/google/android/gms/internal/zzgh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgi$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzail:Ljava/lang/Object;

.field private final zzajz:Lcom/google/android/gms/internal/zzgn;

.field private final zzali:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private final zzalj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field private final zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field private final zzarj:Z

.field private final zzawl:Z

.field private final zzbog:Ljava/lang/String;

.field private final zzboh:J

.field private final zzboi:Lcom/google/android/gms/internal/zzge;

.field private final zzboj:Lcom/google/android/gms/internal/zzgd;

.field private zzbok:Lcom/google/android/gms/internal/zzgo;

.field private zzbol:I

.field private zzbom:Lcom/google/android/gms/internal/zzgq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/internal/zzge;Lcom/google/android/gms/internal/zzgd;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZZLcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzgn;",
            "Lcom/google/android/gms/internal/zzge;",
            "Lcom/google/android/gms/internal/zzgd;",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            "Lcom/google/android/gms/ads/internal/client/AdSizeParcel;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "ZZ",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzgh;->zzail:Ljava/lang/Object;

    const/4 v2, -0x2

    iput v2, p0, Lcom/google/android/gms/internal/zzgh;->zzbol:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgh;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgh;->zzajz:Lcom/google/android/gms/internal/zzgn;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    const-string v2, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgh;->zzmj()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzgh;->zzbog:Ljava/lang/String;

    :goto_21
    iput-object p4, p0, Lcom/google/android/gms/internal/zzgh;->zzboi:Lcom/google/android/gms/internal/zzge;

    iget-wide v2, p4, Lcom/google/android/gms/internal/zzge;->zzbnp:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_47

    iget-wide v2, p4, Lcom/google/android/gms/internal/zzge;->zzbnp:J

    :goto_2d
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzgh;->zzboh:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzgh;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzgh;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzgh;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzgh;->zzarj:Z

    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgh;->zzawl:Z

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzali:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzalj:Ljava/util/List;

    return-void

    :cond_44
    iput-object p2, p0, Lcom/google/android/gms/internal/zzgh;->zzbog:Ljava/lang/String;

    goto :goto_21

    :cond_47
    const-wide/16 v2, 0x2710

    goto :goto_2d
.end method

.method private zza(JJJJ)J
    .registers 12

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbol:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_f

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    return-wide v0

    :cond_f
    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/zzgh;->zzb(JJJJ)V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzgo;)Lcom/google/android/gms/internal/zzgo;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgh;->zzbok:Lcom/google/android/gms/internal/zzgo;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgh;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzail:Ljava/lang/Object;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzgg;)V
    .registers 11

    const-string v0, "com.google.ads.mediation.AdUrlAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzbog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatu:Landroid/os/Bundle;

    if-nez v0, :cond_26

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzf;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzf;->zzc(Landroid/os/Bundle;)Lcom/google/android/gms/ads/internal/client/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzf;->zzig()Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatu:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzbog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_37

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_37
    const-string v1, "sdk_less_network_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzgd;->zzbmz:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatu:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgh;->zzbog:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgd;->zzbng:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgh;->zzbk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_51
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcnp:I

    const v1, 0x3e8fa0

    if-ge v0, v1, :cond_8a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauq:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbok:Lcom/google/android/gms/internal/zzgo;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgh;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-interface {v0, v1, v2, v4, p1}, Lcom/google/android/gms/internal/zzgo;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgp;)V

    :goto_6d
    return-void

    :cond_6e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbok:Lcom/google/android/gms/internal/zzgo;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgh;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgh;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgo;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgp;)V
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_7e} :catch_7f

    goto :goto_6d

    :catch_7f
    move-exception v0

    const-string v1, "Could not request ad from mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgh;->zzy(I)V

    goto :goto_6d

    :cond_8a
    :try_start_8a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgh;->zzarj:Z

    if-eqz v0, :cond_a5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzbok:Lcom/google/android/gms/internal/zzgo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgh;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgd;->zzbmy:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzgh;->zzali:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzgh;->zzalj:Ljava/util/List;

    move-object v6, p1

    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/zzgo;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;)V

    goto :goto_6d

    :cond_a5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauq:Z

    if-eqz v0, :cond_be

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzbok:Lcom/google/android/gms/internal/zzgo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgh;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgd;->zzbmy:Ljava/lang/String;

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzgo;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgp;)V

    goto :goto_6d

    :cond_be
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgh;->zzawl:Z

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgd;->zzbnj:Ljava/lang/String;

    if-eqz v0, :cond_ec

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzbok:Lcom/google/android/gms/internal/zzgo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgh;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgd;->zzbmy:Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgd;->zzbnn:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgh;->zzbl(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    iget-object v8, v0, Lcom/google/android/gms/internal/zzgd;->zzbnm:Ljava/util/List;

    move-object v6, p1

    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/zzgo;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;)V

    goto :goto_6d

    :cond_ec
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbok:Lcom/google/android/gms/internal/zzgo;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgh;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgh;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzgd;->zzbmy:Ljava/lang/String;

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/zzgo;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgp;)V

    goto/16 :goto_6d

    :cond_102
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbok:Lcom/google/android/gms/internal/zzgo;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgh;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgh;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzgd;->zzbmy:Ljava/lang/String;

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/zzgo;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgp;)V
    :try_end_116
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_116} :catch_7f

    goto/16 :goto_6d
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzgg;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgg;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgh;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgh;->zzz(I)Z

    move-result v0

    return v0
.end method

.method private static zzaa(I)Lcom/google/android/gms/internal/zzgq;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzgh$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgh$2;-><init>(I)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzgh;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbol:I

    return v0
.end method

.method private zzb(JJJJ)V
    .registers 16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, p1

    sub-long v2, p3, v2

    sub-long/2addr v0, p5

    sub-long v0, p7, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_17

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_20

    :cond_17
    const-string v0, "Timed out waiting for adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcx(Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbol:I

    :goto_1f
    return-void

    :cond_20
    :try_start_20
    iget-object v4, p0, Lcom/google/android/gms/internal/zzgh;->zzail:Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_29} :catch_2a

    goto :goto_1f

    :catch_2a
    move-exception v0

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbol:I

    goto :goto_1f
.end method

.method private zzbk(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgh;->zzmm()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgh;->zzz(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-object p1

    :cond_10
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "cpm_floor_cents"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_1d} :catch_1f

    move-result-object p1

    goto :goto_f

    :catch_1f
    move-exception v0

    const-string v0, "Could not remove field. Returning the original value"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_f
.end method

.method private static zzbl(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .registers 5

    new-instance v1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    if-nez p0, :cond_c

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "multiple_images"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    const-string v2, "only_urls"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    const-string v2, "native_image_orientation"

    const-string v3, "any"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgh;->zzbm(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_34} :catch_39

    :goto_34
    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    goto :goto_b

    :catch_39
    move-exception v0

    const-string v2, "Exception occurred when creating native ad options"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34
.end method

.method private static zzbm(Ljava/lang/String;)I
    .registers 2

    const-string v0, "landscape"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    :goto_9
    return v0

    :cond_a
    const-string v0, "portrait"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzgh;)Lcom/google/android/gms/internal/zzgo;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgh;->zzml()Lcom/google/android/gms/internal/zzgo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzgh;)Lcom/google/android/gms/internal/zzgo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbok:Lcom/google/android/gms/internal/zzgo;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzgh;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgh;->zzmm()Z

    move-result v0

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzgh;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbog:Ljava/lang/String;

    return-object v0
.end method

.method private zzmj()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgd;->zzbnc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzajz:Lcom/google/android/gms/internal/zzgn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgd;->zzbnc:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgn;->zzbo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    :goto_18
    return-object v0

    :cond_19
    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_18

    :catch_1c
    move-exception v0

    const-string v0, "Fail to determine the custom event\'s version, assuming the old one."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    :cond_22
    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    goto :goto_18
.end method

.method private zzmk()Lcom/google/android/gms/internal/zzgq;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbol:I

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgh;->zzmm()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x4

    :try_start_d
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgh;->zzz(I)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbom:Lcom/google/android/gms/internal/zzgq;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbom:Lcom/google/android/gms/internal/zzgq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgq;->zzmo()I

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbom:Lcom/google/android/gms/internal/zzgq;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_21} :catch_22

    goto :goto_b

    :catch_22
    move-exception v0

    const-string v0, "Could not get cpm value from MediationResponseMetadata"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    :cond_28
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgh;->zzmn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgh;->zzaa(I)Lcom/google/android/gms/internal/zzgq;

    move-result-object v0

    goto :goto_b
.end method

.method private zzml()Lcom/google/android/gms/internal/zzgo;
    .registers 5

    const-string v1, "Instantiating mediation adapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbog:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcx(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgh;->zzarj:Z

    if-nez v0, :cond_78

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbc:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzbog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/ads/mediation/MediationAdapter;)Lcom/google/android/gms/internal/zzgo;

    move-result-object v0

    :goto_3a
    return-object v0

    :cond_3b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :cond_41
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbd:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_63

    const-string v0, "com.google.ads.mediation.AdUrlAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzbog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    new-instance v0, Lcom/google/ads/mediation/AdUrlAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/AdUrlAdapter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/ads/mediation/MediationAdapter;)Lcom/google/android/gms/internal/zzgo;

    move-result-object v0

    goto :goto_3a

    :cond_63
    const-string v0, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzbog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    new-instance v0, Lcom/google/android/gms/internal/zzgu;

    new-instance v1, Lcom/google/android/gms/internal/zzhc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzhc;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzgu;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_3a

    :cond_78
    :try_start_78
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzajz:Lcom/google/android/gms/internal/zzgn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzbog:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgn;->zzbn(Ljava/lang/String;)Lcom/google/android/gms/internal/zzgo;
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_7f} :catch_81

    move-result-object v0

    goto :goto_3a

    :catch_81
    move-exception v0

    move-object v1, v0

    const-string v2, "Could not instantiate mediation adapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbog:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_95
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_3a

    :cond_9a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_95
.end method

.method private zzmm()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzboi:Lcom/google/android/gms/internal/zzge;

    iget v0, v0, Lcom/google/android/gms/internal/zzge;->zzbnz:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private zzmn()I
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgd;->zzbng:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :cond_8
    :goto_8
    return v0

    :cond_9
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgd;->zzbng:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_12} :catch_23

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgh;->zzbog:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "cpm_cents"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_8

    :catch_23
    move-exception v0

    const-string v0, "Could not convert to json. Returning 0"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    move v0, v1

    goto :goto_8

    :cond_2b
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgh;->zzz(I)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "cpm_floor_cents"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :goto_38
    if-nez v0, :cond_8

    const-string v0, "penalized_average_cpm_cents"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_8

    :cond_41
    move v0, v1

    goto :goto_38
.end method

.method private zzz(I)Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgh;->zzarj:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbok:Lcom/google/android/gms/internal/zzgo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgo;->zzmt()Landroid/os/Bundle;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_2d

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_18

    const-string v2, "capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_34

    const/4 v0, 0x1

    :goto_17
    move v1, v0

    :cond_18
    :goto_18
    return v1

    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauq:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbok:Lcom/google/android/gms/internal/zzgo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgo;->getInterstitialAdapterInfo()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_b

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbok:Lcom/google/android/gms/internal/zzgo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgo;->zzms()Landroid/os/Bundle;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2b} :catch_2d

    move-result-object v0

    goto :goto_b

    :catch_2d
    move-exception v0

    const-string v0, "Could not get adapter info. Returning false"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_18

    :cond_34
    move v0, v1

    goto :goto_17
.end method


# virtual methods
.method public cancel()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbok:Lcom/google/android/gms/internal/zzgo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbok:Lcom/google/android/gms/internal/zzgo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgo;->destroy()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_16
    .catchall {:try_start_3 .. :try_end_c} :catchall_1d

    :cond_c
    :goto_c
    const/4 v0, -0x1

    :try_start_d
    iput v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbol:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catch_16
    move-exception v0

    const-string v2, "Could not destroy mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public zza(JJ)Lcom/google/android/gms/internal/zzgi;
    .registers 16

    iget-object v10, p0, Lcom/google/android/gms/internal/zzgh;->zzail:Ljava/lang/Object;

    monitor-enter v10

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v0, Lcom/google/android/gms/internal/zzgg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzgg;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/zzgh$1;

    invoke-direct {v4, p0, v0}, Lcom/google/android/gms/internal/zzgh$1;-><init>(Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzgg;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzgh;->zzboh:J

    move-object v1, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzgh;->zza(JJJJ)J

    move-result-wide v8

    new-instance v1, Lcom/google/android/gms/internal/zzgi;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgh;->zzboj:Lcom/google/android/gms/internal/zzgd;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgh;->zzbok:Lcom/google/android/gms/internal/zzgo;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgh;->zzbog:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/gms/internal/zzgh;->zzbol:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgh;->zzmk()Lcom/google/android/gms/internal/zzgq;

    move-result-object v7

    move-object v5, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzgi;-><init>(Lcom/google/android/gms/internal/zzgd;Lcom/google/android/gms/internal/zzgo;Ljava/lang/String;Lcom/google/android/gms/internal/zzgg;ILcom/google/android/gms/internal/zzgq;J)V

    monitor-exit v10

    return-object v1

    :catchall_33
    move-exception v0

    monitor-exit v10
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v0
.end method

.method protected zza(Lcom/google/android/gms/ads/mediation/MediationAdapter;)Lcom/google/android/gms/internal/zzgo;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzgu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzgu;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    return-object v0
.end method

.method public zza(ILcom/google/android/gms/internal/zzgq;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/zzgh;->zzbol:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgh;->zzbom:Lcom/google/android/gms/internal/zzgq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public zzy(I)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/zzgh;->zzbol:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

###### Class com.google.android.gms.internal.zzgh.AnonymousClass1 (com.google.android.gms.internal.zzgh$1)
.class Lcom/google/android/gms/internal/zzgh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgh;->zza(JJ)Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbon:Lcom/google/android/gms/internal/zzgg;

.field final synthetic zzboo:Lcom/google/android/gms/internal/zzgh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzgg;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgh$1;->zzboo:Lcom/google/android/gms/internal/zzgh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgh$1;->zzbon:Lcom/google/android/gms/internal/zzgg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1;->zzboo:Lcom/google/android/gms/internal/zzgh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgh;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1;->zzboo:Lcom/google/android/gms/internal/zzgh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgh;->zzb(Lcom/google/android/gms/internal/zzgh;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_12

    monitor-exit v1

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1;->zzboo:Lcom/google/android/gms/internal/zzgh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgh$1;->zzboo:Lcom/google/android/gms/internal/zzgh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzgh;->zzc(Lcom/google/android/gms/internal/zzgh;)Lcom/google/android/gms/internal/zzgo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzgo;)Lcom/google/android/gms/internal/zzgo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1;->zzboo:Lcom/google/android/gms/internal/zzgh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgh;->zzd(Lcom/google/android/gms/internal/zzgh;)Lcom/google/android/gms/internal/zzgo;

    move-result-object v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1;->zzboo:Lcom/google/android/gms/internal/zzgh;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzgh;->zzy(I)V

    monitor-exit v1

    goto :goto_11

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v0

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1;->zzboo:Lcom/google/android/gms/internal/zzgh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgh;->zze(Lcom/google/android/gms/internal/zzgh;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1;->zzboo:Lcom/google/android/gms/internal/zzgh;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgh;I)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1;->zzboo:Lcom/google/android/gms/internal/zzgh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgh;->zzf(Lcom/google/android/gms/internal/zzgh;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x38

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Ignoring adapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as delayed impression is not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1;->zzboo:Lcom/google/android/gms/internal/zzgh;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzgh;->zzy(I)V

    monitor-exit v1

    goto :goto_11

    :cond_75
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1;->zzbon:Lcom/google/android/gms/internal/zzgg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgh$1;->zzboo:Lcom/google/android/gms/internal/zzgh;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzgg;->zza(Lcom/google/android/gms/internal/zzgi$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1;->zzboo:Lcom/google/android/gms/internal/zzgh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgh$1;->zzbon:Lcom/google/android/gms/internal/zzgg;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzgg;)V

    monitor-exit v1
    :try_end_84
    .catchall {:try_start_30 .. :try_end_84} :catchall_2d

    goto :goto_11
.end method

###### Class com.google.android.gms.internal.zzgh.AnonymousClass2 (com.google.android.gms.internal.zzgh$2)
.class final Lcom/google/android/gms/internal/zzgh$2;
.super Lcom/google/android/gms/internal/zzgq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgh;->zzaa(I)Lcom/google/android/gms/internal/zzgq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbop:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzgh$2;->zzbop:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgq$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzmo()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzgh$2;->zzbop:I

    return v0
.end method
