###### Class com.unity3d.ads.api.Intent (com.unity3d.ads.api.Intent)
.class public Lcom/unity3d/ads/api/Intent;
.super Ljava/lang/Object;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/api/Intent$IntentError;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private static getStartingActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, "act":Landroid/app/Activity;
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 148
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    .line 154
    :cond_b
    :goto_b
    return-object v0

    .line 150
    :cond_c
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 151
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_b
.end method

.method public static launch(Lorg/json/JSONObject;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 16
    .param p0, "intentData"    # Lorg/json/JSONObject;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 27
    const-string v10, "className"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 28
    .local v2, "className":Ljava/lang/String;
    const-string v10, "packageName"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 29
    .local v7, "packageName":Ljava/lang/String;
    const-string v10, "action"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    .local v0, "action":Ljava/lang/String;
    const-string v10, "uri"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 31
    .local v9, "uri":Ljava/lang/String;
    const-string v10, "mimeType"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 32
    .local v6, "mimeType":Ljava/lang/String;
    const-string v10, "categories"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 33
    .local v1, "categories":Lorg/json/JSONArray;
    const-string v10, "flags"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 34
    .local v4, "flags":Ljava/lang/Integer;
    const-string v10, "extras"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 36
    .local v3, "extras":Lorg/json/JSONArray;
    if-eqz v7, :cond_7b

    if-nez v2, :cond_7b

    if-nez v0, :cond_7b

    if-nez v6, :cond_7b

    .line 37
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 38
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 40
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_66

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v11, :cond_66

    .line 41
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_66
    :goto_66
    if-eqz v5, :cond_d0

    .line 70
    invoke-static {}, Lcom/unity3d/ads/api/Intent;->getStartingActivity()Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_c8

    .line 71
    invoke-static {}, Lcom/unity3d/ads/api/Intent;->getStartingActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 72
    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {p1, v10}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 81
    :goto_7a
    return-void

    .line 45
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_7b
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 47
    .restart local v5    # "intent":Landroid/content/Intent;
    if-eqz v2, :cond_87

    if-eqz v7, :cond_87

    .line 48
    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    :cond_87
    if-eqz v0, :cond_8c

    .line 51
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_8c
    if-eqz v9, :cond_95

    .line 54
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 56
    :cond_95
    if-eqz v6, :cond_9a

    .line 57
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :cond_9a
    if-eqz v4, :cond_a9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v11, :cond_a9

    .line 60
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    :cond_a9
    invoke-static {v5, v1}, Lcom/unity3d/ads/api/Intent;->setCategories(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v10

    if-nez v10, :cond_b8

    .line 63
    sget-object v10, Lcom/unity3d/ads/api/Intent$IntentError;->COULDNT_PARSE_CATEGORIES:Lcom/unity3d/ads/api/Intent$IntentError;

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v1, v11, v12

    invoke-virtual {p1, v10, v11}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 65
    :cond_b8
    invoke-static {v5, v3}, Lcom/unity3d/ads/api/Intent;->setExtras(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v10

    if-nez v10, :cond_66

    .line 66
    sget-object v10, Lcom/unity3d/ads/api/Intent$IntentError;->COULDNT_PARSE_EXTRAS:Lcom/unity3d/ads/api/Intent$IntentError;

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v3, v11, v12

    invoke-virtual {p1, v10, v11}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_66

    .line 75
    :cond_c8
    sget-object v10, Lcom/unity3d/ads/api/Intent$IntentError;->ACTIVITY_WAS_NULL:Lcom/unity3d/ads/api/Intent$IntentError;

    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {p1, v10, v11}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_7a

    .line 79
    :cond_d0
    sget-object v10, Lcom/unity3d/ads/api/Intent$IntentError;->INTENT_WAS_NULL:Lcom/unity3d/ads/api/Intent$IntentError;

    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {p1, v10, v11}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_7a
.end method

.method private static setCategories(Landroid/content/Intent;Lorg/json/JSONArray;)Z
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "categories"    # Lorg/json/JSONArray;

    .prologue
    .line 84
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_21

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 87
    :try_start_f
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_19

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 88
    :catch_19
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Couldn\'t parse categories for intent"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 90
    const/4 v2, 0x0

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :goto_20
    return v2

    :cond_21
    const/4 v2, 0x1

    goto :goto_20
.end method

.method private static setExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 124
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 125
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0

    .line 127
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_19

    .line 128
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9

    .line 130
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_19
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_27

    .line 131
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_9

    .line 133
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_27
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_35

    .line 134
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_9

    .line 137
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse launch intent extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static setExtras(Landroid/content/Intent;Lorg/json/JSONArray;)Z
    .registers 9
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "extras"    # Lorg/json/JSONArray;

    .prologue
    const/4 v5, 0x0

    .line 99
    if-eqz p1, :cond_2b

    .line 104
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2b

    .line 106
    :try_start_a
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 107
    .local v2, "item":Lorg/json/JSONObject;
    const-string v6, "key"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "key":Ljava/lang/String;
    const-string v6, "value"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_21

    move-result-object v4

    .line 115
    .local v4, "value":Ljava/lang/Object;
    invoke-static {p0, v3, v4}, Lcom/unity3d/ads/api/Intent;->setExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 120
    .end local v1    # "i":I
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :goto_20
    return v5

    .line 110
    .restart local v1    # "i":I
    :catch_21
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Couldn\'t parse extras"

    invoke-static {v6, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_20

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "item":Lorg/json/JSONObject;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 120
    .end local v1    # "i":I
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2b
    const/4 v5, 0x1

    goto :goto_20
.end method

###### Class com.unity3d.ads.api.Intent.IntentError (com.unity3d.ads.api.Intent$IntentError)
.class public final enum Lcom/unity3d/ads/api/Intent$IntentError;
.super Ljava/lang/Enum;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/api/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntentError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/api/Intent$IntentError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/api/Intent$IntentError;

.field public static final enum ACTIVITY_WAS_NULL:Lcom/unity3d/ads/api/Intent$IntentError;

.field public static final enum COULDNT_PARSE_CATEGORIES:Lcom/unity3d/ads/api/Intent$IntentError;

.field public static final enum COULDNT_PARSE_EXTRAS:Lcom/unity3d/ads/api/Intent$IntentError;

.field public static final enum INTENT_WAS_NULL:Lcom/unity3d/ads/api/Intent$IntentError;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/unity3d/ads/api/Intent$IntentError;

    const-string v1, "COULDNT_PARSE_EXTRAS"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/api/Intent$IntentError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/api/Intent$IntentError;->COULDNT_PARSE_EXTRAS:Lcom/unity3d/ads/api/Intent$IntentError;

    .line 18
    new-instance v0, Lcom/unity3d/ads/api/Intent$IntentError;

    const-string v1, "COULDNT_PARSE_CATEGORIES"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/api/Intent$IntentError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/api/Intent$IntentError;->COULDNT_PARSE_CATEGORIES:Lcom/unity3d/ads/api/Intent$IntentError;

    .line 19
    new-instance v0, Lcom/unity3d/ads/api/Intent$IntentError;

    const-string v1, "INTENT_WAS_NULL"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/api/Intent$IntentError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/api/Intent$IntentError;->INTENT_WAS_NULL:Lcom/unity3d/ads/api/Intent$IntentError;

    .line 20
    new-instance v0, Lcom/unity3d/ads/api/Intent$IntentError;

    const-string v1, "ACTIVITY_WAS_NULL"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/api/Intent$IntentError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/api/Intent$IntentError;->ACTIVITY_WAS_NULL:Lcom/unity3d/ads/api/Intent$IntentError;

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/unity3d/ads/api/Intent$IntentError;

    sget-object v1, Lcom/unity3d/ads/api/Intent$IntentError;->COULDNT_PARSE_EXTRAS:Lcom/unity3d/ads/api/Intent$IntentError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/api/Intent$IntentError;->COULDNT_PARSE_CATEGORIES:Lcom/unity3d/ads/api/Intent$IntentError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/api/Intent$IntentError;->INTENT_WAS_NULL:Lcom/unity3d/ads/api/Intent$IntentError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/api/Intent$IntentError;->ACTIVITY_WAS_NULL:Lcom/unity3d/ads/api/Intent$IntentError;

    aput-object v1, v0, v5

    sput-object v0, Lcom/unity3d/ads/api/Intent$IntentError;->$VALUES:[Lcom/unity3d/ads/api/Intent$IntentError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/api/Intent$IntentError;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/unity3d/ads/api/Intent$IntentError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/api/Intent$IntentError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/api/Intent$IntentError;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/unity3d/ads/api/Intent$IntentError;->$VALUES:[Lcom/unity3d/ads/api/Intent$IntentError;

    invoke-virtual {v0}, [Lcom/unity3d/ads/api/Intent$IntentError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/api/Intent$IntentError;

    return-object v0
.end method
