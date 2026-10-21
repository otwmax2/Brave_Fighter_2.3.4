###### Class com.facebook.applinks.FacebookAppLinkResolver (com.facebook.applinks.FacebookAppLinkResolver)
.class public Lcom/facebook/applinks/FacebookAppLinkResolver;
.super Ljava/lang/Object;
.source "FacebookAppLinkResolver.java"

# interfaces
.implements Lbolts/AppLinkResolver;


# static fields
.field private static final APP_LINK_ANDROID_TARGET_KEY:Ljava/lang/String; = "android"

.field private static final APP_LINK_KEY:Ljava/lang/String; = "app_links"

.field private static final APP_LINK_TARGET_APP_NAME_KEY:Ljava/lang/String; = "app_name"

.field private static final APP_LINK_TARGET_CLASS_KEY:Ljava/lang/String; = "class"

.field private static final APP_LINK_TARGET_PACKAGE_KEY:Ljava/lang/String; = "package"

.field private static final APP_LINK_TARGET_SHOULD_FALLBACK_KEY:Ljava/lang/String; = "should_fallback"

.field private static final APP_LINK_TARGET_URL_KEY:Ljava/lang/String; = "url"

.field private static final APP_LINK_WEB_TARGET_KEY:Ljava/lang/String; = "web"


# instance fields
.field private final cachedAppLinks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lbolts/AppLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    .registers 2
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .registers 3
    .param p0, "x0"    # Landroid/net/Uri;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/applinks/FacebookAppLinkResolver;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/applinks/FacebookAppLinkResolver;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    return-object v0
.end method

.method private static getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    .registers 8
    .param p0, "targetJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 203
    const-string v6, "package"

    invoke-static {p0, v6, v5}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_a

    .line 216
    :goto_9
    return-object v5

    .line 208
    :cond_a
    const-string v6, "class"

    invoke-static {p0, v6, v5}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "className":Ljava/lang/String;
    const-string v6, "app_name"

    invoke-static {p0, v6, v5}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "appName":Ljava/lang/String;
    const-string v6, "url"

    invoke-static {p0, v6, v5}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "targetUrlString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 212
    .local v3, "targetUri":Landroid/net/Uri;
    if-eqz v4, :cond_23

    .line 213
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 216
    :cond_23
    new-instance v5, Lbolts/AppLink$Target;

    invoke-direct {v5, v2, v1, v3, v0}, Lbolts/AppLink$Target;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private static getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .registers 9
    .param p0, "sourceUrl"    # Landroid/net/Uri;
    .param p1, "urlData"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 223
    :try_start_1
    const-string v5, "web"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 224
    .local v2, "webTarget":Lorg/json/JSONObject;
    const-string v5, "should_fallback"

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 226
    .local v1, "shouldFallback":Z
    if-nez v1, :cond_11

    .line 242
    .end local v1    # "shouldFallback":Z
    .end local v2    # "webTarget":Lorg/json/JSONObject;
    :cond_10
    :goto_10
    return-object v4

    .line 231
    .restart local v1    # "shouldFallback":Z
    .restart local v2    # "webTarget":Lorg/json/JSONObject;
    :cond_11
    const-string v5, "url"

    const/4 v6, 0x0

    .line 232
    invoke-static {v2, v5, v6}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "webTargetUrlString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 234
    .local v4, "webUri":Landroid/net/Uri;
    if-eqz v3, :cond_1f

    .line 235
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1e} :catch_23

    move-result-object v4

    .line 239
    :cond_1f
    if-nez v4, :cond_10

    move-object v4, p0

    goto :goto_10

    .line 240
    .end local v1    # "shouldFallback":Z
    .end local v2    # "webTarget":Lorg/json/JSONObject;
    .end local v3    # "webTargetUrlString":Ljava/lang/String;
    .end local v4    # "webUri":Landroid/net/Uri;
    :catch_23
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move-object v4, p0

    .line 242
    goto :goto_10
