###### Class com.ironsource.mediationsdk.integration.IntegrationHelper (com.ironsource.mediationsdk.integration.IntegrationHelper)
.class public Lcom/ironsource/mediationsdk/integration/IntegrationHelper;
.super Ljava/lang/Object;
.source "IntegrationHelper.java"


# static fields
.field private static final SDK_COMPATIBILITY_VERSION:Ljava/lang/String; = "4.1"

.field private static final TAG:Ljava/lang/String; = "IntegrationHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIntegrationData(Landroid/app/Activity;Ljava/lang/String;)Lcom/ironsource/mediationsdk/IntegrationData;
    .registers 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 270
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 271
    .local v0, "c":Ljava/lang/Class;
    const-string v6, "getIntegrationData"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/app/Activity;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 272
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/IntegrationData;

    .line 273
    .local v4, "ret":Lcom/ironsource/mediationsdk/IntegrationData;
    const-string v6, "IntegrationHelper"

    const-string v7, "Adapter - VERIFIED"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_27} :catch_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_32

    .line 280
    .end local v0    # "c":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "ret":Lcom/ironsource/mediationsdk/IntegrationData;
    :goto_27
    return-object v4

    .line 275
    :catch_28
    move-exception v1

    .line 276
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    const-string v6, "IntegrationHelper"

    const-string v7, "Adapter - MISSING"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :goto_30
    move-object v4, v5

    .line 280
    goto :goto_27

    .line 277
    :catch_32
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "IntegrationHelper"

    const-string v7, "Adapter version - NOT VERIFIED"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method private static isActivitiesValid(Landroid/app/Activity;[Ljava/lang/String;)Z
    .registers 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "activities"    # [Ljava/lang/String;

    .prologue
    .line 197
    if-nez p1, :cond_4

    .line 198
    const/4 v5, 0x1

    .line 222
    :cond_3
    return v5

    .line 201
    :cond_4
    const-string v6, "IntegrationHelper"

    const-string v7, "*** Activities ***"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v5, 0x1

    .line 204
    .local v5, "ret":Z
    array-length v7, p1

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v7, :cond_3

    aget-object v0, p1, v6

    .line 206
    .local v0, "act":Ljava/lang/String;
    :try_start_12
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 207
    .local v4, "localClass":Ljava/lang/Class;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/high16 v9, 0x10000

    invoke-virtual {v8, v2, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 211
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_46

    .line 212
    const-string v8, "IntegrationHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - VERIFIED"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "localClass":Ljava/lang/Class;
    :goto_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 214
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "localClass":Ljava/lang/Class;
    :cond_46
    const/4 v5, 0x0

    .line 215
    const-string v8, "IntegrationHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - MISSING"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_5f} :catch_60

    goto :goto_43

    .line 217
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "localClass":Ljava/lang/Class;
    :catch_60
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v5, 0x0

    .line 219
    const-string v8, "IntegrationHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - MISSING"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private static isAdapterSdkValid(Ljava/lang/String;)Z
    .registers 6
    .param p0, "sdkName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 243
    if-nez p0, :cond_4

    .line 253
    :goto_3
    return v2

    .line 248
    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 249
    .local v0, "c":Ljava/lang/Class;
    const-string v3, "IntegrationHelper"

    const-string v4, "SDK - VERIFIED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_3

    .line 251
    .end local v0    # "c":Ljava/lang/Class;
    :catch_10
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "IntegrationHelper"

    const-string v3, "SDK - MISSING"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private static isAdapterValid(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "adapterName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 58
    :try_start_1
    const-string v6, "SupersonicAds"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 59
    const-string v6, "IntegrationHelper"

    const-string v7, "--------------- IronSource  --------------"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.ironsource.adapters."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Adapter"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "className":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->getIntegrationData(Landroid/app/Activity;Ljava/lang/String;)Lcom/ironsource/mediationsdk/IntegrationData;

    move-result-object v1

    .line 67
    .local v1, "data":Lcom/ironsource/mediationsdk/IntegrationData;
    if-nez v1, :cond_79

    move v4, v5

    .line 110
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "data":Lcom/ironsource/mediationsdk/IntegrationData;
    :cond_3e
    :goto_3e
    return v4

    .line 61
    :cond_3f
    const-string v6, "IntegrationHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--------------- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " --------------"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5d} :catch_5e

    goto :goto_10

    .line 108
    :catch_5e
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "IntegrationHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAdapterValid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 110
    goto :goto_3e

    .line 71
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "data":Lcom/ironsource/mediationsdk/IntegrationData;
    :cond_79
    :try_start_79
    const-string v6, "SupersonicAds"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_89

    invoke-static {v1}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->isAdapterVersionValid(Lcom/ironsource/mediationsdk/IntegrationData;)Z

    move-result v6

    if-nez v6, :cond_89

    move v4, v5

    .line 72
    goto :goto_3e

    .line 75
    :cond_89
    const/4 v4, 0x1

    .line 76
    .local v4, "ret":Z
    iget-object v6, v1, Lcom/ironsource/mediationsdk/IntegrationData;->sdkName:Ljava/lang/String;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->isAdapterSdkValid(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_93

    .line 77
    const/4 v4, 0x0

    .line 80
    :cond_93
    iget-object v6, v1, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->isActivitiesValid(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9c

    .line 81
    const/4 v4, 0x0

    .line 84
    :cond_9c
    iget-object v6, v1, Lcom/ironsource/mediationsdk/IntegrationData;->externalLibs:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->isExternalLibsValid(Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_a5

    .line 85
    const/4 v4, 0x0

    .line 88
    :cond_a5
    iget-object v6, v1, Lcom/ironsource/mediationsdk/IntegrationData;->broadcastReceivers:[Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->isBroadcastReceiversValid(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_ae

    .line 89
    const/4 v4, 0x0

    .line 92
    :cond_ae
    iget-object v6, v1, Lcom/ironsource/mediationsdk/IntegrationData;->services:[Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->isServicesValid(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b7

    .line 93
    const/4 v4, 0x0

    .line 96
    :cond_b7
    iget-boolean v6, v1, Lcom/ironsource/mediationsdk/IntegrationData;->validateWriteExternalStorage:Z

    if-eqz v6, :cond_3e

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-gt v6, v7, :cond_3e

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 98
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_da

    .line 99
    const-string v6, "IntegrationHelper"

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE - VERIFIED"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 101
    :cond_da
    const-string v6, "IntegrationHelper"

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE - MISSING"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_e1} :catch_5e

    .line 102
    const/4 v4, 0x0

    goto/16 :goto_3e
.end method

.method private static isAdapterVersionValid(Lcom/ironsource/mediationsdk/IntegrationData;)Z
    .registers 4
    .param p0, "data"    # Lcom/ironsource/mediationsdk/IntegrationData;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->version:Ljava/lang/String;

    const-string v1, "4.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 259
    const-string v0, "IntegrationHelper"

    const-string v1, "Adapter version - VERIFIED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x1

    .line 264
    :goto_12
    return v0

    .line 262
    :cond_13
    const-string v0, "IntegrationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IntegrationData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IntegrationData;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is incompatible with SDK version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", please update your adapter to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "4.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static isBroadcastReceiversValid(Landroid/app/Activity;[Ljava/lang/String;)Z
    .registers 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "broadcastReceivers"    # [Ljava/lang/String;

    .prologue
    .line 115
    if-nez p1, :cond_4

    .line 116
    const/4 v6, 0x1

    .line 142
    :cond_3
    return v6

    .line 119
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 120
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const-string v7, "IntegrationHelper"

    const-string v8, "*** Broadcast Receivers ***"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v6, 0x1

    .line 123
    .local v6, "ret":Z
    array-length v8, p1

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v8, :cond_3

    aget-object v0, p1, v7

    .line 125
    .local v0, "broadcastReceiver":Ljava/lang/String;
    :try_start_16
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 126
    .local v4, "localClass":Ljava/lang/Class;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000

    invoke-virtual {v5, v2, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 130
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_46

    .line 131
    const-string v9, "IntegrationHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - VERIFIED"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "localClass":Ljava/lang/Class;
    :goto_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 133
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "localClass":Ljava/lang/Class;
    :cond_46
    const/4 v6, 0x0

    .line 134
    const-string v9, "IntegrationHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - MISSING"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_5f} :catch_60

    goto :goto_43

    .line 136
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "localClass":Ljava/lang/Class;
    :catch_60
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v6, 0x0

    .line 138
    const-string v9, "IntegrationHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - MISSING"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private static isExternalLibsValid(Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "externalLibs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez p0, :cond_4

    .line 178
    const/4 v3, 0x1

    .line 193
    :cond_3
    return v3

    .line 181
    :cond_4
    const-string v4, "IntegrationHelper"

    const-string v5, "*** External Libraries ***"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v3, 0x1

    .line 184
    .local v3, "ret":Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 186
    .local v2, "externalLibrary":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1c
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 187
    .local v0, "c":Ljava/lang/Class;
    const-string v6, "IntegrationHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " - VERIFIED"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_40} :catch_41

    goto :goto_10

    .line 188
    .end local v0    # "c":Ljava/lang/Class;
    :catch_41
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v3, 0x0

    .line 190
    const-string v6, "IntegrationHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " - MISSING"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private static isServicesValid(Landroid/app/Activity;[Ljava/lang/String;)Z
    .registers 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "services"    # [Ljava/lang/String;

    .prologue
    .line 146
    if-nez p1, :cond_4

    .line 147
    const/4 v5, 0x1

    .line 173
    :cond_3
    return v5

    .line 150
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 151
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const-string v7, "IntegrationHelper"

    const-string v8, "*** Services ***"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v5, 0x1

    .line 154
    .local v5, "ret":Z
    array-length v8, p1

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v8, :cond_3

    aget-object v6, p1, v7

    .line 156
    .local v6, "service":Ljava/lang/String;
    :try_start_16
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 157
    .local v3, "localClass":Ljava/lang/Class;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000

    invoke-virtual {v4, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 161
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_46

    .line 162
    const-string v9, "IntegrationHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - VERIFIED"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "localClass":Ljava/lang/Class;
    :goto_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 164
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "localClass":Ljava/lang/Class;
    :cond_46
    const/4 v5, 0x0

    .line 165
    const-string v9, "IntegrationHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - MISSING"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_5f} :catch_60

    goto :goto_43

    .line 167
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "localClass":Ljava/lang/Class;
    :catch_60
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v5, 0x0

    .line 169
    const-string v9, "IntegrationHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - MISSING"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private static validateGooglePlayServices(Landroid/app/Activity;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 284
    const-string v1, "com.google.android.gms.version"

    .line 285
    .local v1, "mGooglePlayServicesMetaData":Ljava/lang/String;
    const-string v0, "Google Play Services"

    .line 287
    .local v0, "mGooglePlayServices":Ljava/lang/String;
    new-instance v2, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$1;

    invoke-direct {v2, p0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$1;-><init>(Landroid/app/Activity;)V

    .line 313
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 314
    return-void
.end method

.method public static validateIntegration(Landroid/app/Activity;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 32
    const-string v3, "IntegrationHelper"

    const-string v4, "Verifying Integration:"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validatePermissions(Landroid/app/Activity;)V

    .line 35
    const/16 v3, 0xf

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "SupersonicAds"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "AdColony"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "AppLovin"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "Chartboost"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "HyprMX"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "UnityAds"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "Vungle"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "InMobi"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "Facebook"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "Fyber"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "MediaBrix"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "Tapjoy"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string v4, "AdMob"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const-string v4, "MoPub"

    aput-object v4, v1, v3

    const/16 v3, 0xe

    const-string v4, "Maio"

    aput-object v4, v1, v3

    .line 36
    .local v1, "adapters":[Ljava/lang/String;
    array-length v3, v1

    :goto_61
    if-ge v2, v3, :cond_cb

    aget-object v0, v1, v2

    .line 37
    .local v0, "adapter":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->isAdapterValid(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 38
    const-string v4, "SupersonicAds"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 39
    const-string v4, "IntegrationHelper"

    const-string v5, ">>>> IronSource - VERIFIED"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 41
    :cond_7d
    const-string v4, "IntegrationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - VERIFIED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 44
    :cond_9c
    const-string v4, "SupersonicAds"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 45
    const-string v4, "IntegrationHelper"

    const-string v5, ">>>> IronSource - NOT VERIFIED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 47
    :cond_ac
    const-string v4, "IntegrationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - NOT VERIFIED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 52
    .end local v0    # "adapter":Ljava/lang/String;
    :cond_cb
    invoke-static {p0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateGooglePlayServices(Landroid/app/Activity;)V

    .line 53
    return-void
.end method

.method private static validatePermissions(Landroid/app/Activity;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 226
    const-string v1, "IntegrationHelper"

    const-string v2, "*** Permissions ***"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 229
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_32

    .line 230
    const-string v1, "IntegrationHelper"

    const-string v2, "android.permission.INTERNET - VERIFIED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_1e
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3a

    .line 236
    const-string v1, "IntegrationHelper"

    const-string v2, "android.permission.ACCESS_NETWORK_STATE - VERIFIED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_31
    return-void

    .line 232
    :cond_32
    const-string v1, "IntegrationHelper"

    const-string v2, "android.permission.INTERNET - MISSING"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 238
    :cond_3a
    const-string v1, "IntegrationHelper"

    const-string v2, "android.permission.ACCESS_NETWORK_STATE - MISSING"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

###### Class com.ironsource.mediationsdk.integration.IntegrationHelper.AnonymousClass1 (com.ironsource.mediationsdk.integration.IntegrationHelper$1)
.class final Lcom/ironsource/mediationsdk/integration/IntegrationHelper$1;
.super Ljava/lang/Thread;
.source "IntegrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateGooglePlayServices(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 287
    iput-object p1, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 291
    :try_start_0
    const-string v6, "IntegrationHelper"

    const-string v7, "--------------- Google Play Services --------------"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v6, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 295
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 296
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 298
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "com.google.android.gms.version"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 300
    .local v3, "exists":Z
    if-eqz v3, :cond_59

    .line 301
    const-string v6, "IntegrationHelper"

    const-string v7, "Google Play Services - VERIFIED"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "gaid":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_58

    .line 304
    const-string v6, "IntegrationHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GAID is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (use this for test devices)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "exists":Z
    .end local v4    # "gaid":Ljava/lang/String;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_58
    :goto_58
    return-void

    .line 306
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "exists":Z
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_59
    const-string v6, "IntegrationHelper"

    const-string v7, "Google Play Services - MISSING"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_61

    goto :goto_58

    .line 308
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "exists":Z
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_61
    move-exception v2

    .line 309
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "IntegrationHelper"

    const-string v7, "Google Play Services - MISSING"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method
