###### Class bolts.WebViewAppLinkResolver (bolts.WebViewAppLinkResolver)
.class public Lbolts/WebViewAppLinkResolver;
.super Ljava/lang/Object;
.source "WebViewAppLinkResolver.java"

# interfaces
.implements Lbolts/AppLinkResolver;


# static fields
.field private static final KEY_AL_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_ANDROID:Ljava/lang/String; = "android"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final KEY_CLASS:Ljava/lang/String; = "class"

.field private static final KEY_PACKAGE:Ljava/lang/String; = "package"

.field private static final KEY_SHOULD_FALLBACK:Ljava/lang/String; = "should_fallback"

.field private static final KEY_URL:Ljava/lang/String; = "url"

.field private static final KEY_WEB:Ljava/lang/String; = "web"

.field private static final KEY_WEB_URL:Ljava/lang/String; = "url"

.field private static final META_TAG_PREFIX:Ljava/lang/String; = "al"

.field private static final PREFER_HEADER:Ljava/lang/String; = "Prefer-Html-Meta-Tags"

.field private static final TAG_EXTRACTION_JAVASCRIPT:Ljava/lang/String; = "javascript:boltsWebViewAppLinkResolverResult.setValue((function() {  var metaTags = document.getElementsByTagName(\'meta\');  var results = [];  for (var i = 0; i < metaTags.length; i++) {    var property = metaTags[i].getAttribute(\'property\');    if (property && property.substring(0, \'al:\'.length) === \'al:\') {      var tag = { \"property\": metaTags[i].getAttribute(\'property\') };      if (metaTags[i].hasAttribute(\'content\')) {        tag[\'content\'] = metaTags[i].getAttribute(\'content\');      }      results.push(tag);    }  }  return JSON.stringify(results);})())"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lbolts/WebViewAppLinkResolver;->context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONArray;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0}, Lbolts/WebViewAppLinkResolver;->parseAlData(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Map;Landroid/net/Uri;)Lbolts/AppLink;
    .registers 3
    .param p0, "x0"    # Ljava/util/Map;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 40
    invoke-static {p0, p1}, Lbolts/WebViewAppLinkResolver;->makeAppLinkFromAlData(Ljava/util/Map;Landroid/net/Uri;)Lbolts/AppLink;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lbolts/WebViewAppLinkResolver;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lbolts/WebViewAppLinkResolver;

    .prologue
    .line 40
    iget-object v0, p0, Lbolts/WebViewAppLinkResolver;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Ljava/net/URLConnection;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0}, Lbolts/WebViewAppLinkResolver;->readFromConnection(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 232
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez v0, :cond_c

    .line 233
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 235
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_c
    return-object v0
.end method

.method private static makeAppLinkFromAlData(Ljava/util/Map;Landroid/net/Uri;)Lbolts/AppLink;
    .registers 32
    .param p1, "destination"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Lbolts/AppLink;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "appLinkDict":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v18, "targets":Ljava/util/List;, "Ljava/util/List<Lbolts/AppLink$Target;>;"
    const-string v26, "android"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 243
    .local v14, "platformMapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez v14, :cond_17

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 246
    :cond_17
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_f4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 249
    .local v13, "platformMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v26, "url"

    move-object/from16 v0, v26

    invoke-static {v13, v0}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 250
    .local v21, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v26, "package"

    move-object/from16 v0, v26

    invoke-static {v13, v0}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 251
    .local v12, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v26, "class"

    move-object/from16 v0, v26

    invoke-static {v13, v0}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 252
    .local v7, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v26, "app_name"

    move-object/from16 v0, v26

    invoke-static {v13, v0}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 254
    .local v5, "appNames":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v26

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v27

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v28

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v29

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 256
    .local v10, "maxCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_64
    if-ge v8, v10, :cond_1b

    .line 257
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-le v0, v8, :cond_e8

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map;

    const-string v27, "value"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    :goto_7c
    check-cast v26, Ljava/lang/String;

    move-object/from16 v20, v26

    check-cast v20, Ljava/lang/String;

    .line 259
    .local v20, "urlString":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lbolts/WebViewAppLinkResolver;->tryCreateUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 260
    .local v19, "url":Landroid/net/Uri;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-le v0, v8, :cond_eb

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map;

    const-string v27, "value"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    :goto_9a
    check-cast v26, Ljava/lang/String;

    move-object/from16 v11, v26

    check-cast v11, Ljava/lang/String;

    .line 262
    .local v11, "packageName":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-le v0, v8, :cond_ee

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map;

    const-string v27, "value"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    :goto_b4
    check-cast v26, Ljava/lang/String;

    move-object/from16 v6, v26

    check-cast v6, Ljava/lang/String;

    .line 264
    .local v6, "className":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-le v0, v8, :cond_f1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map;

    const-string v27, "value"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    :goto_ce
    check-cast v26, Ljava/lang/String;

    move-object/from16 v4, v26

    check-cast v4, Ljava/lang/String;

    .line 266
    .local v4, "appName":Ljava/lang/String;
    new-instance v17, Lbolts/AppLink$Target;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v6, v1, v4}, Lbolts/AppLink$Target;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 267
    .local v17, "target":Lbolts/AppLink$Target;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_64

    .line 257
    .end local v4    # "appName":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v17    # "target":Lbolts/AppLink$Target;
    .end local v19    # "url":Landroid/net/Uri;
    .end local v20    # "urlString":Ljava/lang/String;
    :cond_e8
    const/16 v26, 0x0

    goto :goto_7c

    .line 260
    .restart local v19    # "url":Landroid/net/Uri;
    .restart local v20    # "urlString":Ljava/lang/String;
    :cond_eb
    const/16 v26, 0x0

    goto :goto_9a

    .line 262
    .restart local v11    # "packageName":Ljava/lang/String;
    :cond_ee
    const/16 v26, 0x0

    goto :goto_b4

    .line 264
    .restart local v6    # "className":Ljava/lang/String;
    :cond_f1
    const/16 v26, 0x0

    goto :goto_ce

    .line 271
    .end local v5    # "appNames":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "classes":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v8    # "i":I
    .end local v10    # "maxCount":I
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v13    # "platformMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "url":Landroid/net/Uri;
    .end local v20    # "urlString":Ljava/lang/String;
    .end local v21    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_f4
    move-object/from16 v24, p1

    .line 272
    .local v24, "webUrl":Landroid/net/Uri;
    const-string v26, "web"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    .line 273
    .local v23, "webMapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v23, :cond_196

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_196

    .line 274
    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map;

    .line 275
    .local v22, "webMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v26, "url"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    .line 276
    .restart local v21    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v26, "should_fallback"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 278
    .local v16, "shouldFallbacks":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v16, :cond_174

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_174

    .line 279
    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map;

    const-string v27, "value"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 280
    .local v15, "shouldFallbackString":Ljava/lang/String;
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "no"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const-string v28, "false"

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const-string v28, "0"

    aput-object v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_174

    .line 281
    const/16 v24, 0x0

    .line 284
    .end local v15    # "shouldFallbackString":Ljava/lang/String;
    :cond_174
    if-eqz v24, :cond_196

    if-eqz v21, :cond_196

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_196

    .line 285
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map;

    const-string v27, "value"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 286
    .local v25, "webUrlString":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lbolts/WebViewAppLinkResolver;->tryCreateUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 289
    .end local v16    # "shouldFallbacks":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v21    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v22    # "webMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v25    # "webUrlString":Ljava/lang/String;
    :cond_196
    new-instance v26, Lbolts/AppLink;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lbolts/AppLink;-><init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V

    return-object v26
