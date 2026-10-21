###### Class com.ironsource.environment.ApplicationContext (com.ironsource.environment.ApplicationContext)
.class public Lcom/ironsource/environment/ApplicationContext;
.super Ljava/lang/Object;
.source "ApplicationContext.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppOrientation(Landroid/app/Activity;)I
    .registers 2
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method static getAppPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcom/ironsource/environment/ApplicationContext;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getApplicationVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    :try_start_0
    invoke-static {p0}, Lcom/ironsource/environment/ApplicationContext;->getAppPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 191
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    .line 195
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_6
    return-object v2

    .line 192
    :catch_7
    move-exception v0

    .line 193
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 195
    const-string v2, ""

    goto :goto_6
.end method

.method public static getDiskCacheDirPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 48
    .local v0, "internalFile":Ljava/io/File;
    if-eqz v0, :cond_b

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 51
    :cond_b
    return-object v1
.end method

.method public static getFirstInstallTime(Landroid/content/Context;)J
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    :try_start_0
    invoke-static {p0}, Lcom/ironsource/environment/ApplicationContext;->getAppPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 164
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    .line 168
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_6
    return-wide v2

    .line 165
    :catch_7
    move-exception v0

    .line 166
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 168
    const-wide/16 v2, -0x1

    goto :goto_6
.end method

.method public static getLastUpdateTime(Landroid/content/Context;)J
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    :try_start_0
    invoke-static {p0}, Lcom/ironsource/environment/ApplicationContext;->getAppPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 178
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    .line 182
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_6
    return-wide v2

    .line 179
    :catch_7
    move-exception v0

    .line 180
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 182
    const-wide/16 v2, -0x1

    goto :goto_6
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissions(Landroid/content/Context;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionsFromController"    # Lorg/json/JSONArray;

    .prologue
    .line 106
    const-string v0, "Granted"

    .line 107
    .local v0, "GRANTED":Ljava/lang/String;
    const-string v2, "Rejected"

    .line 108
    .local v2, "REJECTED":Ljava/lang/String;
    const-string v1, "notFoundInManifest"

    .line 110
    .local v1, "NOT_FOUND":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v3, "allPermissions":Lorg/json/JSONObject;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-lt v11, v12, :cond_71

    .line 113
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1000

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 116
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-nez v11, :cond_40

    .line 117
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_26
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v11, v11

    if-ge v5, v11, :cond_71

    .line 119
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v11, v11, v5

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_3e

    move-object v9, v0

    .line 121
    .local v9, "permissionStatus":Ljava/lang/String;
    :goto_34
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-virtual {v3, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .end local v9    # "permissionStatus":Ljava/lang/String;
    :cond_3e
    move-object v9, v2

    .line 119
    goto :goto_34

    .line 124
    .end local v5    # "index":I
    :cond_40
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 125
    .local v10, "permissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .restart local v5    # "index":I
    :goto_47
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_71

    .line 127
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, "permission":Ljava/lang/String;
    invoke-interface {v10, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 129
    .local v6, "indexOfPermission":I
    const/4 v11, -0x1

    if-eq v6, v11, :cond_69

    .line 130
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v11, v11, v6

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_67

    move-object v9, v0

    .line 131
    .restart local v9    # "permissionStatus":Ljava/lang/String;
    :goto_61
    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    .end local v9    # "permissionStatus":Ljava/lang/String;
    :goto_64
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_67
    move-object v9, v2

    .line 130
    goto :goto_61

    .line 133
    :cond_69
    invoke-virtual {v3, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_6c} :catch_6d

    goto :goto_64

    .line 137
    .end local v5    # "index":I
    .end local v6    # "indexOfPermission":I
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "permission":Ljava/lang/String;
    .end local v10    # "permissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_6d
    move-exception v4

    .line 138
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_71
    return-object v3
.end method

.method public static getPublisherApplicationVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string v0, ""

    .line 207
    .local v0, "result":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    .line 211
    :goto_d
    return-object v0

    .line 208
    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method public static isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, "res":I
    if-nez v0, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public static isValidPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionToCheck"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "isPermissionValid":Z
    const-string v4, ""

    .line 66
    .local v4, "permission":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 68
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 69
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v5, :cond_32

    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_32

    if-nez v2, :cond_32

    .line 71
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, v5, v1

    .line 72
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2a} :catch_2e

    move-result v2

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 75
    .end local v1    # "i":I
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_2e
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_32
    return v2
.end method
