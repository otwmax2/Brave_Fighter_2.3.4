###### Class com.facebook.share.ShareApi (com.facebook.share.ShareApi)
.class public final Lcom/facebook/share/ShareApi;
.super Ljava/lang/Object;
.source "ShareApi.java"


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_GRAPH_NODE:Ljava/lang/String; = "me"

.field private static final GRAPH_PATH_FORMAT:Ljava/lang/String; = "%s/%s"

.field private static final PHOTOS_EDGE:Ljava/lang/String; = "photos"

.field private static final TAG:Ljava/lang/String; = "ShareApi"


# instance fields
.field private graphNode:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private final shareContent:Lcom/facebook/share/model/ShareContent;


# direct methods
.method public constructor <init>(Lcom/facebook/share/model/ShareContent;)V
    .registers 3
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/facebook/share/ShareApi;->shareContent:Lcom/facebook/share/model/ShareContent;

    .line 89
    const-string v0, "me"

    iput-object v0, p0, Lcom/facebook/share/ShareApi;->graphNode:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;)V
    .registers 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/facebook/share/ShareApi;->handleImagesOnAction(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/ShareApi;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/ShareApi;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/facebook/share/ShareApi;->getGraphPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/ShareApi;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/ShareApi;->stageArrayList(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/ShareApi;
    .param p1, "x1"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p2, "x2"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/ShareApi;->stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/ShareApi;
    .param p1, "x1"    # Lcom/facebook/share/model/SharePhoto;
    .param p2, "x2"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/ShareApi;->stagePhoto(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    return-void
.end method

.method private addCommonParameters(Landroid/os/Bundle;Lcom/facebook/share/model/ShareContent;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 205
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getPeopleIds()Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, "peopleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 207
    const-string v1, "tags"

    const-string v2, ", "

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_15
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 211
    const-string v1, "place"

    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getPlaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_28
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 215
    const-string v1, "ref"

    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_3b
    return-void
.end method

.method private getGraphPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "pathAfterGraphNode"    # Ljava/lang/String;

    .prologue
    .line 195
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getGraphNode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 195
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v1

    .line 200
    :goto_1b
    return-object v1

    .line 199
    :catch_1c
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private getSharePhotoCommonParameters(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/model/SharePhotoContent;)Landroid/os/Bundle;
    .registers 10
    .param p1, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p2, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    .line 431
    .local v1, "params":Landroid/os/Bundle;
    const-string v5, "place"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 432
    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getPlaceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 433
    const-string v5, "place"

    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getPlaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_1f
    const-string v5, "tags"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_67

    .line 436
    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getPeopleIds()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_67

    .line 437
    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getPeopleIds()Ljava/util/List;

    move-result-object v2

    .line 438
    .local v2, "peopleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_67

    .line 439
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 440
    .local v4, "tags":Lorg/json/JSONArray;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 441
    .local v0, "id":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 442
    .local v3, "tag":Lorg/json/JSONObject;
    const-string v6, "tag_uid"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_44

    .line 445
    .end local v0    # "id":Ljava/lang/String;
    .end local v3    # "tag":Lorg/json/JSONObject;
    :cond_5e
    const-string v5, "tags"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .end local v2    # "peopleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "tags":Lorg/json/JSONArray;
    :cond_67
    const-string v5, "ref"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 449
    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 450
    const-string v5, "ref"

    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_82
    return-object v1
.end method

.method private static handleImagesOnAction(Landroid/os/Bundle;)V
    .registers 12
    .param p0, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 272
    const-string v6, "image"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "imageStr":Ljava/lang/String;
    if-eqz v2, :cond_49

    .line 276
    :try_start_8
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 277
    .local v3, "images":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_4a

    .line 278
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 279
    .local v4, "jsonImage":Lorg/json/JSONObject;
    if-eqz v4, :cond_20

    .line 280
    invoke-static {p0, v0, v4}, Lcom/facebook/share/ShareApi;->putImageInBundleWithArrayFormat(Landroid/os/Bundle;ILorg/json/JSONObject;)V

    .line 277
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 283
    :cond_20
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, "url":Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "image[%d][url]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_39} :catch_3a

    goto :goto_1d

    .line 289
    .end local v0    # "i":I
    .end local v3    # "images":Lorg/json/JSONArray;
    .end local v4    # "jsonImage":Lorg/json/JSONObject;
    .end local v5    # "url":Ljava/lang/String;
    :catch_3a
    move-exception v6

    .line 295
    :try_start_3b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, "image":Lorg/json/JSONObject;
    const/4 v6, 0x0

    invoke-static {p0, v6, v1}, Lcom/facebook/share/ShareApi;->putImageInBundleWithArrayFormat(Landroid/os/Bundle;ILorg/json/JSONObject;)V

    .line 297
    const-string v6, "image"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_49} :catch_50

    .line 303
    .end local v1    # "image":Lorg/json/JSONObject;
    :cond_49
    :goto_49
    return-void

    .line 287
    .restart local v0    # "i":I
    .restart local v3    # "images":Lorg/json/JSONArray;
    :cond_4a
    :try_start_4a
    const-string v6, "image"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_4f} :catch_3a

    goto :goto_49

    .line 298
    .end local v0    # "i":I
    .end local v3    # "images":Lorg/json/JSONArray;
    :catch_50
    move-exception v6

    goto :goto_49
.end method

.method private static putImageInBundleWithArrayFormat(Landroid/os/Bundle;ILorg/json/JSONObject;)V
    .registers 11
    .param p0, "parameters"    # Landroid/os/Bundle;
    .param p1, "index"    # I
    .param p2, "image"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 310
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 312
    .local v2, "property":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "image[%d][%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 315
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "property":Ljava/lang/String;
    :cond_31
    return-void
.end method

.method public static share(Lcom/facebook/share/model/ShareContent;Lcom/facebook/FacebookCallback;)V
    .registers 3
    .param p0, "shareContent"    # Lcom/facebook/share/model/ShareContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v0, Lcom/facebook/share/ShareApi;

    invoke-direct {v0, p0}, Lcom/facebook/share/ShareApi;-><init>(Lcom/facebook/share/model/ShareContent;)V

    .line 79
    invoke-virtual {v0, p1}, Lcom/facebook/share/ShareApi;->share(Lcom/facebook/FacebookCallback;)V

    .line 80
    return-void
.end method

.method private shareLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/FacebookCallback;)V
    .registers 9
    .param p1, "linkContent"    # Lcom/facebook/share/model/ShareLinkContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareLinkContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v5, Lcom/facebook/share/ShareApi$4;

    invoke-direct {v5, p0, p2}, Lcom/facebook/share/ShareApi$4;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/FacebookCallback;)V

    .line 403
    .local v5, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v3, "parameters":Landroid/os/Bundle;
    invoke-direct {p0, v3, p1}, Lcom/facebook/share/ShareApi;->addCommonParameters(Landroid/os/Bundle;Lcom/facebook/share/model/ShareContent;)V

    .line 405
    const-string v0, "message"

    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v0, "link"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "picture"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v0, "description"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v0, "ref"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 412
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, "feed"

    .line 413
    invoke-direct {p0, v2}, Lcom/facebook/share/ShareApi;->getGraphPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 416
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 417
    return-void
