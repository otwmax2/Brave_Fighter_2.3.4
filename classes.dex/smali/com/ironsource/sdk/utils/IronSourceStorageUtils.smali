###### Class com.ironsource.sdk.utils.IronSourceStorageUtils (com.ironsource.sdk.utils.IronSourceStorageUtils)
.class public Lcom/ironsource/sdk/utils/IronSourceStorageUtils;
.super Ljava/lang/Object;
.source "IronSourceStorageUtils.java"


# static fields
.field private static final SSA_DIRECTORY_NAME:Ljava/lang/String; = "supersonicads"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildFilesMap(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 15
    .param p0, "cacheRootPath"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 292
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .local v0, "dir":Ljava/io/File;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 294
    .local v4, "jsnObj":Lorg/json/JSONObject;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 296
    .local v3, "fileList":[Ljava/io/File;
    if-eqz v3, :cond_6a

    .line 297
    array-length v8, v3

    move v6, v7

    :goto_13
    if-ge v6, v8, :cond_6a

    aget-object v2, v3, v6

    .line 300
    .local v2, "entry":Ljava/io/File;
    :try_start_17
    invoke-static {v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v5

    .line 302
    .local v5, "obj":Ljava/lang/Object;
    instance-of v9, v5, Lorg/json/JSONArray;

    if-eqz v9, :cond_2b

    .line 303
    const-string v9, "files"

    invoke-static {v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_28
    :goto_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 304
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_2b
    instance-of v9, v5, Lorg/json/JSONObject;

    if-eqz v9, :cond_28

    .line 305
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_3a} :catch_3b

    goto :goto_28

    .line 309
    .end local v5    # "obj":Ljava/lang/Object;
    :catch_3b
    move-exception v1

    .line 310
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 311
    new-instance v9, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v9}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    aget-object v12, v12, v7

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v9, v10}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_28

    .line 316
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "entry":Ljava/io/File;
    :cond_6a
    return-object v4
.end method

.method private static createRootDirectory(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const-string v1, "supersonicads"

    invoke-static {p0, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 134
    .local v0, "rootDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 138
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static deleteAllFiles(Ljava/lang/String;)V
    .registers 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 82
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_c

    .line 93
    :cond_b
    return-void

    .line 85
    :cond_c
    array-length v4, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v4, :cond_b

    aget-object v0, v1, v3

    .line 86
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteAllFiles(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 85
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 90
    :cond_25
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_22
.end method

.method public static declared-synchronized deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p0, "rootCacheDir"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 168
    const-class v5, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;

    monitor-enter v5

    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_35

    move-result v4

    if-nez v4, :cond_11

    .line 188
    :cond_f
    :goto_f
    monitor-exit v5

    return v3

    .line 174
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 176
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_f

    .line 180
    array-length v6, v2

    move v4, v3

    :goto_19
    if-ge v4, v6, :cond_f

    aget-object v1, v2, v4

    .line 181
    .local v1, "entry":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_35

    move-result v3

    goto :goto_f

    .line 180
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 168
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "entry":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :catchall_35
    move-exception v3

    monitor-exit v5

    throw v3
.end method

.method public static declared-synchronized deleteFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "cacheRootDir"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 239
    const-class v2, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;

    monitor-enter v2

    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .local v0, "folder":Ljava/io/File;
    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolderContentRecursive(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_19

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    :goto_15
    monitor-exit v2

    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_15

    .line 239
    .end local v0    # "folder":Ljava/io/File;
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static deleteFolderContentRecursive(Ljava/io/File;)Z
    .registers 7
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 249
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 250
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x1

    .line 251
    .local v2, "success":Z
    if-eqz v1, :cond_22

    .line 252
    array-length v4, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v4, :cond_22

    aget-object v0, v1, v3

    .line 253
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 254
    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolderContentRecursive(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 256
    :cond_18
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 257
    const/4 v2, 0x0

    .line 252
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 262
    .end local v0    # "file":Ljava/io/File;
    :cond_22
    return v2
.end method

.method public static getCachedFilesMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "cacheRootPath"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {p0, p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildFilesMap(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 275
    .local v1, "jsnObj":Lorg/json/JSONObject;
    :try_start_4
    const-string v2, "path"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_9} :catch_e

    .line 280
    :goto_9
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 276
    :catch_e
    move-exception v0

    .line 277
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9
.end method

.method private static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDirName"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 107
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 109
    .local v1, "externalCacheDir":Ljava/io/File;
    if-eqz v1, :cond_2d

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "cachePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .end local v1    # "externalCacheDir":Ljava/io/File;
    :goto_2c
    return-object v2

    .line 113
    .end local v0    # "cachePath":Ljava/lang/String;
    .restart local v1    # "externalCacheDir":Ljava/io/File;
    :cond_2d
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .restart local v0    # "cachePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2c

    .line 118
    .end local v0    # "cachePath":Ljava/lang/String;
    .end local v1    # "externalCacheDir":Ljava/io/File;
    :cond_4e
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "cachePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public static initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->createRootDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 31
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->refreshRootDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public static declared-synchronized isFileCached(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAFile;)Z
    .registers 11
    .param p0, "rootDirPath"    # Ljava/lang/String;
    .param p1, "ssaFile"    # Lcom/ironsource/sdk/data/SSAFile;

    .prologue
    const/4 v2, 0x0

    .line 200
    const-class v4, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;

    monitor-enter v4

    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_19
    if-ge v3, v6, :cond_36

    aget-object v1, v5, v3

    .line 205
    .local v1, "entry":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 206
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ironsource/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3b

    move-result v7

    if-eqz v7, :cond_38

    .line 207
    const/4 v2, 0x1

    .line 213
    .end local v1    # "entry":Ljava/io/File;
    :cond_36
    monitor-exit v4

    return v2

    .line 203
    .restart local v1    # "entry":Ljava/io/File;
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 200
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "entry":Ljava/io/File;
    :catchall_3b
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static isPathExist(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "cachRootPath"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 224
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private static looping(Ljava/io/File;)Ljava/lang/Object;
    .registers 14
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 329
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 330
    .local v0, "arr":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 333
    .local v5, "tempArr":Lorg/json/JSONArray;
    :try_start_b
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 334
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 386
    .end local v5    # "tempArr":Lorg/json/JSONArray;
    :goto_18
    return-object v5

    .line 338
    .restart local v5    # "tempArr":Lorg/json/JSONArray;
    :cond_19
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_1f
    if-ge v7, v10, :cond_74

    aget-object v2, v9, v7

    .line 340
    .local v2, "fileEntry":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_37

    .line 341
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    :goto_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 343
    :cond_37
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 344
    const-string v11, "files"

    invoke-virtual {v0, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_43} :catch_44

    goto :goto_34

    .line 382
    .end local v2    # "fileEntry":Ljava/io/File;
    :catch_44
    move-exception v1

    .line 383
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 384
    new-instance v7, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v7}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-virtual {v7, v9}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .end local v1    # "e":Lorg/json/JSONException;
    :cond_72
    :goto_72
    move-object v5, v0

    .line 386
    goto :goto_18

    .line 350
    :cond_74
    :try_start_74
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 351
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getCampaignLastUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "lastUpdate":Ljava/lang/String;
    if-eqz v3, :cond_8d

    .line 353
    const-string v7, "lastUpdateTime"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    .end local v3    # "lastUpdate":Ljava/lang/String;
    :cond_8d
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "product":Ljava/lang/String;
    const/4 v6, 0x0

    .line 360
    .local v6, "type":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    sget-object v7, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v7}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d5

    .line 361
    sget-object v6, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 368
    :cond_a8
    :goto_a8
    if-eqz v6, :cond_72

    .line 370
    const-string v7, "applicationUserId"

    invoke-static {v7}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 372
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getUniqueId(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/lang/String;

    move-result-object v9

    .line 371
    invoke-static {v9}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 370
    invoke-virtual {v0, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string v7, "applicationKey"

    invoke-static {v7}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 377
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getApplicationKey(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/lang/String;

    move-result-object v9

    .line 376
    invoke-static {v9}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 375
    invoke-virtual {v0, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_72

    .line 362
    :cond_d5
    sget-object v7, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v7}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e8

    .line 363
    sget-object v6, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    goto :goto_a8

    .line 364
    :cond_e8
    sget-object v7, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v7}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 365
    sget-object v6, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    :try_end_fa
    .catch Lorg/json/JSONException; {:try_start_74 .. :try_end_fa} :catch_44

    goto :goto_a8
.end method

.method public static makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "cacheRootDirectory"    # Ljava/lang/String;
    .param p1, "directory"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_13

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 152
    .local v1, "isCreated":Z
    if-nez v1, :cond_13

    .line 153
    const/4 v2, 0x0

    .line 156
    .end local v1    # "isCreated":Z
    :goto_12
    return-object v2

    :cond_13
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_12
.end method

.method private static refreshRootDirectory(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getCurrentSDKVersion()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "storedVerison":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "sdkVer":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_70

    .line 52
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setCurrentSDKVersion(Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 56
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_45

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "supersonicads"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteAllFiles(Ljava/lang/String;)V

    .line 60
    :cond_45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "supersonicads"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteAllFiles(Ljava/lang/String;)V

    .line 63
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->createRootDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .end local v0    # "cacheDir":Ljava/io/File;
    .local v1, "cacheDirectoryPath":Ljava/lang/String;
    :goto_6f
    return-object v1

    .line 65
    .end local v1    # "cacheDirectoryPath":Ljava/lang/String;
    :cond_70
    const-string v4, "supersonicads"

    invoke-static {p0, v4}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "cacheDirectoryPath":Ljava/lang/String;
    goto :goto_6f
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "fromName"    # Ljava/lang/String;
    .param p1, "toName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 397
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v1, "srcFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    return v2
.end method

.method public static saveFile([BLjava/lang/String;)I
    .registers 9
    .param p0, "data"    # [B
    .param p1, "destFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v5, 0x0

    .line 411
    .local v5, "totalBytesRead":I
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    .local v4, "tmpOutputFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 413
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 415
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const v6, 0x19000

    :try_start_13
    new-array v1, v6, [B

    .line 417
    .local v1, "buffer":[B
    :goto_15
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v2

    .local v2, "bytesRead":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_22

    .line 418
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_29

    .line 419
    add-int/2addr v5, v2

    goto :goto_15

    .line 422
    :cond_22
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 423
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 426
    return v5

    .line 422
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    :catchall_29
    move-exception v6

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 423
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    throw v6
.end method
