###### Class com.facebook.AccessTokenTracker (com.facebook.AccessTokenTracker)
.class public abstract Lcom/facebook/AccessTokenTracker;
.super Ljava/lang/Object;
.source "AccessTokenTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private isTracking:Z

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    .line 55
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 57
    new-instance v0, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;-><init>(Lcom/facebook/AccessTokenTracker;Lcom/facebook/AccessTokenTracker$1;)V

    iput-object v0, p0, Lcom/facebook/AccessTokenTracker;->receiver:Landroid/content/BroadcastReceiver;

    .line 59
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessTokenTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 61
    invoke-virtual {p0}, Lcom/facebook/AccessTokenTracker;->startTracking()V

    .line 62
    return-void
.end method

.method private addBroadcastReceiver()V
    .registers 4

    .prologue
    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/facebook/AccessTokenTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/facebook/AccessTokenTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 117
    return-void
.end method


# virtual methods
.method public isTracking()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    return v0
.end method

.method protected abstract onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
.end method

.method public startTracking()V
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    if-eqz v0, :cond_5

    .line 75
    :goto_4
    return-void

    .line 72
    :cond_5
    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;->addBroadcastReceiver()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    goto :goto_4
.end method

.method public stopTracking()V
    .registers 3

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    if-nez v0, :cond_5

    .line 87
    :goto_4
    return-void

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/facebook/AccessTokenTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/facebook/AccessTokenTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    goto :goto_4
.end method

###### Class com.facebook.AccessTokenTracker.AnonymousClass1 (com.facebook.AccessTokenTracker$1)
.class synthetic Lcom/facebook/AccessTokenTracker$1;
.super Ljava/lang/Object;
.source "AccessTokenTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.AccessTokenTracker.CurrentAccessTokenBroadcastReceiver (com.facebook.AccessTokenTracker$CurrentAccessTokenBroadcastReceiver)
.class Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessTokenTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentAccessTokenBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenTracker;


# direct methods
.method private constructor <init>(Lcom/facebook/AccessTokenTracker;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;->this$0:Lcom/facebook/AccessTokenTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/AccessTokenTracker;Lcom/facebook/AccessTokenTracker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/AccessTokenTracker;
    .param p2, "x1"    # Lcom/facebook/AccessTokenTracker$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;-><init>(Lcom/facebook/AccessTokenTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    const-string v2, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 102
    const-string v2, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    .line 103
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/AccessToken;

    .line 104
    .local v1, "oldAccessToken":Lcom/facebook/AccessToken;
    const-string v2, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    .line 105
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/AccessToken;

    .line 107
    .local v0, "newAccessToken":Lcom/facebook/AccessToken;
    iget-object v2, p0, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;->this$0:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/AccessTokenTracker;->onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V

    .line 109
    .end local v0    # "newAccessToken":Lcom/facebook/AccessToken;
    .end local v1    # "oldAccessToken":Lcom/facebook/AccessToken;
    :cond_21
    return-void
.end method
