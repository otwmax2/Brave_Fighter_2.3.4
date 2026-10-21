###### Class com.unity3d.ads.misc.JsonStorage (com.unity3d.ads.misc.JsonStorage)
.class public Lcom/unity3d/ads/misc/JsonStorage;
.super Ljava/lang/Object;
.source "JsonStorage.java"


# instance fields
.field private _data:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized createObjectTree(Ljava/lang/String;)V
    .registers 8
    .param p1, "tree"    # Ljava/lang/String;

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "objects":[Ljava/lang/String;
    iget-object v3, p0, Lcom/unity3d/ads/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    .line 184
    .local v3, "parentObject":Lorg/json/JSONObject;
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_38

    move-result v4

    if-nez v4, :cond_11

    .line 207
    :cond_f
    monitor-exit p0

    return-void

    .line 188
    :cond_11
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_12
    :try_start_12
    array-length v4, v2

    if-ge v1, v4, :cond_f

    .line 189
    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_38

    move-result v4

    if-nez v4, :cond_3b

    .line 191
    :try_start_1d
    aget-object v4, v2, v1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 192
    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_31
    .catchall {:try_start_1d .. :try_end_2d} :catchall_38

    move-result-object v3

    .line 188
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 194
    :catch_31
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    :try_start_32
    const-string v4, "Couldn\'t create new JSONObject"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_38

    goto :goto_2e

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "idx":I
    .end local v2    # "objects":[Ljava/lang/String;
    .end local v3    # "parentObject":Lorg/json/JSONObject;
    :catchall_38
    move-exception v4

    monitor-exit p0

    throw v4

    .line 200
    .restart local v1    # "idx":I
    .restart local v2    # "objects":[Ljava/lang/String;
    .restart local v3    # "parentObject":Lorg/json/JSONObject;
    :cond_3b
    :try_start_3b
    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_40} :catch_42
    .catchall {:try_start_3b .. :try_end_40} :catchall_38

    move-result-object v3

    goto :goto_2e

    .line 202
    :catch_42
    move-exception v0

    .line 203
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_43
    const-string v4, "Couldn\'t get existing JSONObject"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_38

    goto :goto_2e
.end method

