###### Class com.unity3d.ads.api.Listener (com.unity3d.ads.api.Listener)
.class public Lcom/unity3d/ads/api/Listener;
.super Ljava/lang/Object;
.source "Listener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendClickEvent(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 3
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/unity3d/ads/api/Listener$4;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/Listener$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public static sendErrorEvent(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "error"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/unity3d/ads/api/Listener$7;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/api/Listener$7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 106
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public static sendFinishEvent(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/unity3d/ads/api/Listener$3;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/api/Listener$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public static sendInitiatePurchaseEvent(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 3
    .param p0, "eventString"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/unity3d/ads/api/Listener$5;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/Listener$5;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 78
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public static sendPlacementStateChangedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 5
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "oldState"    # Ljava/lang/String;
    .param p2, "newState"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/unity3d/ads/api/Listener$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/ads/api/Listener$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public static sendReadyEvent(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 3
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 13
    new-instance v0, Lcom/unity3d/ads/api/Listener$1;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/Listener$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public static sendStartEvent(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 3
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/unity3d/ads/api/Listener$2;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/Listener$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 37
    return-void
.end method

###### Class com.unity3d.ads.api.Listener.AnonymousClass1 (com.unity3d.ads.api.Listener$1)
.class final Lcom/unity3d/ads/api/Listener$1;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/Listener;->sendReadyEvent(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 13
    iput-object p1, p0, Lcom/unity3d/ads/api/Listener$1;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 16
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 17
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/api/Listener$1;->val$placementId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsReady(Ljava/lang/String;)V

    .line 19
    :cond_f
    return-void
.end method

###### Class com.unity3d.ads.api.Listener.AnonymousClass2 (com.unity3d.ads.api.Listener$2)
.class final Lcom/unity3d/ads/api/Listener$2;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/Listener;->sendStartEvent(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/unity3d/ads/api/Listener$2;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 30
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 31
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/api/Listener$2;->val$placementId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsStart(Ljava/lang/String;)V

    .line 33
    :cond_f
    return-void
.end method

###### Class com.unity3d.ads.api.Listener.AnonymousClass3 (com.unity3d.ads.api.Listener$3)
.class final Lcom/unity3d/ads/api/Listener$3;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/Listener;->sendFinishEvent(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$placementId:Ljava/lang/String;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 41
    iput-object p1, p0, Lcom/unity3d/ads/api/Listener$3;->val$placementId:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/api/Listener$3;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 44
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 45
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/api/Listener$3;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/api/Listener$3;->val$result:Ljava/lang/String;

    invoke-static {v2}, Lcom/unity3d/ads/UnityAds$FinishState;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$FinishState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V

    .line 47
    :cond_15
    return-void
.end method

###### Class com.unity3d.ads.api.Listener.AnonymousClass4 (com.unity3d.ads.api.Listener$4)
.class final Lcom/unity3d/ads/api/Listener$4;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/Listener;->sendClickEvent(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/unity3d/ads/api/Listener$4;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 58
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    instance-of v0, v0, Lcom/unity3d/ads/mediation/IUnityAdsExtendedListener;

    if-eqz v0, :cond_19

    .line 59
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/mediation/IUnityAdsExtendedListener;

    iget-object v1, p0, Lcom/unity3d/ads/api/Listener$4;->val$placementId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/ads/mediation/IUnityAdsExtendedListener;->onUnityAdsClick(Ljava/lang/String;)V

    .line 61
    :cond_19
    return-void
.end method

###### Class com.unity3d.ads.api.Listener.AnonymousClass5 (com.unity3d.ads.api.Listener$5)
.class final Lcom/unity3d/ads/api/Listener$5;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/Listener;->sendInitiatePurchaseEvent(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/unity3d/ads/api/Listener$5;->val$eventString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 72
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    instance-of v0, v0, Lcom/unity3d/ads/unity/IUnityAdsUnityListener;

    if-eqz v0, :cond_19

    .line 73
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/unity/IUnityAdsUnityListener;

    iget-object v1, p0, Lcom/unity3d/ads/api/Listener$5;->val$eventString:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/ads/unity/IUnityAdsUnityListener;->onUnityAdsInitiatePurchase(Ljava/lang/String;)V

    .line 75
    :cond_19
    return-void
.end method

###### Class com.unity3d.ads.api.Listener.AnonymousClass6 (com.unity3d.ads.api.Listener$6)
.class final Lcom/unity3d/ads/api/Listener$6;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/Listener;->sendPlacementStateChangedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$newState:Ljava/lang/String;

.field final synthetic val$oldState:Ljava/lang/String;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 83
    iput-object p1, p0, Lcom/unity3d/ads/api/Listener$6;->val$placementId:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/api/Listener$6;->val$oldState:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/ads/api/Listener$6;->val$newState:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 86
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    instance-of v0, v0, Lcom/unity3d/ads/mediation/IUnityAdsExtendedListener;

    if-eqz v0, :cond_25

    .line 87
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/mediation/IUnityAdsExtendedListener;

    iget-object v1, p0, Lcom/unity3d/ads/api/Listener$6;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/api/Listener$6;->val$oldState:Ljava/lang/String;

    invoke-static {v2}, Lcom/unity3d/ads/UnityAds$PlacementState;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/ads/api/Listener$6;->val$newState:Ljava/lang/String;

    invoke-static {v3}, Lcom/unity3d/ads/UnityAds$PlacementState;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/unity3d/ads/mediation/IUnityAdsExtendedListener;->onUnityAdsPlacementStateChanged(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$PlacementState;Lcom/unity3d/ads/UnityAds$PlacementState;)V

    .line 89
    :cond_25
    return-void
.end method

###### Class com.unity3d.ads.api.Listener.AnonymousClass7 (com.unity3d.ads.api.Listener$7)
.class final Lcom/unity3d/ads/api/Listener$7;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/Listener;->sendErrorEvent(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$error:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 97
    iput-object p1, p0, Lcom/unity3d/ads/api/Listener$7;->val$error:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/api/Listener$7;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 100
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 101
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/api/Listener$7;->val$error:Ljava/lang/String;

    invoke-static {v1}, Lcom/unity3d/ads/UnityAds$UnityAdsError;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$UnityAdsError;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/api/Listener$7;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 103
    :cond_15
    return-void
.end method
