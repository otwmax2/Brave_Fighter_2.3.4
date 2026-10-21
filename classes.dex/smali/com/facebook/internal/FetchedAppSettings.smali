###### Class com.facebook.internal.FetchedAppSettings (com.facebook.internal.FetchedAppSettings)
.class public final Lcom/facebook/internal/FetchedAppSettings;
.super Ljava/lang/Object;
.source "FetchedAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    }
.end annotation


# instance fields
.field private automaticLoggingEnabled:Z

.field private customTabsEnabled:Z

.field private dialogConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

.field private nuxContent:Ljava/lang/String;

.field private nuxEnabled:Z

.field private sessionTimeoutInSeconds:I

.field private smartLoginBookmarkIconURL:Ljava/lang/String;

.field private smartLoginMenuIconURL:Ljava/lang/String;

.field private smartLoginOptions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;"
        }
    .end annotation
.end field

.field private supportsImplicitLogging:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "supportsImplicitLogging"    # Z
    .param p2, "nuxContent"    # Ljava/lang/String;
    .param p3, "nuxEnabled"    # Z
    .param p4, "customTabsEnabled"    # Z
    .param p5, "sessionTimeoutInSeconds"    # I
    .param p8, "automaticLoggingEnabled"    # Z
    .param p9, "errorClassification"    # Lcom/facebook/internal/FacebookRequestErrorClassification;
    .param p10, "smartLoginBookmarkIconURL"    # Ljava/lang/String;
    .param p11, "smartLoginMenuIconURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;Z",
            "Lcom/facebook/internal/FacebookRequestErrorClassification;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p6, "smartLoginOptions":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/internal/SmartLoginOption;>;"
    .local p7, "dialogConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p1, p0, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging:Z

    .line 62
    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxContent:Ljava/lang/String;

    .line 63
    iput-boolean p3, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxEnabled:Z

    .line 64
    iput-boolean p4, p0, Lcom/facebook/internal/FetchedAppSettings;->customTabsEnabled:Z

    .line 65
    iput-object p7, p0, Lcom/facebook/internal/FetchedAppSettings;->dialogConfigMap:Ljava/util/Map;

    .line 66
    iput-object p9, p0, Lcom/facebook/internal/FetchedAppSettings;->errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

    .line 67
    iput p5, p0, Lcom/facebook/internal/FetchedAppSettings;->sessionTimeoutInSeconds:I

    .line 68
    iput-boolean p8, p0, Lcom/facebook/internal/FetchedAppSettings;->automaticLoggingEnabled:Z

    .line 69
    iput-object p6, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginOptions:Ljava/util/EnumSet;

    .line 70
    iput-object p10, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginBookmarkIconURL:Ljava/lang/String;

    .line 71
    iput-object p11, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginMenuIconURL:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    .registers 7
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "featureName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 236
    :cond_d
    :goto_d
    return-object v2

    .line 228
    :cond_e
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    .line 229
    .local v1, "settings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v1, :cond_d

    .line 231
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getDialogConfigurations()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 232
    .local v0, "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    if-eqz v0, :cond_d

    .line 233
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    goto :goto_d
.end method


# virtual methods
.method public getAutomaticLoggingEnabled()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->automaticLoggingEnabled:Z

    return v0
.end method

.method public getCustomTabsEnabled()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->customTabsEnabled:Z

    return v0
.end method

.method public getDialogConfigurations()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->dialogConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public getErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

    return-object v0
.end method

.method public getNuxContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNuxEnabled()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxEnabled:Z

    return v0
.end method

.method public getSessionTimeoutInSeconds()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/facebook/internal/FetchedAppSettings;->sessionTimeoutInSeconds:I

    return v0
.end method

.method public getSmartLoginBookmarkIconURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginBookmarkIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartLoginMenuIconURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginMenuIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartLoginOptions()Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginOptions:Ljava/util/EnumSet;

    return-object v0
.end method

.method public supportsImplicitLogging()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging:Z

    return v0
.end method

###### Class com.facebook.internal.FetchedAppSettings.DialogFeatureConfig (com.facebook.internal.FetchedAppSettings$DialogFeatureConfig)
.class public Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
.super Ljava/lang/Object;
.source "FetchedAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FetchedAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogFeatureConfig"
.end annotation


