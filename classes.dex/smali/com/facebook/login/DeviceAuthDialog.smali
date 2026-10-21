###### Class com.facebook.login.DeviceAuthDialog (com.facebook.login.DeviceAuthDialog)
.class public Lcom/facebook/login/DeviceAuthDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "DeviceAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/DeviceAuthDialog$RequestState;
    }
.end annotation


# static fields
.field private static final DEVICE_LOGIN_ENDPOINT:Ljava/lang/String; = "device/login"

.field private static final DEVICE_LOGIN_STATUS_ENDPOINT:Ljava/lang/String; = "device/login_status"

.field private static final LOGIN_ERROR_SUBCODE_AUTHORIZATION_DECLINED:I = 0x149635

.field private static final LOGIN_ERROR_SUBCODE_AUTHORIZATION_PENDING:I = 0x149636

.field private static final LOGIN_ERROR_SUBCODE_CODE_EXPIRED:I = 0x149620

.field private static final LOGIN_ERROR_SUBCODE_EXCESSIVE_POLLING:I = 0x149634

.field private static final REQUEST_STATE_KEY:Ljava/lang/String; = "request_state"


# instance fields
.field private completed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private confirmationCode:Landroid/widget/TextView;

.field private volatile currentGraphRequestPoll:Lcom/facebook/GraphRequestAsyncTask;

.field private volatile currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

.field private deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

.field private dialog:Landroid/app/Dialog;

.field private isBeingDestroyed:Z

.field private isRetry:Z

.field private mRequest:Lcom/facebook/login/LoginClient$Request;

.field private progressBar:Landroid/widget/ProgressBar;

