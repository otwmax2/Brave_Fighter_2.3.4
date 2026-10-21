###### Class com.tendcloud.tenddata.game.cb (com.tendcloud.tenddata.game.cb)
.class public Lcom/tendcloud/tenddata/game/cb;
.super Lcom/tendcloud/tenddata/game/bz;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    const-string v0, "G8"

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bz;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cb;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cb;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/cb;->i:I

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cb;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/cb;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/game/cb;->l:Ljava/util/Map;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cb;->l:Ljava/util/Map;

    if-nez v0, :cond_28

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cb;->l:Ljava/util/Map;

    :cond_28
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method protected d()Lorg/json/JSONObject;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "gameSessionID"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cb;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "userID"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cb;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "level"

    iget v2, p0, Lcom/tendcloud/tenddata/game/cb;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "gameServer"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cb;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "actionID"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cb;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "actionData"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/cb;->l:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_39} :catch_3b

    move-result-object v0

    :goto_3a
    return-object v0

    :catch_3b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3a
.end method

.method public e()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cb;->l:Ljava/util/Map;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cb;->k:Ljava/lang/String;

    return-object v0
.end method
