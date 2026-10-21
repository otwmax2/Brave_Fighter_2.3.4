###### Class com.facebook.login.widget.DeviceLoginButton (com.facebook.login.widget.DeviceLoginButton)
.class public Lcom/facebook/login/widget/DeviceLoginButton;
.super Lcom/facebook/login/widget/LoginButton;
.source "DeviceLoginButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;
    }
.end annotation


# instance fields
.field private deviceRedirectUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/LoginButton;-><init>(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/facebook/login/widget/LoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/login/widget/LoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method


# virtual methods
.method public getDeviceRedirectUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/login/widget/DeviceLoginButton;->deviceRedirectUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getNewLoginClickListener()Lcom/facebook/login/widget/LoginButton$LoginClickListener;
    .registers 3

    .prologue
    .line 94
    new-instance v0, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;-><init>(Lcom/facebook/login/widget/DeviceLoginButton;Lcom/facebook/login/widget/DeviceLoginButton$1;)V

    return-object v0
.end method

.method public setDeviceRedirectUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/facebook/login/widget/DeviceLoginButton;->deviceRedirectUri:Landroid/net/Uri;

    .line 78
    return-void
.end method

###### Class com.facebook.login.widget.DeviceLoginButton.AnonymousClass1 (com.facebook.login.widget.DeviceLoginButton$1)
.class synthetic Lcom/facebook/login/widget/DeviceLoginButton$1;
.super Ljava/lang/Object;
.source "DeviceLoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/DeviceLoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.login.widget.DeviceLoginButton.DeviceLoginClickListener (com.facebook.login.widget.DeviceLoginButton$DeviceLoginClickListener)
.class Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;
.super Lcom/facebook/login/widget/LoginButton$LoginClickListener;
.source "DeviceLoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/DeviceLoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceLoginClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/DeviceLoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/login/widget/DeviceLoginButton;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;->this$0:Lcom/facebook/login/widget/DeviceLoginButton;

    invoke-direct {p0, p1}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/login/widget/DeviceLoginButton;Lcom/facebook/login/widget/DeviceLoginButton$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/login/widget/DeviceLoginButton;
    .param p2, "x1"    # Lcom/facebook/login/widget/DeviceLoginButton$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;-><init>(Lcom/facebook/login/widget/DeviceLoginButton;)V

    return-void
.end method


# virtual methods
.method protected getLoginManager()Lcom/facebook/login/LoginManager;
    .registers 3

    .prologue
    .line 100
    invoke-static {}, Lcom/facebook/login/DeviceLoginManager;->getInstance()Lcom/facebook/login/DeviceLoginManager;

    move-result-object v0

    .line 101
    .local v0, "manager":Lcom/facebook/login/DeviceLoginManager;
    iget-object v1, p0, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;->this$0:Lcom/facebook/login/widget/DeviceLoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/DeviceLoginButton;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceLoginManager;->setDefaultAudience(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;

    .line 102
    sget-object v1, Lcom/facebook/login/LoginBehavior;->DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceLoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    .line 103
    iget-object v1, p0, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;->this$0:Lcom/facebook/login/widget/DeviceLoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/DeviceLoginButton;->getDeviceRedirectUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceLoginManager;->setDeviceRedirectUri(Landroid/net/Uri;)V

    .line 104
    return-object v0
.end method
