###### Class com.ironsource.sdk.utils.IronSourceSharedPrefHelper (com.ironsource.sdk.utils.IronSourceSharedPrefHelper)
.class public Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;
.super Ljava/lang/Object;
.source "IronSourceSharedPrefHelper.java"


# static fields
.field private static final APPLICATION_KEY_IS:Ljava/lang/String; = "application_key_is"

.field private static final APPLICATION_KEY_OW:Ljava/lang/String; = "application_key_ow"

.field private static final APPLICATION_KEY_RV:Ljava/lang/String; = "application_key_rv"

.field private static final BACK_BUTTON_STATE:Ljava/lang/String; = "back_button_state"

.field private static final IS_REPORTED:Ljava/lang/String; = "is_reported"

.field private static final REGISTER_SESSIONS:Ljava/lang/String; = "register_sessions"

.field private static final SEARCH_KEYS:Ljava/lang/String; = "search_keys"

.field private static final SESSIONS:Ljava/lang/String; = "sessions"

.field private static final SSA_RV_PARAMETER_CONNECTION_RETRIES:Ljava/lang/String; = "ssa_rv_parameter_connection_retries"

.field private static final SSA_SDK_DOWNLOAD_URL:Ljava/lang/String; = "ssa_sdk_download_url"

.field private static final SSA_SDK_LOAD_URL:Ljava/lang/String; = "ssa_sdk_load_url"

.field private static final SUPERSONIC_SHARED_PREF:Ljava/lang/String; = "supersonic_shared_preferen"

.field private static final UNIQUE_ID_IS:Ljava/lang/String; = "unique_id_is"

.field private static final UNIQUE_ID_OW:Ljava/lang/String; = "unique_id_ow"

.field private static final UNIQUE_ID_RV:Ljava/lang/String; = "unique_id_rv"

.field private static final USER_ID_IS:Ljava/lang/String; = "user_id_is"

.field private static final USER_ID_OW:Ljava/lang/String; = "user_id_ow"

.field private static final USER_ID_RV:Ljava/lang/String; = "user_id_rv"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static mInstance:Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "supersonic_shared_preferen"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 58
    return-void
.end method