.field private volatile scheduledPoll:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    iput-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->isBeingDestroyed:Z

    .line 97
    iput-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->mRequest:Lcom/facebook/login/LoginClient$Request;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;
    .param p1, "x1"    # Lcom/facebook/FacebookException;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->onError(Lcom/facebook/FacebookException;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;
    .param p1, "x1"    # Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->setCurrentRequestState(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/facebook/internal/Utility$PermissionsPair;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/login/DeviceAuthDialog;->completeLogin(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/facebook/login/DeviceAuthDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/facebook/login/DeviceAuthDialog;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/facebook/internal/Utility$PermissionsPair;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/login/DeviceAuthDialog;->presentConfirmation(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->onCancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->poll()V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->schedulePoll()V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/login/DeviceAuthDialog;Z)Landroid/view/View;
    .registers 3
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->initializeContentView(Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/login/DeviceAuthDialog;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->mRequest:Lcom/facebook/login/LoginClient$Request;

    return-object v0
.end method

.method private appendIconToTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 8
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "iconUriString"    # Ljava/lang/String;

    .prologue
    .line 235
    const/16 v0, 0x18

    .line 236
    .local v0, "iconSize":I
    new-instance v2, Lcom/facebook/internal/ImageRequest$Builder;

    .line 237
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 238
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/facebook/internal/ImageRequest$Builder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v3, Lcom/facebook/login/DeviceAuthDialog$2;

    invoke-direct {v3, p0, p1}, Lcom/facebook/login/DeviceAuthDialog$2;-><init>(Lcom/facebook/login/DeviceAuthDialog;Landroid/widget/TextView;)V

    .line 239
    invoke-virtual {v2, v3}, Lcom/facebook/internal/ImageRequest$Builder;->setCallback(Lcom/facebook/internal/ImageRequest$Callback;)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Lcom/facebook/internal/ImageRequest$Builder;->build()Lcom/facebook/internal/ImageRequest;

    move-result-object v1

    .line 253
    .local v1, "request":Lcom/facebook/internal/ImageRequest;
    invoke-static {v1}, Lcom/facebook/internal/ImageDownloader;->downloadAsync(Lcom/facebook/internal/ImageRequest;)V

    .line 254
    return-void
.end method

.method private completeLogin(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;)V
    .registers 13
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "permissions"    # Lcom/facebook/internal/Utility$PermissionsPair;
    .param p3, "accessToken"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 453
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 455
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-virtual {p2}, Lcom/facebook/internal/Utility$PermissionsPair;->getGrantedPermissions()Ljava/util/List;

    move-result-object v4

    .line 458
    invoke-virtual {p2}, Lcom/facebook/internal/Utility$PermissionsPair;->getDeclinedPermissions()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/facebook/AccessTokenSource;->DEVICE_AUTH:Lcom/facebook/AccessTokenSource;

    move-object v1, p3

    move-object v3, p1

    move-object v8, v7

    .line 453
    invoke-virtual/range {v0 .. v8}, Lcom/facebook/login/DeviceAuthMethodHandler;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    .line 462
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 463
    return-void
.end method

.method private getPollRequest()Lcom/facebook/GraphRequest;
    .registers 7

    .prologue
    .line 314
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 315
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "code"

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getRequestCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    const-string v2, "device/login_status"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$5;

    invoke-direct {v5, p0}, Lcom/facebook/login/DeviceAuthDialog$5;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method private initializeContentView(Z)Landroid/view/View;
    .registers 11
    .param p1, "isSmartLogin"    # Z

    .prologue
    const/4 v8, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 259
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-eqz p1, :cond_7d

    .line 260
    sget v7, Lcom/facebook/R$layout;->com_facebook_smart_device_dialog_fragment:I

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 264
    .local v6, "view":Landroid/view/View;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    .line 263
    invoke-static {v7}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v5

    .line 265
    .local v5, "settings":Lcom/facebook/internal/FetchedAppSettings;
    invoke-virtual {v5}, Lcom/facebook/internal/FetchedAppSettings;->getSmartLoginBookmarkIconURL()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2e

    .line 266
    sget v7, Lcom/facebook/R$id;->com_facebook_smart_instructions_2:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 268
    .local v4, "instructions2":Landroid/widget/TextView;
    invoke-virtual {v5}, Lcom/facebook/internal/FetchedAppSettings;->getSmartLoginBookmarkIconURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lcom/facebook/login/DeviceAuthDialog;->appendIconToTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 270
    .end local v4    # "instructions2":Landroid/widget/TextView;
    :cond_2e
    invoke-virtual {v5}, Lcom/facebook/internal/FetchedAppSettings;->getSmartLoginMenuIconURL()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_43

    .line 271
    sget v7, Lcom/facebook/R$id;->com_facebook_smart_instructions_1:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 273
    .local v3, "instructions1":Landroid/widget/TextView;
    invoke-virtual {v5}, Lcom/facebook/internal/FetchedAppSettings;->getSmartLoginMenuIconURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v7}, Lcom/facebook/login/DeviceAuthDialog;->appendIconToTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 278
    .end local v3    # "instructions1":Landroid/widget/TextView;
    .end local v5    # "settings":Lcom/facebook/internal/FetchedAppSettings;
    :cond_43
    :goto_43
    sget v7, Lcom/facebook/R$id;->progress_bar:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/facebook/login/DeviceAuthDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 279
    sget v7, Lcom/facebook/R$id;->confirmation_code:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/facebook/login/DeviceAuthDialog;->confirmationCode:Landroid/widget/TextView;

    .line 281
    sget v7, Lcom/facebook/R$id;->cancel_button:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 282
    .local v0, "cancelButton":Landroid/widget/Button;
    new-instance v7, Lcom/facebook/login/DeviceAuthDialog$3;

    invoke-direct {v7, p0}, Lcom/facebook/login/DeviceAuthDialog$3;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    sget v7, Lcom/facebook/R$id;->com_facebook_device_auth_instructions:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 291
    .local v2, "instructions":Landroid/widget/TextView;
    sget v7, Lcom/facebook/R$string;->com_facebook_device_auth_instructions:I

    .line 292
    invoke-virtual {p0, v7}, Lcom/facebook/login/DeviceAuthDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    .line 291
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    return-object v6

    .line 276
    .end local v0    # "cancelButton":Landroid/widget/Button;
    .end local v2    # "instructions":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/view/View;
    :cond_7d
    sget v7, Lcom/facebook/R$layout;->com_facebook_device_auth_dialog_fragment:I

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "view":Landroid/view/View;
    goto :goto_43
