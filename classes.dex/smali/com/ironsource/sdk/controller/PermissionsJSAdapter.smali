###### Class com.ironsource.sdk.controller.PermissionsJSAdapter (com.ironsource.sdk.controller.PermissionsJSAdapter)
.class public Lcom/ironsource/sdk/controller/PermissionsJSAdapter;
.super Ljava/lang/Object;
.source "PermissionsJSAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final fail:Ljava/lang/String; = "fail"

.field private static final getPermissions:Ljava/lang/String; = "getPermissions"

.field private static final isPermissionGranted:Ljava/lang/String; = "isPermissionGranted"

.field private static final permissionsFunction:Ljava/lang/String; = "functionName"

.field private static final permissionsGetPermissionsParam:Ljava/lang/String; = "permissions"

.field private static final permissionsParameters:Ljava/lang/String; = "functionParams"

.field private static final permissionsisPermissionGrantedParam:Ljava/lang/String; = "permission"

.field private static final permissionsisPermissionGrantedStatus:Ljava/lang/String; = "status"

.field private static final success:Ljava/lang/String; = "success"

.field private static final unhandled:Ljava/lang/String; = "unhandledPermission"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private fetchFunctionCall(Ljava/lang/String;)Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;
    .registers 5
    .param p1, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "functionData":Lorg/json/JSONObject;
    new-instance v1, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;-><init>(Lcom/ironsource/sdk/controller/PermissionsJSAdapter$1;)V

    .line 57
    .local v1, "res":Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;
    const-string v2, "functionName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;->name:Ljava/lang/String;

    .line 58
    const-string v2, "functionParams"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;->params:Lorg/json/JSONObject;

    .line 59
    const-string v2, "success"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;->successCallback:Ljava/lang/String;

    .line 60
    const-string v2, "fail"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;->failureCallback:Ljava/lang/String;

    .line 61
    return-object v1
.end method


