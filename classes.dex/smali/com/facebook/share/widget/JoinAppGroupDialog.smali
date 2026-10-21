###### Class com.facebook.share.widget.JoinAppGroupDialog (com.facebook.share.widget.JoinAppGroupDialog)
.class public Lcom/facebook/share/widget/JoinAppGroupDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "JoinAppGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;,
        Lcom/facebook/share/widget/JoinAppGroupDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Ljava/lang/String;",
        "Lcom/facebook/share/widget/JoinAppGroupDialog$Result;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I

.field private static final JOIN_GAME_GROUP_DIALOG:Ljava/lang/String; = "game_group_join"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupJoin:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 52
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/JoinAppGroupDialog;->DEFAULT_REQUEST_CODE:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    sget v0, Lcom/facebook/share/widget/JoinAppGroupDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/JoinAppGroupDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/JoinAppGroupDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 146
    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .registers 3
    .param p1, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;

    .prologue
    .line 159
    sget v0, Lcom/facebook/share/widget/JoinAppGroupDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 160
    return-void
.end method

.method public static canShow()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/facebook/share/widget/JoinAppGroupDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/JoinAppGroupDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/JoinAppGroupDialog;->show(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;)V
    .registers 3
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/JoinAppGroupDialog;->show(Lcom/facebook/internal/FragmentWrapper;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 3
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/JoinAppGroupDialog;->show(Lcom/facebook/internal/FragmentWrapper;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private static show(Lcom/facebook/internal/FragmentWrapper;Ljava/lang/String;)V
    .registers 3
    .param p0, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Lcom/facebook/share/widget/JoinAppGroupDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/JoinAppGroupDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/JoinAppGroupDialog;->show(Ljava/lang/Object;)V

    .line 126
    return-void
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .registers 3

    .prologue
    .line 191
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/share/widget/JoinAppGroupDialog;->getRequestCode()I

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
            "Ljava/lang/String;",
            "Lcom/facebook/share/widget/JoinAppGroupDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/FacebookDialogBase<Ljava/lang/String;Lcom/facebook/share/widget/JoinAppGroupDialog$Result;>.ModeHandler;>;"
    new-instance v1, Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;-><init>(Lcom/facebook/share/widget/JoinAppGroupDialog;Lcom/facebook/share/widget/JoinAppGroupDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
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
            "Lcom/facebook/share/widget/JoinAppGroupDialog$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/widget/JoinAppGroupDialog$Result;>;"
    if-nez p2, :cond_10

    const/4 v1, 0x0

    .line 175
    .local v1, "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :goto_3
    new-instance v0, Lcom/facebook/share/widget/JoinAppGroupDialog$2;

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/widget/JoinAppGroupDialog$2;-><init>(Lcom/facebook/share/widget/JoinAppGroupDialog;Lcom/facebook/share/internal/ResultProcessor;)V

    .line 186
    .local v0, "callbackManagerCallback":Lcom/facebook/internal/CallbackManagerImpl$Callback;
    invoke-virtual {p0}, Lcom/facebook/share/widget/JoinAppGroupDialog;->getRequestCode()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 187
    return-void

    .line 166
    .end local v0    # "callbackManagerCallback":Lcom/facebook/internal/CallbackManagerImpl$Callback;
    .end local v1    # "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :cond_10
    new-instance v1, Lcom/facebook/share/widget/JoinAppGroupDialog$1;

    invoke-direct {v1, p0, p2, p2}, Lcom/facebook/share/widget/JoinAppGroupDialog$1;-><init>(Lcom/facebook/share/widget/JoinAppGroupDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V

    goto :goto_3
.end method

###### Class com.facebook.share.widget.JoinAppGroupDialog.AnonymousClass1 (com.facebook.share.widget.JoinAppGroupDialog$1)
.class Lcom/facebook/share/widget/JoinAppGroupDialog$1;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "JoinAppGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/JoinAppGroupDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/JoinAppGroupDialog;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/JoinAppGroupDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/facebook/share/widget/JoinAppGroupDialog;
    .param p2, "callback"    # Lcom/facebook/FacebookCallback;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$1;->this$0:Lcom/facebook/share/widget/JoinAppGroupDialog;

    iput-object p3, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p2, "results"    # Landroid/os/Bundle;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v1, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;-><init>(Landroid/os/Bundle;Lcom/facebook/share/widget/JoinAppGroupDialog$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    .line 172
    return-void
.end method

###### Class com.facebook.share.widget.JoinAppGroupDialog.AnonymousClass2 (com.facebook.share.widget.JoinAppGroupDialog$2)
.class Lcom/facebook/share/widget/JoinAppGroupDialog$2;
.super Ljava/lang/Object;
.source "JoinAppGroupDialog.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/JoinAppGroupDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/JoinAppGroupDialog;

.field final synthetic val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/JoinAppGroupDialog;Lcom/facebook/share/internal/ResultProcessor;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/share/widget/JoinAppGroupDialog;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$2;->this$0:Lcom/facebook/share/widget/JoinAppGroupDialog;

    iput-object p2, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$2;->val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .registers 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$2;->this$0:Lcom/facebook/share/widget/JoinAppGroupDialog;

    .line 179
    invoke-virtual {v0}, Lcom/facebook/share/widget/JoinAppGroupDialog;->getRequestCode()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$2;->val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;

    .line 178
    invoke-static {v0, p1, p2, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z

    move-result v0

    return v0
.end method

###### Class com.facebook.share.widget.JoinAppGroupDialog.Result (com.facebook.share.widget.JoinAppGroupDialog$Result)
.class public final Lcom/facebook/share/widget/JoinAppGroupDialog$Result;
.super Ljava/lang/Object;
.source "JoinAppGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/JoinAppGroupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final data:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;->data:Landroid/os/Bundle;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/facebook/share/widget/JoinAppGroupDialog$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Bundle;
    .param p2, "x1"    # Lcom/facebook/share/widget/JoinAppGroupDialog$1;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;->data:Landroid/os/Bundle;

    return-object v0
.end method

###### Class com.facebook.share.widget.JoinAppGroupDialog.WebHandler (com.facebook.share.widget.JoinAppGroupDialog$WebHandler)
.class Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "JoinAppGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/JoinAppGroupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Ljava/lang/String;",
        "Lcom/facebook/share/widget/JoinAppGroupDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/JoinAppGroupDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/JoinAppGroupDialog;)V
    .registers 2

    .prologue
    .line 202
    iput-object p1, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;->this$0:Lcom/facebook/share/widget/JoinAppGroupDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/JoinAppGroupDialog;Lcom/facebook/share/widget/JoinAppGroupDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/widget/JoinAppGroupDialog;
    .param p2, "x1"    # Lcom/facebook/share/widget/JoinAppGroupDialog$1;

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;-><init>(Lcom/facebook/share/widget/JoinAppGroupDialog;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .registers 4

    .prologue
    .line 202
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;->canShow(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public canShow(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "isBestEffort"    # Z

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 3

    .prologue
    .line 202
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;->createAppCall(Ljava/lang/String;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method

.method public createAppCall(Ljava/lang/String;)Lcom/facebook/internal/AppCall;
    .registers 5
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v2, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;->this$0:Lcom/facebook/share/widget/JoinAppGroupDialog;

    invoke-virtual {v2}, Lcom/facebook/share/widget/JoinAppGroupDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 211
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 212
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v2, "game_group_join"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 219
    return-object v0
.end method