.end method

.method private static parseAlData(Lorg/json/JSONArray;)Ljava/util/Map;
    .registers 13
    .param p0, "dataArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
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
    const/4 v10, 0x0

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    .local v0, "al":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_8e

    .line 196
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 197
    .local v8, "tag":Lorg/json/JSONObject;
    const-string v9, "property"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, "name":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, "nameComponents":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v6, v9

    const-string v11, "al"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    .line 195
    :cond_28
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 202
    :cond_2b
    move-object v7, v0

    .line 203
    .local v7, "root":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_2d
    array-length v9, v6

    if-ge v4, v9, :cond_6c

    .line 205
    aget-object v9, v6, v4

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 207
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez v2, :cond_44

    .line 208
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .restart local v2    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    aget-object v9, v6, v4

    invoke-interface {v7, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_44
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    move-object v1, v9

    .line 212
    .local v1, "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_57
    if-eqz v1, :cond_5e

    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    if-ne v4, v9, :cond_66

    .line 213
    :cond_5e
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 214
    .restart local v1    # "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_66
    move-object v7, v1

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .end local v1    # "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6a
    move-object v1, v10

    .line 211
    goto :goto_57

    .line 218
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_6c
    const-string v9, "content"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 219
    const-string v9, "content"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 220
    const-string v9, "value"

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 222
    :cond_82
    const-string v9, "value"

    const-string v11, "content"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 226
    .end local v4    # "j":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "nameComponents":[Ljava/lang/String;
    .end local v7    # "root":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "tag":Lorg/json/JSONObject;
    :cond_8e
    return-object v0
.end method

.method private static readFromConnection(Ljava/net/URLConnection;)Ljava/lang/String;
    .registers 16
    .param p0, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    instance-of v13, p0, Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_2c

    move-object v4, p0

    .line 306
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 308
    .local v4, "httpConnection":Ljava/net/HttpURLConnection;
    :try_start_7
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_26

    move-result-object v12

    .line 316
    .end local v4    # "httpConnection":Ljava/net/HttpURLConnection;
    .local v12, "stream":Ljava/io/InputStream;
    :goto_b
    :try_start_b
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 317
    .local v8, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v13, 0x400

    new-array v1, v13, [B

    .line 318
    .local v1, "buffer":[B
    const/4 v11, 0x0

    .line 319
    .local v11, "read":I
    :goto_15
    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_31

    .line 320
    const/4 v13, 0x0

    invoke-virtual {v8, v1, v13, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_21

    goto :goto_15

    .line 339
    .end local v1    # "buffer":[B
    .end local v8    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "read":I
    :catchall_21
    move-exception v13

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    throw v13

    .line 309
    .end local v12    # "stream":Ljava/io/InputStream;
    .restart local v4    # "httpConnection":Ljava/net/HttpURLConnection;
    :catch_26
    move-exception v3

    .line 310
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    .restart local v12    # "stream":Ljava/io/InputStream;
    goto :goto_b

    .line 313
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v12    # "stream":Ljava/io/InputStream;
    :cond_2c
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .restart local v12    # "stream":Ljava/io/InputStream;
    goto :goto_b

    .line 322
    .restart local v1    # "buffer":[B
    .restart local v8    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "read":I
    :cond_31
    :try_start_31
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "charset":Ljava/lang/String;
    if-nez v2, :cond_62

    .line 324
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, "mimeType":Ljava/lang/String;
    const-string v13, ";"

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 326
    .local v10, "parts":[Ljava/lang/String;
    move-object v0, v10

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_44
    if-ge v5, v6, :cond_5e

    aget-object v9, v0, v5

    .line 327
    .local v9, "part":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 328
    const-string v13, "charset="

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6f

    .line 329
    const-string v13, "charset="

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    .end local v9    # "part":Ljava/lang/String;
    :cond_5e
    if-nez v2, :cond_62

    .line 334
    const-string v2, "UTF-8"

    .line 337
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v10    # "parts":[Ljava/lang/String;
    :cond_62
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-direct {v13, v14, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_31 .. :try_end_6b} :catchall_21

    .line 339
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    return-object v13

    .line 326
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v9    # "part":Ljava/lang/String;
    .restart local v10    # "parts":[Ljava/lang/String;
    :cond_6f
    add-int/lit8 v5, v5, 0x1

    goto :goto_44
.end method

.method private static tryCreateUrl(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    .line 293
    if-nez p0, :cond_4

    .line 294
    const/4 v0, 0x0

    .line 296
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
    .registers 7
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lbolts/Capture;

    invoke-direct {v0}, Lbolts/Capture;-><init>()V

    .line 84
    .local v0, "content":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/String;>;"
    new-instance v1, Lbolts/Capture;

    invoke-direct {v1}, Lbolts/Capture;-><init>()V

    .line 85
    .local v1, "contentType":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/String;>;"
    new-instance v2, Lbolts/WebViewAppLinkResolver$3;

    invoke-direct {v2, p0, p1, v0, v1}, Lbolts/WebViewAppLinkResolver$3;-><init>(Lbolts/WebViewAppLinkResolver;Landroid/net/Uri;Lbolts/Capture;Lbolts/Capture;)V

    invoke-static {v2}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lbolts/WebViewAppLinkResolver$2;

    invoke-direct {v3, p0, v1, p1, v0}, Lbolts/WebViewAppLinkResolver$2;-><init>(Lbolts/WebViewAppLinkResolver;Lbolts/Capture;Landroid/net/Uri;Lbolts/Capture;)V

    sget-object v4, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lbolts/WebViewAppLinkResolver$1;

    invoke-direct {v3, p0, p1}, Lbolts/WebViewAppLinkResolver$1;-><init>(Lbolts/WebViewAppLinkResolver;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2
.end method

###### Class bolts.WebViewAppLinkResolver.AnonymousClass1 (bolts.WebViewAppLinkResolver$1)
.class Lbolts/WebViewAppLinkResolver$1;
.super Ljava/lang/Object;
.source "WebViewAppLinkResolver.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/WebViewAppLinkResolver;->getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lorg/json/JSONArray;",
        "Lbolts/AppLink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/WebViewAppLinkResolver;

.field final synthetic val$url:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lbolts/WebViewAppLinkResolver;Landroid/net/Uri;)V
    .registers 3

    .prologue
    .line 178
    iput-object p1, p0, Lbolts/WebViewAppLinkResolver$1;->this$0:Lbolts/WebViewAppLinkResolver;

    iput-object p2, p0, Lbolts/WebViewAppLinkResolver$1;->val$url:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/AppLink;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONArray;",
            ">;)",
            "Lbolts/AppLink;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONArray;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2}, Lbolts/WebViewAppLinkResolver;->access$000(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v0

    .line 182
    .local v0, "alData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lbolts/WebViewAppLinkResolver$1;->val$url:Landroid/net/Uri;

    invoke-static {v0, v2}, Lbolts/WebViewAppLinkResolver;->access$100(Ljava/util/Map;Landroid/net/Uri;)Lbolts/AppLink;

    move-result-object v1

    .line 183
    .local v1, "appLink":Lbolts/AppLink;
    return-object v1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lbolts/WebViewAppLinkResolver$1;->then(Lbolts/Task;)Lbolts/AppLink;

    move-result-object v0

    return-object v0
.end method

###### Class bolts.WebViewAppLinkResolver.AnonymousClass2 (bolts.WebViewAppLinkResolver$2)
.class Lbolts/WebViewAppLinkResolver$2;
.super Ljava/lang/Object;
.source "WebViewAppLinkResolver.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/WebViewAppLinkResolver;->getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Lorg/json/JSONArray;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/WebViewAppLinkResolver;

.field final synthetic val$content:Lbolts/Capture;

.field final synthetic val$contentType:Lbolts/Capture;

.field final synthetic val$url:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lbolts/WebViewAppLinkResolver;Lbolts/Capture;Landroid/net/Uri;Lbolts/Capture;)V
    .registers 5

    .prologue
    .line 124
    iput-object p1, p0, Lbolts/WebViewAppLinkResolver$2;->this$0:Lbolts/WebViewAppLinkResolver;

    iput-object p2, p0, Lbolts/WebViewAppLinkResolver$2;->val$contentType:Lbolts/Capture;

    iput-object p3, p0, Lbolts/WebViewAppLinkResolver$2;->val$url:Landroid/net/Uri;

    iput-object p4, p0, Lbolts/WebViewAppLinkResolver$2;->val$content:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 128
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v6

    .line 129
    .local v6, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Lorg/json/JSONArray;>.TaskCompletionSource;"
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lbolts/WebViewAppLinkResolver$2;->this$0:Lbolts/WebViewAppLinkResolver;

    invoke-static {v1}, Lbolts/WebViewAppLinkResolver;->access$200(Lbolts/WebViewAppLinkResolver;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, "webView":Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 131
    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 132
    new-instance v1, Lbolts/WebViewAppLinkResolver$2$1;

    invoke-direct {v1, p0}, Lbolts/WebViewAppLinkResolver$2$1;-><init>(Lbolts/WebViewAppLinkResolver$2;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 157
    new-instance v1, Lbolts/WebViewAppLinkResolver$2$2;

    invoke-direct {v1, p0, v6}, Lbolts/WebViewAppLinkResolver$2$2;-><init>(Lbolts/WebViewAppLinkResolver$2;Lbolts/Task$TaskCompletionSource;)V

    const-string v2, "boltsWebViewAppLinkResolverResult"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    const/4 v3, 0x0

    .line 168
    .local v3, "inferredContentType":Ljava/lang/String;
    iget-object v1, p0, Lbolts/WebViewAppLinkResolver$2;->val$contentType:Lbolts/Capture;

    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 169
    iget-object v1, p0, Lbolts/WebViewAppLinkResolver$2;->val$contentType:Lbolts/Capture;

    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v1, v5

    .line 171
    :cond_47
    iget-object v1, p0, Lbolts/WebViewAppLinkResolver$2;->val$url:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbolts/WebViewAppLinkResolver$2;->val$content:Lbolts/Capture;

    invoke-virtual {v2}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v6}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lbolts/WebViewAppLinkResolver$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

###### Class bolts.WebViewAppLinkResolver.AnonymousClass2.AnonymousClass1 (bolts.WebViewAppLinkResolver$2$1)
.class Lbolts/WebViewAppLinkResolver$2$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewAppLinkResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/WebViewAppLinkResolver$2;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private loaded:Z

.field final synthetic this$1:Lbolts/WebViewAppLinkResolver$2;


# direct methods
.method constructor <init>(Lbolts/WebViewAppLinkResolver$2;)V
    .registers 3

    .prologue
    .line 132
    iput-object p1, p0, Lbolts/WebViewAppLinkResolver$2$1;->this$1:Lbolts/WebViewAppLinkResolver$2;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbolts/WebViewAppLinkResolver$2$1;->loaded:Z

    return-void
.end method

.method private runJavaScript(Landroid/webkit/WebView;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 136
    iget-boolean v0, p0, Lbolts/WebViewAppLinkResolver$2$1;->loaded:Z

    if-nez v0, :cond_c

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbolts/WebViewAppLinkResolver$2$1;->loaded:Z

    .line 140
    const-string v0, "javascript:boltsWebViewAppLinkResolverResult.setValue((function() {  var metaTags = document.getElementsByTagName(\'meta\');  var results = [];  for (var i = 0; i < metaTags.length; i++) {    var property = metaTags[i].getAttribute(\'property\');    if (property && property.substring(0, \'al:\'.length) === \'al:\') {      var tag = { \"property\": metaTags[i].getAttribute(\'property\') };      if (metaTags[i].hasAttribute(\'content\')) {        tag[\'content\'] = metaTags[i].getAttribute(\'content\');      }      results.push(tag);    }  }  return JSON.stringify(results);})())"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 142
    :cond_c
    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p1}, Lbolts/WebViewAppLinkResolver$2$1;->runJavaScript(Landroid/webkit/WebView;)V

    .line 154
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, p1}, Lbolts/WebViewAppLinkResolver$2$1;->runJavaScript(Landroid/webkit/WebView;)V

    .line 148
    return-void
.end method

###### Class bolts.WebViewAppLinkResolver.AnonymousClass2.C00012 (bolts.WebViewAppLinkResolver$2$2)
.class Lbolts/WebViewAppLinkResolver$2$2;
.super Ljava/lang/Object;
.source "WebViewAppLinkResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/WebViewAppLinkResolver$2;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbolts/WebViewAppLinkResolver$2;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/WebViewAppLinkResolver$2;Lbolts/Task$TaskCompletionSource;)V
    .registers 3

    .prologue
    .line 157
    iput-object p1, p0, Lbolts/WebViewAppLinkResolver$2$2;->this$1:Lbolts/WebViewAppLinkResolver$2;

    iput-object p2, p0, Lbolts/WebViewAppLinkResolver$2$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lbolts/WebViewAppLinkResolver$2$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lbolts/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_a} :catch_b

    .line 165
    :goto_a
    return-void

    .line 162
    :catch_b
    move-exception v0

    .line 163
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lbolts/WebViewAppLinkResolver$2$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    goto :goto_a
.end method

###### Class bolts.WebViewAppLinkResolver.AnonymousClass3 (bolts.WebViewAppLinkResolver$3)
.class Lbolts/WebViewAppLinkResolver$3;
.super Ljava/lang/Object;
.source "WebViewAppLinkResolver.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/WebViewAppLinkResolver;->getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/WebViewAppLinkResolver;

.field final synthetic val$content:Lbolts/Capture;

.field final synthetic val$contentType:Lbolts/Capture;

.field final synthetic val$url:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lbolts/WebViewAppLinkResolver;Landroid/net/Uri;Lbolts/Capture;Lbolts/Capture;)V
    .registers 5

    .prologue
    .line 85
    iput-object p1, p0, Lbolts/WebViewAppLinkResolver$3;->this$0:Lbolts/WebViewAppLinkResolver;

    iput-object p2, p0, Lbolts/WebViewAppLinkResolver$3;->val$url:Landroid/net/Uri;

    iput-object p3, p0, Lbolts/WebViewAppLinkResolver$3;->val$content:Lbolts/Capture;

    iput-object p4, p0, Lbolts/WebViewAppLinkResolver$3;->val$contentType:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lbolts/WebViewAppLinkResolver$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lbolts/WebViewAppLinkResolver$3;->val$url:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "currentURL":Ljava/net/URL;
    const/4 v0, 0x0

    .line 90
    .local v0, "connection":Ljava/net/URLConnection;
    :goto_c
    if-eqz v1, :cond_51

    .line 92
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 93
    instance-of v3, v0, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1d

    move-object v3, v0

    .line 96
    check-cast v3, Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 98
    :cond_1d
    const-string v3, "Prefer-Html-Meta-Tags"

    const-string v4, "al"

    invoke-virtual {v0, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 101
    instance-of v3, v0, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_4f

    move-object v2, v0

    .line 102
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 103
    .local v2, "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x12c

    if-lt v3, v4, :cond_4d

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-ge v3, v4, :cond_4d

    .line 104
    new-instance v1, Ljava/net/URL;

    .end local v1    # "currentURL":Ljava/net/URL;
    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 105
    .restart local v1    # "currentURL":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_c

    .line 107
    :cond_4d
    const/4 v1, 0x0

    goto :goto_c

    .line 110
    .end local v2    # "httpConnection":Ljava/net/HttpURLConnection;
    :cond_4f
    const/4 v1, 0x0

    goto :goto_c

    .line 115
    :cond_51
    :try_start_51
    iget-object v3, p0, Lbolts/WebViewAppLinkResolver$3;->val$content:Lbolts/Capture;

    invoke-static {v0}, Lbolts/WebViewAppLinkResolver;->access$300(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 116
    iget-object v3, p0, Lbolts/WebViewAppLinkResolver$3;->val$contentType:Lbolts/Capture;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbolts/Capture;->set(Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_51 .. :try_end_63} :catchall_6e

    .line 118
    instance-of v3, v0, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_6c

    .line 119
    check-cast v0, Ljava/net/HttpURLConnection;

    .end local v0    # "connection":Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 122
    :cond_6c
    const/4 v3, 0x0

    return-object v3

    .line 118
    .restart local v0    # "connection":Ljava/net/URLConnection;
    :catchall_6e
    move-exception v3

    instance-of v4, v0, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_78

    .line 119
    check-cast v0, Ljava/net/HttpURLConnection;

    .end local v0    # "connection":Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_78
    throw v3
.end method
