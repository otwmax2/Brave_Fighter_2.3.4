###### Class com.ironsource.mediationsdk.server.ServerURL (com.ironsource.mediationsdk.server.ServerURL)
.class public Lcom/ironsource/mediationsdk/server/ServerURL;
.super Ljava/lang/Object;
.source "ServerURL.java"


# static fields
.field private static final AMPERSAND:Ljava/lang/String; = "&"

.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final APPLICATION_KEY:Ljava/lang/String; = "applicationKey"

.field private static final APPLICATION_USER_ID:Ljava/lang/String; = "applicationUserId"

.field private static final APPLICATION_VERSION:Ljava/lang/String; = "appVer"

.field private static BASE_URL_PREFIX:Ljava/lang/String; = null

.field private static BASE_URL_SUFFIX:Ljava/lang/String; = null

.field private static final CONNECTION_TYPE:Ljava/lang/String; = "connType"

.field private static final DEVICE_MAKE:Ljava/lang/String; = "devMake"

.field private static final DEVICE_MODEL:Ljava/lang/String; = "devModel"

.field private static final EQUAL:Ljava/lang/String; = "="

.field private static final GAID:Ljava/lang/String; = "advId"

.field private static final IMPRESSION:Ljava/lang/String; = "impression"

.field private static final MEDIATION_TYPE:Ljava/lang/String; = "mt"

.field private static final OS_VERSION:Ljava/lang/String; = "osVer"

.field private static final PLACEMENT:Ljava/lang/String; = "placementId"

.field private static final PLATFORM_KEY:Ljava/lang/String; = "platform"

.field private static final PLUGIN_FW_VERSION:Ljava/lang/String; = "plugin_fw_v"

.field private static final PLUGIN_TYPE:Ljava/lang/String; = "pluginType"

.field private static final PLUGIN_VERSION:Ljava/lang/String; = "pluginVersion"

.field private static final SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field private static final SERR:Ljava/lang/String; = "serr"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string v0, "https://init.supersonicads.com/sdk/v"

    sput-object v0, Lcom/ironsource/mediationsdk/server/ServerURL;->BASE_URL_PREFIX:Ljava/lang/String;

    .line 21
    const-string v0, "?request="

    sput-object v0, Lcom/ironsource/mediationsdk/server/ServerURL;->BASE_URL_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createURLParams(Ljava/util/Vector;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "array":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v1, ""

    .line 111
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 112
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2b

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    goto :goto_6

    .line 116
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_55
    return-object v1
.end method

.method private static getBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ironsource/mediationsdk/server/ServerURL;->BASE_URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/server/ServerURL;->BASE_URL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPVProvidersURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "applicationUserId"    # Ljava/lang/String;
    .param p3, "gaid"    # Ljava/lang/String;
    .param p4, "mediationType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 47
    .local p5, "segmentParamVector":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 49
    .local v2, "array":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/Pair;

    const-string v11, "platform"

    const-string v12, "android"

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v10, Landroid/util/Pair;

    const-string v11, "applicationKey"

    invoke-direct {v10, v11, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v10, Landroid/util/Pair;

    const-string v11, "applicationUserId"

    move-object/from16 v0, p2

    invoke-direct {v10, v11, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v10, Landroid/util/Pair;

    const-string v11, "sdkVersion"

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSerr()I

    move-result v10

    if-nez v10, :cond_4d

    .line 54
    new-instance v10, Landroid/util/Pair;

    const-string v11, "serr"

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSerr()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_4d
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6d

    .line 56
    new-instance v10, Landroid/util/Pair;

    const-string v11, "pluginType"

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_6d
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginVersion()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8d

    .line 58
    new-instance v10, Landroid/util/Pair;

    const-string v11, "pluginVersion"

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginVersion()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_8d
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_ad

    .line 60
    new-instance v10, Landroid/util/Pair;

    const-string v11, "plugin_fw_v"

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_ad
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_bf

    .line 62
    new-instance v10, Landroid/util/Pair;

    const-string v11, "advId"

    move-object/from16 v0, p3

    invoke-direct {v10, v11, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_bf
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d1

    .line 65
    new-instance v10, Landroid/util/Pair;

    const-string v11, "mt"

    move-object/from16 v0, p4

    invoke-direct {v10, v11, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_d1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/ironsource/environment/ApplicationContext;->getPublisherApplicationVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "appVersion":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e9

    .line 69
    new-instance v10, Landroid/util/Pair;

    const-string v11, "appVer"

    invoke-direct {v10, v11, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_e9
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .local v8, "osVersion":I
    new-instance v10, Landroid/util/Pair;

    const-string v11, "osVer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 74
    .local v6, "make":Ljava/lang/String;
    new-instance v10, Landroid/util/Pair;

    const-string v11, "devMake"

    invoke-direct {v10, v11, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 76
    .local v7, "model":Ljava/lang/String;
    new-instance v10, Landroid/util/Pair;

    const-string v11, "devModel"

    invoke-direct {v10, v11, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {p0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "connection":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_134

    .line 80
    new-instance v10, Landroid/util/Pair;

    const-string v11, "connType"

    invoke-direct {v10, v11, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_134
    if-eqz p5, :cond_13b

    .line 83
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 85
    :cond_13b
    invoke-static {v2}, Lcom/ironsource/mediationsdk/server/ServerURL;->createURLParams(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "params":Ljava/lang/String;
    const-string v10, "C38FB23A402222A0C17D34A92F971D1F"

    invoke-static {v10, v9}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "encryptedParams":Ljava/lang/String;
    const-string v10, "UTF-8"

    invoke-static {v5, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "encodedEncryptedParams":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/ironsource/mediationsdk/server/ServerURL;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method private static getConnectionTypeForInit(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 124
    const-string v3, "WIFI"

    .line 125
    .local v3, "CONNECTION_WIFI":Ljava/lang/String;
    const-string v0, "MOBILE"

    .line 126
    .local v0, "CONNECTION_CELLULAR":Ljava/lang/String;
    const-string v2, "wifi"

    .line 127
    .local v2, "CONNECTION_TYPE_WIFI":Ljava/lang/String;
    const-string v1, "cellular"

    .line 129
    .local v1, "CONNECTION_TYPE_CELLULAR":Ljava/lang/String;
    if-nez p0, :cond_d

    .line 130
    const-string v6, "cellular"

    .line 146
    :goto_c
    return-object v6

    .line 133
    :cond_d
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 134
    .local v4, "cm":Landroid/net/ConnectivityManager;
    if-nez v4, :cond_1a

    .line 135
    const-string v6, "cellular"

    goto :goto_c

    .line 138
    :cond_1a
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 140
    .local v5, "info":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_35

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 141
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WIFI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 142
    const-string v6, "wifi"

    goto :goto_c

    .line 146
    :cond_35
    const-string v6, "cellular"

    goto :goto_c
.end method

.method public static getRequestURL(Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 8
    .param p0, "requestUrl"    # Ljava/lang/String;
    .param p1, "hit"    # Z
    .param p2, "placementId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 102
    .local v0, "array":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Landroid/util/Pair;

    const-string v3, "impression"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v2, Landroid/util/Pair;

    const-string v3, "placementId"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {v0}, Lcom/ironsource/mediationsdk/server/ServerURL;->createURLParams(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "params":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
