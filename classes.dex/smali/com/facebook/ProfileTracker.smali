###### Class com.facebook.ProfileTracker (com.facebook.ProfileTracker)
.class public abstract Lcom/facebook/ProfileTracker;
.super Ljava/lang/Object;
.source "ProfileTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;
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

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ProfileTracker;->isTracking:Z

    .line 55
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 56
    new-instance v0, Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;-><init>(Lcom/facebook/ProfileTracker;Lcom/facebook/ProfileTracker$1;)V

    iput-object v0, p0, Lcom/facebook/ProfileTracker;->receiver:Landroid/content/BroadcastReceiver;

    .line 58
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ProfileTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 59
    invoke-virtual {p0}, Lcom/facebook/ProfileTracker;->startTracking()V

    .line 60
    return-void
.end method

.method private addBroadcastReceiver()V
    .registers 4

    .prologue
    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/facebook/ProfileTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/facebook/ProfileTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 115
    return-void
.end method


# virtual methods
.method public isTracking()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/facebook/ProfileTracker;->isTracking:Z

    return v0
.end method

.method protected abstract onCurrentProfileChanged(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
.end method

.method public startTracking()V
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/facebook/ProfileTracker;->isTracking:Z

    if-eqz v0, :cond_5

    .line 73
    :goto_4
    return-void

    .line 70
    :cond_5
    invoke-direct {p0}, Lcom/facebook/ProfileTracker;->addBroadcastReceiver()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ProfileTracker;->isTracking:Z

    goto :goto_4
.end method

.method public stopTracking()V
    .registers 3

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/facebook/ProfileTracker;->isTracking:Z

    if-nez v0, :cond_5

    .line 85
    :goto_4
    return-void

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/facebook/ProfileTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/facebook/ProfileTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ProfileTracker;->isTracking:Z

    goto :goto_4
.end method

###### Class com.facebook.ProfileTracker.AnonymousClass1 (com.facebook.ProfileTracker$1)
.class synthetic Lcom/facebook/ProfileTracker$1;
.super Ljava/lang/Object;
.source "ProfileTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ProfileTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.ProfileTracker.ProfileBroadcastReceiver (com.facebook.ProfileTracker$ProfileBroadcastReceiver)
.class Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProfileTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ProfileTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ProfileTracker;


# direct methods
.method private constructor <init>(Lcom/facebook/ProfileTracker;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;->this$0:Lcom/facebook/ProfileTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ProfileTracker;Lcom/facebook/ProfileTracker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/ProfileTracker;
    .param p2, "x1"    # Lcom/facebook/ProfileTracker$1;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;-><init>(Lcom/facebook/ProfileTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    const-string v2, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 100
    const-string v2, "com.facebook.sdk.EXTRA_OLD_PROFILE"

    .line 101
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/Profile;

    .line 102
    .local v1, "oldProfile":Lcom/facebook/Profile;
    const-string v2, "com.facebook.sdk.EXTRA_NEW_PROFILE"

    .line 103
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/Profile;

    .line 105
    .local v0, "newProfile":Lcom/facebook/Profile;
    iget-object v2, p0, Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;->this$0:Lcom/facebook/ProfileTracker;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ProfileTracker;->onCurrentProfileChanged(Lcom/facebook/Profile;Lcom/facebook/Profile;)V

    .line 107
    .end local v0    # "newProfile":Lcom/facebook/Profile;
    .end local v1    # "oldProfile":Lcom/facebook/Profile;
    :cond_21
    return-void
.end method
