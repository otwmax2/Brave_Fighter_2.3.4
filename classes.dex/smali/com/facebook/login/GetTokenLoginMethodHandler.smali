###### Class com.facebook.login.GetTokenLoginMethodHandler (com.facebook.login.GetTokenLoginMethodHandler)
.class Lcom/facebook/login/GetTokenLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "GetTokenLoginMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/GetTokenLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private getTokenClient:Lcom/facebook/login/GetTokenClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 185
    new-instance v0, Lcom/facebook/login/GetTokenLoginMethodHandler$3;

    invoke-direct {v0}, Lcom/facebook/login/GetTokenLoginMethodHandler$3;-><init>()V

    sput-object v0, Lcom/facebook/login/GetTokenLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 173
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .registers 2
    .param p1, "loginClient"    # Lcom/facebook/login/LoginClient;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 46
    return-void
.end method


# virtual methods
.method cancel()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    if-eqz v0, :cond_11

    .line 56
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    invoke-virtual {v0}, Lcom/facebook/login/GetTokenClient;->cancel()V

    .line 57
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    invoke-virtual {v0, v1}, Lcom/facebook/login/GetTokenClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    .line 58
    iput-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    .line 60
    :cond_11
    return-void
.end method

.method complete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 134
    const-string v2, "com.facebook.platform.extra.USER_ID"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "userId":Ljava/lang/String;
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 137
    :cond_e
    iget-object v2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->notifyBackgroundProcessingStart()V

    .line 139
    const-string v2, "com.facebook.platform.extra.ACCESS_TOKEN"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "accessToken":Ljava/lang/String;
    new-instance v2, Lcom/facebook/login/GetTokenLoginMethodHandler$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler$2;-><init>(Lcom/facebook/login/GetTokenLoginMethodHandler;Landroid/os/Bundle;Lcom/facebook/login/LoginClient$Request;)V

    invoke-static {v0, v2}, Lcom/facebook/internal/Utility;->getGraphMeRequestWithCacheAsync(Ljava/lang/String;Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V

    .line 169
    .end local v0    # "accessToken":Ljava/lang/String;
    :goto_21
    return-void

    .line 166
    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/GetTokenLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    goto :goto_21
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    const-string v0, "get_token"

    return-object v0
.end method

.method getTokenCompleted(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 83
    iget-object v4, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    if-eqz v4, :cond_a

    .line 84
    iget-object v4, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    invoke-virtual {v4, v5}, Lcom/facebook/login/GetTokenClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    .line 86
    :cond_a
    iput-object v5, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    .line 88
    iget-object v4, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v4}, Lcom/facebook/login/LoginClient;->notifyBackgroundProcessingStop()V

    .line 90
    if-eqz p2, :cond_5e

    .line 91
    const-string v4, "com.facebook.platform.extra.PERMISSIONS"

    .line 92
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 93
    .local v0, "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v3

    .line 94
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2b

    if-eqz v3, :cond_27

    .line 95
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 97
    :cond_27
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/GetTokenLoginMethodHandler;->complete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    .line 120
    .end local v0    # "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2a
    return-void

    .line 103
    .restart local v0    # "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2b
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 104
    .local v1, "newPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_34
    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 106
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 109
    .end local v2    # "permission":Ljava/lang/String;
    :cond_4a
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5b

    .line 110
    const-string v4, "new_permissions"

    const-string v5, ","

    .line 112
    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-virtual {p0, v4, v5}, Lcom/facebook/login/GetTokenLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    :cond_5b
    invoke-virtual {p1, v1}, Lcom/facebook/login/LoginClient$Request;->setPermissions(Ljava/util/Set;)V

    .line 119
    .end local v0    # "currentPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "newPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5e
    iget-object v4, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v4}, Lcom/facebook/login/LoginClient;->tryNextHandler()V

    goto :goto_2a
.end method