# static fields
.field private static final DIALOG_CONFIG_DIALOG_NAME_FEATURE_NAME_SEPARATOR:Ljava/lang/String; = "\\|"

.field private static final DIALOG_CONFIG_NAME_KEY:Ljava/lang/String; = "name"

.field private static final DIALOG_CONFIG_URL_KEY:Ljava/lang/String; = "url"

.field private static final DIALOG_CONFIG_VERSIONS_KEY:Ljava/lang/String; = "versions"


# instance fields
.field private dialogName:Ljava/lang/String;

.field private fallbackUrl:Landroid/net/Uri;

.field private featureName:Ljava/lang/String;

.field private featureVersionSpec:[I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V
    .registers 5
    .param p1, "dialogName"    # Ljava/lang/String;
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "fallbackUrl"    # Landroid/net/Uri;
    .param p4, "featureVersionSpec"    # [I

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->dialogName:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->featureName:Ljava/lang/String;

    .line 198
    iput-object p3, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->fallbackUrl:Landroid/net/Uri;

    .line 199
    iput-object p4, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->featureVersionSpec:[I

    .line 200
    return-void
.end method

.method public static parseDialogConfig(Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    .registers 12
    .param p0, "dialogConfigJSON"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    .line 121
    const-string v9, "name"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "dialogNameWithFeature":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 150
    :cond_d
    :goto_d
    return-object v8

    .line 126
    :cond_e
    const-string v9, "\\|"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "components":[Ljava/lang/String;
    array-length v9, v0

    const/4 v10, 0x2

    if-ne v9, v10, :cond_d

    .line 134
    const/4 v9, 0x0

    aget-object v1, v0, v9

    .line 135
    .local v1, "dialogName":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v4, v0, v9

    .line 136
    .local v4, "featureName":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 140
    const-string v8, "url"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "urlString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 142
    .local v3, "fallbackUri":Landroid/net/Uri;
    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3b

    .line 143
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 146
    :cond_3b
    const-string v8, "versions"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 148
    .local v7, "versionsJSON":Lorg/json/JSONArray;
    invoke-static {v7}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->parseVersionSpec(Lorg/json/JSONArray;)[I

    move-result-object v5

    .line 150
    .local v5, "featureVersionSpec":[I
    new-instance v8, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    invoke-direct {v8, v1, v4, v3, v5}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V

    goto :goto_d
.end method

.method private static parseVersionSpec(Lorg/json/JSONArray;)[I
    .registers 9
    .param p0, "versionsJSON"    # Lorg/json/JSONArray;

    .prologue
    const/4 v7, -0x1

    .line 158
    const/4 v4, 0x0

    .line 159
    .local v4, "versionSpec":[I
    if-eqz p0, :cond_2e

    .line 160
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 161
    .local v2, "numVersions":I
    new-array v4, v2, [I

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v2, :cond_2e

    .line 164
    invoke-virtual {p0, v0, v7}, Lorg/json/JSONArray;->optInt(II)I

    move-result v3

    .line 165
    .local v3, "version":I
    if-ne v3, v7, :cond_21

    .line 168
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "versionString":Ljava/lang/String;
    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 171
    :try_start_1d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_20} :catch_26

    move-result v3

    .line 179
    .end local v5    # "versionString":Ljava/lang/String;
    :cond_21
    :goto_21
    aput v3, v4, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 172
    .restart local v5    # "versionString":Ljava/lang/String;
    :catch_26
    move-exception v1

    .line 173
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const-string v6, "FacebookSDK"

    invoke-static {v6, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 174
    const/4 v3, -0x1

    goto :goto_21

    .line 183
    .end local v0    # "i":I
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v2    # "numVersions":I
    .end local v3    # "version":I
    .end local v5    # "versionString":Ljava/lang/String;
    :cond_2e
    return-object v4
.end method


# virtual methods
.method public getDialogName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->dialogName:Ljava/lang/String;

    return-object v0
.end method

.method public getFallbackUrl()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->fallbackUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->featureName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionSpec()[I
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->featureVersionSpec:[I

    return-object v0
.end method