.method private getShouldRegisterSessions()Z
    .registers 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "register_sessions"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;
    .registers 2

    .prologue
    .line 68
    const-class v0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mInstance:Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSupersonicPrefHelper(Landroid/content/Context;)Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-class v1, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mInstance:Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    if-nez v0, :cond_e

    .line 62
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mInstance:Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    .line 64
    :cond_e
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mInstance:Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addSession(Lcom/ironsource/sdk/data/SSASession;)V
    .registers 8
    .param p1, "session"    # Lcom/ironsource/sdk/data/SSASession;

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getShouldRegisterSessions()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 216
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 218
    .local v2, "jsObj":Lorg/json/JSONObject;
    :try_start_b
    const-string v3, "sessionStartTime"

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSASession;->getSessionStartTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 219
    const-string v3, "sessionEndTime"

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSASession;->getSessionEndTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 220
    const-string v3, "sessionType"

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSASession;->getSessionType()Lcom/ironsource/sdk/data/SSASession$SessionType;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v3, "connectivity"

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSASession;->getConnectivity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_2f} :catch_50

    .line 225
    :goto_2f
    invoke-virtual {p0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSessions()Lorg/json/JSONArray;

    move-result-object v1

    .line 227
    .local v1, "jsArr":Lorg/json/JSONArray;
    if-nez v1, :cond_3a

    .line 228
    new-instance v1, Lorg/json/JSONArray;

    .end local v1    # "jsArr":Lorg/json/JSONArray;
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 231
    .restart local v1    # "jsArr":Lorg/json/JSONArray;
    :cond_3a
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 233
    iget-object v3, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "sessions"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "jsArr":Lorg/json/JSONArray;
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_4f
    return-void

    .line 223
    .restart local v2    # "jsObj":Lorg/json/JSONObject;
    :catch_50
    move-exception v3

    goto :goto_2f
.end method

.method public deleteSessions()V
    .registers 4

    .prologue
    .line 199
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 201
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sessions"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 204
    return-void
.end method

.method public getApplicationKey(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/lang/String;
    .registers 6
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .prologue
    const/4 v3, 0x0

    .line 296
    const-string v0, "EMPTY_APPLICATION_KEY"

    .line 298
    .local v0, "applicationKey":Ljava/lang/String;
    sget-object v1, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper$1;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 315
    :goto_e
    return-object v0

    .line 300
    :pswitch_f
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "application_key_rv"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    goto :goto_e

    .line 304
    :pswitch_18
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "application_key_ow"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    goto :goto_e

    .line 308
    :pswitch_21
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "application_key_is"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    goto :goto_e

    .line 298
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_18
        :pswitch_21
    .end packed-switch
.end method

.method public getBackButtonState()Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;
    .registers 6

    .prologue
    .line 112
    iget-object v2, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "back_button_state"

    const-string v4, "2"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "stateStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, "state":I
    if-nez v0, :cond_13

    .line 117
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->None:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    .line 124
    :goto_12
    return-object v2

    .line 118
    :cond_13
    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 119
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->Device:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    goto :goto_12

    .line 120
    :cond_19
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1f

    .line 121
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->Controller:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    goto :goto_12

    .line 124
    :cond_1f
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->Controller:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    goto :goto_12
.end method

.method public getCampaignLastUpdate(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "campaign"    # Ljava/lang/String;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionRetries()Ljava/lang/String;
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ssa_rv_parameter_connection_retries"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSDKVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 403
    iget-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "version"

    const-string v2, "UN_VERSIONED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReportAppStarted()Z
    .registers 4

    .prologue
    .line 586
    iget-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "is_reported"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSDKDownloadUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 425
    iget-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ssa_sdk_download_url"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchKeys()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v5, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "search_keys"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "value":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_2c

    .line 154
    new-instance v3, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v3, v4}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 156
    .local v3, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v5, "searchKeys"

    invoke-virtual {v3, v5}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 158
    const-string v5, "searchKeys"

    invoke-virtual {v3, v5}, Lcom/ironsource/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 161
    .local v1, "jsonArr":Lorg/json/JSONArray;
    :try_start_25
    invoke-virtual {v3, v1}, Lcom/ironsource/sdk/data/SSAObj;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2c} :catch_2d

    .line 168
    .end local v1    # "jsonArr":Lorg/json/JSONArray;
    .end local v3    # "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    :cond_2c
    :goto_2c
    return-object v2

    .line 162
    .restart local v1    # "jsonArr":Lorg/json/JSONArray;
    .restart local v3    # "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    :catch_2d
    move-exception v0

    .line 163
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2c
.end method

.method public getSessions()Lorg/json/JSONArray;
    .registers 7

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 179
    .local v1, "jsArr":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "sessions"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_12

    .line 182
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 191
    :goto_11
    return-object v3

    .line 186
    :cond_12
    :try_start_12
    new-instance v1, Lorg/json/JSONArray;

    .end local v1    # "jsArr":Lorg/json/JSONArray;
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_17} :catch_19

    .restart local v1    # "jsArr":Lorg/json/JSONArray;
    :goto_17
    move-object v3, v1

    .line 191
    goto :goto_11

    .line 187
    .end local v1    # "jsArr":Lorg/json/JSONArray;
    :catch_19
    move-exception v0

    .line 188
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .restart local v1    # "jsArr":Lorg/json/JSONArray;
    goto :goto_17
.end method

