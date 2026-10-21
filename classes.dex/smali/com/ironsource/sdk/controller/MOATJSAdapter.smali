###### Class com.ironsource.sdk.controller.MOATJSAdapter (com.ironsource.sdk.controller.MOATJSAdapter)
.class public Lcom/ironsource/sdk/controller/MOATJSAdapter;
.super Ljava/lang/Object;
.source "MOATJSAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;
    }
.end annotation


# static fields
.field private static final createAdTracker:Ljava/lang/String; = "createAdTracker"

.field private static final fail:Ljava/lang/String; = "fail"

.field private static final initWithOptions:Ljava/lang/String; = "initWithOptions"

.field private static final moatFunction:Ljava/lang/String; = "moatFunction"

.field private static final moatParams:Ljava/lang/String; = "moatParams"

.field private static final startTracking:Ljava/lang/String; = "startTracking"

.field private static final stopTracking:Ljava/lang/String; = "stopTracking"

.field private static final success:Ljava/lang/String; = "success"


# instance fields
.field private mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter;->mApplication:Landroid/app/Application;

    .line 35
    return-void
.end method

.method private createEventListener(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;
    .registers 5
    .param p1, "callback"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;
    .param p2, "success"    # Ljava/lang/String;
    .param p3, "fail"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;-><init>(Lcom/ironsource/sdk/controller/MOATJSAdapter;Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private fetchFunctionCall(Ljava/lang/String;)Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;
    .registers 5
    .param p1, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "functionData":Lorg/json/JSONObject;
    new-instance v1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;-><init>(Lcom/ironsource/sdk/controller/MOATJSAdapter$1;)V

    .line 94
    .local v1, "res":Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;
    const-string v2, "moatFunction"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->name:Ljava/lang/String;

    .line 95
    const-string v2, "moatParams"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->params:Lorg/json/JSONObject;

    .line 96
    const-string v2, "success"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->successCallback:Ljava/lang/String;

    .line 97
    const-string v2, "fail"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->failCallback:Ljava/lang/String;

    .line 99
    return-object v1
.end method


# virtual methods
.method call(Ljava/lang/String;Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;Landroid/webkit/WebView;)V
    .registers 7
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;
    .param p3, "webView"    # Landroid/webkit/WebView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/MOATJSAdapter;->fetchFunctionCall(Ljava/lang/String;)Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;

    move-result-object v0

    .line 48
    .local v0, "fCall":Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;
    const-string v1, "initWithOptions"

    iget-object v2, v0, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 49
    iget-object v1, v0, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->params:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter;->mApplication:Landroid/app/Application;

    invoke-static {v1, v2}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->initWithOptions(Lorg/json/JSONObject;Landroid/app/Application;)V

    .line 62
    :cond_15
    :goto_15
    return-void

    .line 51
    :cond_16
    const-string v1, "createAdTracker"

    iget-object v2, v0, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    if-eqz p3, :cond_26

    .line 52
    invoke-static {p3}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->createAdTracker(Landroid/webkit/WebView;)V

    goto :goto_15

    .line 54
    :cond_26
    const-string v1, "startTracking"

    iget-object v2, v0, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 55
    iget-object v1, v0, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->successCallback:Ljava/lang/String;

    iget-object v2, v0, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->failCallback:Ljava/lang/String;

    invoke-direct {p0, p2, v1, v2}, Lcom/ironsource/sdk/controller/MOATJSAdapter;->createEventListener(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->setEventListener(Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;)V

    .line 56
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->startTracking()V

    goto :goto_15

    .line 58
    :cond_3f
    const-string v1, "stopTracking"

    iget-object v2, v0, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 59
    iget-object v1, v0, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->successCallback:Ljava/lang/String;

    iget-object v2, v0, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->failCallback:Ljava/lang/String;

    invoke-direct {p0, p2, v1, v2}, Lcom/ironsource/sdk/controller/MOATJSAdapter;->createEventListener(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->setEventListener(Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;)V

    .line 60
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->stopTracking()V

    goto :goto_15
.end method

###### Class com.ironsource.sdk.controller.MOATJSAdapter.AnonymousClass1 (com.ironsource.sdk.controller.MOATJSAdapter$1)
.class Lcom/ironsource/sdk/controller/MOATJSAdapter$1;
.super Ljava/lang/Object;
.source "MOATJSAdapter.java"

# interfaces
.implements Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/MOATJSAdapter;->createEventListener(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/MOATJSAdapter;

.field final synthetic val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;

.field final synthetic val$fail:Ljava/lang/String;

.field final synthetic val$success:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/MOATJSAdapter;Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/MOATJSAdapter;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->this$0:Lcom/ironsource/sdk/controller/MOATJSAdapter;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$success:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$fail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrackingFailedToStart(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;

    if-eqz v0, :cond_c

    .line 77
    iget-object v0, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$fail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;->sendMessage(ZLjava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_c
    return-void
.end method

.method public onTrackingStarted(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;

    if-eqz v0, :cond_c

    .line 69
    iget-object v0, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$success:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;->sendMessage(ZLjava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_c
    return-void
.end method

.method public onTrackingStopped(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;

    if-eqz v0, :cond_c

    .line 84
    iget-object v0, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$success:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;->sendMessage(ZLjava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_c
    return-void
.end method

###### Class com.ironsource.sdk.controller.MOATJSAdapter.FunctionCall (com.ironsource.sdk.controller.MOATJSAdapter$FunctionCall)
.class Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;
.super Ljava/lang/Object;
.source "MOATJSAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/MOATJSAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FunctionCall"
.end annotation


# instance fields
.field failCallback:Ljava/lang/String;

.field name:Ljava/lang/String;

.field params:Lorg/json/JSONObject;

.field successCallback:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/MOATJSAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/ironsource/sdk/controller/MOATJSAdapter$1;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;-><init>()V

    return-void
.end method
