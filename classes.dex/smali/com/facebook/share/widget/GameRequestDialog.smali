###### Class com.facebook.share.widget.GameRequestDialog (com.facebook.share.widget.GameRequestDialog)
.class public Lcom/facebook/share/widget/GameRequestDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "GameRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/GameRequestDialog$WebHandler;,
        Lcom/facebook/share/widget/GameRequestDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/model/GameRequestContent;",
        "Lcom/facebook/share/widget/GameRequestDialog$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I

.field private static final GAME_REQUEST_DIALOG:Ljava/lang/String; = "apprequests"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GameRequest:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 90
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/GameRequestDialog;->DEFAULT_REQUEST_CODE:I

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    sget v0, Lcom/facebook/share/widget/GameRequestDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 165
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 157
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 158
    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .registers 3
    .param p1, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;

    .prologue
    .line 169
    sget v0, Lcom/facebook/share/widget/GameRequestDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 170
    return-void
.end method

.method public static canShow()Z
    .registers 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public static show(Landroid/app/Activity;Lcom/facebook/share/model/GameRequestContent;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gameRequestContent"    # Lcom/facebook/share/model/GameRequestContent;

    .prologue
    .line 109
    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public static show(Landroid/app/Fragment;Lcom/facebook/share/model/GameRequestContent;)V
    .registers 3
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "gameRequestContent"    # Lcom/facebook/share/model/GameRequestContent;

    .prologue
    .line 135
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/GameRequestContent;)V

    .line 136
    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;Lcom/facebook/share/model/GameRequestContent;)V
    .registers 3
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "gameRequestContent"    # Lcom/facebook/share/model/GameRequestContent;

    .prologue
    .line 122
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/GameRequestContent;)V

    .line 123
    return-void
.end method

.method private static show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/GameRequestContent;)V
    .registers 3
    .param p0, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;
    .param p1, "gameRequestContent"    # Lcom/facebook/share/model/GameRequestContent;

    .prologue
    .line 141
    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    .line 142
    return-void
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .registers 3

    .prologue
    .line 205
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/share/widget/GameRequestDialog;->getRequestCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/AppCall;-><init>(I)V

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/FacebookDialogBase",
            "<",
            "Lcom/facebook/share/model/GameRequestContent;",
            "Lcom/facebook/share/widget/GameRequestDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/FacebookDialogBase<Lcom/facebook/share/model/GameRequestContent;Lcom/facebook/share/widget/GameRequestDialog$Result;>.ModeHandler;>;"
    new-instance v1, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;-><init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/share/widget/GameRequestDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    return-object v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .registers 6
    .param p1, "callbackManager"    # Lcom/facebook/internal/CallbackManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/widget/GameRequestDialog$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/widget/GameRequestDialog$Result;>;"
    if-nez p2, :cond_10

    const/4 v0, 0x0

    .line 190
    .local v0, "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :goto_3
    invoke-virtual {p0}, Lcom/facebook/share/widget/GameRequestDialog;->getRequestCode()I

    move-result v1

    new-instance v2, Lcom/facebook/share/widget/GameRequestDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/facebook/share/widget/GameRequestDialog$2;-><init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/share/internal/ResultProcessor;)V

    .line 189
    invoke-virtual {p1, v1, v2}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 201
    return-void

    .line 176
    .end local v0    # "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :cond_10
    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog$1;

    invoke-direct {v0, p0, p2, p2}, Lcom/facebook/share/widget/GameRequestDialog$1;-><init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V

    goto :goto_3
.end method