.method public getUniqueId(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/lang/String;
    .registers 6
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .prologue
    const/4 v3, 0x0

    .line 500
    const-string v0, "EMPTY_UNIQUE_ID"

    .line 502
    .local v0, "userUniqueId":Ljava/lang/String;
    sget-object v1, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper$1;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 519
    :goto_e
    return-object v0

    .line 504
    :pswitch_f
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "unique_id_rv"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    goto :goto_e

    .line 508
    :pswitch_18
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "unique_id_ow"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    goto :goto_e

    .line 512
    :pswitch_21
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "unique_id_is"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    goto :goto_e

    .line 502
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_18
        :pswitch_21
    .end packed-switch
.end method

.method public getUniqueId(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 355
    const-string v0, "EMPTY_UNIQUE_ID"

    .line 357
    .local v0, "userUniqueId":Ljava/lang/String;
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 359
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "unique_id_rv"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_17
    :goto_17
    return-object v0

    .line 361
    :cond_18
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 363
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "unique_id_ow"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 365
    :cond_2d
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 367
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "unique_id_is"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 285
    .end local v0    # "value":Ljava/lang/String;
    :goto_9
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_a
    const-string v0, "{}"

    goto :goto_9
.end method

.method public setApplicationKey(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .prologue
    .line 325
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 327
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper$1;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    invoke-virtual {p2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28

    .line 344
    :goto_11
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 345
    return-void

    .line 329
    :pswitch_15
    const-string v1, "application_key_rv"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    .line 333
    :pswitch_1b
    const-string v1, "application_key_ow"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    .line 337
    :pswitch_21
    const-string v1, "application_key_is"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    .line 327
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_15
        :pswitch_1b
        :pswitch_21
    .end packed-switch
.end method

.method public setBackButtonState(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "back_button_state"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    return-void
.end method

.method public setCampaignLastUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "campaign"    # Ljava/lang/String;
    .param p2, "lastUpdate"    # Ljava/lang/String;

    .prologue
    .line 455
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 457
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 458
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 459
    return-void
.end method

.method public setCurrentSDKVersion(Ljava/lang/String;)V
    .registers 4
    .param p1, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 412
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 414
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 415
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    return-void
.end method

.method public setLatestCompeltionsTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "timestamp"    # Ljava/lang/String;
    .param p2, "applicationKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 533
    iget-object v7, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "ssaUserData"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 535
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 539
    :try_start_10
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 541
    .local v3, "ssaUserDataJson":Lorg/json/JSONObject;
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 543
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 545
    .local v0, "applicationKeyJson":Lorg/json/JSONObject;
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 547
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 549
    .local v4, "userIdJson":Lorg/json/JSONObject;
    const-string v7, "timestamp"

    invoke-virtual {v4, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 551
    iget-object v7, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 552
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "ssaUserData"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 553
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_40} :catch_42

    move-result v6

    .line 563
    .end local v0    # "applicationKeyJson":Lorg/json/JSONObject;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "ssaUserDataJson":Lorg/json/JSONObject;
    .end local v4    # "userIdJson":Lorg/json/JSONObject;
    :cond_41
    :goto_41
    return v6

    .line 558
    :catch_42
    move-exception v1

    .line 559
    .local v1, "e":Lorg/json/JSONException;
    new-instance v7, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v7}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    aget-object v10, v10, v6

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v7, v8}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_41
.end method

.method public setReportAppStarted(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 573
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 575
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "is_reported"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 576
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 577
    return-void
.end method

.method public setSSABCParameters(Lcom/ironsource/sdk/data/SSABCParameters;)V
    .registers 5
    .param p1, "object"    # Lcom/ironsource/sdk/data/SSABCParameters;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ssa_rv_parameter_connection_retries"

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSABCParameters;->getConnectionRetries()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    return-void
.end method

.method public setSearchKeys(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "search_keys"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    return-void
.end method

.method public setShouldRegisterSessions(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 252
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 254
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "register_sessions"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    return-void
.end method

.method public setUniqueId(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 381
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 383
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 384
    const-string v1, "unique_id_rv"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 393
    :cond_17
    :goto_17
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1

    .line 386
    :cond_1c
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 387
    const-string v1, "unique_id_ow"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_17

    .line 389
    :cond_2e
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 390
    const-string v1, "unique_id_is"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_17
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 268
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public setUserID(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .prologue
    .line 469
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 471
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper$1;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    invoke-virtual {p2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28

    .line 488
    :goto_11
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 489
    return-void

    .line 473
    :pswitch_15
    const-string v1, "user_id_rv"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    .line 477
    :pswitch_1b
    const-string v1, "user_id_ow"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    .line 481
    :pswitch_21
    const-string v1, "user_id_is"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    .line 471
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_15
        :pswitch_1b
        :pswitch_21
    .end packed-switch
.end method

###### Class com.ironsource.sdk.utils.IronSourceSharedPrefHelper.AnonymousClass1 (com.ironsource.sdk.utils.IronSourceSharedPrefHelper$1)
.class synthetic Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper$1;
.super Ljava/lang/Object;
.source "IronSourceSharedPrefHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 298
    invoke-static {}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->values()[Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper$1;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    :try_start_9
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper$1;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper$1;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper$1;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
