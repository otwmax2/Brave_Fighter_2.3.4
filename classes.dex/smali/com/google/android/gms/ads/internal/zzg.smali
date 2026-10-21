###### Class com.google.android.gms.ads.internal.zzg (com.google.android.gms.ads.internal.zzg)
.class public Lcom/google/android/gms/ads/internal/zzg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final zzail:Ljava/lang/Object;

.field public final zzaks:Lcom/google/android/gms/internal/zzet;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzail:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzg$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzg$1;-><init>(Lcom/google/android/gms/ads/internal/zzg;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzaks:Lcom/google/android/gms/internal/zzet;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzg;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->zzail:Ljava/lang/Object;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzka;)Z
    .registers 9
    .param p0    # Lcom/google/android/gms/internal/zzka;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_5

    :goto_4
    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzka;->zzsf()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbct:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_2f

    move v0, v2

    :goto_24
    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzka;->zzsg()Z

    move-result v0

    if-nez v0, :cond_31

    :cond_2c
    move v0, v2

    :goto_2d
    move v2, v0

    goto :goto_4

    :cond_2f
    move v0, v1

    goto :goto_24

    :cond_31
    move v0, v1

    goto :goto_2d
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzg;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZLcom/google/android/gms/internal/zzka;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p4    # Lcom/google/android/gms/internal/zzka;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p4}, Lcom/google/android/gms/ads/internal/zzg;->zza(Lcom/google/android/gms/internal/zzka;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    if-nez p1, :cond_f

    const-string v0, "Context not provided to fetch application settings"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "App settings could not be fetched. Required parameters missing"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_6

    :cond_21
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzg;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzkl;->zzc(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzfw;

    move-result-object v2

    sget-object v7, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzg$2;

    move-object v1, p0

    move-object v3, p5

    move-object v4, p6

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzg$2;-><init>(Lcom/google/android/gms/ads/internal/zzg;Lcom/google/android/gms/internal/zzfw;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

###### Class com.google.android.gms.ads.internal.zzg.AnonymousClass1 (com.google.android.gms.ads.internal.zzg$1)
.class Lcom/google/android/gms/ads/internal/zzg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakt:Lcom/google/android/gms/ads/internal/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzg$1;->zzakt:Lcom/google/android/gms/ads/internal/zzg;

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

    const-string v0, "/appSettingsFetched"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/zzll;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg$1;->zzakt:Lcom/google/android/gms/ads/internal/zzg;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzg;->zza(Lcom/google/android/gms/ads/internal/zzg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-eqz p2, :cond_33

    :try_start_e
    const-string v2, "true"

    const-string v0, "isSuccessful"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "appSettingsJson"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzg$1;->zzakt:Lcom/google/android/gms/ads/internal/zzg;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzg;->zzb(Lcom/google/android/gms/ads/internal/zzg;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzkb;->zze(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    :cond_33
    monitor-exit v1

    return-void

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_35

    throw v0
.end method

###### Class com.google.android.gms.ads.internal.zzg.AnonymousClass2 (com.google.android.gms.ads.internal.zzg$2)
.class Lcom/google/android/gms/ads/internal/zzg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzg;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZLcom/google/android/gms/internal/zzka;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakt:Lcom/google/android/gms/ads/internal/zzg;

.field final synthetic zzaku:Lcom/google/android/gms/internal/zzfw;

.field final synthetic zzakv:Ljava/lang/String;

.field final synthetic zzakw:Ljava/lang/String;

.field final synthetic zzakx:Z

.field final synthetic zzaky:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzg;Lcom/google/android/gms/internal/zzfw;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzakt:Lcom/google/android/gms/ads/internal/zzg;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzaku:Lcom/google/android/gms/internal/zzfw;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzakv:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzakw:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzakx:Z

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzaky:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzaku:Lcom/google/android/gms/internal/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfw;->zzmc()Lcom/google/android/gms/internal/zzfw$zzc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzg$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzg$2$1;-><init>(Lcom/google/android/gms/ads/internal/zzg$2;)V

    new-instance v2, Lcom/google/android/gms/internal/zzle$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzle$zzb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzfw$zzc;->zza(Lcom/google/android/gms/internal/zzle$zzc;Lcom/google/android/gms/internal/zzle$zza;)V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.zzg.AnonymousClass2.AnonymousClass1 (com.google.android.gms.ads.internal.zzg$2$1)
.class Lcom/google/android/gms/ads/internal/zzg$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzle$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzg$2;->run()V
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
.field final synthetic zzakz:Lcom/google/android/gms/ads/internal/zzg$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzg$2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzakz:Lcom/google/android/gms/ads/internal/zzg$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzfx;)V
    .registers 5

    const-string v0, "/appSettingsFetched"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzakz:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzg$2;->zzakt:Lcom/google/android/gms/ads/internal/zzg;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzg;->zzaks:Lcom/google/android/gms/internal/zzet;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzakz:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzg$2;->zzakv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzakz:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzg$2;->zzakv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_23
    :goto_23
    const-string v1, "is_init"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzakz:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/zzg$2;->zzakx:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "pn"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzakz:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzg$2;->zzaky:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "AFMA_fetchAppSettings"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_3e
    return-void

    :cond_3f
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzakz:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzg$2;->zzakw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "ad_unit_id"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzakz:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzg$2;->zzakw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_52} :catch_53

    goto :goto_23

    :catch_53
    move-exception v0

    const-string v1, "/appSettingsFetched"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzakz:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzg$2;->zzakt:Lcom/google/android/gms/ads/internal/zzg;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzg;->zzaks:Lcom/google/android/gms/internal/zzet;

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/zzfx;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    const-string v1, "Error requesting application settings"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzfx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzb(Lcom/google/android/gms/internal/zzfx;)V

    return-void
.end method
