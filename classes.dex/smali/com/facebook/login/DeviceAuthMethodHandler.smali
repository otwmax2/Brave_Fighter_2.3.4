###### Class com.facebook.login.DeviceAuthMethodHandler (com.facebook.login.DeviceAuthMethodHandler)
.class Lcom/facebook/login/DeviceAuthMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "DeviceAuthMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/DeviceAuthMethodHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 121
    new-instance v0, Lcom/facebook/login/DeviceAuthMethodHandler$1;

    invoke-direct {v0}, Lcom/facebook/login/DeviceAuthMethodHandler$1;-><init>()V

    sput-object v0, Lcom/facebook/login/DeviceAuthMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 104
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .registers 2
    .param p1, "loginClient"    # Lcom/facebook/login/LoginClient;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 38
    return-void
.end method

.method public static declared-synchronized getBackgroundExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 3

    .prologue
    .line 95
    const-class v1, Lcom/facebook/login/DeviceAuthMethodHandler;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/login/DeviceAuthMethodHandler;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_f

    .line 96
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/login/DeviceAuthMethodHandler;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 99
    :cond_f
    sget-object v0, Lcom/facebook/login/DeviceAuthMethodHandler;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private showDialog(Lcom/facebook/login/LoginClient$Request;)V
    .registers 5
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {v0}, Lcom/facebook/login/DeviceAuthDialog;-><init>()V

    .line 48
    .local v0, "dialog":Lcom/facebook/login/DeviceAuthDialog;
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 49
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "login_with_facebook"

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, p1}, Lcom/facebook/login/DeviceAuthDialog;->startLogin(Lcom/facebook/login/LoginClient$Request;)V

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    const-string v0, "device_auth"

    return-object v0
.end method

.method public onCancel()V
    .registers 4

    .prologue
    .line 55
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 56
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    const-string v2, "User canceled log in."

    .line 55
    invoke-static {v1, v2}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 58
    .local v0, "outcome":Lcom/facebook/login/LoginClient$Result;
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    .line 59
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 6
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 63
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {v1, v2, v3}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 66
    .local v0, "outcome":Lcom/facebook/login/LoginClient$Result;
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    .line 67
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V
    .registers 19
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p6, "accessTokenSource"    # Lcom/facebook/AccessTokenSource;
    .param p7, "expirationTime"    # Ljava/util/Date;
    .param p8, "lastRefreshTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p4, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p5, "declinedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/AccessToken;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    .line 88
    .local v0, "token":Lcom/facebook/AccessToken;
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 89
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    .line 88
    invoke-static {v1, v0}, Lcom/facebook/login/LoginClient$Result;->createTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v9

    .line 91
    .local v9, "outcome":Lcom/facebook/login/LoginClient$Result;
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1, v9}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    .line 92
    return-void
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
    .registers 3
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthMethodHandler;->showDialog(Lcom/facebook/login/LoginClient$Request;)V

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    return-void
.end method

###### Class com.facebook.login.DeviceAuthMethodHandler.AnonymousClass1 (com.facebook.login.DeviceAuthMethodHandler$1)
.class final Lcom/facebook/login/DeviceAuthMethodHandler$1;
.super Ljava/lang/Object;
.source "DeviceAuthMethodHandler.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/DeviceAuthMethodHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/DeviceAuthMethodHandler;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 126
    new-instance v0, Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-direct {v0, p1}, Lcom/facebook/login/DeviceAuthMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthMethodHandler$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/DeviceAuthMethodHandler;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/login/DeviceAuthMethodHandler;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 131
    new-array v0, p1, [Lcom/facebook/login/DeviceAuthMethodHandler;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthMethodHandler$1;->newArray(I)[Lcom/facebook/login/DeviceAuthMethodHandler;

    move-result-object v0

    return-object v0
.end method