###### Class com.facebook.share.widget.GameRequestDialog.AnonymousClass1 (com.facebook.share.widget.GameRequestDialog$1)
.class Lcom/facebook/share/widget/GameRequestDialog$1;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "GameRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/GameRequestDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/GameRequestDialog;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/facebook/share/widget/GameRequestDialog;
    .param p2, "callback"    # Lcom/facebook/FacebookCallback;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/facebook/share/widget/GameRequestDialog$1;->this$0:Lcom/facebook/share/widget/GameRequestDialog;

    iput-object p3, p0, Lcom/facebook/share/widget/GameRequestDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p2, "results"    # Landroid/os/Bundle;

    .prologue
    .line 181
    if-eqz p2, :cond_e

    .line 182
    iget-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v1, Lcom/facebook/share/widget/GameRequestDialog$Result;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/facebook/share/widget/GameRequestDialog$Result;-><init>(Landroid/os/Bundle;Lcom/facebook/share/widget/GameRequestDialog$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    .line 186
    :goto_d
    return-void

    .line 184
    :cond_e
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/GameRequestDialog$1;->onCancel(Lcom/facebook/internal/AppCall;)V

    goto :goto_d
.end method

###### Class com.facebook.share.widget.GameRequestDialog.AnonymousClass2 (com.facebook.share.widget.GameRequestDialog$2)
.class Lcom/facebook/share/widget/GameRequestDialog$2;
.super Ljava/lang/Object;
.source "GameRequestDialog.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/GameRequestDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/GameRequestDialog;

.field final synthetic val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/share/internal/ResultProcessor;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/share/widget/GameRequestDialog;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/facebook/share/widget/GameRequestDialog$2;->this$0:Lcom/facebook/share/widget/GameRequestDialog;

    iput-object p2, p0, Lcom/facebook/share/widget/GameRequestDialog$2;->val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .registers 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$2;->this$0:Lcom/facebook/share/widget/GameRequestDialog;

    .line 195
    invoke-virtual {v0}, Lcom/facebook/share/widget/GameRequestDialog;->getRequestCode()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/share/widget/GameRequestDialog$2;->val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;

    .line 194
    invoke-static {v0, p1, p2, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z

    move-result v0

    return v0
.end method

###### Class com.facebook.share.widget.GameRequestDialog.Result (com.facebook.share.widget.GameRequestDialog$Result)
.class public final Lcom/facebook/share/widget/GameRequestDialog$Result;
.super Ljava/lang/Object;
.source "GameRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/GameRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field requestId:Ljava/lang/String;

.field to:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "results"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->requestId:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->to:Ljava/util/List;

    .line 61
    :goto_14
    const-string v0, "to[%d]"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->to:Ljava/util/List;

    .line 62
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 61
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 63
    iget-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->to:Ljava/util/List;

    const-string v1, "to[%d]"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->to:Ljava/util/List;

    .line 64
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 63
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 66
    :cond_4c
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/facebook/share/widget/GameRequestDialog$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Bundle;
    .param p2, "x1"    # Lcom/facebook/share/widget/GameRequestDialog$1;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestRecipients()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->to:Ljava/util/List;

    return-object v0
.end method

###### Class com.facebook.share.widget.GameRequestDialog.WebHandler (com.facebook.share.widget.GameRequestDialog$WebHandler)
.class Lcom/facebook/share/widget/GameRequestDialog$WebHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "GameRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/GameRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/model/GameRequestContent;",
        "Lcom/facebook/share/widget/GameRequestDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/GameRequestDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/GameRequestDialog;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;->this$0:Lcom/facebook/share/widget/GameRequestDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/GameRequestDialog;Lcom/facebook/share/widget/GameRequestDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/widget/GameRequestDialog;
    .param p2, "x1"    # Lcom/facebook/share/widget/GameRequestDialog$1;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;-><init>(Lcom/facebook/share/widget/GameRequestDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/GameRequestContent;Z)Z
    .registers 4
    .param p1, "content"    # Lcom/facebook/share/model/GameRequestContent;
    .param p2, "isBestEffort"    # Z

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .registers 4

    .prologue
    .line 216
    check-cast p1, Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;->canShow(Lcom/facebook/share/model/GameRequestContent;Z)Z

    move-result v0

    return v0
.end method

.method public createAppCall(Lcom/facebook/share/model/GameRequestContent;)Lcom/facebook/internal/AppCall;
    .registers 5
    .param p1, "content"    # Lcom/facebook/share/model/GameRequestContent;

    .prologue
    .line 224
    invoke-static {p1}, Lcom/facebook/share/internal/GameRequestValidation;->validate(Lcom/facebook/share/model/GameRequestContent;)V

    .line 225
    iget-object v1, p0, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;->this$0:Lcom/facebook/share/widget/GameRequestDialog;

    invoke-virtual {v1}, Lcom/facebook/share/widget/GameRequestDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 226
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    const-string v1, "apprequests"

    .line 229
    invoke-static {p1}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/GameRequestContent;)Landroid/os/Bundle;

    move-result-object v2

    .line 226
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 231
    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 3

    .prologue
    .line 216
    check-cast p1, Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/GameRequestDialog$WebHandler;->createAppCall(Lcom/facebook/share/model/GameRequestContent;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method
