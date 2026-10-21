###### Class com.facebook.share.internal.LikeDialog (com.facebook.share.internal.LikeDialog)
.class public Lcom/facebook/share/internal/LikeDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "LikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;,
        Lcom/facebook/share/internal/LikeDialog$NativeHandler;,
        Lcom/facebook/share/internal/LikeDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Lcom/facebook/share/internal/LikeDialog$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I

.field private static final TAG:Ljava/lang/String; = "LikeDialog"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Like:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 50
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/internal/LikeDialog;->DEFAULT_REQUEST_CODE:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    sget v0, Lcom/facebook/share/internal/LikeDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 93
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 89
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .registers 3
    .param p1, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;

    .prologue
    .line 97
    sget v0, Lcom/facebook/share/internal/LikeDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 98
    return-void
.end method

.method static synthetic access$200(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeContent;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/facebook/share/internal/LikeDialog;->createParameters(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/facebook/internal/DialogFeature;
    .registers 1

    .prologue
    .line 45
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->getFeature()Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    return-object v0
.end method

.method public static canShowNativeDialog()Z
    .registers 1

    .prologue
    .line 76
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->getFeature()Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/DialogPresenter;->canPresentNativeDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z

    move-result v0

    return v0
.end method

.method public static canShowWebFallback()Z
    .registers 1

    .prologue
    .line 81
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->getFeature()Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/DialogPresenter;->canPresentWebFallbackDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z

    move-result v0

    return v0
.end method

.method private static createParameters(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;
    .registers 4
    .param p0, "likeContent"    # Lcom/facebook/share/internal/LikeContent;

    .prologue
    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "object_id"

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeContent;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "object_type"

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeContent;->getObjectType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-object v0
.end method

.method private static getFeature()Lcom/facebook/internal/DialogFeature;
    .registers 1

    .prologue
    .line 195
    sget-object v0, Lcom/facebook/share/internal/LikeDialogFeature;->LIKE_DIALOG:Lcom/facebook/share/internal/LikeDialogFeature;

    return-object v0
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .registers 3

    .prologue
    .line 102
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeDialog;->getRequestCode()I

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
            "Lcom/facebook/share/internal/LikeContent;",
            "Lcom/facebook/share/internal/LikeDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/FacebookDialogBase<Lcom/facebook/share/internal/LikeContent;Lcom/facebook/share/internal/LikeDialog$Result;>.ModeHandler;>;"
    new-instance v1, Lcom/facebook/share/internal/LikeDialog$NativeHandler;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/internal/LikeDialog$NativeHandler;-><init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/share/internal/LikeDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;-><init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/share/internal/LikeDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
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
            "Lcom/facebook/share/internal/LikeDialog$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/internal/LikeDialog$Result;>;"
    if-nez p2, :cond_10

    const/4 v1, 0x0

    .line 127
    .local v1, "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :goto_3
    new-instance v0, Lcom/facebook/share/internal/LikeDialog$2;

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/internal/LikeDialog$2;-><init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/share/internal/ResultProcessor;)V

    .line 139
    .local v0, "callbackManagerCallback":Lcom/facebook/internal/CallbackManagerImpl$Callback;
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeDialog;->getRequestCode()I

    move-result v2

    .line 138
    invoke-virtual {p1, v2, v0}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 141
    return-void

    .line 118
    .end local v0    # "callbackManagerCallback":Lcom/facebook/internal/CallbackManagerImpl$Callback;
    .end local v1    # "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :cond_10
    new-instance v1, Lcom/facebook/share/internal/LikeDialog$1;

    invoke-direct {v1, p0, p2, p2}, Lcom/facebook/share/internal/LikeDialog$1;-><init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V

    goto :goto_3
.end method

###### Class com.facebook.share.internal.LikeDialog.AnonymousClass1 (com.facebook.share.internal.LikeDialog$1)
.class Lcom/facebook/share/internal/LikeDialog$1;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "LikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeDialog;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/facebook/share/internal/LikeDialog;
    .param p2, "callback"    # Lcom/facebook/FacebookCallback;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/share/internal/LikeDialog$1;->this$0:Lcom/facebook/share/internal/LikeDialog;

    iput-object p3, p0, Lcom/facebook/share/internal/LikeDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p2, "results"    # Landroid/os/Bundle;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/share/internal/LikeDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v1, Lcom/facebook/share/internal/LikeDialog$Result;

    invoke-direct {v1, p2}, Lcom/facebook/share/internal/LikeDialog$Result;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

###### Class com.facebook.share.internal.LikeDialog.AnonymousClass2 (com.facebook.share.internal.LikeDialog$2)
.class Lcom/facebook/share/internal/LikeDialog$2;
.super Ljava/lang/Object;
.source "LikeDialog.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeDialog;

.field final synthetic val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/share/internal/ResultProcessor;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/share/internal/LikeDialog;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/facebook/share/internal/LikeDialog$2;->this$0:Lcom/facebook/share/internal/LikeDialog;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeDialog$2;->val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .registers 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/share/internal/LikeDialog$2;->this$0:Lcom/facebook/share/internal/LikeDialog;

    .line 131
    invoke-virtual {v0}, Lcom/facebook/share/internal/LikeDialog;->getRequestCode()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/share/internal/LikeDialog$2;->val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;

    .line 130
    invoke-static {v0, p1, p2, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z

    move-result v0

    return v0
.end method

###### Class com.facebook.share.internal.LikeDialog.NativeHandler (com.facebook.share.internal.LikeDialog$NativeHandler)
.class Lcom/facebook/share/internal/LikeDialog$NativeHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "LikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Lcom/facebook/share/internal/LikeDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/internal/LikeDialog;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/facebook/share/internal/LikeDialog$NativeHandler;->this$0:Lcom/facebook/share/internal/LikeDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/share/internal/LikeDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/internal/LikeDialog;
    .param p2, "x1"    # Lcom/facebook/share/internal/LikeDialog$1;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeDialog$NativeHandler;-><init>(Lcom/facebook/share/internal/LikeDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/internal/LikeContent;Z)Z
    .registers 4
    .param p1, "content"    # Lcom/facebook/share/internal/LikeContent;
    .param p2, "isBestEffort"    # Z

    .prologue
    .line 146
    if-eqz p1, :cond_a

    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowNativeDialog()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .registers 4

    .prologue
    .line 143
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/internal/LikeDialog$NativeHandler;->canShow(Lcom/facebook/share/internal/LikeContent;Z)Z

    move-result v0

    return v0
.end method

.method public createAppCall(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/internal/AppCall;
    .registers 5
    .param p1, "content"    # Lcom/facebook/share/internal/LikeContent;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/facebook/share/internal/LikeDialog$NativeHandler;->this$0:Lcom/facebook/share/internal/LikeDialog;

    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 153
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    new-instance v1, Lcom/facebook/share/internal/LikeDialog$NativeHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/share/internal/LikeDialog$NativeHandler$1;-><init>(Lcom/facebook/share/internal/LikeDialog$NativeHandler;Lcom/facebook/share/internal/LikeContent;)V

    .line 169
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->access$300()Lcom/facebook/internal/DialogFeature;

    move-result-object v2

    .line 153
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForNativeDialog(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/DialogPresenter$ParameterProvider;Lcom/facebook/internal/DialogFeature;)V

    .line 171
    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 3

    .prologue
    .line 143
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeDialog$NativeHandler;->createAppCall(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.share.internal.LikeDialog.NativeHandler.AnonymousClass1 (com.facebook.share.internal.LikeDialog$NativeHandler$1)
.class Lcom/facebook/share/internal/LikeDialog$NativeHandler$1;
.super Ljava/lang/Object;
.source "LikeDialog.java"

# interfaces
.implements Lcom/facebook/internal/DialogPresenter$ParameterProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeDialog$NativeHandler;->createAppCall(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/internal/AppCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/share/internal/LikeDialog$NativeHandler;

.field final synthetic val$content:Lcom/facebook/share/internal/LikeContent;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeDialog$NativeHandler;Lcom/facebook/share/internal/LikeContent;)V
    .registers 3
    .param p1, "this$1"    # Lcom/facebook/share/internal/LikeDialog$NativeHandler;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/facebook/share/internal/LikeDialog$NativeHandler$1;->this$1:Lcom/facebook/share/internal/LikeDialog$NativeHandler;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeDialog$NativeHandler$1;->val$content:Lcom/facebook/share/internal/LikeContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLegacyParameters()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 164
    const-string v0, "LikeDialog"

    const-string v1, "Attempting to present the Like Dialog with an outdated Facebook app on the device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getParameters()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/share/internal/LikeDialog$NativeHandler$1;->val$content:Lcom/facebook/share/internal/LikeContent;

    invoke-static {v0}, Lcom/facebook/share/internal/LikeDialog;->access$200(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.share.internal.LikeDialog.Result (com.facebook.share.internal.LikeDialog$Result)
.class public final Lcom/facebook/share/internal/LikeDialog$Result;
.super Ljava/lang/Object;
.source "LikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/facebook/share/internal/LikeDialog$Result;->bundle:Landroid/os/Bundle;

    .line 62
    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/share/internal/LikeDialog$Result;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

###### Class com.facebook.share.internal.LikeDialog.WebFallbackHandler (com.facebook.share.internal.LikeDialog$WebFallbackHandler)
.class Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "LikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebFallbackHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Lcom/facebook/share/internal/LikeDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/internal/LikeDialog;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;->this$0:Lcom/facebook/share/internal/LikeDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/share/internal/LikeDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/internal/LikeDialog;
    .param p2, "x1"    # Lcom/facebook/share/internal/LikeDialog$1;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;-><init>(Lcom/facebook/share/internal/LikeDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/internal/LikeContent;Z)Z
    .registers 4
    .param p1, "content"    # Lcom/facebook/share/internal/LikeContent;
    .param p2, "isBestEffort"    # Z

    .prologue
    .line 178
    if-eqz p1, :cond_a

    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowWebFallback()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .registers 4

    .prologue
    .line 175
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;->canShow(Lcom/facebook/share/internal/LikeContent;Z)Z

    move-result v0

    return v0
.end method

.method public createAppCall(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/internal/AppCall;
    .registers 5
    .param p1, "content"    # Lcom/facebook/share/internal/LikeContent;

    .prologue
    .line 183
    iget-object v1, p0, Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;->this$0:Lcom/facebook/share/internal/LikeDialog;

    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 187
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    invoke-static {p1}, Lcom/facebook/share/internal/LikeDialog;->access$200(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;

    move-result-object v1

    .line 188
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->access$300()Lcom/facebook/internal/DialogFeature;

    move-result-object v2

    .line 185
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForWebFallbackDialog(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;Lcom/facebook/internal/DialogFeature;)V

    .line 190
    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 3

    .prologue
    .line 175
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;->createAppCall(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method
