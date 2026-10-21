###### Class com.google.android.gms.internal.zzgl (com.google.android.gms.internal.zzgl)
.class public Lcom/google/android/gms/internal/zzgl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzail:Ljava/lang/Object;

.field private final zzajn:Lcom/google/android/gms/internal/zzdk;

.field private final zzajz:Lcom/google/android/gms/internal/zzgn;

.field private final zzarj:Z

.field private final zzawl:Z

.field private final zzboi:Lcom/google/android/gms/internal/zzge;

.field private final zzbox:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field private final zzboy:J

.field private final zzboz:J

.field private zzbpb:Z

.field private zzbpd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzgi;",
            ">;"
        }
    .end annotation
.end field

.field private zzbph:Lcom/google/android/gms/internal/zzgh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/internal/zzge;ZZJJLcom/google/android/gms/internal/zzdk;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzail:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgl;->zzbpb:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzbpd:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgl;->zzbox:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgl;->zzajz:Lcom/google/android/gms/internal/zzgn;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgl;->zzboi:Lcom/google/android/gms/internal/zzge;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzgl;->zzarj:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzgl;->zzawl:Z

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzgl;->zzboy:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzgl;->zzboz:J

    iput-object p11, p0, Lcom/google/android/gms/internal/zzgl;->zzajn:Lcom/google/android/gms/internal/zzdk;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgl;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgl;->zzbpb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzbph:Lcom/google/android/gms/internal/zzgh;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzbph:Lcom/google/android/gms/internal/zzgh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgh;->cancel()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public zzd(Ljava/util/List;)Lcom/google/android/gms/internal/zzgi;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzgd;",
            ">;)",
            "Lcom/google/android/gms/internal/zzgi;"
        }
    .end annotation

    const-string v2, "Starting mediation."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgl;->zzajn:Lcom/google/android/gms/internal/zzdk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_16
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_133

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzgd;

    const-string v3, "Trying mediation network: "

    iget-object v2, v7, Lcom/google/android/gms/internal/zzgd;->zzbmz:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_66

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_34
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkh;->zzcx(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/google/android/gms/internal/zzgd;->zzbna:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3d
    :goto_3d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgl;->zzajn:Lcom/google/android/gms/internal/zzdk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgl;->zzail:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_58
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzgl;->zzbpb:Z

    if-eqz v2, :cond_6c

    new-instance v2, Lcom/google/android/gms/internal/zzgi;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzgi;-><init>(I)V

    monitor-exit v20
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_10a

    :goto_65
    return-object v2

    :cond_66
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_34

    :cond_6c
    :try_start_6c
    new-instance v2, Lcom/google/android/gms/internal/zzgh;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgl;->zzajz:Lcom/google/android/gms/internal/zzgn;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgl;->zzboi:Lcom/google/android/gms/internal/zzge;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzgl;->zzbox:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcav:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzgl;->zzbox:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzgl;->zzbox:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaou:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/internal/zzgl;->zzarj:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/gms/internal/zzgl;->zzawl:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/zzgl;->zzbox:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v13, v13, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapm:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/zzgl;->zzbox:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v14, v14, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapq:Ljava/util/List;

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/zzgh;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/internal/zzge;Lcom/google/android/gms/internal/zzgd;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZZLcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzgl;->zzbph:Lcom/google/android/gms/internal/zzgh;

    monitor-exit v20
    :try_end_a8
    .catchall {:try_start_6c .. :try_end_a8} :catchall_10a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgl;->zzbph:Lcom/google/android/gms/internal/zzgh;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzgl;->zzboy:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzgl;->zzboz:J

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/google/android/gms/internal/zzgh;->zza(JJ)Lcom/google/android/gms/internal/zzgi;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgl;->zzbpd:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lcom/google/android/gms/internal/zzgi;->zzboq:I

    if-nez v3, :cond_10d

    const-string v3, "Adapter succeeded."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgl;->zzajn:Lcom/google/android/gms/internal/zzdk;

    const-string v5, "mediation_network_succeed"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/zzdk;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgl;->zzajn:Lcom/google/android/gms/internal/zzdk;

    const-string v4, "mediation_networks_fail"

    const-string v5, ","

    invoke-static {v5, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzdk;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgl;->zzajn:Lcom/google/android/gms/internal/zzdk;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "mls"

    aput-object v6, v4, v5

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgl;->zzajn:Lcom/google/android/gms/internal/zzdk;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ttm"

    aput-object v6, v4, v5

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    goto/16 :goto_65

    :catchall_10a
    move-exception v2

    :try_start_10b
    monitor-exit v20
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10a

    throw v2

    :cond_10d
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgl;->zzajn:Lcom/google/android/gms/internal/zzdk;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "mlf"

    aput-object v6, v4, v5

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-object v3, v2, Lcom/google/android/gms/internal/zzgi;->zzbos:Lcom/google/android/gms/internal/zzgo;

    if-eqz v3, :cond_3d

    sget-object v3, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/zzgl$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/zzgl$1;-><init>(Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgi;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3d

    :cond_133
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_148

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgl;->zzajn:Lcom/google/android/gms/internal/zzdk;

    const-string v3, "mediation_networks_fail"

    const-string v4, ","

    invoke-static {v4, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzdk;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_148
    new-instance v2, Lcom/google/android/gms/internal/zzgi;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzgi;-><init>(I)V

    goto/16 :goto_65
.end method

.method public zzmi()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzgi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->zzbpd:Ljava/util/List;

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzgl.AnonymousClass1 (com.google.android.gms.internal.zzgl$1)
.class Lcom/google/android/gms/internal/zzgl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgl;->zzd(Ljava/util/List;)Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpi:Lcom/google/android/gms/internal/zzgi;

.field final synthetic zzbpj:Lcom/google/android/gms/internal/zzgl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgi;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgl$1;->zzbpj:Lcom/google/android/gms/internal/zzgl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgl$1;->zzbpi:Lcom/google/android/gms/internal/zzgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl$1;->zzbpi:Lcom/google/android/gms/internal/zzgi;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgi;->zzbos:Lcom/google/android/gms/internal/zzgo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgo;->destroy()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method
