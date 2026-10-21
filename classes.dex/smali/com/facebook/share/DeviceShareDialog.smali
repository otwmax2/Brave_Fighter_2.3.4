###### Class com.facebook.share.DeviceShareDialog (com.facebook.share.DeviceShareDialog)
.class public Lcom/facebook/share/DeviceShareDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "DeviceShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/DeviceShareDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/DeviceShareDialog$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->DeviceShare:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 56
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/DeviceShareDialog;->DEFAULT_REQUEST_CODE:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    sget v0, Lcom/facebook/share/DeviceShareDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 69
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    sget v1, Lcom/facebook/share/DeviceShareDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 76
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    sget v1, Lcom/facebook/share/DeviceShareDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 77
    return-void
.end method


# virtual methods
.method protected canShowImpl(Lcom/facebook/share/model/ShareContent;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p2, "mode"    # Ljava/lang/Object;

    .prologue
    .line 81
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-nez v0, :cond_8

    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected bridge synthetic canShowImpl(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 53
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/DeviceShareDialog;->canShowImpl(Lcom/facebook/share/model/ShareContent;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/FacebookDialogBase",
            "<",
            "Lcom/facebook/share/model/ShareContent;",
            "Lcom/facebook/share/DeviceShareDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .registers 5
    .param p1, "callbackManager"    # Lcom/facebook/internal/CallbackManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/DeviceShareDialog$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .line 119
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/DeviceShareDialog$Result;>;"
    invoke-virtual {p0}, Lcom/facebook/share/DeviceShareDialog;->getRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/share/DeviceShareDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/share/DeviceShareDialog$1;-><init>(Lcom/facebook/share/DeviceShareDialog;Lcom/facebook/FacebookCallback;)V

    .line 118
    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 132
    return-void
.end method

.method protected showImpl(Lcom/facebook/share/model/ShareContent;Ljava/lang/Object;)V
    .registers 7
    .param p1, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p2, "mode"    # Ljava/lang/Object;

    .prologue
    .line 87
    if-nez p1, :cond_a

    .line 88
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Must provide non-null content to share"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_a
    instance-of v1, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-nez v1, :cond_33

    instance-of v1, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-nez v1, :cond_33

    .line 93
    new-instance v1, Lcom/facebook/FacebookException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " only supports ShareLinkContent or ShareOpenGraphContent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 98
    const-string v1, "DeviceShareDialogFragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0}, Lcom/facebook/share/DeviceShareDialog;->getRequestCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/share/DeviceShareDialog;->startActivityForResult(Landroid/content/Intent;I)V

    .line 101
    return-void
.end method

.method protected bridge synthetic showImpl(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 53
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/DeviceShareDialog;->showImpl(Lcom/facebook/share/model/ShareContent;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.facebook.share.DeviceShareDialog.AnonymousClass1 (com.facebook.share.DeviceShareDialog$1)
.class Lcom/facebook/share/DeviceShareDialog$1;
.super Ljava/lang/Object;
.source "DeviceShareDialog.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/DeviceShareDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/DeviceShareDialog;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/share/DeviceShareDialog;Lcom/facebook/FacebookCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/share/DeviceShareDialog;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/share/DeviceShareDialog$1;->this$0:Lcom/facebook/share/DeviceShareDialog;

    iput-object p2, p0, Lcom/facebook/share/DeviceShareDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .registers 7
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 123
    const-string v1, "error"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 124
    const-string v1, "error"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/FacebookRequestError;

    .line 125
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    iget-object v1, p0, Lcom/facebook/share/DeviceShareDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    .line 129
    .end local v0    # "error":Lcom/facebook/FacebookRequestError;
    :goto_1a
    return v3

    .line 128
    :cond_1b
    iget-object v1, p0, Lcom/facebook/share/DeviceShareDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v2, Lcom/facebook/share/DeviceShareDialog$Result;

    invoke-direct {v2}, Lcom/facebook/share/DeviceShareDialog$Result;-><init>()V

    invoke-interface {v1, v2}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1a
.end method

###### Class com.facebook.share.DeviceShareDialog.Result (com.facebook.share.DeviceShareDialog$Result)
.class public Lcom/facebook/share/DeviceShareDialog$Result;
.super Ljava/lang/Object;
.source "DeviceShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/DeviceShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
