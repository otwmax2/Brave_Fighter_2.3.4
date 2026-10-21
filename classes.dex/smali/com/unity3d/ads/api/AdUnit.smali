###### Class com.unity3d.ads.api.AdUnit (com.unity3d.ads.api.AdUnit)
.class public Lcom/unity3d/ads/api/AdUnit;
.super Ljava/lang/Object;
.source "AdUnit.java"


# static fields
.field private static _adUnitActivity:Lcom/unity3d/ads/adunit/AdUnitActivity;

.field private static _currentActivityId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, -0x1

    sput v0, Lcom/unity3d/ads/api/AdUnit;->_currentActivityId:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONArray;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {p0}, Lcom/unity3d/ads/api/AdUnit;->getViewList(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static close(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 3
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 130
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    .line 131
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 136
    :goto_13
    return-void

    .line 134
    :cond_14
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_13
.end method

.method public static getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/unity3d/ads/api/AdUnit;->_adUnitActivity:Lcom/unity3d/ads/adunit/AdUnitActivity;

    return-object v0
.end method

.method public static getCurrentAdUnitActivityId()I
    .registers 1

    .prologue
    .line 39
    sget v0, Lcom/unity3d/ads/api/AdUnit;->_currentActivityId:I

    return v0
.end method

.method private static getKeyEventList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "keyevents"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v1, "keyEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "idx":Ljava/lang/Integer;
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 318
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_a

    .line 321
    :cond_2e
    return-object v1
.end method

.method public static getOrientation(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 208
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 213
    :goto_1b
    return-void

    .line 211
    :cond_1c
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public static getViewFrame(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 6
    .param p0, "view"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 292
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 293
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getViewFrame(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 294
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getViewFrame(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 295
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "x"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "y"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 304
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_42
    return-void

    .line 298
    :cond_43
    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitError;->UNKNOWN_VIEW:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_42

    .line 302
    :cond_4b
    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_42
.end method

.method private static getViewList(Lorg/json/JSONArray;)[Ljava/lang/String;
    .registers 4
    .param p0, "views"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 308
    .local v0, "viewList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "viewidx":I
    :goto_7
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 309
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 312
    :cond_16
    return-object v0
.end method

.method public static getViews(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 6
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 176
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 177
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getViews()[Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "views":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONArray;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 183
    .end local v0    # "views":[Ljava/lang/String;
    :goto_20
    return-void

    .line 181
    :cond_21
    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_20
.end method

.method public static open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 5
    .param p0, "activityId"    # Ljava/lang/Integer;
    .param p1, "views"    # Lorg/json/JSONArray;
    .param p2, "orientation"    # Ljava/lang/Integer;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/unity3d/ads/api/AdUnit;->open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 49
    return-void
.end method

.method public static open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 12
    .param p0, "activityId"    # Ljava/lang/Integer;
    .param p1, "views"    # Lorg/json/JSONArray;
    .param p2, "orientation"    # Ljava/lang/Integer;
    .param p3, "keyevents"    # Lorg/json/JSONArray;
    .param p4, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/unity3d/ads/api/AdUnit;->open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 54
    return-void
.end method

.method public static open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 15
    .param p0, "activityId"    # Ljava/lang/Integer;
    .param p1, "views"    # Lorg/json/JSONArray;
    .param p2, "orientation"    # Ljava/lang/Integer;
    .param p3, "keyevents"    # Lorg/json/JSONArray;
    .param p4, "systemUiVisibility"    # Ljava/lang/Integer;
    .param p5, "hardwareAcceleration"    # Ljava/lang/Boolean;
    .param p6, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/unity3d/ads/api/AdUnit;->open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 59
    return-void
.end method

.method public static open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 16
    .param p0, "activityId"    # Ljava/lang/Integer;
    .param p1, "views"    # Lorg/json/JSONArray;
    .param p2, "orientation"    # Ljava/lang/Integer;
    .param p3, "keyevents"    # Lorg/json/JSONArray;
    .param p4, "systemUiVisibility"    # Ljava/lang/Integer;
    .param p5, "hardwareAcceleration"    # Ljava/lang/Boolean;
    .param p6, "isTransparent"    # Ljava/lang/Boolean;
    .param p7, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 65
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7b

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 66
    const-string v3, "Unity Ads opening new transparent ad unit activity, hardware acceleration disabled"

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 67
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/unity3d/ads/adunit/AdUnitTransparentSoftwareActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v2, "intent":Landroid/content/Intent;
    :goto_1f
    const/high16 v1, 0x10010000

    .line 80
    .local v1, "flags":I
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    if-eqz p0, :cond_e6

    .line 84
    :try_start_26
    const-string v3, "activityId"

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_c8

    .line 92
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/unity3d/ads/api/AdUnit;->setCurrentAdUnitActivityId(I)V

    .line 101
    :try_start_36
    const-string v3, "views"

    invoke-static {p1}, Lcom/unity3d/ads/api/AdUnit;->getViewList(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_f7

    .line 109
    if-eqz p3, :cond_4a

    .line 111
    :try_start_41
    const-string v3, "keyEvents"

    invoke-static {p3}, Lcom/unity3d/ads/api/AdUnit;->getKeyEventList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4a} :catch_10e

    .line 120
    :cond_4a
    const-string v3, "systemUiVisibility"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 121
    const-string v3, "orientation"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 122
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opened AdUnitActivity with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 124
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p7, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 125
    :goto_7a
    return-void

    .line 68
    .end local v1    # "flags":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7b
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_98

    .line 69
    const-string v3, "Unity Ads opening new hardware accelerated ad unit activity"

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 70
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/unity3d/ads/adunit/AdUnitActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_1f

    .line 71
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_98
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 72
    const-string v3, "Unity Ads opening new hardware accelerated transparent ad unit activity"

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 73
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/unity3d/ads/adunit/AdUnitTransparentActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    goto/16 :goto_1f

    .line 75
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_b6
    const-string v3, "Unity Ads opening new ad unit activity, hardware acceleration disabled"

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 76
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/unity3d/ads/adunit/AdUnitSoftwareActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    goto/16 :goto_1f

    .line 86
    .restart local v1    # "flags":I
    :catch_c8
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Could not set activityId for intent"

    invoke-static {v3, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 88
    sget-object v3, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_ID:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p7, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_7a

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e6
    const-string v3, "Activity ID is NULL"

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 96
    sget-object v3, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_ID:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "Activity ID NULL"

    aput-object v5, v4, v6

    invoke-virtual {p7, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_7a

    .line 103
    :catch_f7
    move-exception v0

    .line 104
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "Error parsing views from viewList"

    invoke-static {v3, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 105
    sget-object v3, Lcom/unity3d/ads/adunit/AdUnitError;->CORRUPTED_VIEWLIST:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p7, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto/16 :goto_7a

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_10e
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "Error parsing views from viewList"

    invoke-static {v3, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 115
    sget-object v3, Lcom/unity3d/ads/adunit/AdUnitError;->CORRUPTED_KEYEVENTLIST:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p3, v4, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p7, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto/16 :goto_7a
.end method

.method public static setAdUnitActivity(Lcom/unity3d/ads/adunit/AdUnitActivity;)V
    .registers 1
    .param p0, "activity"    # Lcom/unity3d/ads/adunit/AdUnitActivity;

    .prologue
    .line 31
    sput-object p0, Lcom/unity3d/ads/api/AdUnit;->_adUnitActivity:Lcom/unity3d/ads/adunit/AdUnitActivity;

    .line 32
    return-void
.end method

.method public static setCurrentAdUnitActivityId(I)V
    .registers 1
    .param p0, "activityId"    # I

    .prologue
    .line 43
    sput p0, Lcom/unity3d/ads/api/AdUnit;->_currentActivityId:I

    .line 44
    return-void
.end method

.method public static setKeepScreenOn(Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "screenOn"    # Ljava/lang/Boolean;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 217
    new-instance v0, Lcom/unity3d/ads/api/AdUnit$3;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/AdUnit$3;-><init>(Ljava/lang/Boolean;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 227
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 232
    :goto_14
    return-void

    .line 229
    :cond_15
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public static setKeyEventList(Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 7
    .param p0, "keyevents"    # Lorg/json/JSONArray;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 256
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 258
    :try_start_8
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v1

    invoke-static {p0}, Lcom/unity3d/ads/api/AdUnit;->getKeyEventList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setKeyEventList(Ljava/util/ArrayList;)V

    .line 259
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1d

    .line 269
    :goto_1c
    return-void

    .line 261
    :catch_1d
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error parsing views from viewList"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 263
    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitError;->CORRUPTED_KEYEVENTLIST:Lcom/unity3d/ads/adunit/AdUnitError;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1c

    .line 267
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_34
    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1c
.end method

.method public static setOrientation(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "orientation"    # Ljava/lang/Integer;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 187
    new-instance v0, Lcom/unity3d/ads/api/AdUnit$2;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/AdUnit$2;-><init>(Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 196
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 197
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 203
    :goto_17
    return-void

    .line 200
    :cond_18
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public static setSystemUiVisibility(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "systemUiVisibility"    # Ljava/lang/Integer;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 236
    new-instance v0, Lcom/unity3d/ads/api/AdUnit$4;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/AdUnit$4;-><init>(Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 245
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 246
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 252
    :goto_17
    return-void

    .line 249
    :cond_18
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public static setViewFrame(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 13
    .param p0, "view"    # Ljava/lang/String;
    .param p1, "x"    # Ljava/lang/Integer;
    .param p2, "y"    # Ljava/lang/Integer;
    .param p3, "width"    # Ljava/lang/Integer;
    .param p4, "height"    # Ljava/lang/Integer;
    .param p5, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 273
    new-instance v0, Lcom/unity3d/ads/api/AdUnit$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/api/AdUnit$5;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 282
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 283
    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p5, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 288
    :goto_19
    return-void

    .line 286
    :cond_1a
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p5, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_19
.end method

.method public static setViews(Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 9
    .param p0, "views"    # Lorg/json/JSONArray;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "corrupted":Z
    :try_start_3
    invoke-static {p0}, Lcom/unity3d/ads/api/AdUnit;->getViewList(Lorg/json/JSONArray;)[Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_6} :catch_1f

    move-result-object v2

    .line 150
    :goto_7
    if-nez v0, :cond_11

    .line 151
    new-instance v3, Lcom/unity3d/ads/api/AdUnit$1;

    invoke-direct {v3, p0}, Lcom/unity3d/ads/api/AdUnit$1;-><init>(Lorg/json/JSONArray;)V

    invoke-static {v3}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 165
    :cond_11
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 166
    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-virtual {p1, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 172
    :goto_1e
    return-void

    .line 145
    :catch_1f
    move-exception v1

    .line 146
    .local v1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/unity3d/ads/adunit/AdUnitError;->CORRUPTED_VIEWLIST:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-virtual {p1, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 147
    const/4 v0, 0x1

    goto :goto_7

    .line 169
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2b
    sget-object v3, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1e
.end method

###### Class com.unity3d.ads.api.AdUnit.AnonymousClass1 (com.unity3d.ads.api.AdUnit$1)
.class final Lcom/unity3d/ads/api/AdUnit$1;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/AdUnit;->setViews(Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$views:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lorg/json/JSONArray;)V
    .registers 2

    .prologue
    .line 151
    iput-object p1, p0, Lcom/unity3d/ads/api/AdUnit$1;->val$views:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 154
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 156
    :try_start_6
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/api/AdUnit$1;->val$views:Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/unity3d/ads/api/AdUnit;->access$000(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setViews([Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    .line 161
    :cond_13
    :goto_13
    return-void

    .line 157
    :catch_14
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Corrupted viewlist"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_13
.end method

###### Class com.unity3d.ads.api.AdUnit.AnonymousClass2 (com.unity3d.ads.api.AdUnit$2)
.class final Lcom/unity3d/ads/api/AdUnit$2;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/AdUnit;->setOrientation(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$orientation:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcom/unity3d/ads/api/AdUnit$2;->val$orientation:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 190
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 191
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/api/AdUnit$2;->val$orientation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setOrientation(I)V

    .line 193
    :cond_13
    return-void
.end method

###### Class com.unity3d.ads.api.AdUnit.AnonymousClass3 (com.unity3d.ads.api.AdUnit$3)
.class final Lcom/unity3d/ads/api/AdUnit$3;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/AdUnit;->setKeepScreenOn(Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$screenOn:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .prologue
    .line 217
    iput-object p1, p0, Lcom/unity3d/ads/api/AdUnit$3;->val$screenOn:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 220
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 221
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/api/AdUnit$3;->val$screenOn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setKeepScreenOn(Z)Z

    .line 223
    :cond_13
    return-void
.end method

###### Class com.unity3d.ads.api.AdUnit.AnonymousClass4 (com.unity3d.ads.api.AdUnit$4)
.class final Lcom/unity3d/ads/api/AdUnit$4;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/AdUnit;->setSystemUiVisibility(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$systemUiVisibility:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .registers 2

    .prologue
    .line 236
    iput-object p1, p0, Lcom/unity3d/ads/api/AdUnit$4;->val$systemUiVisibility:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 239
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 240
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/api/AdUnit$4;->val$systemUiVisibility:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setSystemUiVisibility(I)Z

    .line 242
    :cond_13
    return-void
.end method

###### Class com.unity3d.ads.api.AdUnit.AnonymousClass5 (com.unity3d.ads.api.AdUnit$5)
.class final Lcom/unity3d/ads/api/AdUnit$5;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/AdUnit;->setViewFrame(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$height:Ljava/lang/Integer;

.field final synthetic val$view:Ljava/lang/String;

.field final synthetic val$width:Ljava/lang/Integer;

.field final synthetic val$x:Ljava/lang/Integer;

.field final synthetic val$y:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 6

    .prologue
    .line 273
    iput-object p1, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$view:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$x:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$y:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$width:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$height:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 276
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 277
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$view:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$x:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$y:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$width:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$height:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setViewFrame(Ljava/lang/String;IIII)V

    .line 279
    :cond_27
    return-void
.end method
