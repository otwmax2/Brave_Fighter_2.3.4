###### Class com.ironsource.mediationsdk.utils.CappingManager (com.ironsource.mediationsdk.utils.CappingManager)
.class public Lcom/ironsource/mediationsdk/utils/CappingManager;
.super Ljava/lang/Object;
.source "CappingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    }
.end annotation


# static fields
.field private static final CAPPING_TIME_THRESHOLD:Ljava/lang/String; = "CappingManager.CAPPING_TIME_THRESHOLD"

.field private static final CAPPING_TYPE:Ljava/lang/String; = "CappingManager.CAPPING_TYPE"

.field private static final CURRENT_NUMBER_OF_SHOWS:Ljava/lang/String; = "CappingManager.CURRENT_NUMBER_OF_SHOWS"

.field private static final IS_CAPPING_ENABLED:Ljava/lang/String; = "CappingManager.IS_CAPPING_ENABLED"

.field private static final IS_DELIVERY_ENABLED:Ljava/lang/String; = "CappingManager.IS_DELIVERY_ENABLED"

.field private static final IS_PACING_ENABLED:Ljava/lang/String; = "CappingManager.IS_PACING_ENABLED"

.field private static final MAX_NUMBER_OF_SHOWS:Ljava/lang/String; = "CappingManager.MAX_NUMBER_OF_SHOWS"

.field private static final SECONDS_BETWEEN_SHOWS:Ljava/lang/String; = "CappingManager.SECONDS_BETWEEN_SHOWS"

