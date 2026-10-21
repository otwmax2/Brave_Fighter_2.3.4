###### Class com.google.android.gms.internal.zzit (com.google.android.gms.internal.zzit)
.class public final Lcom/google/android/gms/internal/zzit;
.super Lcom/google/android/gms/ads/internal/request/zzk$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# static fields
.field private static final zzamp:Ljava/lang/Object;

.field private static zzceb:Lcom/google/android/gms/internal/zzit;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzcec:Lcom/google/android/gms/internal/zzis;

.field private final zzced:Lcom/google/android/gms/internal/zzcv;

.field private final zzcee:Lcom/google/android/gms/internal/zzfw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzit;->zzamp:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzis;)V
    .registers 10

    const v4, 0x8d3d10

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/request/zzk$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzit;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzit;->zzcec:Lcom/google/android/gms/internal/zzis;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzit;->zzced:Lcom/google/android/gms/internal/zzcv;

    new-instance v0, Lcom/google/android/gms/internal/zzfw;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_18
    new-instance v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v3, 0x1

    invoke-direct {v2, v4, v4, v3}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcv;->zzjv()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzit$4;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzit$4;-><init>(Lcom/google/android/gms/internal/zzit;)V

    new-instance v5, Lcom/google/android/gms/internal/zzfw$zzb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzfw$zzb;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzfw;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzkp;Lcom/google/android/gms/internal/zzkp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzit;->zzcee:Lcom/google/android/gms/internal/zzfw;

    return-void

    :cond_32
    move-object v1, p1

    goto :goto_18
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzis;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .registers 27

    const-string v4, "Starting ad request from service using: AFMA_getAd"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/zzdc;->initialize(Landroid/content/Context;)V

    new-instance v15, Lcom/google/android/gms/internal/zzdk;

    sget-object v4, Lcom/google/android/gms/internal/zzdc;->zzazc:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "load_ad"

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaup:Ljava/lang/String;

    invoke-direct {v15, v4, v5, v6}, Lcom/google/android/gms/internal/zzdk;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_46

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbn:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_46

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbn:J

    invoke-virtual {v15, v4, v5}, Lcom/google/android/gms/internal/zzdk;->zzc(J)Lcom/google/android/gms/internal/zzdi;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "cts"

    aput-object v7, v5, v6

    invoke-virtual {v15, v4, v5}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    :cond_46
    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v17

    const/4 v4, 0x0

    move-object/from16 v0, p4

    iget v5, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_2e2

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbc:Landroid/os/Bundle;

    if-eqz v5, :cond_2e2

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbc:Landroid/os/Bundle;

    move-object v5, v4

    :goto_5d
    const/4 v6, 0x0

    sget-object v4, Lcom/google/android/gms/internal/zzdc;->zzazl:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2de

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzis;->zzcea:Lcom/google/android/gms/internal/zzix;

    if-eqz v4, :cond_2de

    if-nez v5, :cond_8c

    sget-object v4, Lcom/google/android/gms/internal/zzdc;->zzazm:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8c

    const-string v4, "contentInfo is not present, but we\'ll still launch the app index task"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_8c
    if-eqz v5, :cond_2da

    new-instance v4, Lcom/google/android/gms/internal/zzit$1;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/google/android/gms/internal/zzit$1;-><init>(Lcom/google/android/gms/internal/zzis;Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Bundle;)V

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkk;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzlc;

    move-result-object v4

    move-object v12, v5

    move-object v5, v4

    :goto_9f
    new-instance v6, Lcom/google/android/gms/internal/zzla;

    const/4 v4, 0x0

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/zzla;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcav:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_e6

    const-string v7, "_ad"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e6

    const/4 v4, 0x1

    :goto_b6
    move-object/from16 v0, p4

    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbu:Z

    if-eqz v7, :cond_2d7

    if-nez v4, :cond_2d7

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzis;->zzcdw:Lcom/google/android/gms/internal/zzga;

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/zzga;->zza(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/zzlc;

    move-result-object v4

    move-object v8, v4

    :goto_cb
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfw()Lcom/google/android/gms/internal/zzja;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzja;->zzy(Landroid/content/Context;)Lcom/google/android/gms/internal/zziz;

    move-result-object v6

    iget v4, v6, Lcom/google/android/gms/internal/zziz;->zzcgt:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_e8

    const-string v4, "Device is offline."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :goto_e5
    return-object v4

    :cond_e6
    const/4 v4, 0x0

    goto :goto_b6

    :cond_e8
    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v7, 0x7

    if-lt v4, v7, :cond_120

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbk:Ljava/lang/String;

    move-object v14, v4

    :goto_f4
    new-instance v18, Lcom/google/android/gms/internal/zziv;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v4}, Lcom/google/android/gms/internal/zziv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcav:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_12a

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcav:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string v7, "_ad"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12a

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/zziu;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    goto :goto_e5

    :cond_120
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    goto :goto_f4

    :cond_12a
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzis;->zzcdu:Lcom/google/android/gms/internal/zzcx;

    move-object/from16 v0, p4

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzcx;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzis;->zzcdx:Lcom/google/android/gms/internal/zzjx;

    move-object/from16 v0, p4

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzjx;->zzf(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzis;->zzcdy:Lcom/google/android/gms/internal/zzjd;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzjd;->zzz(Landroid/content/Context;)Lcom/google/android/gms/internal/zzjd$zza;

    move-result-object v7

    if-eqz v5, :cond_167

    :try_start_14a
    const-string v4, "Waiting for app index fetching task."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/gms/internal/zzdc;->zzazn:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v20

    invoke-interface {v5, v0, v1, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const-string v4, "App index fetching task completed."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V
    :try_end_167
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14a .. :try_end_167} :catch_2d4
    .catch Ljava/lang/InterruptedException; {:try_start_14a .. :try_end_167} :catch_18d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_14a .. :try_end_167} :catch_194

    :cond_167
    :goto_167
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzis;->zzcdt:Lcom/google/android/gms/internal/zzju;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcaw:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/zzju;->zzcl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v8}, Lcom/google/android/gms/internal/zzit;->zzb(Lcom/google/android/gms/internal/zzlc;)Landroid/location/Location;

    move-result-object v8

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move-object/from16 v9, p2

    invoke-static/range {v4 .. v13}, Lcom/google/android/gms/internal/zziu;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzjd$zza;Landroid/location/Location;Lcom/google/android/gms/internal/zzcv;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_19b

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto/16 :goto_e5

    :catch_18d
    move-exception v4

    :goto_18e
    const-string v5, "Failed to fetch app index signal"

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_167

    :catch_194
    move-exception v4

    const-string v4, "Timed out waiting for app index fetching task"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    goto :goto_167

    :cond_19b
    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v6, 0x7

    if-ge v4, v6, :cond_1a7

    :try_start_1a2
    const-string v4, "request_id"

    invoke-virtual {v5, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a7
    .catch Lorg/json/JSONException; {:try_start_1a2 .. :try_end_1a7} :catch_2d1

    :cond_1a7
    :goto_1a7
    :try_start_1a7
    const-string v4, "prefetch_mode"

    const-string v6, "url"

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1ae
    .catch Lorg/json/JSONException; {:try_start_1a7 .. :try_end_1ae} :catch_1fc

    :goto_1ae
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "arc"

    aput-object v6, v4, v5

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v4}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/zzit$2;

    move-object/from16 v5, p1

    move-object/from16 v6, v18

    move-object v7, v15

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/zzit$2;-><init>(Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_1d2
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/zziv;->zzri()Ljava/util/concurrent/Future;

    move-result-object v4

    const-wide/16 v6, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/zziy;
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1e0} :catch_203
    .catchall {:try_start_1d2 .. :try_end_1e0} :catchall_2bd

    if-nez v14, :cond_21e

    :try_start_1e2
    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_1e8
    .catchall {:try_start_1e2 .. :try_end_1e8} :catchall_2bd

    sget-object v5, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zzit$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, p4

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzit$3;-><init>(Lcom/google/android/gms/internal/zzis;Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_e5

    :catch_1fc
    move-exception v4

    const-string v6, "Failed putting prefetch parameters to ad request."

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1ae

    :catch_203
    move-exception v4

    :try_start_204
    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_20a
    .catchall {:try_start_204 .. :try_end_20a} :catchall_2bd

    sget-object v5, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zzit$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, p4

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzit$3;-><init>(Lcom/google/android/gms/internal/zzis;Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_e5

    :cond_21e
    :try_start_21e
    invoke-virtual {v14}, Lcom/google/android/gms/internal/zziy;->getErrorCode()I

    move-result v4

    const/4 v5, -0x2

    if-eq v4, v5, :cond_242

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zziy;->getErrorCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_22e
    .catchall {:try_start_21e .. :try_end_22e} :catchall_2bd

    sget-object v5, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zzit$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, p4

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzit$3;-><init>(Lcom/google/android/gms/internal/zzis;Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_e5

    :cond_242
    :try_start_242
    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzdk;->zzkj()Lcom/google/android/gms/internal/zzdi;

    move-result-object v4

    if-eqz v4, :cond_257

    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzdk;->zzkj()Lcom/google/android/gms/internal/zzdi;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "rur"

    aput-object v7, v5, v6

    invoke-virtual {v15, v4, v5}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    :cond_257
    const/4 v4, 0x0

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zziy;->zzrn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_26e

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zziy;->zzrn()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/zziu;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    :cond_26e
    if-nez v4, :cond_28e

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zziy;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_28e

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaou:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v11, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zziy;->getUrl()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, p4

    move-object/from16 v10, p0

    move-object/from16 v16, p3

    invoke-static/range {v9 .. v16}, Lcom/google/android/gms/internal/zzit;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zziy;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzis;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    :cond_28e
    if-nez v4, :cond_296

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :cond_296
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "tts"

    aput-object v7, v5, v6

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v5}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzdk;->zzki()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccp:Ljava/lang/String;
    :try_end_2a9
    .catchall {:try_start_242 .. :try_end_2a9} :catchall_2bd

    sget-object v5, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zzit$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, p4

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzit$3;-><init>(Lcom/google/android/gms/internal/zzis;Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_e5

    :catchall_2bd
    move-exception v4

    sget-object v5, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zzit$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, p4

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzit$3;-><init>(Lcom/google/android/gms/internal/zzis;Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v4

    :catch_2d1
    move-exception v4

    goto/16 :goto_1a7

    :catch_2d4
    move-exception v4

    goto/16 :goto_18e

    :cond_2d7
    move-object v8, v6

    goto/16 :goto_cb

    :cond_2da
    move-object v12, v5

    move-object v5, v6

    goto/16 :goto_9f

    :cond_2de
    move-object v12, v5

    move-object v5, v6

    goto/16 :goto_9f

    :cond_2e2
    move-object v5, v4

    goto/16 :goto_5d
.end method

.method public static zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zziy;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzis;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .registers 21

    if-eqz p6, :cond_e9

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v2

    move-object v3, v2

    :goto_7
    :try_start_7
    new-instance v8, Lcom/google/android/gms/internal/zziw;

    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/zziw;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    const-string v4, "AdRequestServiceImpl: Sending request: "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_ed

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1c
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v10

    move v6, v2

    move-object v7, v4

    :goto_31
    if-eqz p7, :cond_3a

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzis;->zzcdz:Lcom/google/android/gms/internal/zzjc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjc;->zzrp()V

    :cond_3a
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_40} :catch_f4

    :try_start_40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, p2, v5, v2}, Lcom/google/android/gms/internal/zzkl;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5b

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zziy;->zzrm()Z

    move-result v4

    if-eqz v4, :cond_5b

    const-string v4, "x-afma-drt-cookie"

    move-object/from16 v0, p4

    invoke-virtual {v2, v4, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbv:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "Sending webview cookie in ad request header."

    invoke-static {v5}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    const-string v5, "Cookie"

    invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    if-eqz p5, :cond_99

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zziy;->zzrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_99

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zziy;->zzrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v4, v9

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_89
    .catchall {:try_start_40 .. :try_end_89} :catchall_119

    const/4 v5, 0x0

    :try_start_8a
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_113

    :try_start_93
    invoke-virtual {v4, v9}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_1d0

    :try_start_96
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    :cond_99
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v12

    const/16 v4, 0xc8

    if-lt v9, v4, :cond_12d

    const/16 v4, 0x12c

    if-ge v9, v4, :cond_12d

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_ac
    .catchall {:try_start_96 .. :try_end_ac} :catchall_119

    move-result-object v6

    const/4 v5, 0x0

    :try_start_ae
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_b7
    .catchall {:try_start_ae .. :try_end_b7} :catchall_127

    :try_start_b7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzkl;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;
    :try_end_be
    .catchall {:try_start_b7 .. :try_end_be} :catchall_1cd

    move-result-object v5

    :try_start_bf
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    invoke-static {v6, v12, v5, v9}, Lcom/google/android/gms/internal/zzit;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v8, v6, v12, v5}, Lcom/google/android/gms/internal/zziw;->zzb(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz p6, :cond_d7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ufe"

    aput-object v6, v4, v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    :cond_d7
    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/zziw;->zzj(J)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    :try_end_da
    .catchall {:try_start_bf .. :try_end_da} :catchall_119

    move-result-object v3

    :try_start_db
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_e7

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzis;->zzcdz:Lcom/google/android/gms/internal/zzjc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjc;->zzrq()V

    :cond_e7
    move-object v2, v3

    :goto_e8
    return-object v2

    :cond_e9
    const/4 v2, 0x0

    move-object v3, v2

    goto/16 :goto_7

    :cond_ed
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_f2} :catch_f4

    goto/16 :goto_1c

    :catch_f4
    move-exception v2

    const-string v3, "Error while connecting to ad server: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1c6

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_109
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto :goto_e8

    :catchall_113
    move-exception v3

    move-object v4, v5

    :goto_115
    :try_start_115
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    throw v3
    :try_end_119
    .catchall {:try_start_115 .. :try_end_119} :catchall_119

    :catchall_119
    move-exception v3

    :try_start_11a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_126

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzis;->zzcdz:Lcom/google/android/gms/internal/zzjc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjc;->zzrq()V

    :cond_126
    throw v3
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_127} :catch_f4

    :catchall_127
    move-exception v3

    move-object v4, v5

    :goto_129
    :try_start_129
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    throw v3

    :cond_12d
    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v12, v5, v9}, Lcom/google/android/gms/internal/zzit;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    const/16 v4, 0x12c

    if-lt v9, v4, :cond_186

    const/16 v4, 0x190

    if-ge v9, v4, :cond_186

    const-string v4, "Location"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_162

    const-string v3, "No location header to follow redirect."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_154
    .catchall {:try_start_129 .. :try_end_154} :catchall_119

    :try_start_154
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_160

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzis;->zzcdz:Lcom/google/android/gms/internal/zzjc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjc;->zzrq()V
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_160} :catch_f4

    :cond_160
    move-object v2, v3

    goto :goto_e8

    :cond_162
    :try_start_162
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v6, 0x1

    const/4 v6, 0x5

    if-le v4, v6, :cond_1b3

    const-string v3, "Too many redirects."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_177
    .catchall {:try_start_162 .. :try_end_177} :catchall_119

    :try_start_177
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_183

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzis;->zzcdz:Lcom/google/android/gms/internal/zzjc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjc;->zzrq()V
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_183} :catch_f4

    :cond_183
    move-object v2, v3

    goto/16 :goto_e8

    :cond_186
    :try_start_186
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Received error HTTP response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_1a4
    .catchall {:try_start_186 .. :try_end_1a4} :catchall_119

    :try_start_1a4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_1b0

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzis;->zzcdz:Lcom/google/android/gms/internal/zzjc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjc;->zzrq()V
    :try_end_1b0
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1b0} :catch_f4

    :cond_1b0
    move-object v2, v3

    goto/16 :goto_e8

    :cond_1b3
    :try_start_1b3
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/zziw;->zzj(Ljava/util/Map;)V
    :try_end_1b6
    .catchall {:try_start_1b3 .. :try_end_1b6} :catchall_119

    :try_start_1b6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_1c2

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzis;->zzcdz:Lcom/google/android/gms/internal/zzjc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjc;->zzrq()V
    :try_end_1c2
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1c2} :catch_f4

    :cond_1c2
    move v6, v4

    move-object v7, v5

    goto/16 :goto_31

    :cond_1c6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_109

    :catchall_1cd
    move-exception v3

    goto/16 :goto_129

    :catchall_1d0
    move-exception v3

    goto/16 :goto_115
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzis;)Lcom/google/android/gms/internal/zzit;
    .registers 6

    sget-object v1, Lcom/google/android/gms/internal/zzit;->zzamp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzit;->zzceb:Lcom/google/android/gms/internal/zzit;

    if-nez v0, :cond_18

    new-instance v0, Lcom/google/android/gms/internal/zzit;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_13
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzit;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzis;)V

    sput-object v0, Lcom/google/android/gms/internal/zzit;->zzceb:Lcom/google/android/gms/internal/zzit;

    :cond_18
    sget-object v0, Lcom/google/android/gms/internal/zzit;->zzceb:Lcom/google/android/gms/internal/zzit;

    monitor-exit v1

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private static zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzaz(I)Z

    move-result v0

    if-eqz v0, :cond_e5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Http Response: {\n  URL:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    if-eqz p1, :cond_99

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "      "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_93

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8f
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    goto :goto_73

    :cond_93
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8f

    :cond_99
    const-string v0, "  Body:"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    if-eqz p2, :cond_c2

    const/4 v0, 0x0

    :goto_a1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x186a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_c7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v2, v0, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_a1

    :cond_c2
    const-string v0, "    null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    :cond_c7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "  Response Code:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    :cond_e5
    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/zzlc;)Landroid/location/Location;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlc",
            "<",
            "Landroid/location/Location;",
            ">;)",
            "Landroid/location/Location;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbcn:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzlc;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    const-string v1, "Exception caught while getting location"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzl;)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaou:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzkb;->zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    new-instance v0, Lcom/google/android/gms/internal/zzit$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzit$5;-><init>(Lcom/google/android/gms/internal/zzit;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzl;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkk;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzlc;

    return-void