.end method

.method private static tryGetBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 262
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result p2

    .line 264
    .end local p2    # "defaultValue":Z
    :goto_4
    return p2

    .line 263
    .restart local p2    # "defaultValue":Z
    :catch_5
    move-exception v0

    .line 264
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_4
.end method

.method private static tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 251
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p2

    .line 253
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_4
    return-object p2

    .line 252
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 253
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_4
.end method


# virtual methods
.method public getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
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
    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0, v1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    .line 78
    .local v0, "resolveTask":Lbolts/Task;, "Lbolts/Task<Ljava/util/Map<Landroid/net/Uri;Lbolts/AppLink;>;>;"
    new-instance v2, Lcom/facebook/applinks/FacebookAppLinkResolver$1;

    invoke-direct {v2, p0, p1}, Lcom/facebook/applinks/FacebookAppLinkResolver$1;-><init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2
.end method

.method public getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lbolts/AppLink;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v7, "appLinkResults":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Lbolts/AppLink;>;"
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 98
    .local v11, "urisToRequest":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v8, "graphRequestFields":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 102
    .local v10, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    monitor-enter v2

    .line 103
    :try_start_22
    iget-object v4, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbolts/AppLink;

    .line 104
    .local v6, "appLink":Lbolts/AppLink;
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_31

    .line 106
    if-eqz v6, :cond_34

    .line 107
    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 104
    .end local v6    # "appLink":Lbolts/AppLink;
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1

    .line 109
    .restart local v6    # "appLink":Lbolts/AppLink;
    :cond_34
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 110
    const/16 v2, 0x2c

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    :cond_3f
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v11, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 117
    .end local v6    # "appLink":Lbolts/AppLink;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_4a
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 118
    invoke-static {v7}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 199
    :goto_54
    return-object v1

    .line 121
    :cond_55
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v9

    .line 123
    .local v9, "taskCompletionSource":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/util/Map<Landroid/net/Uri;Lbolts/AppLink;>;>.TaskCompletionSource;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v3, "appLinkRequestParameters":Landroid/os/Bundle;
    const-string v1, "ids"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "fields"

    const-string v2, "%s.fields(%s,%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v12, "app_links"

    aput-object v12, v4, v5

    const/4 v5, 0x1

    const-string v12, "android"

    aput-object v12, v4, v5

    const/4 v5, 0x2

    const-string v12, "web"

    aput-object v12, v4, v5

    .line 128
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 136
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, ""

    const/4 v4, 0x0

    new-instance v5, Lcom/facebook/applinks/FacebookAppLinkResolver$2;

    invoke-direct {v5, p0, v9, v7, v11}, Lcom/facebook/applinks/FacebookAppLinkResolver$2;-><init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Lbolts/Task$TaskCompletionSource;Ljava/util/Map;Ljava/util/HashSet;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 197
    .local v0, "appLinkRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 199
    invoke-virtual {v9}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v1

    goto :goto_54
.end method

###### Class com.facebook.applinks.FacebookAppLinkResolver.AnonymousClass1 (com.facebook.applinks.FacebookAppLinkResolver$1)
.class Lcom/facebook/applinks/FacebookAppLinkResolver$1;
.super Ljava/lang/Object;
.source "FacebookAppLinkResolver.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/applinks/FacebookAppLinkResolver;->getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
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
        "Ljava/util/Map",
        "<",
        "Landroid/net/Uri;",
        "Lbolts/AppLink;",
        ">;",
        "Lbolts/AppLink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Landroid/net/Uri;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/applinks/FacebookAppLinkResolver;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    iput-object p2, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/AppLink;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lbolts/AppLink;",
            ">;>;)",
            "Lbolts/AppLink;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "resolveUrisTask":Lbolts/Task;, "Lbolts/Task<Ljava/util/Map<Landroid/net/Uri;Lbolts/AppLink;>;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/AppLink;

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->then(Lbolts/Task;)Lbolts/AppLink;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.applinks.FacebookAppLinkResolver.AnonymousClass2 (com.facebook.applinks.FacebookAppLinkResolver$2)
.class Lcom/facebook/applinks/FacebookAppLinkResolver$2;
.super Ljava/lang/Object;
.source "FacebookAppLinkResolver.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/applinks/FacebookAppLinkResolver;->getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

