###### Class com.unity3d.ads.metadata.MetaData (com.unity3d.ads.metadata.MetaData)
.class public Lcom/unity3d/ads/metadata/MetaData;
.super Lcom/unity3d/ads/misc/JsonStorage;
.source "MetaData.java"


# instance fields
.field private _category:Ljava/lang/String;

.field protected _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/unity3d/ads/misc/JsonStorage;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/metadata/MetaData;->_context:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private getActualKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 86
    move-object v0, p1

    .line 87
    .local v0, "finalKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/unity3d/ads/metadata/MetaData;->getCategory()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unity3d/ads/metadata/MetaData;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_22
    return-object v0
.end method


# virtual methods
.method public commit()V
    .registers 10

    .prologue
    .line 55
    iget-object v7, p0, Lcom/unity3d/ads/metadata/MetaData;->_context:Landroid/content/Context;

    invoke-static {v7}, Lcom/unity3d/ads/device/StorageManager;->init(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 56
    sget-object v7, Lcom/unity3d/ads/device/StorageManager$StorageType;->PUBLIC:Lcom/unity3d/ads/device/StorageManager$StorageType;

    invoke-static {v7}, Lcom/unity3d/ads/device/StorageManager;->getStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Lcom/unity3d/ads/device/Storage;

    move-result-object v5

    .line 58
    .local v5, "storage":Lcom/unity3d/ads/device/Storage;
    invoke-virtual {p0}, Lcom/unity3d/ads/metadata/MetaData;->getData()Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_69

    if-eqz v5, :cond_69

    .line 59
    invoke-virtual {p0}, Lcom/unity3d/ads/metadata/MetaData;->getData()Lorg/json/JSONObject;

    move-result-object v1

    .line 61
    .local v1, "data":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 62
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 63
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 64
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/unity3d/ads/metadata/MetaData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 65
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {v5, v3}, Lcom/unity3d/ads/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_52

    invoke-virtual {v5, v3}, Lcom/unity3d/ads/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/json/JSONObject;

    if-eqz v7, :cond_52

    invoke-virtual {p0, v3}, Lcom/unity3d/ads/metadata/MetaData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/json/JSONObject;

    if-eqz v7, :cond_52

    .line 67
    :try_start_44
    move-object v0, v6

    check-cast v0, Lorg/json/JSONObject;

    move-object v7, v0

    invoke-virtual {v5, v3}, Lcom/unity3d/ads/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    invoke-static {v7, v8}, Lcom/unity3d/ads/misc/Utilities;->mergeJsonObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_51} :catch_56

    move-result-object v6

    .line 73
    .end local v6    # "value":Ljava/lang/Object;
    :cond_52
    :goto_52
    invoke-virtual {v5, v3, v6}, Lcom/unity3d/ads/device/Storage;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1e

    .line 69
    .restart local v6    # "value":Ljava/lang/Object;
    :catch_56
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "Exception merging JSONs"

    invoke-static {v7, v2}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_52

    .line 76
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_5d
    invoke-virtual {v5}, Lcom/unity3d/ads/device/Storage;->writeStorage()Z

    .line 77
    sget-object v7, Lcom/unity3d/ads/device/StorageEvent;->SET:Lcom/unity3d/ads/device/StorageEvent;

    invoke-virtual {p0}, Lcom/unity3d/ads/metadata/MetaData;->getData()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/unity3d/ads/device/Storage;->sendEvent(Lcom/unity3d/ads/device/StorageEvent;Ljava/lang/Object;)V

    .line 83
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "storage":Lcom/unity3d/ads/device/Storage;
    :cond_69
    :goto_69
    return-void

    .line 81
    :cond_6a
    const-string v7, "Unity Ads could not commit metadata due to storage error"

    invoke-static {v7}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_69
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/unity3d/ads/metadata/MetaData;->_category:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/unity3d/ads/metadata/MetaData;->initData()Z

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "success":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/unity3d/ads/metadata/MetaData;->getActualKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1, p2}, Lcom/unity3d/ads/misc/JsonStorage;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/unity3d/ads/metadata/MetaData;->getActualKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-super {p0, v1, v2}, Lcom/unity3d/ads/misc/JsonStorage;->set(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_4a

    move-result v1

    if-eqz v1, :cond_48

    .line 37
    const/4 v0, 0x1

    .line 40
    :cond_48
    monitor-exit p0

    return v0

    .line 33
    .end local v0    # "success":Z
    :catchall_4a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/unity3d/ads/metadata/MetaData;->_category:Ljava/lang/String;

    .line 26
    return-void
.end method

.method protected declared-synchronized setRaw(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/unity3d/ads/metadata/MetaData;->initData()Z

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "success":Z
    invoke-direct {p0, p1}, Lcom/unity3d/ads/metadata/MetaData;->getActualKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1, p2}, Lcom/unity3d/ads/misc/JsonStorage;->set(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_12

    move-result v1

    if-eqz v1, :cond_10

    .line 48
    const/4 v0, 0x1

    .line 51
    :cond_10
    monitor-exit p0

    return v0

    .line 44
    .end local v0    # "success":Z
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method