.method onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 123
    sget-object v2, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    .line 126
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {p2, v2, v3}, Lcom/facebook/login/GetTokenLoginMethodHandler;->createAccessTokenFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v1

    .line 127
    .local v1, "token":Lcom/facebook/AccessToken;
    iget-object v2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 128
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/facebook/login/LoginClient$Result;->createTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 129
    .local v0, "outcome":Lcom/facebook/login/LoginClient$Result;
    iget-object v2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2, v0}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    .line 130
    return-void
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
    .registers 6
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 63
    new-instance v1, Lcom/facebook/login/GetTokenClient;

    iget-object v2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 64
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/login/GetTokenClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    .line 65
    iget-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    invoke-virtual {v1}, Lcom/facebook/login/GetTokenClient;->start()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 66
    const/4 v1, 0x0

    .line 79
    :goto_1a
    return v1

    .line 69
    :cond_1b
    iget-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->notifyBackgroundProcessingStart()V

    .line 71
    new-instance v0, Lcom/facebook/login/GetTokenLoginMethodHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler$1;-><init>(Lcom/facebook/login/GetTokenLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V

    .line 78
    .local v0, "callback":Lcom/facebook/internal/PlatformServiceClient$CompletedListener;
    iget-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenClient:Lcom/facebook/login/GetTokenClient;

    invoke-virtual {v1, v0}, Lcom/facebook/login/GetTokenClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    .line 79
    const/4 v1, 0x1

    goto :goto_1a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    return-void
.end method

###### Class com.facebook.login.GetTokenLoginMethodHandler.AnonymousClass1 (com.facebook.login.GetTokenLoginMethodHandler$1)
.class Lcom/facebook/login/GetTokenLoginMethodHandler$1;
.super Ljava/lang/Object;
.source "GetTokenLoginMethodHandler.java"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/GetTokenLoginMethodHandler;->tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

.field final synthetic val$request:Lcom/facebook/login/LoginClient$Request;


# direct methods
.method constructor <init>(Lcom/facebook/login/GetTokenLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/login/GetTokenLoginMethodHandler;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$1;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iput-object p2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$1;->val$request:Lcom/facebook/login/LoginClient$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$1;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$1;->val$request:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenCompleted(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

###### Class com.facebook.login.GetTokenLoginMethodHandler.AnonymousClass2 (com.facebook.login.GetTokenLoginMethodHandler$2)
.class Lcom/facebook/login/GetTokenLoginMethodHandler$2;
.super Ljava/lang/Object;
.source "GetTokenLoginMethodHandler.java"

# interfaces
.implements Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/GetTokenLoginMethodHandler;->complete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

.field final synthetic val$request:Lcom/facebook/login/LoginClient$Request;

.field final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/login/GetTokenLoginMethodHandler;Landroid/os/Bundle;Lcom/facebook/login/LoginClient$Request;)V
    .registers 4
    .param p1, "this$0"    # Lcom/facebook/login/GetTokenLoginMethodHandler;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iput-object p2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$result:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$request:Lcom/facebook/login/LoginClient$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/facebook/FacebookException;)V
    .registers 6
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v0, v0, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    iget-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v1, v1, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 160
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    const-string v2, "Caught exception"

    .line 162
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {v1, v2, v3}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    .line 163
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    .line 146
    :try_start_0
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$result:Landroid/os/Bundle;

    const-string v3, "com.facebook.platform.extra.USER_ID"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v3, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$request:Lcom/facebook/login/LoginClient$Request;

    iget-object v4, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$result:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Lcom/facebook/login/GetTokenLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    .line 155
    .end local v1    # "userId":Ljava/lang/String;
    :goto_16
    return-void

    .line 149
    :catch_17
    move-exception v0

    .line 150
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v2, v2, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    iget-object v3, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v3, v3, Lcom/facebook/login/GetTokenLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 151
    invoke-virtual {v3}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v3

    const-string v4, "Caught exception"

    .line 153
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-static {v3, v4, v5}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_16
.end method

###### Class com.facebook.login.GetTokenLoginMethodHandler.AnonymousClass3 (com.facebook.login.GetTokenLoginMethodHandler$3)
.class final Lcom/facebook/login/GetTokenLoginMethodHandler$3;
.super Ljava/lang/Object;
.source "GetTokenLoginMethodHandler.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/GetTokenLoginMethodHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/GetTokenLoginMethodHandler;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 190
    new-instance v0, Lcom/facebook/login/GetTokenLoginMethodHandler;

    invoke-direct {v0, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler$3;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/GetTokenLoginMethodHandler;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/login/GetTokenLoginMethodHandler;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 195
    new-array v0, p1, [Lcom/facebook/login/GetTokenLoginMethodHandler;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler$3;->newArray(I)[Lcom/facebook/login/GetTokenLoginMethodHandler;

    move-result-object v0

    return-object v0
.end method