.method private declared-synchronized findObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 155
    monitor-enter p0

    :try_start_2
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "objects":[Ljava/lang/String;
    iget-object v3, p0, Lcom/unity3d/ads/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    .line 158
    .local v3, "parentObject":Lorg/json/JSONObject;
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_42

    move-result v5

    if-nez v5, :cond_13

    move-object v4, v3

    .line 177
    :cond_11
    :goto_11
    monitor-exit p0

    return-object v4

    .line 162
    :cond_13
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_14
    :try_start_14
    array-length v5, v2

    if-ge v1, v5, :cond_45

    .line 163
    aget-object v5, v2, v1

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_42

    move-result v5

    if-eqz v5, :cond_11

    .line 165
    :try_start_1f
    aget-object v5, v2, v1

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_28
    .catchall {:try_start_1f .. :try_end_24} :catchall_42

    move-result-object v3

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 167
    :catch_28
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    :try_start_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t read JSONObject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_42

    goto :goto_11

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "idx":I
    .end local v2    # "objects":[Ljava/lang/String;
    .end local v3    # "parentObject":Lorg/json/JSONObject;
    :catchall_42
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1    # "idx":I
    .restart local v2    # "objects":[Ljava/lang/String;
    .restart local v3    # "parentObject":Lorg/json/JSONObject;
    :cond_45
    move-object v4, v3

    .line 177
    goto :goto_11
.end method

.method private declared-synchronized getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "tree"    # Ljava/lang/String;

    .prologue
    .line 211
    monitor-enter p0

    :try_start_1
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "objects":[Ljava/lang/Object;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 213
    .local v2, "tmpObs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 214
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 215
    const-string v3, "."

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_25

    move-result-object v1

    .line 217
    .local v1, "parentObject":Ljava/lang/String;
    monitor-exit p0

    return-object v1

    .line 211
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "parentObject":Ljava/lang/String;
    .end local v2    # "tmpObs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_25
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized clearData()V
    .registers 2

    .prologue
    .line 43
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/unity3d/ads/misc/JsonStorage;->_data:Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(Ljava/lang/String;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 138
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcom/unity3d/ads/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    if-nez v3, :cond_d

    .line 139
    const-string v3, "Data is NULL, readStorage probably not called"

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_38

    .line 151
    :cond_b
    :goto_b
    monitor-exit p0

    return v2

    .line 143
    :cond_d
    :try_start_d
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "objects":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/unity3d/ads/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/unity3d/ads/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_b

    .line 145
    invoke-direct {p0, p1}, Lcom/unity3d/ads/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/unity3d/ads/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 147
    .local v1, "parentObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_b

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_38

    move-result-object v3

    if-eqz v3, :cond_b

    .line 148
    const/4 v2, 0x1

    goto :goto_b

    .line 138
    .end local v0    # "objects":[Ljava/lang/String;
    .end local v1    # "parentObject":Lorg/json/JSONObject;
    :catchall_38
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 76
    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Lcom/unity3d/ads/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    if-nez v4, :cond_d

    .line 77
    const-string v4, "Data is NULL, readStorage probably not called"

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_48

    .line 100
    :cond_b
    :goto_b
    monitor-exit p0

    return-object v1

    .line 81
    :cond_d
    :try_start_d
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "objects":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/unity3d/ads/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/unity3d/ads/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_b

    .line 83
    invoke-direct {p0, p1}, Lcom/unity3d/ads/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/unity3d/ads/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_48

    .line 85
    .local v3, "parentObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_b

    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, "o":Ljava/lang/Object;
    :try_start_2c
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 89
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3f} :catch_41
    .catchall {:try_start_2c .. :try_end_3f} :catchall_48

    move-result-object v1

    goto :goto_b

    .line 92
    :catch_41
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    :try_start_42
    const-string v4, "Error getting data"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_48

    goto :goto_b

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "objects":[Ljava/lang/String;
    .end local v3    # "parentObject":Lorg/json/JSONObject;
    :catchall_48
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getData()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 32
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/ads/misc/JsonStorage;->_data:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeys(Ljava/lang/String;Z)Ljava/util/List;
    .registers 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/json/JSONObject;

    if-eqz v6, :cond_77

    .line 105
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 107
    .local v3, "parentObject":Lorg/json/JSONObject;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_78

    .line 111
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    .local v0, "currentKey":Ljava/lang/String;
    const/4 v5, 0x0

    .line 117
    .local v5, "subkeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_44

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lcom/unity3d/ads/misc/JsonStorage;->getKeys(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    .line 121
    :cond_44
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    if-eqz v5, :cond_1a

    .line 124
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 125
    .local v4, "subkey":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catchall {:try_start_1 .. :try_end_73} :catchall_74

    goto :goto_4d

    .line 104
    .end local v0    # "currentKey":Ljava/lang/String;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "parentObject":Lorg/json/JSONObject;
    .end local v4    # "subkey":Ljava/lang/String;
    .end local v5    # "subkeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_74
    move-exception v6

    monitor-exit p0

    throw v6

    .line 134
    :cond_77
    const/4 v2, 0x0

    :cond_78
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized hasData()Z
    .registers 2

    .prologue
    .line 36
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/ads/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/unity3d/ads/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result v0

    if-lez v0, :cond_10

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 36
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initData()Z
    .registers 2

    .prologue
    .line 19
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/ads/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    if-nez v0, :cond_f

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/misc/JsonStorage;->_data:Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_11

    .line 21
    const/4 v0, 0x1

    .line 24
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 19
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 47
    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Lcom/unity3d/ads/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    if-eqz v4, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_10

    if-nez p2, :cond_3e

    .line 48
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storage not properly initialized or incorrect parameters:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/unity3d/ads/misc/JsonStorage;->_data:Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_2 .. :try_end_3c} :catchall_74

    .line 72
    :goto_3c
    monitor-exit p0

    return v3

    .line 52
    :cond_3e
    :try_start_3e
    invoke-direct {p0, p1}, Lcom/unity3d/ads/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/unity3d/ads/misc/JsonStorage;->createObjectTree(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/unity3d/ads/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/unity3d/ads/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_77

    .line 55
    invoke-direct {p0, p1}, Lcom/unity3d/ads/misc/JsonStorage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/unity3d/ads/misc/JsonStorage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 56
    .local v2, "parentObject":Lorg/json/JSONObject;
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_3e .. :try_end_60} :catchall_74

    move-result-object v1

    .line 58
    .local v1, "objects":[Ljava/lang/String;
    if-eqz v2, :cond_6b

    .line 60
    :try_start_63
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v1, v4

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_63 .. :try_end_6b} :catch_6d
    .catchall {:try_start_63 .. :try_end_6b} :catchall_74

    .line 72
    :cond_6b
    const/4 v3, 0x1

    goto :goto_3c

    .line 61
    :catch_6d
    move-exception v0

    .line 62
    .local v0, "e":Lorg/json/JSONException;
    :try_start_6e
    const-string v4, "Couldn\'t set value"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_74

    goto :goto_3c

    .line 47
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "objects":[Ljava/lang/String;
    .end local v2    # "parentObject":Lorg/json/JSONObject;
    :catchall_74
    move-exception v3

    monitor-exit p0

    throw v3

    .line 68
    :cond_77
    :try_start_77
    const-string v4, "Cannot set subvalue to an object that is not JSONObject"

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_74

    goto :goto_3c
.end method

.method public declared-synchronized setData(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/unity3d/ads/misc/JsonStorage;->_data:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 29
    monitor-exit p0

    return-void

    .line 28
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
