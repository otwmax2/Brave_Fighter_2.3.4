###### Class com.chartboost.sdk.Tracking.CBAnalytics (com.chartboost.sdk.Tracking.CBAnalytics)
.class public Lcom/chartboost/sdk/Tracking/CBAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;,
        Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;,
        Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private static declared-synchronized a(Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;Lorg/json/JSONArray;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 508
    const-class v6, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v6

    :try_start_3
    const-string v0, "/post-install-event/"

    const-string v1, "tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 514
    const-string v1, "track_info"

    invoke-virtual {v0, v1, p3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 515
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/aj;->l:Z

    .line 516
    invoke-virtual {v0, p4}, Lcom/chartboost/sdk/impl/aj;->b(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    .line 518
    monitor-exit v6

    return-void

    .line 508
    :catchall_24
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private static declared-synchronized a(Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    .registers 13

    .prologue
    .line 491
    const-class v6, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v6

    :try_start_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "/post-install-event/"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 492
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V

    .line 497
    invoke-virtual {v0, p4, p3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/aj;->l:Z

    .line 499
    invoke-virtual {v0, p4}, Lcom/chartboost/sdk/impl/aj;->b(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2d

    .line 501
    monitor-exit v6

    return-void

    .line 491
    :catchall_2d
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    .registers 18

    .prologue
    .line 215
    const-class v7, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v7

    :try_start_3
    sget-object v1, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    if-nez v1, :cond_10

    .line 216
    const-string v1, "CBPostInstallTracker"

    const-string v2, "You need call Chartboost.init() before calling any public API\'s"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1e

    .line 292
    :goto_e
    monitor-exit v7

    return-void

    .line 221
    :cond_10
    :try_start_10
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v3

    .line 222
    if-nez v3, :cond_21

    .line 223
    const-string v1, "CBPostInstallTracker"

    const-string v2, "You need call Chartboost.startWithAppId() before tracking in-app purchases"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_e

    .line 215
    :catchall_1e
    move-exception v1

    monitor-exit v7

    throw v1

    .line 227
    :cond_21
    :try_start_21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 229
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 230
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 231
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 232
    :cond_3f
    const-string v1, "CBPostInstallTracker"

    const-string v2, "Null object is passed. Please pass a valid value object"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_21 .. :try_end_46} :catchall_1e

    goto :goto_e

    .line 239
    :cond_47
    :try_start_47
    const-string v1, "(\\d+\\.\\d+)|(\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 240
    invoke-virtual {v1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 242
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 244
    const-string v1, "CBPostInstallTracker"

    const-string v2, "Invalid price object"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/IllegalStateException; {:try_start_47 .. :try_end_65} :catch_66
    .catchall {:try_start_47 .. :try_end_65} :catchall_1e

    goto :goto_e

    .line 248
    :catch_66
    move-exception v1

    .line 249
    :try_start_67
    const-string v1, "CBPostInstallTracker"

    const-string v2, "Invalid price object"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_1e

    goto :goto_e

    .line 247
    :cond_6f
    :try_start_6f
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_72
    .catch Ljava/lang/IllegalStateException; {:try_start_6f .. :try_end_72} :catch_66
    .catchall {:try_start_6f .. :try_end_72} :catchall_1e

    move-result v2

    .line 254
    const/4 v1, 0x0

    .line 255
    :try_start_74
    sget-object v4, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->GOOGLE_PLAY:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    move-object/from16 v0, p9

    if-ne v0, v4, :cond_c5

    .line 256
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 257
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 258
    :cond_86
    const-string v1, "CBPostInstallTracker"

    const-string v2, "Null object is passed for for purchase data or purchase signature"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 261
    :cond_8e
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v4, 0x0

    const-string v5, "purchaseData"

    invoke-static {v5, p5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "purchaseSignature"

    .line 262
    invoke-static {v5, p6}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "type"

    sget-object v6, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->GOOGLE_PLAY:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    .line 263
    invoke-virtual {v6}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    aput-object v5, v1, v4

    .line 261
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v1

    .line 278
    :cond_ba
    :goto_ba
    if-nez v1, :cond_10f

    .line 279
    const-string v1, "CBPostInstallTracker"

    const-string v2, "Error while parsing the receipt to a JSON Object, "

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 265
    :cond_c5
    sget-object v4, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->AMAZON:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    move-object/from16 v0, p9

    if-ne v0, v4, :cond_ba

    .line 266
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d7

    .line 267
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 268
    :cond_d7
    const-string v1, "CBPostInstallTracker"

    const-string v2, "Null object is passed for for amazon user id or amazon purchase token"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 271
    :cond_e0
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v4, 0x0

    const-string v5, "userID"

    invoke-static {v5, p7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "purchaseToken"

    .line 272
    move-object/from16 v0, p8

    invoke-static {v5, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "type"

    sget-object v6, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->AMAZON:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    .line 273
    invoke-virtual {v6}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    aput-object v5, v1, v4

    .line 271
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_ba

    .line 282
    :cond_10f
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 284
    const/4 v4, 0x6

    new-array v4, v4, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v5, 0x0

    const-string v6, "localized-title"

    invoke-static {v6, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "localized-description"

    .line 285
    invoke-static {v6, p2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "price"

    .line 286
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x3

    const-string v5, "currency"

    .line 287
    invoke-static {v5, p4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "productID"

    .line 288
    invoke-static {v5, p0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "receipt"

    .line 289
    invoke-static {v5, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    aput-object v1, v4, v2

    .line 284
    invoke-static {v4}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v4

    .line 290
    iget-object v1, v3, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ah;

    iget-object v2, v3, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    const-string v5, "iap"

    move-object/from16 v6, p9

    invoke-static/range {v1 .. v6}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->a(Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    :try_end_16a
    .catchall {:try_start_74 .. :try_end_16a} :catchall_1e

    goto/16 :goto_e
.end method

.method public static declared-synchronized trackInAppAmazonStorePurchaseEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/String;
    .param p3, "currency"    # Ljava/lang/String;
    .param p4, "productID"    # Ljava/lang/String;
    .param p5, "userID"    # Ljava/lang/String;
    .param p6, "purchaseToken"    # Ljava/lang/String;

    .prologue
    .line 337
    const-class v10, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_5
    sget-object v9, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->AMAZON:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v0 .. v9}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_15

    .line 339
    monitor-exit v10

    return-void

    .line 337
    :catchall_15
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized trackInAppGooglePlayPurchaseEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/String;
    .param p3, "currency"    # Ljava/lang/String;
    .param p4, "productID"    # Ljava/lang/String;
    .param p5, "purchaseData"    # Ljava/lang/String;
    .param p6, "purchaseSignature"    # Ljava/lang/String;

    .prologue
    .line 314
    const-class v10, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_5
    sget-object v9, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->GOOGLE_PLAY:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_15

    .line 315
    monitor-exit v10

    return-void

    .line 314
    :catchall_15
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized trackLevelInfo(Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;IILjava/lang/String;)V
    .registers 13
    .param p0, "eventLabel"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;
    .param p2, "mainLevel"    # I
    .param p3, "subLevel"    # I
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 448
    const-class v1, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 449
    if-nez v0, :cond_12

    .line 450
    const-string v0, "CBPostInstallTracker"

    const-string v2, "trackLevelInfo: SDK is not initialized"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_20

    .line 482
    :goto_10
    monitor-exit v1

    return-void

    .line 453
    :cond_12
    :try_start_12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 454
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Invalid value: event label cannot be empty or null"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_20

    goto :goto_10

    .line 448
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0

    .line 457
    :cond_23
    if-nez p1, :cond_2d

    .line 458
    :try_start_25
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Invalid value: level type cannot be empty or null, please choose from one of the CBLevelType enum values"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 462
    :cond_2d
    if-ltz p2, :cond_31

    if-gez p3, :cond_39

    .line 463
    :cond_31
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Invalid value: Level number should be > 0"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 467
    :cond_39
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 468
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Invalid value: description cannot be empty or null"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 472
    :cond_47
    const/4 v2, 0x7

    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v3, 0x0

    const-string v4, "event_label"

    invoke-static {v4, p0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "event_field"

    .line 473
    invoke-virtual {p1}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->getLevelType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "main_level"

    .line 474
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "sub_level"

    .line 475
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "description"

    .line 476
    invoke-static {v4, p4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "timestamp"

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "data_type"

    const-string v5, "level_info"

    .line 478
    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v2, v3

    .line 472
    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v2

    .line 479
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 480
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 481
    iget-object v2, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ah;

    iget-object v4, v0, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/ap;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    const-string v5, "tracking"

    invoke-static {v2, v4, v0, v3, v5}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->a(Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;Lorg/json/JSONArray;Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_25 .. :try_end_ba} :catchall_20

    goto/16 :goto_10
.end method

.method public static declared-synchronized trackLevelInfo(Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;ILjava/lang/String;)V
    .registers 6
    .param p0, "eventLabel"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;
    .param p2, "mainLevel"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 436
    const-class v0, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, p2, v1, p3}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->trackLevelInfo(Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;IILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 437
    monitor-exit v0

    return-void

    .line 436
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized trackInAppPurchaseEvent(Ljava/util/EnumMap;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    .registers 13
    .param p2, "iapType"    # Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "map":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_4b

    if-eqz p2, :cond_4b

    :try_start_5
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 184
    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_TITLE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 185
    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_DESCRIPTION:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 186
    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_PRICE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 187
    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_CURRENCY_CODE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 188
    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 189
    :cond_4b
    const-string v0, "CBPostInstallTracker"

    const-string v1, "Null object is passed. Please pass a valid value object"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_a1

    .line 202
    :goto_52
    monitor-exit p0

    return-void

    .line 194
    :cond_54
    :try_start_54
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_DATA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 195
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_SIGNATURE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 198
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_USER_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 199
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_PURCHASE_TOKEN:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 201
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_TITLE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_DESCRIPTION:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_PRICE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_CURRENCY_CODE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v9, p2

    invoke-static/range {v0 .. v9}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    :try_end_a0
    .catchall {:try_start_54 .. :try_end_a0} :catchall_a1

    goto :goto_52

    .line 183
    :catchall_a1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo (com.chartboost.sdk.Tracking.CBAnalytics$CBIAPPurchaseInfo)
.class public final enum Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Tracking/CBAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBIAPPurchaseInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AMAZON_PURCHASE_TOKEN:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum AMAZON_USER_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum GOOGLE_PURCHASE_DATA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum GOOGLE_PURCHASE_SIGNATURE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum PRODUCT_CURRENCY_CODE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum PRODUCT_DESCRIPTION:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum PRODUCT_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum PRODUCT_PRICE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum PRODUCT_TITLE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field private static final synthetic a:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "PRODUCT_ID"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 136
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "PRODUCT_TITLE"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_TITLE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 137
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "PRODUCT_DESCRIPTION"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_DESCRIPTION:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 138
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "PRODUCT_PRICE"

    invoke-direct {v0, v1, v6}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_PRICE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 139
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "PRODUCT_CURRENCY_CODE"

    invoke-direct {v0, v1, v7}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_CURRENCY_CODE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 140
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "GOOGLE_PURCHASE_DATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_DATA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 141
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "GOOGLE_PURCHASE_SIGNATURE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_SIGNATURE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 142
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "AMAZON_PURCHASE_TOKEN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_PURCHASE_TOKEN:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 143
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const-string v1, "AMAZON_USER_ID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_USER_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 134
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_TITLE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_DESCRIPTION:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_PRICE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_CURRENCY_CODE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_DATA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_SIGNATURE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_PURCHASE_TOKEN:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_USER_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->a:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 134
    const-class v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;
    .registers 1

    .prologue
    .line 134
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->a:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    return-object v0
.end method

###### Class com.chartboost.sdk.Tracking.CBAnalytics.CBIAPType (com.chartboost.sdk.Tracking.CBAnalytics$CBIAPType)
.class public final enum Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Tracking/CBAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBIAPType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AMAZON:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

.field public static final enum GOOGLE_PLAY:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

.field private static final synthetic a:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    const-string v1, "GOOGLE_PLAY"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->GOOGLE_PLAY:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    .line 93
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    const-string v1, "AMAZON"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->AMAZON:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->GOOGLE_PLAY:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->AMAZON:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->a:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const-class v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->a:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    return-object v0
.end method

###### Class com.chartboost.sdk.Tracking.CBAnalytics.CBLevelType (com.chartboost.sdk.Tracking.CBAnalytics$CBLevelType)
.class public final enum Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Tracking/CBAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBLevelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHARACTER_LEVEL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

.field public static final enum CURRENT_AREA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

.field public static final enum HIGHEST_LEVEL_REACHED:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

.field public static final enum OTHER_NONSEQUENTIAL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

.field public static final enum OTHER_SEQUENTIAL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

.field private static final synthetic b:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 98
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    const-string v1, "HIGHEST_LEVEL_REACHED"

    invoke-direct {v0, v1, v7, v3}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->HIGHEST_LEVEL_REACHED:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    .line 99
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    const-string v1, "CURRENT_AREA"

    invoke-direct {v0, v1, v3, v4}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->CURRENT_AREA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    .line 100
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    const-string v1, "CHARACTER_LEVEL"

    invoke-direct {v0, v1, v4, v5}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->CHARACTER_LEVEL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    .line 101
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    const-string v1, "OTHER_SEQUENTIAL"

    invoke-direct {v0, v1, v5, v6}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->OTHER_SEQUENTIAL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    .line 102
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    const-string v1, "OTHER_NONSEQUENTIAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->OTHER_NONSEQUENTIAL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    .line 97
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->HIGHEST_LEVEL_REACHED:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->CURRENT_AREA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->CHARACTER_LEVEL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->OTHER_SEQUENTIAL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->OTHER_NONSEQUENTIAL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->b:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput p3, p0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->a:I

    .line 108
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    const-class v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->b:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    return-object v0
.end method


# virtual methods
.method public getLevelType()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->a:I

    return v0
.end method
