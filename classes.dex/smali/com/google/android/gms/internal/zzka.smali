###### Class com.google.android.gms.internal.zzka (com.google.android.gms.internal.zzka)
.class public Lcom/google/android/gms/internal/zzka;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzka$zza;,
        Lcom/google/android/gms/internal/zzka$zzb;
    }
.end annotation


# instance fields
.field private final zzcjg:J

.field private final zzcjh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcji:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzka$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzcjj:Ljava/lang/String;

.field private zzcjk:Ljava/lang/String;

.field private zzcjl:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzcjh:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzcji:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzka;->zzcjl:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzka;->zzcjk:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzka;->zzcjg:J

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzka;->zzcm(Ljava/lang/String;)V

    return-void
.end method

.method private zzcm(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    :try_start_9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_2e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzka;->zzcjl:Z

    const-string v0, "App settings could not be fetched successfully."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_1f} :catch_20

    goto :goto_8

    :catch_20
    move-exception v0

    const-string v1, "Exception occurred while processing app setting json"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/zzkb;->zzb(Ljava/lang/Throwable;Z)V

    goto :goto_8

    :cond_2e
    const/4 v2, 0x1

    :try_start_2f
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzka;->zzcjl:Z

    const-string v2, "app_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzka;->zzcjj:Ljava/lang/String;

    const-string v2, "ad_unit_id_settings"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_8

    :goto_41
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_8

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzka;->zzi(Lorg/json/JSONObject;)V
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_4e} :catch_20

    add-int/lit8 v0, v0, 0x1

    goto :goto_41
.end method

.method private zzi(Lorg/json/JSONObject;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "format"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_unit_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    const-string v1, "interstitial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzcjh:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_28
    const-string v1, "rewarded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "mediation_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v1, "ad_networks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_19

    move v1, v2

    :goto_41
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_19

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v0, "adapters"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_19

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_59
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_69

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_69
    const-string v0, "data"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_19

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :goto_7a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    :cond_8e
    new-instance v5, Lcom/google/android/gms/internal/zzka$zza;

    invoke-direct {v5, p0, v7, v6}, Lcom/google/android/gms/internal/zzka$zza;-><init>(Lcom/google/android/gms/internal/zzka;Ljava/util/List;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzcji:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzcji:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzka$zzb;

    :goto_a3
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/zzka$zzb;->zza(Lcom/google/android/gms/internal/zzka$zza;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/zzka;->zzcji:Ljava/util/Map;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_41

    :cond_af
    new-instance v0, Lcom/google/android/gms/internal/zzka$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzka$zzb;-><init>(Lcom/google/android/gms/internal/zzka;)V

    goto :goto_a3
.end method


# virtual methods
.method public zzsf()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzka;->zzcjg:J

    return-wide v0
.end method

.method public zzsg()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzka;->zzcjl:Z

    return v0
.end method

.method public zzsh()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzcjk:Ljava/lang/String;

    return-object v0
.end method

.method public zzsi()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzcjj:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzka.zza (com.google.android.gms.internal.zzka$zza)
.class Lcom/google/android/gms/internal/zzka$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field private final zzcjm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcjn:Landroid/os/Bundle;

.field final synthetic zzcjo:Lcom/google/android/gms/internal/zzka;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzka;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzka$zza;->zzcjo:Lcom/google/android/gms/internal/zzka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzka$zza;->zzcjm:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzka$zza;->zzcjn:Landroid/os/Bundle;

    return-void
.end method

###### Class com.google.android.gms.internal.zzka.zzb (com.google.android.gms.internal.zzka$zzb)
.class Lcom/google/android/gms/internal/zzka$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzcjo:Lcom/google/android/gms/internal/zzka;

.field final zzcjp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzka$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzka;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzka$zzb;->zzcjo:Lcom/google/android/gms/internal/zzka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzka$zzb;->zzcjp:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzka$zza;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka$zzb;->zzcjp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
