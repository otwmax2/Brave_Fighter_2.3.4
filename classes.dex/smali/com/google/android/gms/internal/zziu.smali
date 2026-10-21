###### Class com.google.android.gms.internal.zziu (com.google.android.gms.internal.zziu)
.class public final Lcom/google/android/gms/internal/zziu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# static fields
.field private static final zzcep:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/gms/internal/zziu;->zzcep:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .registers 48

    :try_start_0
    new-instance v28, Lorg/json/JSONObject;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "ad_base_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "ad_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "ad_size"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v4, "ad_slot_size"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    if-eqz p1, :cond_c6

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbb:I

    if-eqz v4, :cond_c6

    const/16 v27, 0x1

    :goto_38
    const-string v4, "ad_json"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4c

    const-string v4, "ad_html"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4c
    if-nez v5, :cond_57

    const-string v4, "body"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_57
    const-wide/16 v20, -0x1

    const-string v4, "debug_dialog"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v4, "interstitial_timeout"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ca

    const-string v4, "interstitial_timeout"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-long v12, v8

    :goto_7b
    const-string v4, "orientation"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v18, -0x1

    const-string v8, "portrait"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cd

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzkm;->zztl()I

    move-result v18

    :cond_96
    :goto_96
    const/4 v4, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_255

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_255

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaou:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v11}, Lcom/google/android/gms/internal/zzit;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zziy;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzis;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbts:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    iget-wide v0, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccg:J

    move-wide/from16 v20, v0

    :goto_bd
    if-nez v7, :cond_de

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :goto_c5
    return-object v4

    :cond_c6
    const/16 v27, 0x0

    goto/16 :goto_38

    :cond_ca
    const-wide/16 v12, -0x1

    goto :goto_7b

    :cond_cd
    const-string v8, "landscape"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzkm;->zztk()I

    move-result v18

    goto :goto_96

    :cond_de
    const-string v5, "click_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v4, :cond_240

    const/4 v8, 0x0

    :goto_e9
    if-eqz v5, :cond_ef

    invoke-static {v5, v8}, Lcom/google/android/gms/internal/zziu;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    :cond_ef
    const-string v5, "impression_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v4, :cond_244

    const/4 v9, 0x0

    :goto_fa
    if-eqz v5, :cond_100

    invoke-static {v5, v9}, Lcom/google/android/gms/internal/zziu;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    :cond_100
    const-string v5, "manual_impression_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v4, :cond_248

    const/4 v15, 0x0

    :goto_10b
    if-eqz v5, :cond_111

    invoke-static {v5, v15}, Lcom/google/android/gms/internal/zziu;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    :cond_111
    if-eqz v4, :cond_252

    iget v5, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    const/4 v10, -0x1

    if-eq v5, v10, :cond_11c

    iget v0, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move/from16 v18, v0

    :cond_11c
    iget-wide v10, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccb:J

    const-wide/16 v16, 0x0

    cmp-long v5, v10, v16

    if-lez v5, :cond_252

    iget-wide v10, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccb:J

    :goto_126
    const-string v4, "active_view"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v24, 0x0

    const-string v4, "ad_is_javascript"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_144

    const-string v4, "ad_passback_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    :cond_144
    const-string v4, "mediation"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v4, "custom_render_allowed"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v4, "content_url_opted_out"

    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v29

    const-string v4, "prefetch"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v30

    const-string v4, "refresh_interval_milliseconds"

    const-wide/16 v16, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v4, "mediation_config_cache_time_milliseconds"

    const-wide/16 v32, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v32

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v4, "gws_query_id"

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v4, "height"

    const-string v5, "fluid"

    const-string v32, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    const-string v4, "native_express"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v33

    const-string v4, "video_start_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zziu;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v35

    const-string v4, "video_complete_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zziu;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v36

    const-string v4, "rewards"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-result-object v34

    const-string v4, "use_displayed_impression"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v37

    const-string v4, "auto_protection_configuration"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;->zzh(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-result-object v38

    const-string v4, "set_cookie"

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v4, "remote_ping_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zziu;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v41

    const-string v4, "safe_browsing"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v4, "render_in_browser"

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzbnu:Z

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v43

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbd:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbu:Z

    move/from16 v39, v0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v44}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_21e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_21e} :catch_220

    goto/16 :goto_c5

    :catch_220
    move-exception v4

    const-string v5, "Could not parse the inline ad response: "

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_24c

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_235
    invoke-static {v4}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto/16 :goto_c5

    :cond_240
    :try_start_240
    iget-object v8, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnq:Ljava/util/List;

    goto/16 :goto_e9

    :cond_244
    iget-object v9, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnr:Ljava/util/List;

    goto/16 :goto_fa

    :cond_248
    iget-object v15, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcce:Ljava/util/List;
    :try_end_24a
    .catch Lorg/json/JSONException; {:try_start_240 .. :try_end_24a} :catch_220

    goto/16 :goto_10b

    :cond_24c
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_235

    :cond_252
    move-wide v10, v12

    goto/16 :goto_126

    :cond_255
    move-object v7, v5

    goto/16 :goto_bd