.field private static final TIME_OF_THE_PREVIOUS_SHOW:Ljava/lang/String; = "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/BannerPlacement;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/BannerPlacement;

    .prologue
    .line 63
    const-class v2, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v2

    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    .line 72
    :cond_7
    :goto_7
    monitor-exit v2

    return-void

    .line 66
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v0

    .line 67
    .local v0, "availabilitySettings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    if-eqz v0, :cond_7

    .line 70
    const-string v1, "Banner"

    .line 71
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {p0, v1, v3, v0}, Lcom/ironsource/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    goto :goto_7

    .line 63
    .end local v0    # "availabilitySettings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    .prologue
    .line 39
    const-class v2, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v2

    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    .line 48
    :cond_7
    :goto_7
    monitor-exit v2

    return-void

    .line 42
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v0

    .line 43
    .local v0, "availabilitySettings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    if-eqz v0, :cond_7

    .line 46
    const-string v1, "Interstitial"

    .line 47
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {p0, v1, v3, v0}, Lcom/ironsource/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    goto :goto_7

    .line 39
    .end local v0    # "availabilitySettings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/Placement;

    .prologue
    .line 51
    const-class v2, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v2

    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    .line 60
    :cond_7
    :goto_7
    monitor-exit v2

    return-void

    .line 54
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v0

    .line 55
    .local v0, "availabilitySettings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    if-eqz v0, :cond_7

    .line 58
    const-string v1, "Rewarded Video"

    .line 59
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-static {p0, v1, v3, v0}, Lcom/ironsource/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    goto :goto_7

    .line 51
    .end local v0    # "availabilitySettings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static addCappingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V
    .registers 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adUnit"    # Ljava/lang/String;
    .param p2, "placementName"    # Ljava/lang/String;
    .param p3, "availabilitySettings"    # Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    .prologue
    .line 256
    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->isDeliveryEnabled()Z

    move-result v5

    .line 257
    .local v5, "isDeliveryEnabled":Z
    const-string v12, "CappingManager.IS_DELIVERY_ENABLED"

    invoke-static {p1, v12, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "deliveryKey":Ljava/lang/String;
    invoke-static {p0, v2, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 259
    if-nez v5, :cond_10

    .line 290
    :cond_f
    :goto_f
    return-void

    .line 265
    :cond_10
    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->isCappingEnabled()Z

    move-result v3

    .line 266
    .local v3, "isCappingEnabled":Z
    const-string v12, "CappingManager.IS_CAPPING_ENABLED"

    invoke-static {p1, v12, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "isCappingEnabledKey":Ljava/lang/String;
    invoke-static {p0, v4, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 268
    if-eqz v3, :cond_3d

    .line 270
    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->getCappingValue()I

    move-result v8

    .line 271
    .local v8, "maxNumberOfShows":I
    const-string v12, "CappingManager.MAX_NUMBER_OF_SHOWS"

    invoke-static {p1, v12, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 272
    .local v9, "maxNumberOfShowsKey":Ljava/lang/String;
    invoke-static {p0, v9, v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 275
    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->getCappingType()Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    move-result-object v0

    .line 276
    .local v0, "cappingType":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    const-string v12, "CappingManager.CAPPING_TYPE"

    invoke-static {p1, v12, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "cappingTypeKey":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v1, v12}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveStringToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .end local v0    # "cappingType":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .end local v1    # "cappingTypeKey":Ljava/lang/String;
    .end local v8    # "maxNumberOfShows":I
    .end local v9    # "maxNumberOfShowsKey":Ljava/lang/String;
    :cond_3d
    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->isPacingEnabled()Z

    move-result v6

    .line 282
    .local v6, "isPacingEnabled":Z
    const-string v12, "CappingManager.IS_PACING_ENABLED"

    invoke-static {p1, v12, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, "isPacingEnabledKey":Ljava/lang/String;
    invoke-static {p0, v7, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 284
    if-eqz v6, :cond_f

    .line 286
    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->getPacingValue()I

    move-result v10

    .line 287
    .local v10, "secondsBetweenShows":I
    const-string v12, "CappingManager.SECONDS_BETWEEN_SHOWS"

    invoke-static {p1, v12, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 288
    .local v11, "secondsBetweenShowsKey":Ljava/lang/String;
    invoke-static {p0, v11, v10}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_f
.end method

.method private static constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "adUnit"    # Ljava/lang/String;
    .param p1, "baseConst"    # Ljava/lang/String;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized incrementShowCounter(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    .prologue
    .line 96
    const-class v1, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v1

    if-eqz p1, :cond_e

    .line 97
    :try_start_5
    const-string v0, "Interstitial"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_10

    .line 99
    :cond_e
    monitor-exit v1

    return-void

    .line 96
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized incrementShowCounter(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/Placement;

    .prologue
    .line 102
    const-class v1, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v1

    if-eqz p1, :cond_e

    .line 103
    :try_start_5
    const-string v0, "Rewarded Video"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_10

    .line 105
    :cond_e
    monitor-exit v1

    return-void

    .line 102
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized incrementShowCounter(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 108
    const-class v1, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 109
    const-string v0, "Banner"

    invoke-static {p0, v0, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 111
    :cond_e
    monitor-exit v1

    return-void

    .line 108
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adUnit"    # Ljava/lang/String;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string v23, "CappingManager.IS_PACING_ENABLED"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 184
    .local v15, "isPacingEnabledKey":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v15, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v14

    .line 185
    .local v14, "isPacingEnabled":Z
    if-eqz v14, :cond_2f

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 188
    .local v10, "currentTime":J
    const-string v23, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 189
    .local v18, "timeOfPreviousShowKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10, v11}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V

    .line 193
    .end local v10    # "currentTime":J
    .end local v18    # "timeOfPreviousShowKey":Ljava/lang/String;
    :cond_2f
    const-string v23, "CappingManager.IS_CAPPING_ENABLED"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 194
    .local v12, "isCappingEnabledKey":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v12, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v9

    .line 195
    .local v9, "isCappingEnabled":Z
    if-eqz v9, :cond_d8

    .line 197
    const-string v23, "CappingManager.MAX_NUMBER_OF_SHOWS"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 198
    .local v17, "maxNumberOfShowsKey":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    .line 201
    .local v16, "maxNumberOfShows":I
    const-string v23, "CappingManager.CURRENT_NUMBER_OF_SHOWS"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, "currentNumberOfShowsKey":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v8, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 205
    .local v7, "currentNumberOfShows":I
    if-nez v7, :cond_d9

    const/4 v13, 0x1

    .line 207
    .local v13, "isFirstShow":Z
    :goto_78
    if-eqz v13, :cond_d1

    .line 209
    const-string v23, "CappingManager.CAPPING_TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "cappingTypeKey":Ljava/lang/String;
    sget-object v23, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-virtual/range {v23 .. v23}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v5, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getStringFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, "cappingTypeString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 212
    .local v4, "cappingType":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    invoke-static {}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->values()[Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v23, 0x0

    :goto_a0
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_b8

    aget-object v22, v24, v23

    .line 213
    .local v22, "type":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_db

    .line 214
    move-object/from16 v4, v22

    .line 219
    .end local v22    # "type":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    :cond_b8
    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/CappingManager;->initTimeThreshold(Lcom/ironsource/mediationsdk/model/PlacementCappingType;)J

    move-result-wide v20

    .line 222
    .local v20, "timeThreshold":J
    const-string v23, "CappingManager.CAPPING_TIME_THRESHOLD"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 223
    .local v19, "timeThresholdKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V

    .line 227
    .end local v4    # "cappingType":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .end local v5    # "cappingTypeKey":Ljava/lang/String;
    .end local v6    # "cappingTypeString":Ljava/lang/String;
    .end local v19    # "timeThresholdKey":Ljava/lang/String;
    .end local v20    # "timeThreshold":J
    :cond_d1
    add-int/lit8 v7, v7, 0x1

    .line 230
    move-object/from16 v0, p0

    invoke-static {v0, v8, v7}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 232
    .end local v7    # "currentNumberOfShows":I
    .end local v8    # "currentNumberOfShowsKey":Ljava/lang/String;
    .end local v13    # "isFirstShow":Z
    .end local v16    # "maxNumberOfShows":I
    .end local v17    # "maxNumberOfShowsKey":Ljava/lang/String;
    :cond_d8
    return-void

    .line 205
    .restart local v7    # "currentNumberOfShows":I
    .restart local v8    # "currentNumberOfShowsKey":Ljava/lang/String;
    .restart local v16    # "maxNumberOfShows":I
    .restart local v17    # "maxNumberOfShowsKey":Ljava/lang/String;
    :cond_d9
    const/4 v13, 0x0

    goto :goto_78

    .line 212
    .restart local v4    # "cappingType":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .restart local v5    # "cappingTypeKey":Ljava/lang/String;
    .restart local v6    # "cappingTypeString":Ljava/lang/String;
    .restart local v13    # "isFirstShow":Z
    .restart local v22    # "type":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    :cond_db
    add-int/lit8 v23, v23, 0x1

    goto :goto_a0
.end method

.method private static initTimeThreshold(Lcom/ironsource/mediationsdk/model/PlacementCappingType;)J
    .registers 9
    .param p0, "cappingType"    # Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 235
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 236
    .local v0, "calendar":Ljava/util/Calendar;
    sget-object v1, Lcom/ironsource/mediationsdk/utils/CappingManager$1;->$SwitchMap$com$ironsource$mediationsdk$model$PlacementCappingType:[I

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_44

    .line 251
    :goto_1d
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2

    .line 238
    :pswitch_22
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 239
    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 240
    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 241
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 242
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_1d

    .line 245
    :pswitch_35
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 246
    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 247
    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 248
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_1d

    .line 236
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_22
        :pswitch_35
    .end packed-switch
.end method

.method public static declared-synchronized isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/BannerPlacement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/BannerPlacement;

    .prologue
    .line 82
    const-class v1, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v1

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    :try_start_7
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v0

    if-nez v0, :cond_11

    .line 83
    :cond_d
    sget-object v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1c

    .line 85
    :goto_f
    monitor-exit v1

    return-object v0

    :cond_11
    :try_start_11
    const-string v0, "Banner"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1c

    move-result-object v0

    goto :goto_f

    .line 82
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    .prologue
    .line 75
    const-class v1, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v1

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    :try_start_7
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v0

    if-nez v0, :cond_11

    .line 76
    :cond_d
    sget-object v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1c

    .line 78
    :goto_f
    monitor-exit v1

    return-object v0

    :cond_11
    :try_start_11
    const-string v0, "Interstitial"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1c

    move-result-object v0

    goto :goto_f

    .line 75
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/Placement;

    .prologue
    .line 89
    const-class v1, Lcom/ironsource/mediationsdk/utils/CappingManager;

    monitor-enter v1

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    :try_start_7
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v0

    if-nez v0, :cond_11

    .line 90
    :cond_d
    sget-object v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1c

    .line 92
    :goto_f
    monitor-exit v1

    return-object v0

    :cond_11
    :try_start_11
    const-string v0, "Rewarded Video"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1c

    move-result-object v0

    goto :goto_f

    .line 89
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .registers 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adUnit"    # Ljava/lang/String;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 124
    .local v6, "currentTime":J
    const-string v24, "CappingManager.IS_DELIVERY_ENABLED"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "deliveryKey":Ljava/lang/String;
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v8, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v11

    .line 126
    .local v11, "isDeliveryEnabled":Z
    if-nez v11, :cond_1f

    .line 128
    sget-object v24, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_DELIVERY:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    .line 178
    :goto_1e
    return-object v24

    .line 132
    :cond_1f
    const-string v24, "CappingManager.IS_PACING_ENABLED"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 133
    .local v13, "isPacingEnabledKey":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v13, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v12

    .line 134
    .local v12, "isPacingEnabled":Z
    if-eqz v12, :cond_7b

    .line 136
    const-string v24, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 137
    .local v20, "timeOfPreviousShowKey":Ljava/lang/String;
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getLongFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v18

    .line 140
    .local v18, "timeOfPreviousShow":J
    const-string v24, "CappingManager.SECONDS_BETWEEN_SHOWS"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 141
    .local v17, "secondsBetweenShowsKey":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    .line 144
    .local v16, "secondsBetweenShows":I
    sub-long v24, v6, v18

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-gez v24, :cond_7b

    .line 146
    sget-object v24, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_PACE:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    goto :goto_1e

    .line 151
    .end local v16    # "secondsBetweenShows":I
    .end local v17    # "secondsBetweenShowsKey":Ljava/lang/String;
    .end local v18    # "timeOfPreviousShow":J
    .end local v20    # "timeOfPreviousShowKey":Ljava/lang/String;
    :cond_7b
    const-string v24, "CappingManager.IS_CAPPING_ENABLED"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 152
    .local v10, "isCappingEnabledKey":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v10, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v9

    .line 153
    .local v9, "isCappingEnabled":Z
    if-eqz v9, :cond_ef

    .line 155
    const-string v24, "CappingManager.MAX_NUMBER_OF_SHOWS"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 156
    .local v15, "maxNumberOfShowsKey":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v15, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    .line 159
    .local v14, "maxNumberOfShows":I
    const-string v24, "CappingManager.CURRENT_NUMBER_OF_SHOWS"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "currentNumberOfShowsKey":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v5, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 163
    .local v4, "currentNumberOfShows":I
    const-string v24, "CappingManager.CAPPING_TIME_THRESHOLD"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 164
    .local v21, "timeThresholdKey":Ljava/lang/String;
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getLongFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v22

    .line 167
    .local v22, "timeThreshold":J
    cmp-long v24, v6, v22

    if-ltz v24, :cond_f3

    .line 169
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v5, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 170
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V

    .line 178
    .end local v4    # "currentNumberOfShows":I
    .end local v5    # "currentNumberOfShowsKey":Ljava/lang/String;
    .end local v14    # "maxNumberOfShows":I
    .end local v15    # "maxNumberOfShowsKey":Ljava/lang/String;
    .end local v21    # "timeThresholdKey":Ljava/lang/String;
    .end local v22    # "timeThreshold":J
    :cond_ef
    sget-object v24, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    goto/16 :goto_1e

    .line 171
    .restart local v4    # "currentNumberOfShows":I
    .restart local v5    # "currentNumberOfShowsKey":Ljava/lang/String;
    .restart local v14    # "maxNumberOfShows":I
    .restart local v15    # "maxNumberOfShowsKey":Ljava/lang/String;
    .restart local v21    # "timeThresholdKey":Ljava/lang/String;
    .restart local v22    # "timeThreshold":J
    :cond_f3
    if-lt v4, v14, :cond_ef

    .line 173
    sget-object v24, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_COUNT:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    goto/16 :goto_1e
.end method

###### Class com.ironsource.mediationsdk.utils.CappingManager.AnonymousClass1 (com.ironsource.mediationsdk.utils.CappingManager$1)
.class synthetic Lcom/ironsource/mediationsdk/utils/CappingManager$1;
.super Ljava/lang/Object;
.source "CappingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/utils/CappingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ironsource$mediationsdk$model$PlacementCappingType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 236
    invoke-static {}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->values()[Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/mediationsdk/utils/CappingManager$1;->$SwitchMap$com$ironsource$mediationsdk$model$PlacementCappingType:[I

    :try_start_9
    sget-object v0, Lcom/ironsource/mediationsdk/utils/CappingManager$1;->$SwitchMap$com$ironsource$mediationsdk$model$PlacementCappingType:[I

    sget-object v1, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/ironsource/mediationsdk/utils/CappingManager$1;->$SwitchMap$com$ironsource$mediationsdk$model$PlacementCappingType:[I

    sget-object v1, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_HOUR:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method

###### Class com.ironsource.mediationsdk.utils.CappingManager.ECappingStatus (com.ironsource.mediationsdk.utils.CappingManager$ECappingStatus)
.class public final enum Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
.super Ljava/lang/Enum;
.source "CappingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/utils/CappingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECappingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

.field public static final enum CAPPED_PER_COUNT:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

.field public static final enum CAPPED_PER_DELIVERY:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

.field public static final enum CAPPED_PER_PACE:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

.field public static final enum NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    new-instance v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    const-string v1, "CAPPED_PER_DELIVERY"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_DELIVERY:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    new-instance v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    const-string v1, "CAPPED_PER_COUNT"

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_COUNT:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    new-instance v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    const-string v1, "CAPPED_PER_PACE"

    invoke-direct {v0, v1, v4}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_PACE:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    new-instance v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    const-string v1, "NOT_CAPPED"

    invoke-direct {v0, v1, v5}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    .line 292
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    sget-object v1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_DELIVERY:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_COUNT:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_PACE:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->$VALUES:[Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

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
    .line 292
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 292
    const-class v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    return-object v0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .registers 1

    .prologue
    .line 292
    sget-object v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->$VALUES:[Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    return-object v0
.end method