.end method

.method public zzd(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzit;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit;->zzcee:Lcom/google/android/gms/internal/zzfw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzit;->zzced:Lcom/google/android/gms/internal/zzcv;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzit;->zzcec:Lcom/google/android/gms/internal/zzis;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzit;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzis;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzit.AnonymousClass1 (com.google.android.gms.internal.zzit$1)
.class final Lcom/google/android/gms/internal/zzit$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzit;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzis;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaky:Landroid/content/Context;

.field final synthetic zzcef:Lcom/google/android/gms/internal/zzis;

.field final synthetic zzceg:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic zzceh:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzis;Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzit$1;->zzcef:Lcom/google/android/gms/internal/zzis;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzit$1;->zzaky:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzit$1;->zzceg:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzit$1;->zzceh:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzit$1;->zzcy()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public zzcy()Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzit$1;->zzcef:Lcom/google/android/gms/internal/zzis;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzcea:Lcom/google/android/gms/internal/zzix;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit$1;->zzaky:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzit$1;->zzceg:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcaw:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzit$1;->zzceh:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzix;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzit.AnonymousClass2 (com.google.android.gms.internal.zzit$2)
.class final Lcom/google/android/gms/internal/zzit$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzit;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzis;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakg:Lcom/google/android/gms/internal/zzdk;

.field final synthetic zzaku:Lcom/google/android/gms/internal/zzfw;

.field final synthetic zzcei:Lcom/google/android/gms/internal/zziv;

.field final synthetic zzcej:Lcom/google/android/gms/internal/zzdi;

.field final synthetic zzcek:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/zzit$2;->zzaku:Lcom/google/android/gms/internal/zzfw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzit$2;->zzcei:Lcom/google/android/gms/internal/zziv;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzit$2;->zzakg:Lcom/google/android/gms/internal/zzdk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzit$2;->zzcej:Lcom/google/android/gms/internal/zzdi;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzit$2;->zzcek:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzit$2;->zzaku:Lcom/google/android/gms/internal/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfw;->zzmc()Lcom/google/android/gms/internal/zzfw$zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit$2;->zzcei:Lcom/google/android/gms/internal/zziv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zziv;->zzb(Lcom/google/android/gms/internal/zzfw$zzc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit$2;->zzakg:Lcom/google/android/gms/internal/zzdk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzit$2;->zzcej:Lcom/google/android/gms/internal/zzdi;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "rwc"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit$2;->zzakg:Lcom/google/android/gms/internal/zzdk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzit$2$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zzit$2$1;-><init>(Lcom/google/android/gms/internal/zzit$2;Lcom/google/android/gms/internal/zzdi;)V

    new-instance v1, Lcom/google/android/gms/internal/zzit$2$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzit$2$2;-><init>(Lcom/google/android/gms/internal/zzit$2;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzfw$zzc;->zza(Lcom/google/android/gms/internal/zzle$zzc;Lcom/google/android/gms/internal/zzle$zza;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzit.AnonymousClass2.AnonymousClass1 (com.google.android.gms.internal.zzit$2$1)
.class Lcom/google/android/gms/internal/zzit$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzle$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzit$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzle$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzfx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzcel:Lcom/google/android/gms/internal/zzdi;

.field final synthetic zzcem:Lcom/google/android/gms/internal/zzit$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzit$2;Lcom/google/android/gms/internal/zzdi;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzit$2$1;->zzcem:Lcom/google/android/gms/internal/zzit$2;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzit$2$1;->zzcel:Lcom/google/android/gms/internal/zzdi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzfx;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzit$2$1;->zzcem:Lcom/google/android/gms/internal/zzit$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzit$2;->zzakg:Lcom/google/android/gms/internal/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit$2$1;->zzcel:Lcom/google/android/gms/internal/zzdi;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzit$2$1;->zzcem:Lcom/google/android/gms/internal/zzit$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzit$2;->zzakg:Lcom/google/android/gms/internal/zzdk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdk;->zzkh()V

    const-string v0, "/invalidRequest"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit$2$1;->zzcem:Lcom/google/android/gms/internal/zzit$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzit$2;->zzcei:Lcom/google/android/gms/internal/zziv;

    iget-object v1, v1, Lcom/google/android/gms/internal/zziv;->zzcet:Lcom/google/android/gms/internal/zzet;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    const-string v0, "/loadAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit$2$1;->zzcem:Lcom/google/android/gms/internal/zzit$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzit$2;->zzcei:Lcom/google/android/gms/internal/zziv;

    iget-object v1, v1, Lcom/google/android/gms/internal/zziv;->zzceu:Lcom/google/android/gms/internal/zzet;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    const-string v0, "/loadAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit$2$1;->zzcem:Lcom/google/android/gms/internal/zzit$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzit$2;->zzcei:Lcom/google/android/gms/internal/zziv;

    iget-object v1, v1, Lcom/google/android/gms/internal/zziv;->zzcev:Lcom/google/android/gms/internal/zzet;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    :try_start_39
    const-string v0, "AFMA_getAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit$2$1;->zzcem:Lcom/google/android/gms/internal/zzit$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzit$2;->zzcek:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zzj(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_42} :catch_43

    :goto_42
    return-void

    :catch_43
    move-exception v0

    const-string v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_42
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzfx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzit$2$1;->zzb(Lcom/google/android/gms/internal/zzfx;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzit.AnonymousClass2.C01392 (com.google.android.gms.internal.zzit$2$2)
.class Lcom/google/android/gms/internal/zzit$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzle$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzit$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcem:Lcom/google/android/gms/internal/zzit$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzit$2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzit$2$2;->zzcem:Lcom/google/android/gms/internal/zzit$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    return-void
.end method

###### Class com.google.android.gms.internal.zzit.AnonymousClass3 (com.google.android.gms.internal.zzit$3)
.class final Lcom/google/android/gms/internal/zzit$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzit;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzis;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaky:Landroid/content/Context;

.field final synthetic zzcef:Lcom/google/android/gms/internal/zzis;

.field final synthetic zzceg:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic zzcei:Lcom/google/android/gms/internal/zziv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzis;Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzit$3;->zzcef:Lcom/google/android/gms/internal/zzis;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzit$3;->zzaky:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzit$3;->zzcei:Lcom/google/android/gms/internal/zziv;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzit$3;->zzceg:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzit$3;->zzcef:Lcom/google/android/gms/internal/zzis;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzis;->zzcdv:Lcom/google/android/gms/internal/zzjb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit$3;->zzaky:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzit$3;->zzcei:Lcom/google/android/gms/internal/zziv;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzit$3;->zzceg:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaou:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzjb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzit.AnonymousClass4 (com.google.android.gms.internal.zzit$4)
.class Lcom/google/android/gms/internal/zzit$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzkp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzit;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzis;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzkp",
        "<",
        "Lcom/google/android/gms/internal/zzft;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzcen:Lcom/google/android/gms/internal/zzit;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzit;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzit$4;->zzcen:Lcom/google/android/gms/internal/zzit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzft;)V
    .registers 4

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/zzer;->zzbhz:Lcom/google/android/gms/internal/zzet;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzft;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzit$4;->zza(Lcom/google/android/gms/internal/zzft;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzit.AnonymousClass5 (com.google.android.gms.internal.zzit$5)
.class Lcom/google/android/gms/internal/zzit$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzit;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzceg:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic zzcen:Lcom/google/android/gms/internal/zzit;

.field final synthetic zzceo:Lcom/google/android/gms/ads/internal/request/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzit;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzl;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzit$5;->zzcen:Lcom/google/android/gms/internal/zzit;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzit$5;->zzceg:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzit$5;->zzceo:Lcom/google/android/gms/ads/internal/request/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzit$5;->zzcen:Lcom/google/android/gms/internal/zzit;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzit$5;->zzceg:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzit;->zzd(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_17

    move-result-object v0

    :goto_9
    if-nez v0, :cond_11

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzit$5;->zzceo:Lcom/google/android/gms/ads/internal/request/zzl;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/request/zzl;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_27

    :goto_16
    return-void

    :catch_17
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzkb;->zzb(Ljava/lang/Throwable;Z)V

    const-string v2, "Could not fetch ad response due to an Exception."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_9

    :catch_27
    move-exception v0

    const-string v1, "Fail to forward ad response."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method
