###### Class com.ironsource.mediationsdk.model.ProviderSettingsHolder (com.ironsource.mediationsdk.model.ProviderSettingsHolder)
.class public Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;
.super Ljava/lang/Object;
.source "ProviderSettingsHolder.java"


# static fields
.field private static mInstance:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;


# instance fields
.field private mProviderSettingsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/model/ProviderSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public static declared-synchronized getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;
    .registers 2

    .prologue
    .line 21
    const-class v1, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mInstance:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    if-nez v0, :cond_e

    .line 22
    new-instance v0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mInstance:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    .line 24
    :cond_e
    sget-object v0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mInstance:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addProviderSettings(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V
    .registers 3
    .param p1, "providerSettings"    # Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .prologue
    .line 32
    if-eqz p1, :cond_7

    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_7
    return-void
.end method

.method public containsProviderSettings(Ljava/lang/String;)Z
    .registers 5
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 76
    .local v0, "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 77
    const/4 v1, 0x1

    .line 80
    .end local v0    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public fillSubProvidersDetails()V
    .registers 7

    .prologue
    .line 90
    iget-object v3, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 91
    .local v2, "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->isMultipleInstances()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5b

    const/4 v1, 0x1

    .line 93
    .local v1, "isSubProvider":Z
    :goto_23
    if-eqz v1, :cond_6

    .line 95
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v0

    .line 98
    .local v0, "commonProviderSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setInterstitialSettings(Lorg/json/JSONObject;)V

    .line 99
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Lorg/json/JSONObject;)V

    .line 100
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setBannerSettings(Lorg/json/JSONObject;)V

    goto :goto_6

    .line 91
    .end local v0    # "commonProviderSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .end local v1    # "isSubProvider":Z
    :cond_5b
    const/4 v1, 0x0

    goto :goto_23

    .line 103
    .end local v2    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    :cond_5d
    return-void
.end method

.method public getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .registers 6
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v2, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 38
    .local v0, "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 45
    .end local v0    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    :goto_1c
    return-object v0

    .line 42
    :cond_1d
    new-instance v1, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-direct {v1, p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "ps":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->addProviderSettings(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    move-object v0, v1

    .line 45
    goto :goto_1c
.end method

.method public getProviderSettingsArrayList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/model/ProviderSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getProviderSettingsByReflectionName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .registers 7
    .param p1, "providerNameForReflection"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 54
    .local v1, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_5
    iget-object v2, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 55
    .local v0, "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 56
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4a

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_4a

    .line 57
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 58
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_4a
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_73

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_73

    .line 60
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 61
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_73
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 63
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 64
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9c} :catch_9e

    goto/16 :goto_b

    .line 67
    .end local v0    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    :catch_9e
    move-exception v2

    .line 71
    :cond_9f
    return-object v1
.end method
