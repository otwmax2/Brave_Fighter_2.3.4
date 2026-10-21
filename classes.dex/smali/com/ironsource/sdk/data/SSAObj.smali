###### Class com.ironsource.sdk.data.SSAObj (com.ironsource.sdk.data.SSAObj)
.class public Lcom/ironsource/sdk/data/SSAObj;
.super Ljava/lang/Object;
.source "SSAObj.java"


# instance fields
.field private mJsonObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/data/SSAObj;->setJsonObject(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method private fromJson(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "json"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 144
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    .line 145
    const/4 p1, 0x0

    .line 151
    .end local p1    # "json":Ljava/lang/Object;
    :cond_5
    :goto_5
    return-object p1

    .line 146
    .restart local p1    # "json":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_11

    .line 147
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/data/SSAObj;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    goto :goto_5

    .line 148
    .restart local p1    # "json":Ljava/lang/Object;
    :cond_11
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_5

    .line 149
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/data/SSAObj;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    goto :goto_5
.end method

.method private getMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/data/SSAObj;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static isEmptyObject(Lorg/json/JSONObject;)Z
    .registers 2
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private setJsonObject(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 27
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 31
    :goto_7
    return-void

    .line 28
    :catch_8
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    goto :goto_7
.end method

.method public static toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 74
    instance-of v4, p0, Ljava/util/Map;

    if-eqz v4, :cond_30

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .local v0, "json":Lorg/json/JSONObject;
    move-object v2, p0

    .line 76
    check-cast v2, Ljava/util/Map;

    .line 77
    .local v2, "map":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 78
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_14

    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/ironsource/sdk/data/SSAObj;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_14

    .line 83
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "map":Ljava/util/Map;
    :cond_30
    instance-of v4, p0, Ljava/lang/Iterable;

    if-eqz v4, :cond_4d

    .line 84
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 85
    .local v0, "json":Lorg/json/JSONArray;
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 86
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3f

    .end local v0    # "json":Lorg/json/JSONArray;
    .end local v3    # "value":Ljava/lang/Object;
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_4d
    move-object v0, p0

    .line 90
    .end local p0    # "object":Ljava/lang/Object;
    :cond_4e
    return-object v0
.end method

.method private toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 136
    .local v1, "keys":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ironsource/sdk/data/SSAObj;->fromJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 140
    .end local v0    # "key":Ljava/lang/String;
    :cond_21
    return-object v2
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/ironsource/sdk/data/SSAObj;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/data/SSAObj;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 49
    :goto_8
    return-object v1

    .line 48
    :catch_9
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 69
    :goto_6
    return v1

    .line 68
    :catch_7
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 57
    :goto_6
    return-object v1

    .line 56
    :catch_7
    move-exception v0

    .line 57
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/ironsource/sdk/data/SSAObj;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 111
    :goto_5
    return-void

    .line 109
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 118
    :goto_5
    return-void

    .line 116
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public toList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 5
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, "list":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 101
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/sdk/data/SSAObj;->fromJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 103
    :cond_1a
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    if-nez v0, :cond_7

    .line 123
    const-string v0, ""

    .line 125
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAObj;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