.end method

.method private shareOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/FacebookCallback;)V
    .registers 9
    .param p1, "openGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareOpenGraphContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v4, Lcom/facebook/share/ShareApi$1;

    invoke-direct {v4, p0, p2}, Lcom/facebook/share/ShareApi$1;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/FacebookCallback;)V

    .line 234
    .local v4, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v3

    .line 235
    .local v3, "action":Lcom/facebook/share/model/ShareOpenGraphAction;
    invoke-virtual {v3}, Lcom/facebook/share/model/ShareOpenGraphAction;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 236
    .local v2, "parameters":Landroid/os/Bundle;
    invoke-direct {p0, v2, p1}, Lcom/facebook/share/ShareApi;->addCommonParameters(Landroid/os/Bundle;Lcom/facebook/share/model/ShareContent;)V

    .line 237
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 238
    const-string v1, "message"

    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_23
    new-instance v0, Lcom/facebook/share/ShareApi$2;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/ShareApi$2;-><init>(Lcom/facebook/share/ShareApi;Landroid/os/Bundle;Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/GraphRequest$Callback;Lcom/facebook/FacebookCallback;)V

    .line 265
    .local v0, "stageCallback":Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    invoke-direct {p0, v2, v0}, Lcom/facebook/share/ShareApi;->stageOpenGraphAction(Landroid/os/Bundle;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 266
    return-void
.end method

.method private sharePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/FacebookCallback;)V
    .registers 28
    .param p1, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/SharePhotoContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v7, Lcom/facebook/internal/Mutable;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 320
    .local v7, "requestCount":Lcom/facebook/internal/Mutable;, "Lcom/facebook/internal/Mutable<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v19

    .line 321
    .local v19, "accessToken":Lcom/facebook/AccessToken;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v24, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v5, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v6, "errorResponses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphResponse;>;"
    new-instance v3, Lcom/facebook/share/ShareApi$3;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/share/ShareApi$3;-><init>(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/facebook/internal/Mutable;Lcom/facebook/FacebookCallback;)V

    .line 352
    .local v3, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    :try_start_26
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2e
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/facebook/share/model/SharePhoto;
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_3a} :catch_6d

    .line 355
    .local v22, "photo":Lcom/facebook/share/model/SharePhoto;
    :try_start_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/ShareApi;->getSharePhotoCommonParameters(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/model/SharePhotoContent;)Landroid/os/Bundle;
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_43} :catch_76
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_43} :catch_6d

    move-result-object v12

    .line 360
    .local v12, "params":Landroid/os/Bundle;
    :try_start_44
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 361
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v15

    .line 362
    .local v15, "photoUri":Landroid/net/Uri;
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/share/model/SharePhoto;->getCaption()Ljava/lang/String;

    move-result-object v11

    .line 363
    .local v11, "caption":Ljava/lang/String;
    if-nez v11, :cond_56

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/share/ShareApi;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 366
    :cond_56
    if-eqz v10, :cond_7f

    .line 367
    const-string v8, "photos"

    .line 369
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/facebook/share/ShareApi;->getGraphPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v8, v19

    move-object v13, v3

    .line 367
    invoke-static/range {v8 .. v13}, Lcom/facebook/GraphRequest;->newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_6c} :catch_6d

    goto :goto_2e

    .line 388
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "caption":Ljava/lang/String;
    .end local v12    # "params":Landroid/os/Bundle;
    .end local v15    # "photoUri":Landroid/net/Uri;
    .end local v22    # "photo":Lcom/facebook/share/model/SharePhoto;
    :catch_6d
    move-exception v21

    .line 389
    .local v21, "ex":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    .line 391
    .end local v21    # "ex":Ljava/io/FileNotFoundException;
    :cond_75
    :goto_75
    return-void

    .line 356
    .restart local v22    # "photo":Lcom/facebook/share/model/SharePhoto;
    :catch_76
    move-exception v20

    .line 357
    .local v20, "e":Lorg/json/JSONException;
    :try_start_77
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    goto :goto_75

    .line 374
    .end local v20    # "e":Lorg/json/JSONException;
    .restart local v10    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "caption":Ljava/lang/String;
    .restart local v12    # "params":Landroid/os/Bundle;
    .restart local v15    # "photoUri":Landroid/net/Uri;
    :cond_7f
    if-eqz v15, :cond_2e

    .line 375
    const-string v8, "photos"

    .line 377
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/facebook/share/ShareApi;->getGraphPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v13, v19

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v3

    .line 375
    invoke-static/range {v13 .. v18}, Lcom/facebook/GraphRequest;->newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 384
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "caption":Ljava/lang/String;
    .end local v12    # "params":Landroid/os/Bundle;
    .end local v15    # "photoUri":Landroid/net/Uri;
    .end local v22    # "photo":Lcom/facebook/share/model/SharePhoto;
    :cond_9b
    iget-object v4, v7, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v7, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 385
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_75

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/facebook/GraphRequest;

    .line 386
    .local v23, "request":Lcom/facebook/GraphRequest;
    invoke-virtual/range {v23 .. v23}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_c1
    .catch Ljava/io/FileNotFoundException; {:try_start_77 .. :try_end_c1} :catch_6d

    goto :goto_b2
