###### Class com.unity3d.ads.cache.CacheDirectory (com.unity3d.ads.cache.CacheDirectory)
.class public Lcom/unity3d/ads/cache/CacheDirectory;
.super Ljava/lang/Object;
.source "CacheDirectory.java"


# static fields
.field private static final TEST_FILE_NAME:Ljava/lang/String; = "UnityAdsTest.txt"


# instance fields
.field private _cacheDirName:Ljava/lang/String;

.field private _cacheDirectory:Ljava/io/File;

.field private _initialized:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "cacheDirName"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_initialized:Z

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 21
    iput-object p1, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirName:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "newDir"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 63
    if-nez p1, :cond_5

    move-object v0, v1

    .line 74
    :cond_4
    :goto_4
    return-object v0

    .line 67
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    move-object v0, v1

    .line 74
    goto :goto_4
.end method

.method public getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    iget-boolean v3, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_initialized:Z

    if-eqz v3, :cond_7

    .line 26
    iget-object v3, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 58
    :goto_6
    return-object v3

    .line 28
    :cond_7
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_initialized:Z

    .line 30
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-le v3, v4, :cond_58

    .line 31
    const-string v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "externalCache":Ljava/io/File;
    :try_start_1d
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/unity3d/ads/cache/CacheDirectory;->createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_4c

    move-result-object v1

    .line 40
    :goto_27
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/cache/CacheDirectory;->testCacheDirectory(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 41
    iput-object v1, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unity Ads is using external cache directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    goto :goto_6

    .line 36
    :catch_4c
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Creating external cache directory failed"

    invoke-static {v3, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_27

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "externalCache":Ljava/io/File;
    :cond_53
    const-string v3, "External media not mounted"

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 50
    :cond_58
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 51
    .local v2, "internalCache":Ljava/io/File;
    invoke-virtual {p0, v2}, Lcom/unity3d/ads/cache/CacheDirectory;->testCacheDirectory(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 52
    iput-object v2, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unity Ads is using internal cache directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lcom/unity3d/ads/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    goto :goto_6

    .line 57
    :cond_81
    const-string v3, "Unity Ads failed to initialize cache directory"

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 58
    const/4 v3, 0x0

    goto/16 :goto_6
.end method

.method public testCacheDirectory(Ljava/io/File;)Z
    .registers 13
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 79
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_a

    .line 122
    :cond_9
    :goto_9
    return v8

    .line 84
    :cond_a
    :try_start_a
    const-string v9, "test"

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 85
    .local v3, "inData":[B
    array-length v9, v3

    new-array v4, v9, [B

    .line 86
    .local v4, "outData":[B
    new-instance v7, Ljava/io/File;

    const-string v9, "UnityAdsTest.txt"

    invoke-direct {v7, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .local v7, "testFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 89
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 90
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 91
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-nez v9, :cond_75

    .line 94
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to list files in directory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4a} :catch_4b

    goto :goto_9

    .line 120
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "inData":[B
    .end local v4    # "outData":[B
    .end local v7    # "testFile":Ljava/io/File;
    :catch_4b
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unity Ads exception while testing cache directory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_9

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "inData":[B
    .restart local v4    # "outData":[B
    .restart local v7    # "testFile":Ljava/io/File;
    :cond_75
    :try_start_75
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 99
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    array-length v10, v4

    invoke-virtual {v1, v4, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .line 100
    .local v5, "readCount":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 102
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_a5

    .line 103
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to delete testfile "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 107
    :cond_a5
    array-length v9, v4

    if-eq v5, v9, :cond_af

    .line 108
    const-string v9, "Read buffer size mismatch"

    invoke-static {v9}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 112
    :cond_af
    new-instance v6, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v6, v4, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 114
    .local v6, "result":Ljava/lang/String;
    const-string v9, "test"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c1

    .line 115
    const/4 v8, 0x1

    goto/16 :goto_9

    .line 117
    :cond_c1
    const-string v9, "Read buffer content mismatch"

    invoke-static {v9}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_c6} :catch_4b

    goto/16 :goto_9
.end method