.field final synthetic val$appLinkResults:Ljava/util/Map;

.field final synthetic val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

.field final synthetic val$urisToRequest:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Lbolts/Task$TaskCompletionSource;Ljava/util/Map;Ljava/util/HashSet;)V
    .registers 5
    .param p1, "this$0"    # Lcom/facebook/applinks/FacebookAppLinkResolver;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    iput-object p2, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    iput-object p4, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$urisToRequest:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 20
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v4

    .line 144
    .local v4, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v4, :cond_12

    .line 145
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v4}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 194
    :goto_11
    return-void

    .line 149
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    .line 150
    .local v7, "responseJson":Lorg/json/JSONObject;
    if-nez v7, :cond_26

    .line 151
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_11

    .line 155
    :cond_26
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$urisToRequest:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2e
    :goto_2e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 156
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 157
    .local v12, "uriString":Ljava/lang/String;
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2e

    .line 163
    :try_start_44
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 164
    .local v13, "urlData":Lorg/json/JSONObject;
    const-string v15, "app_links"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 166
    .local v2, "appLinkData":Lorg/json/JSONObject;
    const-string v15, "android"

    .line 167
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 169
    .local v6, "rawTargets":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 170
    .local v10, "targetsCount":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v9, "targets":Ljava/util/List;, "Ljava/util/List<Lbolts/AppLink$Target;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_62
    if-ge v5, v10, :cond_74

    .line 174
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-static {v15}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$000(Lorg/json/JSONObject;)Lbolts/AppLink$Target;

    move-result-object v8

    .line 175
    .local v8, "target":Lbolts/AppLink$Target;
    if-eqz v8, :cond_71

    .line 176
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    .line 180
    .end local v8    # "target":Lbolts/AppLink$Target;
    :cond_74
    invoke-static {v11, v2}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$100(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v14

    .line 181
    .local v14, "webFallbackUrl":Landroid/net/Uri;
    new-instance v1, Lbolts/AppLink;

    invoke-direct {v1, v11, v9, v14}, Lbolts/AppLink;-><init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V

    .line 183
    .local v1, "appLink":Lbolts/AppLink;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    invoke-interface {v15, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    invoke-static {v15}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$200(Lcom/facebook/applinks/FacebookAppLinkResolver;)Ljava/util/HashMap;

    move-result-object v17

    monitor-enter v17
    :try_end_8d
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_8d} :catch_9d

    .line 185
    :try_start_8d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    invoke-static {v15}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$200(Lcom/facebook/applinks/FacebookAppLinkResolver;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    monitor-exit v17

    goto :goto_2e

    :catchall_9a
    move-exception v15

    monitor-exit v17
    :try_end_9c
    .catchall {:try_start_8d .. :try_end_9c} :catchall_9a

    :try_start_9c
    throw v15
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_9c .. :try_end_9d} :catch_9d

    .line 187
    .end local v1    # "appLink":Lbolts/AppLink;
    .end local v2    # "appLinkData":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .end local v6    # "rawTargets":Lorg/json/JSONArray;
    .end local v9    # "targets":Ljava/util/List;, "Ljava/util/List<Lbolts/AppLink$Target;>;"
    .end local v10    # "targetsCount":I
    .end local v13    # "urlData":Lorg/json/JSONObject;
    .end local v14    # "webFallbackUrl":Landroid/net/Uri;
    :catch_9d
    move-exception v3

    .line 189
    .local v3, "e":Lorg/json/JSONException;
    goto :goto_2e

    .line 193
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "uriString":Ljava/lang/String;
    :cond_9f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_11
.end method