.end method

.method private shareVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/FacebookCallback;)V
    .registers 5
    .param p1, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareVideoContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getGraphNode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/facebook/share/internal/VideoUploader;->uploadAsync(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    .line 426
    :goto_7
    return-void

    .line 423
    :catch_8
    move-exception v0

    .line 424
    .local v0, "ex":Ljava/io/FileNotFoundException;
    invoke-static {p2, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    goto :goto_7
.end method

.method private stageArrayList(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 6
    .param p1, "arrayList"    # Ljava/util/ArrayList;
    .param p2, "onArrayListStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 458
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 459
    .local v2, "stagedObject":Lorg/json/JSONArray;
    new-instance v0, Lcom/facebook/share/ShareApi$5;

    invoke-direct {v0, p0, p1, v2}, Lcom/facebook/share/ShareApi$5;-><init>(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Lorg/json/JSONArray;)V

    .line 502
    .local v0, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/facebook/share/ShareApi$6;

    invoke-direct {v1, p0, p2, v2}, Lcom/facebook/share/ShareApi$6;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;Lorg/json/JSONArray;)V

    .line 514
    .local v1, "onStagedArrayMapperCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    invoke-direct {p0, v0, v1}, Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 515
    return-void
.end method

.method private stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 4
    .param p2, "onCollectionValuesStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/internal/CollectionMapper$Collection",
            "<TT;>;",
            "Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<TT;>;"
    new-instance v0, Lcom/facebook/share/ShareApi$7;

    invoke-direct {v0, p0}, Lcom/facebook/share/ShareApi$7;-><init>(Lcom/facebook/share/ShareApi;)V

    .line 538
    .local v0, "valueMapper":Lcom/facebook/internal/CollectionMapper$ValueMapper;
    invoke-static {p1, v0, p2}, Lcom/facebook/internal/CollectionMapper;->iterate(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$ValueMapper;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 539
    return-void
.end method

.method private stageOpenGraphAction(Landroid/os/Bundle;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 4
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "onOpenGraphActionStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    .prologue
    .line 544
    new-instance v0, Lcom/facebook/share/ShareApi$8;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/ShareApi$8;-><init>(Lcom/facebook/share/ShareApi;Landroid/os/Bundle;)V

    .line 566
    .local v0, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<Ljava/lang/String;>;"
    invoke-direct {p0, v0, p2}, Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 567
    return-void
.end method

.method private stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 11
    .param p1, "object"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p2, "onOpenGraphObjectStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 572
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lcom/facebook/share/model/ShareOpenGraphObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 573
    .local v7, "type":Ljava/lang/String;
    if-nez v7, :cond_e

    .line 574
    const-string v1, "og:type"

    invoke-virtual {p1, v1}, Lcom/facebook/share/model/ShareOpenGraphObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 577
    :cond_e
    if-nez v7, :cond_1b

    .line 578
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v5, "Open Graph objects must contain a type value."

    invoke-direct {v1, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 672
    :goto_1a
    return-void

    .line 582
    :cond_1b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 583
    .local v2, "stagedObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/facebook/share/ShareApi$9;

    invoke-direct {v6, p0, p1, v2}, Lcom/facebook/share/ShareApi$9;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/ShareOpenGraphObject;Lorg/json/JSONObject;)V

    .line 610
    .local v6, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<Ljava/lang/String;>;"
    new-instance v4, Lcom/facebook/share/ShareApi$10;

    invoke-direct {v4, p0, p2}, Lcom/facebook/share/ShareApi$10;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    .line 640
    .local v4, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    move-object v3, v7

    .line 641
    .local v3, "ogType":Ljava/lang/String;
    new-instance v0, Lcom/facebook/share/ShareApi$11;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/ShareApi$11;-><init>(Lcom/facebook/share/ShareApi;Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    .line 671
    .local v0, "onMapperCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    invoke-direct {p0, v6, v0}, Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    goto :goto_1a
.end method

.method private stagePhoto(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 10
    .param p1, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p2, "onPhotoStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 677
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 678
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v2

    .line 679
    .local v2, "imageUrl":Landroid/net/Uri;
    if-nez v0, :cond_c

    if-eqz v2, :cond_3d

    .line 680
    :cond_c
    new-instance v4, Lcom/facebook/share/ShareApi$12;

    invoke-direct {v4, p0, p2, p1}, Lcom/facebook/share/ShareApi$12;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;Lcom/facebook/share/model/SharePhoto;)V

    .line 721
    .local v4, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    if-eqz v0, :cond_1f

    .line 723
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v5

    .line 722
    invoke-static {v5, v0, v4}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/graphics/Bitmap;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v5

    .line 725
    invoke-virtual {v5}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 744
    .end local v4    # "requestCallback":Lcom/facebook/GraphRequest$Callback;
    :goto_1e
    return-void

    .line 729
    .restart local v4    # "requestCallback":Lcom/facebook/GraphRequest$Callback;
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v5

    .line 728
    invoke-static {v5, v2, v4}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v5

    .line 731
    invoke-virtual {v5}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2a} :catch_2b

    goto :goto_1e

    .line 732
    :catch_2b
    move-exception v1

    .line 733
    .local v1, "ex":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    .line 734
    .local v3, "message":Ljava/lang/String;
    if-nez v3, :cond_34

    .line 735
    const-string v3, "Error staging photo."

    .line 737
    :cond_34
    new-instance v5, Lcom/facebook/FacebookException;

    invoke-direct {v5, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v5}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_1e

    .line 741
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "requestCallback":Lcom/facebook/GraphRequest$Callback;
    :cond_3d
    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "Photos must have an imageURL or bitmap."

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v5}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_1e
.end method


# virtual methods
.method public canShare()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v3

    if-nez v3, :cond_8

    .line 157
    :cond_7
    :goto_7
    return v2

    .line 147
    :cond_8
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 148
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_7

    .line 151
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    .line 152
    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1c

    const-string v2, "publish_actions"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 153
    :cond_1c
    const-string v2, "ShareApi"

    const-string v3, "The publish_actions permissions are missing, the share will fail unless this app was authorized to publish in another installation."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_23
    const/4 v2, 0x1

    goto :goto_7
.end method

.method public getGraphNode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/share/ShareApi;->graphNode:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/share/ShareApi;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getShareContent()Lcom/facebook/share/model/ShareContent;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/share/ShareApi;->shareContent:Lcom/facebook/share/model/ShareContent;

    return-object v0
.end method

.method public setGraphNode(Ljava/lang/String;)V
    .registers 2
    .param p1, "graphNode"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/facebook/share/ShareApi;->graphNode:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/facebook/share/ShareApi;->message:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public share(Lcom/facebook/FacebookCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->canShare()Z

    move-result v2

    if-nez v2, :cond_c

    .line 167
    const-string v2, "Insufficient permissions for sharing content via Api."

    invoke-static {p1, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithError(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    .line 190
    :cond_b
    :goto_b
    return-void

    .line 171
    :cond_c
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    .line 175
    .local v1, "shareContent":Lcom/facebook/share/model/ShareContent;
    :try_start_10
    invoke-static {v1}, Lcom/facebook/share/internal/ShareContentValidation;->validateForApiShare(Lcom/facebook/share/model/ShareContent;)V
    :try_end_13
    .catch Lcom/facebook/FacebookException; {:try_start_10 .. :try_end_13} :catch_1d

    .line 181
    instance-of v2, v1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v2, :cond_22

    .line 182
    check-cast v1, Lcom/facebook/share/model/ShareLinkContent;

    .end local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->shareLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_b

    .line 176
    .restart local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    :catch_1d
    move-exception v0

    .line 177
    .local v0, "ex":Lcom/facebook/FacebookException;
    invoke-static {p1, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    goto :goto_b

    .line 183
    .end local v0    # "ex":Lcom/facebook/FacebookException;
    :cond_22
    instance-of v2, v1, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v2, :cond_2c

    .line 184
    check-cast v1, Lcom/facebook/share/model/SharePhotoContent;

    .end local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->sharePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_b

    .line 185
    .restart local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    :cond_2c
    instance-of v2, v1, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v2, :cond_36

    .line 186
    check-cast v1, Lcom/facebook/share/model/ShareVideoContent;

    .end local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->shareVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_b

    .line 187
    .restart local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    :cond_36
    instance-of v2, v1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v2, :cond_b

    .line 188
    check-cast v1, Lcom/facebook/share/model/ShareOpenGraphContent;

    .end local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->shareOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_b
.end method

###### Class com.facebook.share.ShareApi.AnonymousClass1 (com.facebook.share.ShareApi$1)
.class Lcom/facebook/share/ShareApi$1;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->shareOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lcom/facebook/FacebookCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/facebook/share/ShareApi$1;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 230
    .local v0, "data":Lorg/json/JSONObject;
    if-nez v0, :cond_d

    const/4 v1, 0x0

    .line 231
    .local v1, "postId":Ljava/lang/String;
    :goto_7
    iget-object v2, p0, Lcom/facebook/share/ShareApi$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v2, v1, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithResults(Lcom/facebook/FacebookCallback;Ljava/lang/String;Lcom/facebook/GraphResponse;)V

    .line 232
    return-void

    .line 230
    .end local v1    # "postId":Ljava/lang/String;
    :cond_d
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

###### Class com.facebook.share.ShareApi.AnonymousClass10 (com.facebook.share.ShareApi$10)
.class Lcom/facebook/share/ShareApi$10;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/facebook/share/ShareApi$10;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$10;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 9
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 613
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    .line 614
    .local v1, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v1, :cond_19

    .line 615
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, "message":Ljava/lang/String;
    if-nez v2, :cond_e

    .line 617
    const-string v2, "Error staging Open Graph object."

    .line 619
    :cond_e
    iget-object v4, p0, Lcom/facebook/share/ShareApi$10;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v5, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v5, p1, v2}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 638
    .end local v2    # "message":Ljava/lang/String;
    :goto_18
    return-void

    .line 623
    :cond_19
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 624
    .local v0, "data":Lorg/json/JSONObject;
    if-nez v0, :cond_2c

    .line 625
    iget-object v4, p0, Lcom/facebook/share/ShareApi$10;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v5, Lcom/facebook/FacebookGraphResponseException;

    const-string v6, "Error staging Open Graph object."

    invoke-direct {v5, p1, v6}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_18

    .line 630
    :cond_2c
    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v3, "stagedObjectId":Ljava/lang/String;
    if-nez v3, :cond_41

    .line 632
    iget-object v4, p0, Lcom/facebook/share/ShareApi$10;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v5, Lcom/facebook/FacebookGraphResponseException;

    const-string v6, "Error staging Open Graph object."

    invoke-direct {v5, p1, v6}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_18

    .line 637
    :cond_41
    iget-object v4, p0, Lcom/facebook/share/ShareApi$10;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-interface {v4, v3}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_18
.end method

###### Class com.facebook.share.ShareApi.AnonymousClass11 (com.facebook.share.ShareApi$11)
.class Lcom/facebook/share/ShareApi$11;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$ogType:Ljava/lang/String;

.field final synthetic val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

.field final synthetic val$requestCallback:Lcom/facebook/GraphRequest$Callback;

.field final synthetic val$stagedObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 6
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/facebook/share/ShareApi$11;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$11;->val$stagedObject:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$11;->val$ogType:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/share/ShareApi$11;->val$requestCallback:Lcom/facebook/GraphRequest$Callback;

    iput-object p5, p0, Lcom/facebook/share/ShareApi$11;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 11

    .prologue
    .line 645
    iget-object v0, p0, Lcom/facebook/share/ShareApi$11;->val$stagedObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 646
    .local v8, "objectString":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 647
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "object"

    invoke-virtual {v3, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :try_start_10
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 650
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/share/ShareApi$11;->this$0:Lcom/facebook/share/ShareApi;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "objects/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/share/ShareApi$11;->val$ogType:Ljava/lang/String;

    const-string v9, "UTF-8"

    .line 653
    invoke-static {v5, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 651
    invoke-static {v2, v4}, Lcom/facebook/share/ShareApi;->access$100(Lcom/facebook/share/ShareApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    iget-object v5, p0, Lcom/facebook/share/ShareApi$11;->val$requestCallback:Lcom/facebook/GraphRequest$Callback;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 656
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_41} :catch_42

    .line 664
    :goto_41
    return-void

    .line 657
    :catch_42
    move-exception v6

    .line 658
    .local v6, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    .line 659
    .local v7, "message":Ljava/lang/String;
    if-nez v7, :cond_4b

    .line 660
    const-string v7, "Error staging Open Graph object."

    .line 662
    :cond_4b
    iget-object v0, p0, Lcom/facebook/share/ShareApi$11;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v7}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_41
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 3
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/facebook/share/ShareApi$11;->val$onOpenGraphObjectStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-interface {v0, p1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 669
    return-void
.end method

###### Class com.facebook.share.ShareApi.AnonymousClass12 (com.facebook.share.ShareApi$12)
.class Lcom/facebook/share/ShareApi$12;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stagePhoto(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

.field final synthetic val$photo:Lcom/facebook/share/model/SharePhoto;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;Lcom/facebook/share/model/SharePhoto;)V
    .registers 4
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/facebook/share/ShareApi$12;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$12;->val$photo:Lcom/facebook/share/model/SharePhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 11
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 683
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    .line 684
    .local v1, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v1, :cond_19

    .line 685
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 686
    .local v3, "message":Ljava/lang/String;
    if-nez v3, :cond_e

    .line 687
    const-string v3, "Error staging photo."

    .line 689
    :cond_e
    iget-object v6, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v7, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v7, p1, v3}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 719
    .end local v3    # "message":Ljava/lang/String;
    :goto_18
    return-void

    .line 693
    :cond_19
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 694
    .local v0, "data":Lorg/json/JSONObject;
    if-nez v0, :cond_2c

    .line 695
    iget-object v6, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v7, Lcom/facebook/FacebookException;

    const-string v8, "Error staging photo."

    invoke-direct {v7, v8}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_18

    .line 699
    :cond_2c
    const-string v6, "uri"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 700
    .local v4, "stagedImageUri":Ljava/lang/String;
    if-nez v4, :cond_41

    .line 701
    iget-object v6, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v7, Lcom/facebook/FacebookException;

    const-string v8, "Error staging photo."

    invoke-direct {v7, v8}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_18

    .line 706
    :cond_41
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 708
    .local v5, "stagedObject":Lorg/json/JSONObject;
    :try_start_46
    const-string v6, "url"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 709
    const-string v6, "user_generated"

    iget-object v7, p0, Lcom/facebook/share/ShareApi$12;->val$photo:Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {v7}, Lcom/facebook/share/model/SharePhoto;->getUserGenerated()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_56} :catch_5c

    .line 718
    iget-object v6, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-interface {v6, v5}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_18

    .line 710
    :catch_5c
    move-exception v2

    .line 711
    .local v2, "ex":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    .line 712
    .restart local v3    # "message":Ljava/lang/String;
    if-nez v3, :cond_65

    .line 713
    const-string v3, "Error staging photo."

    .line 715
    :cond_65
    iget-object v6, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v7, Lcom/facebook/FacebookException;

    invoke-direct {v7, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_18
.end method

###### Class com.facebook.share.ShareApi.AnonymousClass2 (com.facebook.share.ShareApi$2)
.class Lcom/facebook/share/ShareApi$2;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->shareOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$action:Lcom/facebook/share/model/ShareOpenGraphAction;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;

.field final synthetic val$parameters:Landroid/os/Bundle;

.field final synthetic val$requestCallback:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Landroid/os/Bundle;Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/GraphRequest$Callback;Lcom/facebook/FacebookCallback;)V
    .registers 6
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/facebook/share/ShareApi$2;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$2;->val$parameters:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$2;->val$action:Lcom/facebook/share/model/ShareOpenGraphAction;

    iput-object p4, p0, Lcom/facebook/share/ShareApi$2;->val$requestCallback:Lcom/facebook/GraphRequest$Callback;

    iput-object p5, p0, Lcom/facebook/share/ShareApi$2;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 8

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/facebook/share/ShareApi$2;->val$parameters:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/facebook/share/ShareApi;->access$000(Landroid/os/Bundle;)V

    .line 248
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 249
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/share/ShareApi$2;->this$0:Lcom/facebook/share/ShareApi;

    iget-object v3, p0, Lcom/facebook/share/ShareApi$2;->val$action:Lcom/facebook/share/model/ShareOpenGraphAction;

    .line 251
    invoke-virtual {v3}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-static {v2, v3}, Lcom/facebook/share/ShareApi;->access$100(Lcom/facebook/share/ShareApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/share/ShareApi$2;->val$parameters:Landroid/os/Bundle;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    iget-object v5, p0, Lcom/facebook/share/ShareApi$2;->val$requestCallback:Lcom/facebook/GraphRequest$Callback;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 254
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 258
    :goto_29
    return-void

    .line 255
    :catch_2a
    move-exception v6

    .line 256
    .local v6, "ex":Ljava/io/UnsupportedEncodingException;
    iget-object v0, p0, Lcom/facebook/share/ShareApi$2;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0, v6}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    goto :goto_29
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 3
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/share/ShareApi$2;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    .line 263
    return-void
.end method

###### Class com.facebook.share.ShareApi.AnonymousClass3 (com.facebook.share.ShareApi$3)
.class Lcom/facebook/share/ShareApi$3;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->sharePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;

.field final synthetic val$errorResponses:Ljava/util/ArrayList;

.field final synthetic val$requestCount:Lcom/facebook/internal/Mutable;

.field final synthetic val$results:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/facebook/internal/Mutable;Lcom/facebook/FacebookCallback;)V
    .registers 6
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/facebook/share/ShareApi$3;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$3;->val$results:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$3;->val$errorResponses:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/facebook/share/ShareApi$3;->val$requestCount:Lcom/facebook/internal/Mutable;

    iput-object p5, p0, Lcom/facebook/share/ShareApi$3;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 8
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    const/4 v5, 0x0

    .line 327
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 328
    .local v1, "result":Lorg/json/JSONObject;
    if-eqz v1, :cond_c

    .line 329
    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_c
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 332
    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$errorResponses:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_17
    iget-object v3, p0, Lcom/facebook/share/ShareApi$3;->val$requestCount:Lcom/facebook/internal/Mutable;

    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$requestCount:Lcom/facebook/internal/Mutable;

    iget-object v2, v2, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 335
    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$requestCount:Lcom/facebook/internal/Mutable;

    iget-object v2, v2, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4d

    .line 336
    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$errorResponses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 337
    iget-object v3, p0, Lcom/facebook/share/ShareApi$3;->val$callback:Lcom/facebook/FacebookCallback;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$errorResponses:Ljava/util/ArrayList;

    .line 340
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphResponse;

    .line 337
    invoke-static {v3, v4, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithResults(Lcom/facebook/FacebookCallback;Ljava/lang/String;Lcom/facebook/GraphResponse;)V

    .line 349
    :cond_4d
    :goto_4d
    return-void

    .line 341
    :cond_4e
    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 342
    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "postId":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/share/ShareApi$3;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v2, v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithResults(Lcom/facebook/FacebookCallback;Ljava/lang/String;Lcom/facebook/GraphResponse;)V

    goto :goto_4d
.end method

###### Class com.facebook.share.ShareApi.AnonymousClass4 (com.facebook.share.ShareApi$4)
.class Lcom/facebook/share/ShareApi$4;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->shareLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lcom/facebook/FacebookCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/facebook/share/ShareApi$4;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$4;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 398
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 399
    .local v0, "data":Lorg/json/JSONObject;
    if-nez v0, :cond_d

    const/4 v1, 0x0

    .line 400
    .local v1, "postId":Ljava/lang/String;
    :goto_7
    iget-object v2, p0, Lcom/facebook/share/ShareApi$4;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v2, v1, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithResults(Lcom/facebook/FacebookCallback;Ljava/lang/String;Lcom/facebook/GraphResponse;)V

    .line 401
    return-void

    .line 399
    .end local v1    # "postId":Ljava/lang/String;
    :cond_d
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

###### Class com.facebook.share.ShareApi.AnonymousClass5 (com.facebook.share.ShareApi$5)
.class Lcom/facebook/share/ShareApi$5;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageArrayList(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/internal/CollectionMapper$Collection",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$arrayList:Ljava/util/ArrayList;

.field final synthetic val$stagedObject:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Lorg/json/JSONArray;)V
    .registers 4
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/facebook/share/ShareApi$5;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$5;->val$arrayList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$5;->val$stagedObject:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Integer;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/facebook/share/ShareApi$5;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 460
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/facebook/share/ShareApi$5;->get(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keyIterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v2, p0, Lcom/facebook/share/ShareApi$5;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 464
    .local v1, "size":I
    new-instance v0, Lcom/facebook/internal/Mutable;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 465
    .local v0, "current":Lcom/facebook/internal/Mutable;, "Lcom/facebook/internal/Mutable<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/facebook/share/ShareApi$5$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/share/ShareApi$5$1;-><init>(Lcom/facebook/share/ShareApi$5;Lcom/facebook/internal/Mutable;I)V

    return-object v2
.end method

.method public set(Ljava/lang/Integer;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "onErrorListener"    # Lcom/facebook/internal/CollectionMapper$OnErrorListener;

    .prologue
    .line 492
    :try_start_0
    iget-object v2, p0, Lcom/facebook/share/ShareApi$5;->val$stagedObject:Lorg/json/JSONArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    .line 500
    :goto_9
    return-void

    .line 493
    :catch_a
    move-exception v0

    .line 494
    .local v0, "ex":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "message":Ljava/lang/String;
    if-nez v1, :cond_13

    .line 496
    const-string v1, "Error staging object."

    .line 498
    :cond_13
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2}, Lcom/facebook/internal/CollectionMapper$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_9
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V
    .registers 4

    .prologue
    .line 460
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/share/ShareApi$5;->set(Ljava/lang/Integer;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V

    return-void
.end method

###### Class com.facebook.share.ShareApi.AnonymousClass5.AnonymousClass1 (com.facebook.share.ShareApi$5$1)
.class Lcom/facebook/share/ShareApi$5$1;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi$5;->keyIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/share/ShareApi$5;

.field final synthetic val$current:Lcom/facebook/internal/Mutable;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi$5;Lcom/facebook/internal/Mutable;I)V
    .registers 4
    .param p1, "this$1"    # Lcom/facebook/share/ShareApi$5;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/facebook/share/ShareApi$5$1;->this$1:Lcom/facebook/share/ShareApi$5;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$5$1;->val$current:Lcom/facebook/internal/Mutable;

    iput p3, p0, Lcom/facebook/share/ShareApi$5$1;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 468
    iget-object v0, p0, Lcom/facebook/share/ShareApi$5$1;->val$current:Lcom/facebook/internal/Mutable;

    iget-object v0, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/facebook/share/ShareApi$5$1;->val$size:I

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public next()Ljava/lang/Integer;
    .registers 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/facebook/share/ShareApi$5$1;->val$current:Lcom/facebook/internal/Mutable;

    iget-object v0, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/facebook/share/ShareApi$5$1;->val$current:Lcom/facebook/internal/Mutable;

    iget-object v1, v2, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi$5$1;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 1

    .prologue
    .line 478
    return-void
.end method

###### Class com.facebook.share.ShareApi.AnonymousClass6 (com.facebook.share.ShareApi$6)
.class Lcom/facebook/share/ShareApi$6;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageArrayList(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$onArrayListStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

.field final synthetic val$stagedObject:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;Lorg/json/JSONArray;)V
    .registers 4
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/facebook/share/ShareApi$6;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$6;->val$onArrayListStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$6;->val$stagedObject:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/facebook/share/ShareApi$6;->val$onArrayListStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    iget-object v1, p0, Lcom/facebook/share/ShareApi$6;->val$stagedObject:Lorg/json/JSONArray;

    invoke-interface {v0, v1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onComplete(Ljava/lang/Object;)V

    .line 507
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 3
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/facebook/share/ShareApi$6;->val$onArrayListStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-interface {v0, p1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 512
    return-void
.end method

###### Class com.facebook.share.ShareApi.AnonymousClass7 (com.facebook.share.ShareApi$7)
.class Lcom/facebook/share/ShareApi$7;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$ValueMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapValue(Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "onMapValueCompleteListener"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 525
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 526
    iget-object v0, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Lcom/facebook/share/ShareApi;->access$200(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    .line 536
    :goto_b
    return-void

    .line 527
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_18

    .line 528
    iget-object v0, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphObject;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Lcom/facebook/share/ShareApi;->access$300(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_b

    .line 531
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_18
    instance-of v0, p1, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_24

    .line 532
    iget-object v0, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Lcom/facebook/share/ShareApi;->access$400(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_b

    .line 534
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_24
    invoke-interface {p2, p1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_b
.end method

###### Class com.facebook.share.ShareApi.AnonymousClass8 (com.facebook.share.ShareApi$8)
.class Lcom/facebook/share/ShareApi$8;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageOpenGraphAction(Landroid/os/Bundle;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/internal/CollectionMapper$Collection",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$parameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/facebook/share/ShareApi$8;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$8;->val$parameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 545
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/share/ShareApi$8;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/facebook/share/ShareApi$8;->val$parameters:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keyIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/facebook/share/ShareApi$8;->val$parameters:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V
    .registers 4

    .prologue
    .line 545
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/share/ShareApi$8;->set(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "onErrorListener"    # Lcom/facebook/internal/CollectionMapper$OnErrorListener;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/facebook/share/ShareApi$8;->val$parameters:Landroid/os/Bundle;

    invoke-static {v0, p1, p2}, Lcom/facebook/internal/Utility;->putJSONValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 561
    new-instance v0, Lcom/facebook/FacebookException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 562
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-interface {p3, v0}, Lcom/facebook/internal/CollectionMapper$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    .line 564
    :cond_27
    return-void
.end method

###### Class com.facebook.share.ShareApi.AnonymousClass9 (com.facebook.share.ShareApi$9)
.class Lcom/facebook/share/ShareApi$9;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/internal/CollectionMapper$Collection",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$object:Lcom/facebook/share/model/ShareOpenGraphObject;

.field final synthetic val$stagedObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/ShareOpenGraphObject;Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/facebook/share/ShareApi$9;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$9;->val$object:Lcom/facebook/share/model/ShareOpenGraphObject;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$9;->val$stagedObject:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 584
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/share/ShareApi$9;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/facebook/share/ShareApi$9;->val$object:Lcom/facebook/share/model/ShareOpenGraphObject;

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareOpenGraphObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keyIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lcom/facebook/share/ShareApi$9;->val$object:Lcom/facebook/share/model/ShareOpenGraphObject;

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareOpenGraphObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V
    .registers 4

    .prologue
    .line 584
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/share/ShareApi$9;->set(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "onErrorListener"    # Lcom/facebook/internal/CollectionMapper$OnErrorListener;

    .prologue
    .line 600
    :try_start_0
    iget-object v2, p0, Lcom/facebook/share/ShareApi$9;->val$stagedObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 608
    :goto_5
    return-void

    .line 601
    :catch_6
    move-exception v0

    .line 602
    .local v0, "ex":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "message":Ljava/lang/String;
    if-nez v1, :cond_f

    .line 604
    const-string v1, "Error staging object."

    .line 606
    :cond_f
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2}, Lcom/facebook/internal/CollectionMapper$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_5
.end method