# virtual methods
.method call(Ljava/lang/String;Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;)V
    .registers 7
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;->fetchFunctionCall(Ljava/lang/String;)Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;

    move-result-object v0

    .line 67
    .local v0, "fCall":Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;
    const-string v1, "getPermissions"

    iget-object v2, v0, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 68
    iget-object v1, v0, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;->params:Lorg/json/JSONObject;

    invoke-virtual {p0, v1, v0, p2}, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;->getPermissions(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;)V

    .line 74
    :goto_13
    return-void

    .line 69
    :cond_14
    const-string v1, "isPermissionGranted"

    iget-object v2, v0, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 70
    iget-object v1, v0, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;->params:Lorg/json/JSONObject;

    invoke-virtual {p0, v1, v0, p2}, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;->isPermissionGranted(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;)V

    goto :goto_13

    .line 72
    :cond_24
    sget-object v1, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PermissionsJSAdapter unhandled API request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public getPermissions(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;)V
    .registers 10
    .param p1, "value"    # Lorg/json/JSONObject;
    .param p2, "fCall"    # Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;
    .param p3, "callback"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;

    .prologue
    .line 99
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1}, Lcom/ironsource/sdk/data/SSAObj;-><init>()V

    .line 101
    .local v1, "permissions":Lcom/ironsource/sdk/data/SSAObj;
    :try_start_5
    const-string v3, "permissions"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 102
    .local v2, "permissionsFromController":Lorg/json/JSONArray;
    const-string v3, "permissions"

    iget-object v4, p0, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/ironsource/environment/ApplicationContext;->getPermissions(Landroid/content/Context;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 103
    const/4 v3, 0x1

    iget-object v4, p2, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;->successCallback:Ljava/lang/String;

    invoke-virtual {p3, v3, v4, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;->sendMessage(ZLjava/lang/String;Lcom/ironsource/sdk/data/SSAObj;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1d

    .line 112
    .end local v2    # "permissionsFromController":Lorg/json/JSONArray;
    :goto_1c
    return-void

    .line 104
    :catch_1d
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    sget-object v3, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PermissionsJSAdapter getPermissions JSON Exception when getting permissions parameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-eqz v1, :cond_48

    .line 108
    const-string v3, "errMsg"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_48
    const/4 v3, 0x0

    iget-object v4, p2, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;->failureCallback:Ljava/lang/String;

    invoke-virtual {p3, v3, v4, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;->sendMessage(ZLjava/lang/String;Lcom/ironsource/sdk/data/SSAObj;)V

    goto :goto_1c
.end method

.method public isPermissionGranted(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;)V
    .registers 11
    .param p1, "value"    # Lorg/json/JSONObject;
    .param p2, "fCall"    # Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;
    .param p3, "callback"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;

    .prologue
    const/4 v6, 0x0

    .line 77
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2}, Lcom/ironsource/sdk/data/SSAObj;-><init>()V

    .line 79
    .local v2, "permissionAndStatus":Lcom/ironsource/sdk/data/SSAObj;
    :try_start_6
    const-string v4, "permission"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "permissionName":Ljava/lang/String;
    const-string v4, "permission"

    invoke-virtual {v2, v4, v3}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v4, p0, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/ironsource/environment/ApplicationContext;->isValidPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 82
    iget-object v4, p0, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/ironsource/environment/ApplicationContext;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 83
    .local v1, "isPermissionGrantedValue":Z
    const-string v4, "status"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v4, 0x1

    iget-object v5, p2, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;->successCallback:Ljava/lang/String;

    invoke-virtual {p3, v4, v5, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;->sendMessage(ZLjava/lang/String;Lcom/ironsource/sdk/data/SSAObj;)V

    .line 96
    .end local v1    # "isPermissionGrantedValue":Z
    .end local v3    # "permissionName":Ljava/lang/String;
    :goto_2e
    return-void

    .line 86
    .restart local v3    # "permissionName":Ljava/lang/String;
    :cond_2f
    const-string v4, "status"

    const-string v5, "unhandledPermission"

    invoke-virtual {v2, v4, v5}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v4, 0x0

    iget-object v5, p2, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;->failureCallback:Ljava/lang/String;

    invoke-virtual {p3, v4, v5, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;->sendMessage(ZLjava/lang/String;Lcom/ironsource/sdk/data/SSAObj;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3c} :catch_3d

    goto :goto_2e

    .line 89
    .end local v3    # "permissionName":Ljava/lang/String;
    :catch_3d
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    if-eqz v2, :cond_4c

    .line 92
    const-string v4, "errMsg"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_4c
    iget-object v4, p2, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;->failureCallback:Ljava/lang/String;

    invoke-virtual {p3, v6, v4, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;->sendMessage(ZLjava/lang/String;Lcom/ironsource/sdk/data/SSAObj;)V

    goto :goto_2e
.end method

###### Class com.ironsource.sdk.controller.PermissionsJSAdapter.AnonymousClass1 (com.ironsource.sdk.controller.PermissionsJSAdapter$1)
.class synthetic Lcom/ironsource/sdk/controller/PermissionsJSAdapter$1;
.super Ljava/lang/Object;
.source "PermissionsJSAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/PermissionsJSAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.ironsource.sdk.controller.PermissionsJSAdapter.FunctionCall (com.ironsource.sdk.controller.PermissionsJSAdapter$FunctionCall)
.class Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;
.super Ljava/lang/Object;
.source "PermissionsJSAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/PermissionsJSAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FunctionCall"
.end annotation


# instance fields
.field failureCallback:Ljava/lang/String;

.field name:Ljava/lang/String;

.field params:Lorg/json/JSONObject;

.field successCallback:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/PermissionsJSAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/ironsource/sdk/controller/PermissionsJSAdapter$1;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/PermissionsJSAdapter$FunctionCall;-><init>()V

    return-void
.end method