.end method

.method private onCancel()V
    .registers 4

    .prologue
    .line 478
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 491
    :goto_a
    return-void

    .line 483
    :cond_b
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementService(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

    if-eqz v0, :cond_1d

    .line 487
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthMethodHandler;->onCancel()V

    .line 490
    :cond_1d
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_a
.end method

.method private onError(Lcom/facebook/FacebookException;)V
    .registers 5
    .param p1, "ex"    # Lcom/facebook/FacebookException;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 475
    :goto_a
    return-void

    .line 470
    :cond_b
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_18

    .line 471
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementService(Ljava/lang/String;)V

    .line 473
    :cond_18
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/login/DeviceAuthMethodHandler;->onError(Ljava/lang/Exception;)V

    .line 474
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_a
.end method

.method private onSuccess(Ljava/lang/String;)V
    .registers 12
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 390
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v9, "parameters":Landroid/os/Bundle;
    const-string v2, "fields"

    const-string v3, "id,permissions,name"

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance v0, Lcom/facebook/AccessToken;

    .line 394
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    .line 402
    .local v0, "temporaryToken":Lcom/facebook/AccessToken;
    new-instance v1, Lcom/facebook/GraphRequest;

    const-string v3, "me"

    sget-object v5, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v6, Lcom/facebook/login/DeviceAuthDialog$8;

    invoke-direct {v6, p0, p1}, Lcom/facebook/login/DeviceAuthDialog$8;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;)V

    move-object v2, v0

    move-object v4, v9

    invoke-direct/range {v1 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 447
    .local v1, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 448
    return-void
.end method

.method private poll()V
    .registers 5

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->setLastPoll(J)V

    .line 298
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->getPollRequest()Lcom/facebook/GraphRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentGraphRequestPoll:Lcom/facebook/GraphRequestAsyncTask;

    .line 299
    return-void
.end method

.method private presentConfirmation(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "permissions"    # Lcom/facebook/internal/Utility$PermissionsPair;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 365
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/facebook/R$string;->com_facebook_smart_login_confirmation_title:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/facebook/R$string;->com_facebook_smart_login_confirmation_continue_as:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "continueFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/facebook/R$string;->com_facebook_smart_login_confirmation_cancel:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "cancel":Ljava/lang/String;
    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p4, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "continueText":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 373
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 374
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/facebook/login/DeviceAuthDialog$7;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/facebook/login/DeviceAuthDialog$7;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/facebook/login/DeviceAuthDialog$6;

    invoke-direct {v6, p0}, Lcom/facebook/login/DeviceAuthDialog$6;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 380
    invoke-virtual {v5, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 388
    return-void
.end method

.method private schedulePoll()V
    .registers 6

    .prologue
    .line 302
    invoke-static {}, Lcom/facebook/login/DeviceAuthMethodHandler;->getBackgroundExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$4;

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthDialog$4;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 309
    invoke-virtual {v2}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getInterval()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 302
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->scheduledPoll:Ljava/util/concurrent/ScheduledFuture;

    .line 311
    return-void
.end method

.method private setCurrentRequestState(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .registers 6
    .param p1, "currentRequestState"    # Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .prologue
    const/4 v3, 0x0

    .line 214
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 215
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->confirmationCode:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->confirmationCode:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 219
    iget-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z

    if-nez v1, :cond_34

    .line 220
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->startAdvertisementService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 221
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 222
    .local v0, "logger":Lcom/facebook/appevents/AppEventsLogger;
    const-string v1, "fb_smart_login_service"

    invoke-virtual {v0, v1, v3, v3}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 227
    .end local v0    # "logger":Lcom/facebook/appevents/AppEventsLogger;
    :cond_34
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->withinLastRefreshWindow()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 228
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->schedulePoll()V

    .line 232
    :goto_3d
    return-void

    .line 230
    :cond_3e
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->poll()V

    goto :goto_3d
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 126
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/facebook/R$style;->com_facebook_auth_dialog:I

    invoke-direct {v2, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    .line 127
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 129
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-boolean v2, p0, Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z

    if-nez v2, :cond_2c

    const/4 v2, 0x1

    :goto_20
    invoke-direct {p0, v2}, Lcom/facebook/login/DeviceAuthDialog;->initializeContentView(Z)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 132
    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    return-object v2

    .line 129
    .end local v1    # "view":Landroid/view/View;
    :cond_2c
    const/4 v2, 0x0

    goto :goto_20
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 107
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/FacebookActivity;

    .line 108
    .local v0, "facebookActivity":Lcom/facebook/FacebookActivity;
    invoke-virtual {v0}, Lcom/facebook/FacebookActivity;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/facebook/login/LoginFragment;

    .line 110
    .local v1, "fragment":Lcom/facebook/login/LoginFragment;
    invoke-virtual {v1}, Lcom/facebook/login/LoginFragment;->getLoginClient()Lcom/facebook/login/LoginClient;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v4

    check-cast v4, Lcom/facebook/login/DeviceAuthMethodHandler;

    iput-object v4, p0, Lcom/facebook/login/DeviceAuthDialog;->deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 113
    if-eqz p3, :cond_2b

    .line 114
    const-string v4, "request_state"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 115
    .local v2, "requestState":Lcom/facebook/login/DeviceAuthDialog$RequestState;
    if-eqz v2, :cond_2b

    .line 116
    invoke-direct {p0, v2}, Lcom/facebook/login/DeviceAuthDialog;->setCurrentRequestState(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    .line 120
    .end local v2    # "requestState":Lcom/facebook/login/DeviceAuthDialog$RequestState;
    :cond_2b
    return-object v3
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 156
    iput-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->isBeingDestroyed:Z

    .line 157
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 158
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentGraphRequestPoll:Lcom/facebook/GraphRequestAsyncTask;

    if-eqz v0, :cond_14

    .line 160
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentGraphRequestPoll:Lcom/facebook/GraphRequestAsyncTask;

    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequestAsyncTask;->cancel(Z)Z

    .line 163
    :cond_14
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->scheduledPoll:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1d

    .line 164
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->scheduledPoll:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 166
    :cond_1d
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 138
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->isBeingDestroyed:Z

    if-nez v0, :cond_a

    .line 139
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->onCancel()V

    .line 141
    :cond_a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 146
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_e

    .line 147
    const-string v0, "request_state"

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 149
    :cond_e
    return-void
.end method

.method public startLogin(Lcom/facebook/login/LoginClient$Request;)V
    .registers 10
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->mRequest:Lcom/facebook/login/LoginClient$Request;

    .line 170
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v1, "scope"

    const-string v2, ","

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getDeviceRedirectUriString()Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, "redirectUriString":Ljava/lang/String;
    if-eqz v7, :cond_21

    .line 175
    const-string v1, "redirect_uri"

    invoke-virtual {v3, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/internal/Validate;->hasAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/facebook/internal/Validate;->hasClientToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, "accessToken":Ljava/lang/String;
    const-string v1, "access_token"

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "device_info"

    .line 181
    invoke-static {}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->getDeviceInfo()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    const-string v2, "device/login"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$1;

    invoke-direct {v5, p0}, Lcom/facebook/login/DeviceAuthDialog$1;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 210
    .local v0, "graphRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 211
    return-void
.end method

###### Class com.facebook.login.DeviceAuthDialog.AnonymousClass1 (com.facebook.login.DeviceAuthDialog$1)
.class Lcom/facebook/login/DeviceAuthDialog$1;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->startLogin(Lcom/facebook/login/LoginClient$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$1;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 8
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 192
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$1;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/login/DeviceAuthDialog;->access$000(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    .line 208
    :goto_13
    return-void

    .line 196
    :cond_14
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 197
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-direct {v2}, Lcom/facebook/login/DeviceAuthDialog$RequestState;-><init>()V

    .line 199
    .local v2, "requestState":Lcom/facebook/login/DeviceAuthDialog$RequestState;
    :try_start_1d
    const-string v3, "user_code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->setUserCode(Ljava/lang/String;)V

    .line 200
    const-string v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->setRequestCode(Ljava/lang/String;)V

    .line 201
    const-string v3, "interval"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->setInterval(J)V
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_38} :catch_3e

    .line 207
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$1;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v3, v2}, Lcom/facebook/login/DeviceAuthDialog;->access$100(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    goto :goto_13

    .line 202
    :catch_3e
    move-exception v0

    .line 203
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$1;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v4, Lcom/facebook/FacebookException;

    invoke-direct {v4, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3, v4}, Lcom/facebook/login/DeviceAuthDialog;->access$000(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    goto :goto_13
.end method

###### Class com.facebook.login.DeviceAuthDialog.AnonymousClass2 (com.facebook.login.DeviceAuthDialog$2)
.class Lcom/facebook/login/DeviceAuthDialog$2;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Lcom/facebook/internal/ImageRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->appendIconToTextView(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Landroid/widget/TextView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$2;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    iput-object p2, p0, Lcom/facebook/login/DeviceAuthDialog$2;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/internal/ImageResponse;)V
    .registers 8
    .param p1, "response"    # Lcom/facebook/internal/ImageResponse;

    .prologue
    const/16 v5, 0x18

    const/4 v4, 0x0

    .line 242
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 243
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v5, v5, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 245
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog$2;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {v2}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 247
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog$2;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 251
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_22
    return-void
.end method

###### Class com.facebook.login.DeviceAuthDialog.AnonymousClass3 (com.facebook.login.DeviceAuthDialog$3)
.class Lcom/facebook/login/DeviceAuthDialog$3;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->initializeContentView(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$3;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$3;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->access$200(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 286
    return-void
.end method

###### Class com.facebook.login.DeviceAuthDialog.AnonymousClass4 (com.facebook.login.DeviceAuthDialog$4)
.class Lcom/facebook/login/DeviceAuthDialog$4;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->schedulePoll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->access$300(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 307
    return-void
.end method

###### Class com.facebook.login.DeviceAuthDialog.AnonymousClass5 (com.facebook.login.DeviceAuthDialog$5)
.class Lcom/facebook/login/DeviceAuthDialog$5;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->getPollRequest()Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 7
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 325
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v3}, Lcom/facebook/login/DeviceAuthDialog;->access$400(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 357
    :goto_c
    return-void

    .line 329
    :cond_d
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 330
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v0, :cond_34

    .line 333
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getSubErrorCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_50

    .line 344
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/login/DeviceAuthDialog;->access$000(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    goto :goto_c

    .line 337
    :sswitch_28
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v3}, Lcom/facebook/login/DeviceAuthDialog;->access$500(Lcom/facebook/login/DeviceAuthDialog;)V

    goto :goto_c

    .line 341
    :sswitch_2e
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v3}, Lcom/facebook/login/DeviceAuthDialog;->access$200(Lcom/facebook/login/DeviceAuthDialog;)V

    goto :goto_c

    .line 352
    :cond_34
    :try_start_34
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 353
    .local v2, "resultObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    const-string v4, "access_token"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/login/DeviceAuthDialog;->access$600(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;)V
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_43} :catch_44

    goto :goto_c

    .line 354
    .end local v2    # "resultObject":Lorg/json/JSONObject;
    :catch_44
    move-exception v1

    .line 355
    .local v1, "ex":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v4, Lcom/facebook/FacebookException;

    invoke-direct {v4, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3, v4}, Lcom/facebook/login/DeviceAuthDialog;->access$000(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    goto :goto_c

    .line 333
    :sswitch_data_50
    .sparse-switch
        0x149620 -> :sswitch_2e
        0x149634 -> :sswitch_28
        0x149635 -> :sswitch_2e
        0x149636 -> :sswitch_28
    .end sparse-switch
.end method

###### Class com.facebook.login.DeviceAuthDialog.AnonymousClass6 (com.facebook.login.DeviceAuthDialog$6)
.class Lcom/facebook/login/DeviceAuthDialog$6;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->presentConfirmation(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$6;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "alertDialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 382
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$6;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->access$700(Lcom/facebook/login/DeviceAuthDialog;Z)Landroid/view/View;

    move-result-object v0

    .line 383
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$6;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v1}, Lcom/facebook/login/DeviceAuthDialog;->access$800(Lcom/facebook/login/DeviceAuthDialog;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 384
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$6;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog$6;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v2}, Lcom/facebook/login/DeviceAuthDialog;->access$900(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->startLogin(Lcom/facebook/login/LoginClient$Request;)V

    .line 385
    return-void
.end method

###### Class com.facebook.login.DeviceAuthDialog.AnonymousClass7 (com.facebook.login.DeviceAuthDialog$7)
.class Lcom/facebook/login/DeviceAuthDialog$7;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->presentConfirmation(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$permissions:Lcom/facebook/internal/Utility$PermissionsPair;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$7;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    iput-object p2, p0, Lcom/facebook/login/DeviceAuthDialog$7;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/login/DeviceAuthDialog$7;->val$permissions:Lcom/facebook/internal/Utility$PermissionsPair;

    iput-object p4, p0, Lcom/facebook/login/DeviceAuthDialog$7;->val$accessToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "alertDialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$7;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$7;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog$7;->val$permissions:Lcom/facebook/internal/Utility$PermissionsPair;

    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$7;->val$accessToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/login/DeviceAuthDialog;->access$1000(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;)V

    .line 378
    return-void
.end method

###### Class com.facebook.login.DeviceAuthDialog.AnonymousClass8 (com.facebook.login.DeviceAuthDialog$8)
.class Lcom/facebook/login/DeviceAuthDialog$8;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;

.field final synthetic val$accessToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$8;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    iput-object p2, p0, Lcom/facebook/login/DeviceAuthDialog$8;->val$accessToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 10
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 410
    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$8;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v6}, Lcom/facebook/login/DeviceAuthDialog;->access$400(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 445
    :goto_c
    return-void

    .line 414
    :cond_d
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v6

    if-eqz v6, :cond_21

    .line 415
    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$8;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/facebook/login/DeviceAuthDialog;->access$000(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    goto :goto_c

    .line 423
    :cond_21
    :try_start_21
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 424
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 425
    .local v5, "userId":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->handlePermissionResponse(Lorg/json/JSONObject;)Lcom/facebook/internal/Utility$PermissionsPair;

    move-result-object v3

    .line 426
    .local v3, "permissions":Lcom/facebook/internal/Utility$PermissionsPair;
    const-string v6, "name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_34} :catch_6c

    move-result-object v2

    .line 431
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$8;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    .line 432
    invoke-static {v6}, Lcom/facebook/login/DeviceAuthDialog;->access$1100(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v6

    .line 431
    invoke-static {v6}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementService(Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v6

    .line 437
    invoke-virtual {v6}, Lcom/facebook/internal/FetchedAppSettings;->getSmartLoginOptions()Ljava/util/EnumSet;

    move-result-object v6

    sget-object v7, Lcom/facebook/internal/SmartLoginOption;->RequireConfirm:Lcom/facebook/internal/SmartLoginOption;

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 438
    .local v4, "requireConfirm":Z
    if-eqz v4, :cond_78

    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$8;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v6}, Lcom/facebook/login/DeviceAuthDialog;->access$1200(Lcom/facebook/login/DeviceAuthDialog;)Z

    move-result v6

    if-nez v6, :cond_78

    .line 439
    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$8;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/facebook/login/DeviceAuthDialog;->access$1202(Lcom/facebook/login/DeviceAuthDialog;Z)Z

    .line 440
    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$8;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v7, p0, Lcom/facebook/login/DeviceAuthDialog$8;->val$accessToken:Ljava/lang/String;

    invoke-static {v6, v5, v3, v7, v2}, Lcom/facebook/login/DeviceAuthDialog;->access$1300(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 427
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "permissions":Lcom/facebook/internal/Utility$PermissionsPair;
    .end local v4    # "requireConfirm":Z
    .end local v5    # "userId":Ljava/lang/String;
    :catch_6c
    move-exception v0

    .line 428
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$8;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v7, Lcom/facebook/FacebookException;

    invoke-direct {v7, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v6, v7}, Lcom/facebook/login/DeviceAuthDialog;->access$000(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    goto :goto_c

    .line 444
    .end local v0    # "ex":Lorg/json/JSONException;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "permissions":Lcom/facebook/internal/Utility$PermissionsPair;
    .restart local v4    # "requireConfirm":Z
    .restart local v5    # "userId":Ljava/lang/String;
    :cond_78
    iget-object v6, p0, Lcom/facebook/login/DeviceAuthDialog$8;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v7, p0, Lcom/facebook/login/DeviceAuthDialog$8;->val$accessToken:Ljava/lang/String;

    invoke-static {v6, v5, v3, v7}, Lcom/facebook/login/DeviceAuthDialog;->access$1000(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;)V

    goto :goto_c
.end method

###### Class com.facebook.login.DeviceAuthDialog.RequestState (com.facebook.login.DeviceAuthDialog$RequestState)
.class Lcom/facebook/login/DeviceAuthDialog$RequestState;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/DeviceAuthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/DeviceAuthDialog$RequestState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private interval:J

.field private lastPoll:J

.field private requestCode:Ljava/lang/String;

.field private userCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 563
    new-instance v0, Lcom/facebook/login/DeviceAuthDialog$RequestState$1;

    invoke-direct {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState$1;-><init>()V

    sput-object v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->userCode:Ljava/lang/String;

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->requestCode:Ljava/lang/String;

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->interval:J

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->lastPoll:J

    .line 534
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public getInterval()J
    .registers 3

    .prologue
    .line 518
    iget-wide v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->interval:J

    return-wide v0
.end method

.method public getRequestCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->requestCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->userCode:Ljava/lang/String;

    return-object v0
.end method

.method public setInterval(J)V
    .registers 4
    .param p1, "interval"    # J

    .prologue
    .line 522
    iput-wide p1, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->interval:J

    .line 523
    return-void
.end method

.method public setLastPoll(J)V
    .registers 4
    .param p1, "lastPoll"    # J

    .prologue
    .line 526
    iput-wide p1, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->lastPoll:J

    .line 527
    return-void
.end method

.method public setRequestCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "requestCode"    # Ljava/lang/String;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->requestCode:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public setUserCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "userCode"    # Ljava/lang/String;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->userCode:Ljava/lang/String;

    .line 507
    return-void
.end method

.method public withinLastRefreshWindow()Z
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    .line 541
    iget-wide v4, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->lastPoll:J

    cmp-long v3, v4, v10

    if-nez v3, :cond_a

    .line 546
    :cond_9
    :goto_9
    return v2

    .line 545
    :cond_a
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->lastPoll:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->interval:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long v0, v4, v6

    .line 546
    .local v0, "diff":J
    cmp-long v3, v0, v10

    if-gez v3, :cond_9

    const/4 v2, 0x1

    goto :goto_9
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 556
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->userCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->requestCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 558
    iget-wide v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->interval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 559
    iget-wide v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->lastPoll:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 560
    return-void
.end method

###### Class com.facebook.login.DeviceAuthDialog.RequestState.AnonymousClass1 (com.facebook.login.DeviceAuthDialog$RequestState$1)
.class final Lcom/facebook/login/DeviceAuthDialog$RequestState$1;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/DeviceAuthDialog$RequestState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/login/DeviceAuthDialog$RequestState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/DeviceAuthDialog$RequestState;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 567
    new-instance v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-direct {v0, p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/DeviceAuthDialog$RequestState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/login/DeviceAuthDialog$RequestState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 572
    new-array v0, p1, [Lcom/facebook/login/DeviceAuthDialog$RequestState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState$1;->newArray(I)[Lcom/facebook/login/DeviceAuthDialog$RequestState;

    move-result-object v0

    return-object v0
.end method
