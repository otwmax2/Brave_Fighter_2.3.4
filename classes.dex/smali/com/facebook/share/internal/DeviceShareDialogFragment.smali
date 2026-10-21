###### Class com.facebook.share.internal.DeviceShareDialogFragment (com.facebook.share.internal.DeviceShareDialogFragment)
.class public Lcom/facebook/share/internal/DeviceShareDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DeviceShareDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    }
.end annotation


# static fields
.field private static final DEVICE_SHARE_ENDPOINT:Ljava/lang/String; = "device/share"

.field private static final REQUEST_STATE_KEY:Ljava/lang/String; = "request_state"

.field public static final TAG:Ljava/lang/String; = "DeviceShareDialogFragment"

.field private static backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private volatile codeExpiredFuture:Ljava/util/concurrent/ScheduledFuture;

.field private confirmationCode:Landroid/widget/TextView;

.field private volatile currentRequestState:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

.field private dialog:Landroid/app/Dialog;

.field private progressBar:Landroid/widget/ProgressBar;

.field private shareContent:Lcom/facebook/share/model/ShareContent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/internal/DeviceShareDialogFragment;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/DeviceShareDialogFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/FacebookRequestError;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/DeviceShareDialogFragment;
    .param p1, "x1"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->finishActivityWithError(Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/DeviceShareDialogFragment;
    .param p1, "x1"    # Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setCurrentRequestState(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V

    return-void
.end method

.method private detach()V
    .registers 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 150
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 152
    :cond_15
    return-void
.end method

.method private finishActivity(ILandroid/content/Intent;)V
    .registers 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 139
    iget-object v1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->currentRequestState:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    invoke-virtual {v1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementService(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 142
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 143
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 144
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 146
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_19
    return-void
.end method

.method private finishActivityWithError(Lcom/facebook/FacebookRequestError;)V
    .registers 4
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->detach()V

    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->finishActivity(ILandroid/content/Intent;)V

    .line 220
    return-void
.end method

.method private static declared-synchronized getBackgroundExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 3

    .prologue
    .line 223
    const-class v1, Lcom/facebook/share/internal/DeviceShareDialogFragment;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_f

    .line 224
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 226
    :cond_f
    sget-object v0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v1

    return-object v0

    .line 223
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getGraphParametersForShareContent()Landroid/os/Bundle;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->shareContent:Lcom/facebook/share/model/ShareContent;

    .line 160
    .local v0, "content":Lcom/facebook/share/model/ShareContent;
    if-nez v0, :cond_6

    .line 168
    .end local v0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_5
    :goto_5
    return-object v1

    .line 163
    .restart local v0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_6
    instance-of v2, v0, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v2, :cond_11

    .line 164
    check-cast v0, Lcom/facebook/share/model/ShareLinkContent;

    .end local v0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-static {v0}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_5

    .line 165
    .restart local v0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_11
    instance-of v2, v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v2, :cond_5

    .line 166
    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    .end local v0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-static {v0}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/ShareOpenGraphContent;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_5
.end method

.method private setCurrentRequestState(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V
    .registers 7
    .param p1, "currentRequestState"    # Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->currentRequestState:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    .line 231
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->confirmationCode:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->confirmationCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 235
    invoke-static {}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getBackgroundExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/facebook/share/internal/DeviceShareDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$3;-><init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V

    .line 242
    invoke-virtual {p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->getExpiresIn()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 235
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->codeExpiredFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 244
    return-void
.end method

.method private startShare()V
    .registers 8

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getGraphParametersForShareContent()Landroid/os/Bundle;

    move-result-object v3

    .line 173
    .local v3, "parameters":Landroid/os/Bundle;
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v1

    if-nez v1, :cond_19

    .line 174
    :cond_c
    new-instance v1, Lcom/facebook/FacebookRequestError;

    const/4 v2, 0x0

    const-string v4, ""

    const-string v5, "Failed to get share content"

    invoke-direct {v1, v2, v4, v5}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->finishActivityWithError(Lcom/facebook/FacebookRequestError;)V

    .line 178
    :cond_19
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

    const-string v2, "device/share"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;-><init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 211
    .local v0, "graphRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 212
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 95
    new-instance v4, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/facebook/R$style;->com_facebook_auth_dialog:I

    invoke-direct {v4, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->dialog:Landroid/app/Dialog;

    .line 96
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 97
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/facebook/R$layout;->com_facebook_device_auth_dialog_fragment:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 98
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/facebook/R$id;->progress_bar:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 99
    sget v4, Lcom/facebook/R$id;->confirmation_code:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->confirmationCode:Landroid/widget/TextView;

    .line 101
    sget v4, Lcom/facebook/R$id;->cancel_button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 102
    .local v0, "cancelButton":Landroid/widget/Button;
    new-instance v4, Lcom/facebook/share/internal/DeviceShareDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$1;-><init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget v4, Lcom/facebook/R$id;->com_facebook_device_auth_instructions:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 111
    .local v2, "instructions":Landroid/widget/TextView;
    sget v4, Lcom/facebook/R$string;->com_facebook_device_auth_instructions:I

    .line 112
    invoke-virtual {p0, v4}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 111
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 116
    invoke-direct {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->startShare()V

    .line 117
    iget-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->dialog:Landroid/app/Dialog;

    return-object v4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, "view":Landroid/view/View;
    if-eqz p3, :cond_13

    .line 84
    const-string v2, "request_state"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    .line 85
    .local v0, "requestState":Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    if-eqz v0, :cond_13

    .line 86
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setCurrentRequestState(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V

    .line 89
    .end local v0    # "requestState":Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    :cond_13
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 123
    iget-object v1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->codeExpiredFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_d

    .line 124
    iget-object v1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->codeExpiredFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 126
    :cond_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v0, "resultIntent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->finishActivity(ILandroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->currentRequestState:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    if-eqz v0, :cond_e

    .line 134
    const-string v0, "request_state"

    iget-object v1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->currentRequestState:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    :cond_e
    return-void
.end method

.method public setShareContent(Lcom/facebook/share/model/ShareContent;)V
    .registers 2
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->shareContent:Lcom/facebook/share/model/ShareContent;

    .line 156
    return-void
.end method

###### Class com.facebook.share.internal.DeviceShareDialogFragment.AnonymousClass1 (com.facebook.share.internal.DeviceShareDialogFragment$1)
.class Lcom/facebook/share/internal/DeviceShareDialogFragment$1;
.super Ljava/lang/Object;
.source "DeviceShareDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/DeviceShareDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/share/internal/DeviceShareDialogFragment;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$1;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$1;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-static {v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->access$000(Lcom/facebook/share/internal/DeviceShareDialogFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 106
    return-void
.end method

###### Class com.facebook.share.internal.DeviceShareDialogFragment.AnonymousClass2 (com.facebook.share.internal.DeviceShareDialogFragment$2)
.class Lcom/facebook/share/internal/DeviceShareDialogFragment$2;
.super Ljava/lang/Object;
.source "DeviceShareDialogFragment.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/DeviceShareDialogFragment;->startShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/share/internal/DeviceShareDialogFragment;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 11
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 192
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v0, :cond_c

    .line 193
    iget-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-static {v4, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->access$100(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/FacebookRequestError;)V

    .line 209
    :goto_b
    return-void

    .line 197
    :cond_c
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 198
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v3, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    invoke-direct {v3}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;-><init>()V

    .line 200
    .local v3, "requestState":Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    :try_start_15
    const-string v4, "user_code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->setUserCode(Ljava/lang/String;)V

    .line 201
    const-string v4, "expires_in"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->setExpiresIn(J)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_27} :catch_2d

    .line 208
    iget-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-static {v4, v3}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->access$200(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V

    goto :goto_b

    .line 202
    :catch_2d
    move-exception v1

    .line 203
    .local v1, "ex":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    new-instance v5, Lcom/facebook/FacebookRequestError;

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, "Malformed server response"

    invoke-direct {v5, v6, v7, v8}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->access$100(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/FacebookRequestError;)V

    goto :goto_b
.end method

###### Class com.facebook.share.internal.DeviceShareDialogFragment.AnonymousClass3 (com.facebook.share.internal.DeviceShareDialogFragment$3)
.class Lcom/facebook/share/internal/DeviceShareDialogFragment$3;
.super Ljava/lang/Object;
.source "DeviceShareDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/DeviceShareDialogFragment;->setCurrentRequestState(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/share/internal/DeviceShareDialogFragment;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$3;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$3;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-static {v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->access$000(Lcom/facebook/share/internal/DeviceShareDialogFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 240
    return-void
.end method

###### Class com.facebook.share.internal.DeviceShareDialogFragment.RequestState (com.facebook.share.internal.DeviceShareDialogFragment$RequestState)
.class Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
.super Ljava/lang/Object;
.source "DeviceShareDialogFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/DeviceShareDialogFragment;
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
            "Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private expiresIn:J

.field private userCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 286
    new-instance v0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState$1;

    invoke-direct {v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState$1;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->userCode:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->expiresIn:J

    .line 272
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public getExpiresIn()J
    .registers 3

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->expiresIn:J

    return-wide v0
.end method

.method public getUserCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->userCode:Ljava/lang/String;

    return-object v0
.end method

.method public setExpiresIn(J)V
    .registers 4
    .param p1, "expiresIn"    # J

    .prologue
    .line 265
    iput-wide p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->expiresIn:J

    .line 266
    return-void
.end method

.method public setUserCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "userCode"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->userCode:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->userCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-wide v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->expiresIn:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 283
    return-void
.end method

###### Class com.facebook.share.internal.DeviceShareDialogFragment.RequestState.AnonymousClass1 (com.facebook.share.internal.DeviceShareDialogFragment$RequestState$1)
.class final Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState$1;
.super Ljava/lang/Object;
.source "DeviceShareDialogFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
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
        "Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 290
    new-instance v0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    invoke-direct {v0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 295
    new-array v0, p1, [Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState$1;->newArray(I)[Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    move-result-object v0

    return-object v0
.end method