.end method

.method private static zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p1, 0x0

    :cond_3
    return-object p1

    :cond_4
    if-nez p1, :cond_b

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzjd$zza;Landroid/location/Location;Lcom/google/android/gms/internal/zzcv;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 20
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            "Lcom/google/android/gms/internal/zziz;",
            "Lcom/google/android/gms/internal/zzjd$zza;",
            "Landroid/location/Location;",
            "Lcom/google/android/gms/internal/zzcv;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_18

    const-string v2, "eid"

    const-string v3, ","

    move-object/from16 v0, p7

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcau:Landroid/os/Bundle;

    if-eqz v2, :cond_23

    const-string v2, "ad_pos"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcau:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcav:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/zziu;->zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    const-string v2, "format"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaup:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3f

    const-string v2, "smart_w"

    const-string v3, "full"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_4d

    const-string v2, "smart_h"

    const-string v3, "auto"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaut:Z

    if-eqz v2, :cond_5a

    const-string v2, "fluid"

    const-string v3, "height"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaur:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v2, :cond_ad

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v6, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaur:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    array-length v7, v6

    const/4 v2, 0x0

    move v3, v2

    :goto_6c
    if-ge v3, v7, :cond_a8

    aget-object v8, v6, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_7b

    const-string v2, "|"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b
    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    const/4 v9, -0x1

    if-ne v2, v9, :cond_a2

    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    int-to-float v2, v2

    iget v9, p2, Lcom/google/android/gms/internal/zziz;->zzcbh:F

    div-float/2addr v2, v9

    float-to-int v2, v2

    :goto_87
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    const/4 v9, -0x2

    if-ne v2, v9, :cond_a5

    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    int-to-float v2, v2

    iget v8, p2, Lcom/google/android/gms/internal/zziz;->zzcbh:F

    div-float/2addr v2, v8

    float-to-int v2, v2

    :goto_9b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6c

    :cond_a2
    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    goto :goto_87

    :cond_a5
    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    goto :goto_9b

    :cond_a8
    const-string v2, "sz"

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ad
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbb:I

    if-eqz v2, :cond_e3

    const-string v2, "native_version"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauu:Z

    if-nez v2, :cond_e3

    const-string v2, "native_templates"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapq:Ljava/util/List;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "native_image_orientation"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapm:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    invoke-static {v3}, Lcom/google/android/gms/internal/zziu;->zzc(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbm:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e3

    const-string v2, "native_custom_templates"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbm:Ljava/util/List;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e3
    const-string v2, "slotname"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaos:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pn"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcaw:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_104

    const-string v2, "vc"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcaw:Landroid/content/pm/PackageInfo;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_104
    const-string v2, "ms"

    move-object/from16 v0, p6

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "seq_num"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcay:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "session_id"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcaz:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "js"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaou:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbz:Landroid/os/Bundle;

    invoke-static {v4, p2, p3, v2}, Lcom/google/android/gms/internal/zziu;->zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzjd$zza;Landroid/os/Bundle;)V

    move-object/from16 v0, p9

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zziu;->zza(Ljava/util/HashMap;Ljava/lang/String;)V

    const-string v2, "platform"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "submodel"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_2ab

    invoke-static {v4, p4}, Lcom/google/android/gms/internal/zziu;->zza(Ljava/util/HashMap;Landroid/location/Location;)V

    :cond_13f
    :goto_13f
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_14b

    const-string v2, "quality_signals"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcba:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14b
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_15f

    iget-boolean v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbd:Z

    if-eqz v2, :cond_15f

    const-string v2, "forceHttps"

    iget-boolean v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbd:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15f
    if-eqz p8, :cond_168

    const-string v2, "content_info"

    move-object/from16 v0, p8

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_168
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2db

    const-string v2, "u_sd"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbh:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sh"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbg:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sw"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_18e
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1b2

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_198
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_198} :catch_2c1

    move-result v2

    if-nez v2, :cond_1a7

    :try_start_19b
    const-string v2, "view_hierarchy"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbi:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a7
    .catch Lorg/json/JSONException; {:try_start_19b .. :try_end_1a7} :catch_2fe

    :cond_1a7
    :goto_1a7
    :try_start_1a7
    const-string v2, "correlation_id"

    iget-wide v6, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbj:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b2
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_1be

    const-string v2, "request_id"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbk:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1be
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1d3

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbo:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    if-eqz v2, :cond_1d3

    const-string v2, "capability"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbo:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d3
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_1e8

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbp:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e8

    const-string v2, "anchor"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbp:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e8
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_1f9

    const-string v2, "android_app_volume"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbq:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f9
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_20a

    const-string v2, "android_app_muted"

    iget-boolean v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbw:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20a
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_21f

    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbr:I

    if-lez v2, :cond_21f

    const-string v2, "target_api"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbr:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21f
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_234

    const-string v3, "scroll_index"

    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbs:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_306

    const/4 v2, -0x1

    :goto_22d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_234
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_245

    const-string v2, "_activity_context"

    iget-boolean v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbt:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_245
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_26a

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbx:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_250
    .catch Lorg/json/JSONException; {:try_start_1a7 .. :try_end_250} :catch_2c1

    move-result v2

    if-nez v2, :cond_25f

    :try_start_253
    const-string v2, "app_settings"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbx:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25f
    .catch Lorg/json/JSONException; {:try_start_253 .. :try_end_25f} :catch_30a

    :cond_25f
    :goto_25f
    :try_start_25f
    const-string v2, "render_in_browser"

    iget-boolean v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzbnu:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26a
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_27b

    const-string v2, "android_num_video_cache_tasks"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcby:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27b
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkh;->zzaz(I)Z

    move-result v2

    if-eqz v2, :cond_2a2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzkl;->zzam(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad Request JSON: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_312

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_29f
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    :cond_2a2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzkl;->zzam(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_2aa
    return-object v2

    :cond_2ab
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcav:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_13f

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcav:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzats:Landroid/location/Location;

    if-eqz v2, :cond_13f

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcav:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzats:Landroid/location/Location;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/zziu;->zza(Ljava/util/HashMap;Landroid/location/Location;)V
    :try_end_2bf
    .catch Lorg/json/JSONException; {:try_start_25f .. :try_end_2bf} :catch_2c1

    goto/16 :goto_13f

    :catch_2c1
    move-exception v2

    const-string v3, "Problem serializing ad request to JSON: "

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_318

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2d6
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_2aa

    :cond_2db
    :try_start_2db
    const-string v2, "u_sd"

    iget v3, p2, Lcom/google/android/gms/internal/zziz;->zzcbh:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sh"

    iget v3, p2, Lcom/google/android/gms/internal/zziz;->zzcbg:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sw"

    iget v3, p2, Lcom/google/android/gms/internal/zziz;->zzcbf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_18e

    :catch_2fe
    move-exception v2

    const-string v3, "Problem serializing view hierarchy to JSON"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a7

    :cond_306
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbs:I

    goto/16 :goto_22d

    :catch_30a
    move-exception v2

    const-string v3, "Problem creating json from app settings"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25f

    :cond_312
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_317
    .catch Lorg/json/JSONException; {:try_start_2db .. :try_end_317} :catch_2c1

    goto :goto_29f

    :cond_318
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2d6
.end method

.method private static zza(Ljava/util/HashMap;Landroid/location/Location;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    const-wide v6, 0x416312d000000000L    # 1.0E7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "radius"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lat"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "long"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uule"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            ")V"
        }
    .end annotation

    const/4 v6, -0x1

    invoke-static {}, Lcom/google/android/gms/internal/zzkf;->zzsz()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, "abf"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-wide v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatk:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    const-string v0, "cust_age"

    sget-object v1, Lcom/google/android/gms/internal/zziu;->zzcep:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatk:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_31

    const-string v0, "extras"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatl:I

    if-eq v0, v6, :cond_40

    const-string v0, "cust_gender"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatm:Ljava/util/List;

    if-eqz v0, :cond_4b

    const-string v0, "kw"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatm:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzato:I

    if-eq v0, v6, :cond_5a

    const-string v0, "tag_for_child_directed_treatment"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzato:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatn:Z

    if-eqz v0, :cond_65

    const-string v0, "adtest"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_90

    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatp:Z

    if-eqz v0, :cond_78

    const-string v0, "d_imp_hdr"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    const-string v0, "ppid"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatq:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_87
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatr:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    if-eqz v0, :cond_90

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatr:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zziu;->zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;)V

    :cond_90
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a0

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatt:Ljava/lang/String;

    if-eqz v0, :cond_a0

    const-string v0, "url"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatt:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a0
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_c6

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatv:Landroid/os/Bundle;

    if-eqz v0, :cond_b0

    const-string v0, "custom_targeting"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatv:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b0
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatw:Ljava/util/List;

    if-eqz v0, :cond_bb

    const-string v0, "category_exclusions"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatw:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bb
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatx:Ljava/lang/String;

    if-eqz v0, :cond_c6

    const-string v0, "request_agent"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatx:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c6
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_d6

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaty:Ljava/lang/String;

    if-eqz v0, :cond_d6

    const-string v0, "request_pkg"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzaty:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d6
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_e6

    const-string v0, "is_designed_for_families"

    iget-boolean v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatz:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e6
    return-void
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzawx:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "acolor"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzawx:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zziu;->zzau(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->backgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "bgcolor"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->backgroundColor:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zziu;->zzau(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzawy:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_4d

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzawz:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "gradientto"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzawy:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zziu;->zzau(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gradientfrom"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzawz:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zziu;->zzau(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxa:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_60

    const-string v1, "bcolor"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxa:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zziu;->zzau(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    const-string v1, "bthick"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxb:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxc:I

    packed-switch v1, :pswitch_data_ec

    move-object v1, v0

    :goto_71
    if-eqz v1, :cond_78

    const-string v2, "btype"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxd:I

    packed-switch v1, :pswitch_data_f8

    :goto_7d
    if-eqz v0, :cond_84

    const-string v1, "callbuttoncolor"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_84
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxe:Ljava/lang/String;

    if-eqz v0, :cond_8f

    const-string v0, "channel"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxe:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8f
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxf:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_a2

    const-string v0, "dcolor"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxf:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zziu;->zzau(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a2
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxg:Ljava/lang/String;

    if-eqz v0, :cond_ad

    const-string v0, "font"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxg:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ad
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxh:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_c0

    const-string v0, "hcolor"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxh:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zziu;->zzau(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c0
    const-string v0, "headersize"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxi:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxj:Ljava/lang/String;

    if-eqz v0, :cond_d6

    const-string v0, "q"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxj:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d6
    return-void

    :pswitch_d7
    const-string v1, "none"

    goto :goto_71

    :pswitch_da
    const-string v1, "dashed"

    goto :goto_71

    :pswitch_dd
    const-string v1, "dotted"

    goto :goto_71

    :pswitch_e0
    const-string v1, "solid"

    goto :goto_71

    :pswitch_e3
    const-string v0, "dark"

    goto :goto_7d

    :pswitch_e6
    const-string v0, "light"

    goto :goto_7d

    :pswitch_e9
    const-string v0, "medium"

    goto :goto_7d

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_da
        :pswitch_dd
        :pswitch_e0
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_e6
        :pswitch_e9
        :pswitch_e3
    .end packed-switch
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzjd$zza;Landroid/os/Bundle;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zziz;",
            "Lcom/google/android/gms/internal/zzjd$zza;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const-string v0, "am"

    iget v1, p1, Lcom/google/android/gms/internal/zziz;->zzcgh:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cog"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zziz;->zzcgi:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zziu;->zzab(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coh"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zziz;->zzcgj:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zziu;->zzab(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zziz;->zzcgk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "carrier"

    iget-object v1, p1, Lcom/google/android/gms/internal/zziz;->zzcgk:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    const-string v0, "gl"

    iget-object v1, p1, Lcom/google/android/gms/internal/zziz;->zzcgl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zziz;->zzcgm:Z

    if-eqz v0, :cond_47

    const-string v0, "simulator"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zziz;->zzcgn:Z

    if-eqz v0, :cond_54

    const-string v0, "is_sidewinder"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    const-string v0, "ma"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zziz;->zzcgo:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zziu;->zzab(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sp"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zziz;->zzcgp:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zziu;->zzab(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hl"

    iget-object v1, p1, Lcom/google/android/gms/internal/zziz;->zzcgq:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zziz;->zzcgr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_80

    const-string v0, "mv"

    iget-object v1, p1, Lcom/google/android/gms/internal/zziz;->zzcgr:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80
    const-string v0, "muv"

    iget v1, p1, Lcom/google/android/gms/internal/zziz;->zzcgs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/zziz;->zzcgt:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_9b

    const-string v0, "cnt"

    iget v1, p1, Lcom/google/android/gms/internal/zziz;->zzcgt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9b
    const-string v0, "gnt"

    iget v1, p1, Lcom/google/android/gms/internal/zziz;->zzcgu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pt"

    iget v1, p1, Lcom/google/android/gms/internal/zziz;->zzcgv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rm"

    iget v1, p1, Lcom/google/android/gms/internal/zziz;->zzcgw:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "riv"

    iget v1, p1, Lcom/google/android/gms/internal/zziz;->zzcgx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "build"

    iget-object v2, p1, Lcom/google/android/gms/internal/zziz;->zzchc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_charging"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zziz;->zzcgz:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "battery_level"

    iget-wide v4, p1, Lcom/google/android/gms/internal/zziz;->zzcgy:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "battery"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "active_network_state"

    iget v3, p1, Lcom/google/android/gms/internal/zziz;->zzchb:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "active_network_metered"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zziz;->zzcha:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_11a

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "predicted_latency_micros"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "predicted_down_throughput_bps"

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "predicted_up_throughput_bps"

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "predictions"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_11a
    const-string v2, "network"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_browser_custom_tabs_capable"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zziz;->zzchd:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "browser"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p3, :cond_13b

    const-string v1, "android_mem_info"

    invoke-static {p3}, Lcom/google/android/gms/internal/zziu;->zzf(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_13b
    const-string v1, "device"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "doritos"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pii"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zzab(Z)Ljava/lang/Integer;
    .registers 2

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static zzau(I)Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zzc(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_a

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzbgu:I

    :goto_4
    packed-switch v0, :pswitch_data_12

    const-string v0, "any"

    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    :pswitch_c
    const-string v0, "portrait"

    goto :goto_9

    :pswitch_f
    const-string v0, "landscape"

    goto :goto_9

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static zzc(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-wide/16 v6, -0x1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbts:Ljava/lang/String;

    if-eqz v0, :cond_12

    const-string v0, "ad_base_url"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbts:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccf:Ljava/lang/String;

    if-eqz v0, :cond_1d

    const-string v0, "ad_size"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccf:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1d
    const-string v0, "native"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzaus:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzaus:Z

    if-eqz v0, :cond_145

    const-string v0, "ad_json"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcch:Ljava/lang/String;

    if-eqz v0, :cond_3a

    const-string v0, "debug_dialog"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcch:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3a
    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccb:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4e

    const-string v0, "interstitial_timeout"

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccb:J

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_4e
    iget v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzkm;->zztl()I

    move-result v2

    if-ne v0, v2, :cond_14e

    const-string v0, "orientation"

    const-string v2, "portrait"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnq:Ljava/util/List;

    if-eqz v0, :cond_70

    const-string v0, "click_urls"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnq:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zziu;->zzk(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_70
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnr:Ljava/util/List;

    if-eqz v0, :cond_7f

    const-string v0, "impression_urls"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnr:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zziu;->zzk(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcce:Ljava/util/List;

    if-eqz v0, :cond_8e

    const-string v0, "manual_impression_urls"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcce:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zziu;->zzk(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcck:Ljava/lang/String;

    if-eqz v0, :cond_99

    const-string v0, "active_view"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcck:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_99
    const-string v0, "ad_is_javascript"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcci:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccj:Ljava/lang/String;

    if-eqz v0, :cond_ab

    const-string v0, "ad_passback_url"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccj:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_ab
    const-string v0, "mediation"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccc:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "custom_render_allowed"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccl:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "content_url_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccm:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "prefetch"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccn:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnw:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_d4

    const-string v0, "refresh_interval_milliseconds"

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnw:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_d4
    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccd:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_e1

    const-string v0, "mediation_config_cache_time_milliseconds"

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccd:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_e1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f0

    const-string v0, "gws_query_id"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccq:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f0
    const-string v2, "fluid"

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzaut:Z

    if-eqz v0, :cond_163

    const-string v0, "height"

    :goto_f8
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "native_express"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzauu:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccs:Ljava/util/List;

    if-eqz v0, :cond_111

    const-string v0, "video_start_urls"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccs:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zziu;->zzk(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_111
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcct:Ljava/util/List;

    if-eqz v0, :cond_120

    const-string v0, "video_complete_urls"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcct:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zziu;->zzk(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_120
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccr:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    if-eqz v0, :cond_12f

    const-string v0, "rewards"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccr:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->zzrx()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12f
    const-string v0, "use_displayed_impression"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccu:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "auto_protection_configuration"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccv:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "render_in_browser"

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnu:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v1

    :cond_145
    const-string v0, "ad_html"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2f

    :cond_14e
    iget v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzkm;->zztk()I

    move-result v2

    if-ne v0, v2, :cond_61

    const-string v0, "orientation"

    const-string v2, "landscape"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_61

    :cond_163
    const-string v0, ""

    goto :goto_f8
.end method

.method private static zzf(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    const-wide/16 v4, -0x1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "runtime_free"

    const-string v2, "runtime_free_memory"

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "runtime_max"

    const-string v2, "runtime_max_memory"

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "runtime_total"

    const-string v2, "runtime_total_memory"

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "debug_memory_info"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Debug$MemoryInfo;

    if-eqz v0, :cond_a1

    const-string v2, "debug_info_dalvik_private_dirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_dalvik_pss"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_dalvik_shared_dirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_native_private_dirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_native_pss"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_native_shared_dirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_other_private_dirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_other_pss"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_other_shared_dirty"

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    return-object v1
.end method

.method static zzk(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_19
    return-object v1
.end method
